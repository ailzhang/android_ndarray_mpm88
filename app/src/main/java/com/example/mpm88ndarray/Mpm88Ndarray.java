package com.example.mpm88ndarray;

import android.content.Context;
import android.opengl.GLSurfaceView;
import android.opengl.GLES32;
import android.os.Build;
import android.util.Log;

import androidx.annotation.RequiresApi;

import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
import java.nio.charset.StandardCharsets;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.stream.Collectors;

public class Mpm88Ndarray implements GLSurfaceView.Renderer {
    private Context context;
    private int render_program;
    private int global_tmp_buf;
    private int arg_buf;
    private int root_buf;
    private int color_buf;
    private Program[] programs;
    private Ndarray[] ndarrays;

    private IntBuffer args;
    private FloatBuffer color;

    public Mpm88Ndarray(Context _context) {
        context = _context;
        JSONParser parser = new JSONParser();
        InputStream jsonfile = context.getResources().openRawResource(R.raw.metadata);
        JSONObject mpm88;
        try {
            mpm88 = (JSONObject) parser.parse(new InputStreamReader(jsonfile, "utf-8"));
            jsonfile.close();
        } catch (Exception e) {
            Log.e("ERR", "Mpm88Ndarray: exception when parsing json: " + e);
            return;
        }

        // -----------------------------------------------------------------------------------------

        JSONArray json_programs = (JSONArray) ((JSONObject) mpm88.get("aot_data")).get("kernels");
        programs = new Program[json_programs.size()];
        Iterator json_program_iterator = json_programs.iterator();
        int i = 0;
        while (json_program_iterator.hasNext()) {
            JSONObject cur_json_program = (JSONObject) ((JSONObject) json_program_iterator.next()).get("program");
            JSONArray json_kernels = (JSONArray) cur_json_program.get("kernels");
            Kernel[] kernels = new Kernel[json_kernels.size()];
            Iterator json_kernel_iterator = json_kernels.iterator();
            int k = 0;
            while (json_kernel_iterator.hasNext()) {
                JSONObject cur_json_kernel = (JSONObject) json_kernel_iterator.next();
                kernels[k] = new Kernel(
                        (String) cur_json_kernel.get("kernel_name"),
                        ((Long) cur_json_kernel.get("workgroup_size")).intValue(),
                        ((Long) cur_json_kernel.get("num_groups")).intValue()
                );
                k++;
            }

            JSONObject json_bind_idx = (JSONObject) cur_json_program.get("used.arr_arg_to_bind_idx");
            Integer[] bind_idx = new Integer[json_bind_idx.size()];
            for (int j = 0; j < json_bind_idx.size(); j++) {
                bind_idx[j] = ((Long) json_bind_idx.get(String.valueOf(j))).intValue();
            }
            programs[i] = new Program(kernels, bind_idx);
            i++;
        }

        JSONArray json_ndarrays = (JSONArray) ((JSONObject) mpm88.get("aot_data")).get("ndarrays");
        ndarrays = new Ndarray[json_ndarrays.size()];
        Iterator json_ndarray_iterator = json_ndarrays.iterator();
        int r = 0;
        while (json_ndarray_iterator.hasNext()) {
            JSONObject cur_json_ndarray = (JSONObject) json_ndarray_iterator.next();
            ndarrays[r] = new Ndarray(
                    (String) cur_json_ndarray.get("field_name"),
                    (String) cur_json_ndarray.get("dtype_name"),
                    ((Long) cur_json_ndarray.get("dim")).intValue(),
                    64*64,
                    ((Long) cur_json_ndarray.get("row_num")).intValue(),
                    ((Long) cur_json_ndarray.get("column_num")).intValue()
            );
            r++;
        }
        ndarrays[4].setShape(128);
        ndarrays[5].setShape(128);
    }

    @RequiresApi(api = Build.VERSION_CODES.N)
    @Override
    public void onSurfaceCreated(GL10 gl, EGLConfig config) {
        int[] temp = new int[1];
        GLES32.glGenBuffers(1, temp, 0);
        color_buf = temp[0];
        GLES32.glGenBuffers(1, temp, 0);
        arg_buf = temp[0];
        GLES32.glGenBuffers(1, temp, 0);
        global_tmp_buf = temp[0];
        GLES32.glGenBuffers(1, temp, 0);
        root_buf = temp[0];
        for (int i = 0; i < ndarrays.length; i++) {
            GLES32.glGenBuffers(1, temp, 0);
            ndarrays[i].setSsbo(temp[0]);
        }

        for (int i = 0; i < programs.length; i++) {
            Kernel[] cur_kernels = programs[i].getKernels();
            for (int j = 0; j < cur_kernels.length; j++) {
                int shader = GLES32.glCreateShader(GLES32.GL_COMPUTE_SHADER);
                InputStream raw_shader = this.context.getResources().openRawResource(context.getResources().getIdentifier(
                        cur_kernels[j].getName(), "raw", context.getPackageName()
                ));
                String string_shader = new BufferedReader(
                        new InputStreamReader(raw_shader, StandardCharsets.UTF_8))
                        .lines()
                        .collect(Collectors.joining("\n"));
                try {
                    raw_shader.close();
                } catch (Exception e) {
                    Log.e("ERR", "onSurfaceCreated: error in closing input stream: " + e);
                    return;
                }

                GLES32.glShaderSource(shader, string_shader);
                GLES32.glCompileShader(shader);
                final int[] compileStatus = new int[1];
                GLES32.glGetShaderiv(shader, GLES32.GL_COMPILE_STATUS, compileStatus, 0);
                if (compileStatus[0] == 0) {
                    GLES32.glDeleteShader(shader);
                    shader = 0;
                }
                if (shader == 0) {
                    throw new RuntimeException("Error creating compute shader: " + GLES32.glGetShaderInfoLog(shader));
                }

                int shader_program = GLES32.glCreateProgram();
                GLES32.glAttachShader(shader_program, shader);
                GLES32.glLinkProgram(shader_program);
                final int[] linkStatus = new int[1];
                GLES32.glGetProgramiv(shader_program, GLES32.GL_LINK_STATUS, linkStatus, 0);
                if (linkStatus[0] == 0) {
                    GLES32.glDeleteProgram(shader_program);
                    shader_program = 0;
                }
                if (shader_program == 0) {
                    throw new RuntimeException("Error creating program: " + GLES32.glGetProgramInfoLog(shader_program));
                }
                cur_kernels[j].setShader_program(shader_program);
            }
        }

        int mVertShader = GLES32.glCreateShader(GLES32.GL_VERTEX_SHADER);
        int mFragShader = GLES32.glCreateShader(GLES32.GL_FRAGMENT_SHADER);
        InputStream rawVertShader = this.context.getResources().openRawResource(R.raw.vertshader);
        String stringVertShader = new BufferedReader(
                new InputStreamReader(rawVertShader, StandardCharsets.UTF_8))
                .lines()
                .collect(Collectors.joining("\n"));
        InputStream rawFragShader = this.context.getResources().openRawResource(R.raw.fragshader);
        String stringFragShader = new BufferedReader(
                new InputStreamReader(rawFragShader, StandardCharsets.UTF_8))
                .lines()
                .collect(Collectors.joining("\n"));
        try {
            rawVertShader.close();
            rawFragShader.close();
        } catch (Exception e) {
            System.out.println(e.toString());
            return;
        }
        GLES32.glShaderSource(mVertShader, stringVertShader);
        GLES32.glCompileShader(mVertShader);
        final int[] compileStatus = new int[1];
        GLES32.glGetShaderiv(mVertShader, GLES32.GL_COMPILE_STATUS, compileStatus, 0);

        // If the compilation failed, delete the shader.
        if (compileStatus[0] == 0)
        {
            GLES32.glDeleteShader(mVertShader);
            mVertShader = 0;
        }
        if (mVertShader == 0)
        {
            throw new RuntimeException("Error creating vertex shader.");
        }
        GLES32.glShaderSource(mFragShader, stringFragShader);
        GLES32.glCompileShader(mFragShader);
        GLES32.glGetShaderiv(mFragShader, GLES32.GL_COMPILE_STATUS, compileStatus, 0);

        // If the compilation failed, delete the shader.
        if (compileStatus[0] == 0)
        {
            GLES32.glDeleteShader(mFragShader);
            mFragShader = 0;
        }
        if (mFragShader == 0)
        {
            throw new RuntimeException("Error creating fragment shader.");
        }
        render_program = GLES32.glCreateProgram();
        if (render_program != 0) {
            GLES32.glAttachShader(render_program, mVertShader);
            GLES32.glAttachShader(render_program, mFragShader);
            GLES32.glLinkProgram(render_program);
            final int[] linkStatus = new int[1];
            GLES32.glGetProgramiv(render_program, GLES32.GL_LINK_STATUS, linkStatus, 0);

            // If the link failed, delete the program.
            if (linkStatus[0] == 0)
            {
                GLES32.glDeleteProgram(render_program);
                render_program = 0;
            }
        }
        if (render_program == 0)
        {
            throw new RuntimeException("Error creating program.");
        }

        int[] data = new int[8*8+16];
        // FIXME:
        for (int i = 0; i < ndarrays.length; i++) {
            int dim = ndarrays[i].getDim();
            int row = ndarrays[i].getRow();
            int col = ndarrays[i].getCol();
            int shape = ndarrays[i].getShape();
            for (int j = 0; j < dim; j++) {
                data[16 + i*8 + j] = shape;
            }
            if (row == 1) {
                if (col != 1) {
                    data[16 + i*8 + dim] = col;
                }
            } else {
                data[16 + i*8 + dim] = row;
                if (col != 1) {
                    data[16 + i*8 + dim+1] = col;
                }
            }
            //if (col == 1) {
            //    for (int j = 0; j < dim; j++) {
            //        data[16 + i*8 + j] = shape;
            //    }
            //} else if (row == 1) {
            //    data[16 + i*8 + 0] = col;
            //    for (int j = 1; j < dim; j++) {
            //        data[16 + i*8 + j] = shape;
            //    }
            //} else {
            //    data[16 + i*8 + 0] = row;
            //    data[16 + i*8 + 1] = col;
            //    for (int j = 2; j < dim; j++) {
            //        data[16 + i*8 + j] = shape;
            //    }
            //}
        }
        args = ByteBuffer.allocateDirect(data.length*4).order(ByteOrder.nativeOrder()).asIntBuffer();
        args.put(data).position(0);

        float[] data_v = new float[64*64*4];
        for (int i = 0 ; i < 64*64*4; i++) {
            data_v[i] = 0.9f;
        }
        color = ByteBuffer.allocateDirect(data_v.length * 4).order(ByteOrder.nativeOrder()).asFloatBuffer();
        color.put(data_v).position(0);


        GLES32.glBindBufferBase(GLES32.GL_SHADER_STORAGE_BUFFER, 0, root_buf);
        GLES32.glBufferData(GLES32.GL_SHADER_STORAGE_BUFFER, 0, null, GLES32.GL_DYNAMIC_COPY);
        GLES32.glBindBufferBase(GLES32.GL_SHADER_STORAGE_BUFFER, 1, global_tmp_buf);
        GLES32.glBufferData(GLES32.GL_SHADER_STORAGE_BUFFER, 1048576, null, GLES32.GL_DYNAMIC_COPY);
        GLES32.glBindBufferBase(GLES32.GL_SHADER_STORAGE_BUFFER, 2, arg_buf);
        GLES32.glBufferData(GLES32.GL_SHADER_STORAGE_BUFFER, 64*5, args, GLES32.GL_DYNAMIC_COPY);
        // Need to initialize all buffers here!!
        Integer[] bind_idx = programs[0].getBind_idx();
        for (int i = 0; i < bind_idx.length; i++) {
            GLES32.glBindBufferBase(GLES32.GL_SHADER_STORAGE_BUFFER, bind_idx[i], ndarrays[i].getSsbo());
            if (!ndarrays[i].init) {
                GLES32.glBufferData(GLES32.GL_SHADER_STORAGE_BUFFER, ndarrays[i].getDim()*(int)(Math.pow(ndarrays[i].getShape(), ndarrays[i].getDim()))*ndarrays[i].getCol()*ndarrays[i].getRow()*4, null, GLES32.GL_DYNAMIC_COPY);
                ndarrays[i].init = true;
            }
        }
        Kernel[] init_kernel = programs[0].getKernels();
        for (int i = 0; i < init_kernel.length; i++) {
            GLES32.glUseProgram(init_kernel[i].getShader_program());
            GLES32.glDispatchCompute(init_kernel[i].getNum_groups(), 1, 1);
        }
        for (int i = 0; i < bind_idx.length; i++) {
            GLES32.glBindBufferBase(GLES32.GL_SHADER_STORAGE_BUFFER, bind_idx[i], 0);
        }
    }

    @Override
    public void onSurfaceChanged(GL10 gl, int width, int height) {
        GLES32.glViewport(0, 0, width, height);
    }

    @Override
    public void onDrawFrame(GL10 gl) {
        GLES32.glClearColor(0f, 0f, 0f, 1f);
        GLES32.glClear(GLES32.GL_COLOR_BUFFER_BIT);

        Integer[] bind_idx = programs[1].getBind_idx();
        Kernel[] substep_kernel = programs[1].getKernels();
        for (int i = 0; i < 50; i++) {
            for (int j = 0; j < bind_idx.length; j++) {
                GLES32.glBindBufferBase(GLES32.GL_SHADER_STORAGE_BUFFER, bind_idx[j], ndarrays[j].getSsbo());
                if (!ndarrays[j].init) {
                    GLES32.glBufferData(GLES32.GL_SHADER_STORAGE_BUFFER, ndarrays[j].getDim()*(int)(Math.pow(ndarrays[j].getShape(), ndarrays[j].getDim()))*ndarrays[j].getCol()*ndarrays[j].getRow()*4, null, GLES32.GL_DYNAMIC_COPY);
                    ndarrays[j].init = true;
                }
            }
            for (int j = 0; j < substep_kernel.length; j++) {
                GLES32.glUseProgram(substep_kernel[j].getShader_program());
                GLES32.glDispatchCompute(substep_kernel[j].getNum_groups(), 1, 1);
            }
            //for (int j = 6; j < 8; j++) {
            //    GLES32.glUseProgram(substep_kernel[j].getShader_program());
            //    GLES32.glDispatchCompute(substep_kernel[j].getNum_groups(), 1, 1);
            //}
            for (int j = 0; j < bind_idx.length; j++) {
                GLES32.glBindBufferBase(GLES32.GL_SHADER_STORAGE_BUFFER, bind_idx[j], 0);
            }
        }

        GLES32.glMemoryBarrier(GLES32.GL_VERTEX_ATTRIB_ARRAY_BARRIER_BIT);

        GLES32.glUseProgram(render_program);
        GLES32.glBindBuffer(GLES32.GL_ARRAY_BUFFER, ndarrays[0].getSsbo());
        GLES32.glEnableVertexAttribArray(0);
        GLES32.glVertexAttribPointer(0, 2, GLES32.GL_FLOAT, false, 2*4, 0);

        GLES32.glBindBuffer(GLES32.GL_ARRAY_BUFFER, color_buf);
        GLES32.glBufferData(GLES32.GL_ARRAY_BUFFER, 64*64*4*4, color, GLES32.GL_STATIC_DRAW);
        GLES32.glEnableVertexAttribArray(1);
        GLES32.glVertexAttribPointer(1, 4, GLES32.GL_FLOAT, false, 4*4, 0);

        GLES32.glDrawArrays(GLES32.GL_POINTS, 0, 64*64);
    }
}
