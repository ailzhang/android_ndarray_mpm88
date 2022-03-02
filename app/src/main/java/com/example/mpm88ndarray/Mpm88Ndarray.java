package com.example.mpm88ndarray;

import android.content.Context;
import android.opengl.GLSurfaceView;
import android.opengl.GLES32;
import android.os.Build;

import androidx.annotation.RequiresApi;

import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;


public class Mpm88Ndarray implements GLSurfaceView.Renderer{
    private Mpm88Runner mpm88_demo;
    private MpmObstacleRunner mpm_obstacle_demo;
    private SmokeRunner smoke_demo;
//    private final String demo_name = "mpm88";
//    private final String demo_name = "mpm_obstacle";
    private final String demo_name = "smoke";

    public Mpm88Ndarray (Context context) {
        if (demo_name.equals("mpm88")) {
            mpm88_demo = new Mpm88Runner(context);
        } else if (demo_name.equals("mpm_obstacle")) {
           mpm_obstacle_demo = new MpmObstacleRunner(context);
        } else if (demo_name.equals("smoke")) {
            smoke_demo = new SmokeRunner(context);
        }
    }

    @RequiresApi(api = Build.VERSION_CODES.N)
    @Override
    public void onSurfaceCreated(GL10 gl, EGLConfig config) {
        if (demo_name.equals("mpm88")) {
            mpm88_demo.onsurfacecreated(gl, config);
        } else if (demo_name.equals("mpm_obstacle")) {
            mpm_obstacle_demo.onsurfacecreated(gl, config);
        } else if (demo_name.equals("smoke")) {
            smoke_demo.onsurfacecreated(gl, config);
        }
    }

    @Override
    public void onSurfaceChanged(GL10 gl, int width, int height) {
        GLES32.glViewport(0, 0, width, height);
    }

    @Override
    public void onDrawFrame(GL10 gl) {
        if (demo_name.equals("mpm88")) {
            mpm88_demo.ondrawframe(gl);
        } else if (demo_name.equals("mpm_obstacle")) {
            mpm_obstacle_demo.ondrawframe(gl);
        } else if (demo_name.equals("smoke")) {
            smoke_demo.ondrawframe(gl);
        }
    }

}
