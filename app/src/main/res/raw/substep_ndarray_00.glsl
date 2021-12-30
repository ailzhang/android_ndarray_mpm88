#version 310 es
layout(local_size_x = 1, local_size_y = 1, local_size_z = 1) in;
precision highp float;
layout(std430, binding = 1) buffer gtmp_i32 { int _gtmp_i32_[];}; 
layout(std430, binding = 1) buffer gtmp_f32 { float _gtmp_f32_[];}; 
layout(std430, binding = 2) buffer args_i32 { int _args_i32_[];}; 
layout(std430, binding = 2) buffer args_f32 { float _args_f32_[];}; 

const float inf = 1.0f / 0.0f;
const float nan = 0.0f / 0.0f;
void substep_c44_00()
{ // serial
  float B = float(0.5);
  float C = float(1.0);
  int D = _args_i32_[16 + 4 * 8 + 0];
  int E = 16;
  _gtmp_i32_[E >> 2] = D;
  float G = float(D);
  int H = 0;
  _gtmp_f32_[H >> 2] = G;
  float J = C / G;
  int K = 12;
  _gtmp_f32_[K >> 2] = J;
  float M = J * B;
  float N = M * M;
  int O = 8;
  _gtmp_f32_[O >> 2] = N;
  float Q = float(0.0002);
  float R = float(0.0078125);
  float S = G * R;
  float T = Q / S;
  float U = float(min(T, Q));
  int V = 4;
  _gtmp_f32_[V >> 2] = U;
}

void main()
{
  substep_c44_00();
}
