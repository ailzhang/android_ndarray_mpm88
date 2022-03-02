package com.example.mpm88ndarray;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.opengl.GLES32;
import android.opengl.GLUtils;
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
import java.nio.Buffer;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
import java.nio.charset.StandardCharsets;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.stream.Collectors;

import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;

 class Pair {
    String curr;
    String next;
    Pair(String _curr, String _next) {
        curr = _curr;
        next = _next;
    }
    public void swap() {
        String tmp = next;
        next = curr;
        curr = tmp;
    }
}

public class SmokeRunner {
    private Context context;
    private int root_buf_size;
    private int render_program;
    private int global_tmp_buf;
    private int root_buf;
    private int arg_buf;
    private int color_buf;
    private int texture_id;
    private int[] buffers = new int[1];
//    private Program[] programs;
    HashMap <String, Program> programs;
    private Bitmap bitmap;
    private IntBuffer args;
    private FloatBuffer color;
    private String folder_name;
    private final int max_particle_num = 4096 * 1 * 1;
    private final int emitter_num = 50;
    private int particle_num = 0;
    boolean coin = true;
    private final int jacobi_max_iter = 30;

    private long startTime;
    private Pair velocity, dye, pressure;

    // Render or test max fps.
    // XXXX
    private final boolean SHOW_MAX_FPS = false;
    // Args to set for runtime.
    // These three args only affects ndarray version (when USE_NDARRAY is set to true).
    // Remember to change location in parseJsonData when changing to mpm_int.
    private int NDARRAY_NUM_PARTICLE = 4096;
    private final int NDARRAY_NUM_GRID = 64;

    private final int SUBSTEP = 25;
    private final String[] kernel_names = {
            "init",
            "render_dye",
            "advection|vf=velocity_curr,field=velocity_curr,next_field=velocity_next,",
            "advection|vf=velocity_curr,field=dye_curr,next_field=dye_next,",
            "advection|vf=velocity_next,field=velocity_next,next_field=velocity_curr,",
            "advection|vf=velocity_next,field=dye_next,next_field=dye_curr,",
            "external_force|vf=velocity_curr,",
            "external_force|vf=velocity_next,",
            "divergence_vel|field=velocity_curr,",
            "divergence_vel|field=velocity_next,",
            "jacobi_step|p_curr=pressure_curr,p_next=pressure_next,",
            "jacobi_step|p_curr=pressure_next,p_next=pressure_curr,",
            "update_dye|dyef=dye_next,",
            "update_v|vf=velocity_next,pf=pressure_curr,",
            "update_v|vf=velocity_curr,pf=pressure_next,",
            "update_v|vf=velocity_curr,pf=pressure_curr,",
            "update_v|vf=velocity_next,pf=pressure_next,",
            "update_dye|dyef=dye_curr,",
    };

    public SmokeRunner(Context _context) {
        context = _context;
        // Open Json file.
        JSONParser parser = new JSONParser();
        InputStream jsonfile = null;
        velocity = new Pair("velocity_curr", "velocity_next");
        pressure = new Pair("pressure_curr", "pressure_next");
        dye = new Pair("dye_curr", "dye_next");

        folder_name = "smoke_field_spirv/";
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
        // XXX: note the bind_id here
        GLES32.glBindBufferBase(GLES32.GL_SHADER_STORAGE_BUFFER, 2, root_buf);
        GLES32.glBufferData(GLES32.GL_SHADER_STORAGE_BUFFER, root_buf_size, null, GLES32.GL_DYNAMIC_COPY);
        GLES32.glBindBufferBase(GLES32.GL_SHADER_STORAGE_BUFFER, 1, global_tmp_buf);
        GLES32.glBufferData(GLES32.GL_SHADER_STORAGE_BUFFER, 16384, null, GLES32.GL_STATIC_COPY);

        Kernel[] init_kernel = programs.get("init").getKernels();

        for (int i = 0; i < init_kernel.length; i++) {
            GLES32.glUseProgram(init_kernel[i].getShader_program());
            GLES32.glMemoryBarrierByRegion(GLES32.GL_SHADER_STORAGE_BARRIER_BIT);
            GLES32.glDispatchCompute(init_kernel[i].getNum_groups(), 1, 1);
        }
    }
    private void runKernel(String kernel_name) {
        Kernel [] kernel = programs.get(kernel_name).getKernels();
        for (int i = 0; i < kernel.length; i++) {
            GLES32.glUseProgram(kernel[i].getShader_program());
            GLES32.glMemoryBarrierByRegion(GLES32.GL_SHADER_STORAGE_BARRIER_BIT);
            GLES32.glDispatchCompute(kernel[i].getNum_groups(), 1, 1);
        }
    }
    private void advection(String vf, String field, String next_field) {
        String kernel_name = "advection|vf=" +vf + "," + "field=" + field + "," + "next_field=" + next_field + ",";
        runKernel(kernel_name);
    }

    private void external_force(String vf) {
        String kernel_name = "external_force|vf=" +vf + ",";
        runKernel(kernel_name);
    }

    private void divergence_vel(String field) {
        String kernel_name = "divergence_vel|field=" +field + ",";
        runKernel(kernel_name);
    }

    private void update_v(String vf, String pf) {
        String kernel_name = "update_v|vf=" + vf + "," + "pf=" + pf + ",";
        runKernel(kernel_name);
    }

    private void update_dye(String dyef) {
        String kernel_name = "update_dye|dyef=" + dyef + ",";
        runKernel(kernel_name);
    }
    private void jacobi_step(String p_curr, String p_next) {
        String kernel_name = "jacobi_step|p_curr=" + p_curr + "," + "p_next=" + p_next + ",";
        runKernel(kernel_name);
    }

    private void jacobi(Pair p) {
        for (int i = 0; i < jacobi_max_iter; i++) {
            jacobi_step(p.curr, p.next);
            p.swap();
        }
    }

    private void projection(String v_cur, Pair p) {
        divergence_vel(v_cur);
        jacobi(p);
    }
    private void substep(int step) {
        GLES32.glBindBufferBase(GLES32.GL_SHADER_STORAGE_BUFFER, 2, root_buf);
        GLES32.glBindBufferBase(GLES32.GL_SHADER_STORAGE_BUFFER, 1, global_tmp_buf);
        advection(velocity.curr, velocity.curr, velocity.next);
        advection(velocity.curr, dye.curr, dye.next);
        velocity.swap();
        dye.swap();

        external_force(velocity.curr);
        projection(velocity.curr, pressure);
        update_v(velocity.curr, pressure.curr);
        update_dye(dye.curr);
        Kernel [] render_dye = programs.get("render_dye").getKernels();
        for (int i = 0; i < render_dye.length; i++) {
            GLES32.glUseProgram(render_dye[i].getShader_program());
            GLES32.glMemoryBarrierByRegion(GLES32.GL_SHADER_STORAGE_BARRIER_BIT);
            GLES32.glDispatchCompute(render_dye[i].getNum_groups(), 1, 1);
        }
    }
    private static FloatBuffer newFloatBuffer(float[] val) {
        FloatBuffer buffer = ByteBuffer.allocateDirect(val.length * Float.SIZE / Byte.SIZE).order(ByteOrder.nativeOrder()).asFloatBuffer();
        buffer.put(val).position(0);
        return buffer;
    }

    private static int byteSize(FloatBuffer buffer) {
        return buffer.limit() * Float.SIZE / Byte.SIZE;
    }

    private static int floatBytes(int stride) {
        return stride * Float.SIZE / Byte.SIZE;
    }

    private void render() {
        GLES32.glMemoryBarrier(GLES32.GL_VERTEX_ATTRIB_ARRAY_BARRIER_BIT);
        GLES32.glClear(GLES32.GL_COLOR_BUFFER_BIT | GLES32.GL_DEPTH_BUFFER_BIT);
        GLES32.glClearColor(0f, 0f, 0f, 1f);

        GLES32.glUseProgram(render_program);

//        GLES32.glEnableVertexAttribArray(1);
//        GLES32.glVertexAttribPointer(1, 2, GLES32.GL_FLOAT, false, 4*2, 0);
        // Gen texture
        int channel = 3;
        int width = 462;
        int height = 462;

        // Load data to texture
//        GLES32.glBindBuffer(GLES32.GL_ARRAY_BUFFER, root_buf);
//      Buffer buf = GLES32.glMapBufferRange(GLES32.GL_SHADER_STORAGE_BUFFER, /*offset=*/11099088, /*range=*/width * height * channel * 4, GLES32.GL_MAP_READ_BIT);

//        GLES32.glTexImage2D(GLES32.GL_TEXTURE_2D,  0, GLES32.GL_RGBA16F, width, height, 0, GLES32.GL_FLOAT, GLES32.GL_RGBA, bitmap);
//        GLES32.glTexParameteri(GLES32.GL_TEXTURE_2D, GLES32.GL_TEXTURE_MIN_FILTER, GLES32.GL_LINEAR);
//        GLES32.glTexParameteri(GLES32.GL_TEXTURE_2D, GLES32.GL_TEXTURE_MAG_FILTER, GLES32.GL_LINEAR);
//        GLES32.glTexParameteri(GLES32.GL_TEXTURE_2D, GLES32.GL_TEXTURE_WRAP_S, GLES32.GL_CLAMP_TO_EDGE);
//        GLES32.glTexParameteri(GLES32.GL_TEXTURE_2D, GLES32.GL_TEXTURE_WRAP_T, GLES32.GL_CLAMP_TO_EDGE);
//
//        // Bind texture
//        GLES32.glBindTexture(GLES32.GL_TEXTURE_2D, texture_id);
//
//        // Draw!
//        GLES32.glActiveTexture(GLES32.GL_TEXTURE0);
//        GLES32.glUniform1i(GLES32.glGetUniformLocation(render_program, "tex"), 0);
//        GLES32.glDrawArrays(GLES32.GL_TRIANGLES, 0, 6);

        int u_sampler = GLES32.glGetUniformLocation(render_program, "u_sampler");
        int a_position = GLES32.glGetAttribLocation(render_program, "a_position");
        int a_texcoords = GLES32.glGetAttribLocation(render_program, "a_texcoords");

        GLES32.glBindTexture(GLES32.GL_TEXTURE_2D, texture_id);
        GLES32.glTexParameterf(GLES32.GL_TEXTURE_2D, GLES32.GL_TEXTURE_MIN_FILTER, GLES32.GL_LINEAR);
        GLUtils.texImage2D(GLES32.GL_TEXTURE_2D, 0, bitmap, 0);
        GLES32.glUniform1i(u_sampler, 0);

        FloatBuffer positions = newFloatBuffer(new float[] {
                // posX, posY, texS, texT
                -0.5f, -0.5f, 0.0f, 1.0f,
                0.5f, -0.5f, 1.0f, 1.0f,
                -0.5f, 0.5f, 0.0f, 0.0f,
                0.5f, 0.5f, 1.0f, 0.0f
        });
        GLES32.glGenBuffers(buffers.length, buffers, 0);
        GLES32.glBindBuffer(GLES32.GL_ARRAY_BUFFER, buffers[0]);
        GLES32.glBufferData(GLES32.GL_ARRAY_BUFFER, byteSize(positions), positions, GLES32.GL_STATIC_DRAW);

        GLES32.glVertexAttribPointer(a_position, 2, GLES32.GL_FLOAT, false, floatBytes(4), floatBytes(0));
        GLES32.glEnableVertexAttribArray(a_position);

        GLES32.glVertexAttribPointer(a_texcoords, 2, GLES32.GL_FLOAT, false, floatBytes(4), floatBytes(2));
        GLES32.glEnableVertexAttribArray(a_texcoords);

        // 画面クリアの色を指定
        GLES32.glClearColor(0, 0, 0, 1);
        GLES32.glDrawArrays(GLES32.GL_TRIANGLE_STRIP, 0, 4);
    }

    private void parseJsonData(JSONObject mpm88) {
        JSONObject json_programs = (JSONObject) ((JSONObject) mpm88.get("aot_data")).get("kernels");
        root_buf_size = ((Long) ((JSONObject) mpm88.get("aot_data")).get("root_buffer_size")).intValue();
        programs = new HashMap<String, Program>();
        for (int i = 0; i < json_programs.size(); i++) {
            // Initialize program & kernel data structure.
            JSONObject cur_json_program = (JSONObject) json_programs.get(kernel_names[i]);
            JSONArray json_kernels = (JSONArray) cur_json_program.get("tasks");

            // Initialize ndarray data structure.
            JSONObject json_cur_ndarrays = (JSONObject) cur_json_program.get("arr_args");
            int ndarray_size = ((Long) cur_json_program.get("args_count")).intValue();
            Ndarray[] ndarrays = new Ndarray[ndarray_size];

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

//            programs[i] = new Program(kernels, ndarrays);
            programs.put(kernel_names[i], new Program(kernels, ndarrays) );
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
    }


    @RequiresApi(api = Build.VERSION_CODES.N)
    private void compileComputeShaders() {
        for (String kernel_name : programs.keySet()) {
            Kernel[] cur_kernels = programs.get(kernel_name).getKernels();
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
        bitmap = BitmapFactory.decodeResource(this.context.getResources(), R.drawable.meme);
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
        int[] temp = new int[1];
        GLES32.glGenTextures(1, temp, 0);
        texture_id = temp[0];
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
