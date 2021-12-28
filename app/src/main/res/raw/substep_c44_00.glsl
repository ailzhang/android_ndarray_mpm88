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
  float F = C / E;
  int G = 28;
  _gtmp_f32_[G >> 2] = F;
  int I = _args_i32_[16 + 4 * 8 + 0];
  int J = 16;
  _gtmp_i32_[J >> 2] = I;
  float L = F * B;
  float M = L * L;
  int N = 24;
  _gtmp_f32_[N >> 2] = M;
  float P = float(0.0002);
  int Q = _args_i32_[16 + 4 * 8 + 0];
  float R = float(Q);
  float S = float(0.0078125);
  float T = R * S;
  float U = P / T;
  float V = float(min(U, P));
  int W = 20;
  _gtmp_f32_[W >> 2] = V;
  int Y = _args_i32_[16 + 5 * 8 + 0];
  int Z = 8;
  _gtmp_i32_[Z >> 2] = Y;
  int Ar = _args_i32_[16 + 5 * 8 + 1];
  int As = 4;
  _gtmp_i32_[As >> 2] = Ar;
  int Au = Y * Ar;
  int Av = 0;
  _gtmp_i32_[Av >> 2] = Au;
}

void main()
{
  substep_c44_00();
}
