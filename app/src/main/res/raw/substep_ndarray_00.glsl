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
  float E = float(D);
  int F = 0;
  _gtmp_f32_[F >> 2] = E;
  float H = C / E;
  int I = 12;
  _gtmp_f32_[I >> 2] = H;
  float K = H * B;
  float L = K * K;
  int M = 8;
  _gtmp_f32_[M >> 2] = L;
  float O = float(0.0002);
  float P = float(0.0078125);
  float Q = E * P;
  float R = O / Q;
  float S = float(min(R, O));
  int T = 4;
  _gtmp_f32_[T >> 2] = S;
}

void main()
{
  substep_c44_00();
}
