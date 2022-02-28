package com.example.mpm88ndarray;

import android.content.Context;
import android.opengl.GLES32;
import android.os.Build;
import android.util.Log;

import androidx.annotation.RequiresApi;

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
import java.util.Iterator;
import java.util.stream.Collectors;

import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;

public class MpmObstacleRunner {
    private Context context;
    private int root_buf_size;
    private int render_program;
    private int global_tmp_buf;
    private int root_buf;
    private int arg_buf;
    private int color_buf;
    private Program[] programs;
    private IntBuffer args;
    private FloatBuffer color;
    private String folder_name;
    private final int max_particle_num = 4096 * 1 * 1;
    private final int emitter_num = 50;
    private int particle_num = 0;

    private long startTime;

    // Render or test max fps.
    // XXXX
    private final boolean SHOW_MAX_FPS = false;
    // Args to set for runtime.
    private final boolean USE_NDARRAY = false;
    // These three args only affects ndarray version (when USE_NDARRAY is set to true).
    // Remember to change location in parseJsonData when changing to mpm_int.
    private int NDARRAY_NUM_PARTICLE = 4096;
    private final int NDARRAY_NUM_GRID = 64;

    private final int SUBSTEP = 50;
    private final String[] kernel_names = {"init", "substep", "init_obstacle", "emission"};

    public MpmObstacleRunner(Context _context) {
        context = _context;
        // Open Json file.
        JSONParser parser = new JSONParser();
        InputStream jsonfile = null;
//        if (USE_NDARRAY) {
//            folder_name = "mpm_ndarray_obstacle/";
//        } else {
            folder_name = "mpm_field_obstacle_opengl/";
//        }
        try {
            jsonfile = this.context.getAssets().open(folder_name + "metadata.json");
        } catch(Exception e) {
            Log.d("Error", "MpmObstacleRunner: " + e);
        }
        JSONObject mpm88;
        try {
            mpm88 = (JSONObject) parser.parse(new InputStreamReader(jsonfile, "utf-8"));
            jsonfile.close();
        } catch (Exception e) {
            Log.e("ERR", "MpmObstacleRunner: exception when parsing json: " + e);
            return;
        }

        if (!USE_NDARRAY) {
            // Field has fixed particle size, so we hack here for field version.
            // XXX
            NDARRAY_NUM_PARTICLE = 4096;
        }
        // -----------------------------------------------------------------------------------------
        // Parse Json data.
        parseJsonData(mpm88);
    }

    @RequiresApi(api = Build.VERSION_CODES.N)
    public void onsurfacecreated(GL10 gl, EGLConfig config) {
        // Compile compute shaders and link compute programs.
        compileComputeShaders();
        // Compile render shaders and link render program.
        compileRenderShaders();
        // Fill some data to buffers.
        fillColorData();
        // Generate SSBOs.
        generateSSBO();
        // Run init kernel once at the beginning.
//        if (USE_NDARRAY) {
//            fillArgData(0);
//        }
        init();

        startTime = System.nanoTime();

        int [] temp = new int[1];
        GLES32.glGetIntegerv(GLES32.GL_MAX_SHADER_STORAGE_BUFFER_BINDINGS, temp, 0);
        Log.d("BINDING", "onSurfaceCreated: " + temp[0]);
    }

    public void ondrawframe(GL10 gl) {
        // Clear color.
        GLES32.glClearColor(0f, 0f, 0f, 1f);
        GLES32.glClear(GLES32.GL_COLOR_BUFFER_BIT);

        // Run substep kernel, pass in the number of substep you want to run per frame.
//        if (USE_NDARRAY) {
//            fillArgData(1);
//        }

        if (SHOW_MAX_FPS) {
            for (int i = 0; i < 10000; i++) {
                substep(SUBSTEP);

                GLES32.glFlush();

                double substep_time = (System.nanoTime() - startTime) / SUBSTEP / 1e9;
                Log.d("SUBSTEP_TIME", "" + substep_time * 1e6 + "us");
                Log.d("FPS", "" + 1.0 / (substep_time * SUBSTEP));
                startTime = System.nanoTime();
            }
        } else {
            substep(SUBSTEP);

            render();

            double substep_time = (System.nanoTime() - startTime) / SUBSTEP / 1e9;
            Log.d("SUBSTEP_TIME", "" + substep_time * 1e6 + "us");
            Log.d("FPS", "" + 1.0 / (substep_time * SUBSTEP));
            startTime = System.nanoTime();
        }
    }

    //private void fillArgData(int kernel_idx) {
    //    Ndarray[] ndarrays = programs[kernel_idx].getNdarrays();
    //    // Fill shape info into arg buffer.
    //    int[] data = new int[8*8+16];
    //    for (int i = 0; i < ndarrays.length; i++) {
    //        int[] shape = ndarrays[i].getShape();
    //        int[] element_shape = ndarrays[i].getElement_shape();
    //        int offset = ndarrays[i].getShape_offset() / 4;
    //        for (int j = 0; j < shape.length; j++) {
    //            data[offset + j] = shape[j];
    //        }
    //        for (int j = 0; j < element_shape.length; j++) {
    //            data[offset + j + shape.length] = element_shape[j];
    //        }
    //    }
    //    args = ByteBuffer.allocateDirect(data.length*4).order(ByteOrder.nativeOrder()).asIntBuffer();
    //    args.put(data).position(0);
    //}

    private void fillColorData() {
        // Fill color info into color buffer.
        float[] data_v = new float[NDARRAY_NUM_PARTICLE *4];
        for (int i = 0; i < NDARRAY_NUM_PARTICLE *4; i++) {
            data_v[i] = 0.9f;
        }
        color = ByteBuffer.allocateDirect(data_v.length * 4).order(ByteOrder.nativeOrder()).asFloatBuffer();
        color.put(data_v).position(0);
    }

    private void init() {
        GLES32.glBindBufferBase(GLES32.GL_SHADER_STORAGE_BUFFER, 0, root_buf);
        GLES32.glBufferData(GLES32.GL_SHADER_STORAGE_BUFFER, root_buf_size, null, GLES32.GL_DYNAMIC_COPY);
        GLES32.glBindBufferBase(GLES32.GL_SHADER_STORAGE_BUFFER, 1, global_tmp_buf);
        GLES32.glBufferData(GLES32.GL_SHADER_STORAGE_BUFFER, 16384, null, GLES32.GL_STATIC_COPY);
//        GLES32.glBindBufferBase(GLES32.GL_SHADER_STORAGE_BUFFER, 2, arg_buf);
//        GLES32.glBufferData(GLES32.GL_SHADER_STORAGE_BUFFER, 64*5, args, GLES32.GL_STATIC_READ);
//        Ndarray[] init_ndarrays = programs[0].getNdarrays();
        Kernel[] init_kernel = programs[0].getKernels();
        Kernel[] init_obstacle_kernel = programs[2].getKernels();
//        for (int i = 0; i < init_ndarrays.length; i++) {
//            GLES32.glBindBufferBase(GLES32.GL_SHADER_STORAGE_BUFFER, init_ndarrays[i].getBind_idx(), init_ndarrays[i].getSsbo());
//        }
        for (int i = 0; i < init_obstacle_kernel.length; i++) {
            GLES32.glUseProgram(init_obstacle_kernel[i].getShader_program());
            GLES32.glMemoryBarrierByRegion(GLES32.GL_SHADER_STORAGE_BARRIER_BIT);
            GLES32.glDispatchCompute(init_obstacle_kernel[i].getNum_groups(), 1, 1);
        }
        for (int i = 0; i < init_kernel.length; i++) {
            GLES32.glUseProgram(init_kernel[i].getShader_program());
            GLES32.glMemoryBarrierByRegion(GLES32.GL_SHADER_STORAGE_BARRIER_BIT);
            GLES32.glDispatchCompute(init_kernel[i].getNum_groups(), 1, 1);
        }
//        for (int i = 0; i < init_ndarrays.length; i++) {
//            GLES32.glBindBufferBase(GLES32.GL_SHADER_STORAGE_BUFFER, init_ndarrays[i].getBind_idx(), 0);
//        }
    }

    private void substep(int step) {
        GLES32.glBindBufferBase(GLES32.GL_SHADER_STORAGE_BUFFER, 0, root_buf);
        GLES32.glBindBufferBase(GLES32.GL_SHADER_STORAGE_BUFFER, 1, global_tmp_buf);
//        GLES32.glBufferData(GLES32.GL_SHADER_STORAGE_BUFFER, 80, null, GLES32.GL_STATIC_COPY);
//        GLES32.glBindBufferBase(GLES32.GL_SHADER_STORAGE_BUFFER, 2, arg_buf);
//        GLES32.glBufferData(GLES32.GL_SHADER_STORAGE_BUFFER, 64*5, args, GLES32.GL_STATIC_READ);
//        Ndarray[] substep_ndarrays = programs[1].getNdarrays();
        Kernel[] substep_kernel = programs[1].getKernels();
        Kernel[] emission_kernels = programs[3].getKernels();
//        for (int j = 0; j < substep_ndarrays.length; j++) {
//            GLES32.glBindBufferBase(GLES32.GL_SHADER_STORAGE_BUFFER, substep_ndarrays[j].getBind_idx(), substep_ndarrays[j].getSsbo());
//        }
        if (particle_num < max_particle_num - emitter_num) {
            particle_num += emitter_num;
            for (int i = 0; i < emission_kernels.length; i++) {
                GLES32.glUseProgram(emission_kernels[i].getShader_program());
                GLES32.glMemoryBarrierByRegion(GLES32.GL_SHADER_STORAGE_BARRIER_BIT);
                GLES32.glDispatchCompute(emission_kernels[i].getNum_groups(), 1, 1);
            }
        }
        for (int i = 0; i < step; i++) {
            for (int j = 0; j < substep_kernel.length; j++) {
                GLES32.glUseProgram(substep_kernel[j].getShader_program());
                GLES32.glMemoryBarrierByRegion(GLES32.GL_SHADER_STORAGE_BARRIER_BIT);
                GLES32.glDispatchCompute(substep_kernel[j].getNum_groups(), 1, 1);
            }
        }
//        for (int j = 0; j < substep_ndarrays.length; j++) {
//            GLES32.glBindBufferBase(GLES32.GL_SHADER_STORAGE_BUFFER, substep_ndarrays[j].getBind_idx(), 0);
//        }
    }

    private void render() {
        GLES32.glMemoryBarrier(GLES32.GL_VERTEX_ATTRIB_ARRAY_BARRIER_BIT);

        GLES32.glUseProgram(render_program);
//        if (USE_NDARRAY) {
//            GLES32.glBindBuffer(GLES32.GL_ARRAY_BUFFER, programs[1].getNdarrays()[0].getSsbo());
//        } else {
            GLES32.glBindBuffer(GLES32.GL_ARRAY_BUFFER, root_buf);
//        }
        GLES32.glEnableVertexAttribArray(0);
//        if (USE_NDARRAY) {
//            GLES32.glVertexAttribPointer(0, 2, GLES32.GL_FLOAT, false, 2*4, 0);
//        } else {
            // XXX : OFFSET
            GLES32.glVertexAttribPointer(0, 2, GLES32.GL_FLOAT, false, 2*4, 65576);
//        }

        GLES32.glBindBuffer(GLES32.GL_ARRAY_BUFFER, color_buf);
        GLES32.glBufferData(GLES32.GL_ARRAY_BUFFER, NDARRAY_NUM_PARTICLE*4*4, color, GLES32.GL_STATIC_DRAW);
        GLES32.glEnableVertexAttribArray(1);
        GLES32.glVertexAttribPointer(1, 4, GLES32.GL_FLOAT, false, 4*4, 0);

        GLES32.glDrawArrays(GLES32.GL_POINTS, 0, NDARRAY_NUM_PARTICLE);
    }

    private void parseJsonData(JSONObject mpm88) {
        JSONObject json_programs = (JSONObject) ((JSONObject) mpm88.get("aot_data")).get("kernels");
        root_buf_size = ((Long) ((JSONObject) mpm88.get("aot_data")).get("root_buffer_size")).intValue();
        programs = new Program[json_programs.size()];
        for (int i = 0; i < json_programs.size(); i++) {
            // Initialize program & kernel data structure.
            JSONObject cur_json_program = (JSONObject) json_programs.get(kernel_names[i]);
            JSONArray json_kernels = (JSONArray) cur_json_program.get("tasks");

            // Initialize ndarray data structure.
            JSONObject json_cur_ndarrays = (JSONObject) cur_json_program.get("arr_args");
            int ndarray_size = ((Long) cur_json_program.get("args_count")).intValue();
            Ndarray[] ndarrays = new Ndarray[ndarray_size];
            //for (int j = 0; j < json_cur_ndarrays.size(); j++) {
            //    JSONObject json_ndarray = (JSONObject) json_cur_ndarrays.get(String.valueOf(j));
            //    int dim = ((Long) json_ndarray.get("field_dim")).intValue();
            //    int[] shape = new int[dim];
            //    // Hardcode every shape you want to the specific ndarray.
            //    for (int d = 0; d < dim; d++) {
            //        shape[d] = NDARRAY_NUM_PARTICLE;
            //        if (j == 4 || j == 5) {
            //            shape[d] = NDARRAY_NUM_GRID;
            //        }
            //    }
            //    JSONArray json_element_array = (JSONArray) json_ndarray.get("element_shape");
            //    int[] element_shape = new int[json_element_array.size()];
            //    Iterator json_element_array_iterator = json_element_array.iterator();
            //    int c = 0;
            //    while (json_element_array_iterator.hasNext()) {
            //        element_shape[c] = ((Long) json_element_array_iterator.next()).intValue();
            //        c++;
            //    }
            //    int total_size = 1;
            //    for (int z = 0; z < shape.length; z++) {
            //        total_size *= shape[z];
            //    }
            //    for (int z = 0; z < element_shape.length; z++) {
            //        total_size *= element_shape[z];
            //    }
            //    ndarrays[j] = new Ndarray(
            //            dim,
            //            ((Long) json_ndarray.get("shape_offset_in_args_buf")).intValue(),
            //            total_size * 4,
            //            ((Long) json_ndarray.get("bind_index")).intValue(),
            //            shape,
            //            element_shape
            //    );
            //}

            Kernel[] kernels = new Kernel[json_kernels.size()];
            Iterator json_kernel_iterator = json_kernels.iterator();
            int k = 0;
            while (json_kernel_iterator.hasNext()) {
                JSONObject cur_json_kernel = (JSONObject) json_kernel_iterator.next();
                String type = (String) cur_json_kernel.get("type");
                int gpu_block_size = ((Long) cur_json_kernel.get("gpu_block_size")).intValue();
                int num_groups = 32;
                if (type.equals("range_for")) {
                    String hint = (String) cur_json_kernel.get("range_hint");
                    if (hint.startsWith("arg")) {
                        int arg_idx = Integer.parseInt(hint.substring(4));
                        int[] shape = ndarrays[arg_idx].getShape();
                        num_groups = 1;
                        for (int l = 0; l < shape.length; l++) {
                            num_groups *= shape[l];
                        }
                        num_groups = num_groups / gpu_block_size;
                    } else if (!hint.equals("")) {
                        num_groups = Integer.parseInt(hint) / gpu_block_size;
                    }
                } else if (type.equals("serial")) {
                    num_groups = 1;
                }
                kernels[k] = new Kernel(
                        (String) cur_json_kernel.get("name"),
                        gpu_block_size,
                        num_groups
                );
                k++;
            }

            //JSONObject json_bind_idx = (JSONObject) cur_json_program.get("used.arr_arg_to_bind_idx");
            //Integer[] bind_idx = new Integer[json_bind_idx.size()];
            //for (int j = 0; j < json_bind_idx.size(); j++) {
            //    bind_idx[j] = ((Long) json_bind_idx.get(String.valueOf(j))).intValue();
            //}
            programs[i] = new Program(kernels, ndarrays);
        }
    }

    private void generateSSBO() {
        int[] temp = new int[1];
        GLES32.glGenBuffers(1, temp, 0);
        color_buf = temp[0];
        GLES32.glGenBuffers(1, temp, 0);
        global_tmp_buf = temp[0];
        GLES32.glGenBuffers(1, temp, 0);
        arg_buf = temp[0];
        GLES32.glGenBuffers(1, temp, 0);
        root_buf = temp[0];

        //Ndarray[] init_ndarrays = programs[0].getNdarrays();
        //Ndarray[] substep_ndarrays = programs[1].getNdarrays();
        //for (int j = 0; j < substep_ndarrays.length; j++) {
        //    GLES32.glGenBuffers(1, temp, 0);
        //    if (j < init_ndarrays.length) {
        //        init_ndarrays[j].setSsbo(temp[0]);
        //    }
        //    substep_ndarrays[j].setSsbo(temp[0]);
        //    GLES32.glBindBuffer(GLES32.GL_SHADER_STORAGE_BUFFER, temp[0]);
        //    GLES32.glBufferData(GLES32.GL_SHADER_STORAGE_BUFFER, substep_ndarrays[j].getTotal_size(), null, GLES32.GL_DYNAMIC_COPY);
        //}
    }


    @RequiresApi(api = Build.VERSION_CODES.N)
    private void compileComputeShaders() {
        for (int i = 0; i < programs.length; i++) {
            Kernel[] cur_kernels = programs[i].getKernels();
            for (int j = 0; j < cur_kernels.length; j++) {
                int shader = GLES32.glCreateShader(GLES32.GL_COMPUTE_SHADER);
                InputStream raw_shader = null;
                try {
                    raw_shader = this.context.getAssets().open(folder_name + cur_kernels[j].getName() + ".glsl");
                } catch (Exception e) {
                    Log.d("Error", "compileComputeShaders: " + e);
                }
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
    }

    @RequiresApi(api = Build.VERSION_CODES.N)
    private void compileRenderShaders() {
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
    }
}
