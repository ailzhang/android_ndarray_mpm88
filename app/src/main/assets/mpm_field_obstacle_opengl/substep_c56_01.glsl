#version 310 es
layout(local_size_x = 128, local_size_y = 1, local_size_z = 1) in;
precision highp float;
layout(std430, binding = 0) buffer data_i32 { int _data_i32_[];}; 
layout(std430, binding = 0) buffer data_f32 { float _data_f32_[];}; 
layout(std430, binding = 1) buffer gtmp_i32 { int _gtmp_i32_[];}; 
layout(std430, binding = 1) buffer gtmp_f32 { float _gtmp_f32_[];}; 

const float inf = 1.0f / 0.0f;
const float nan = 0.0f / 0.0f;
void substep_c56_01()
{ // range for
  // range known at compile time
  int _sid0 = int(gl_GlobalInvocationID.x);
  for (int _sid = _sid0; _sid < (4096); _sid += int(gl_WorkGroupSize.x * gl_NumWorkGroups.x)) {
    int _itv = 0 + _sid;
      int I = _itv;
      int K = int(4096);
      int L = I - K * int(I / K);
      int P = L - K * int(L / K);
      int Q = int(64);
      int R = P / Q;
      int W = L - Q * int(L / Q);
      float At = float(0.0);
      int BX7 = 0;
      int CmW = int(0);
      int BX9 = BX7 + 229424 * CmW; // S0
      int BXa = BX9 + 131112; // S20
      int BXc = R - Q * int(R / Q);
      int BXg = W - Q * int(W / Q);
      int Cy9 = int(6);
      int Cya = BXc << Cy9;
      int Cn3 = BXg + Cya;
      int BXk = BXa + 8 * Cn3; // S20
      int BXl = BXk + 0; // S21
      _data_f32_[BXl >> 2] = At;
      int BXD = BXk + 4; // S22
      _data_f32_[BXD >> 2] = At;
      int BXK = BX9 + 49192; // S23
      int BXU = BXK + 4 * Cn3; // S23
      int BXV = BXU + 0; // S24
      _data_f32_[BXV >> 2] = At;
  }
}

void main()
{
  substep_c56_01();
}
