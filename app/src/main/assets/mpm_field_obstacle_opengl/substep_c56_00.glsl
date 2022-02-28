#version 310 es
layout(local_size_x = 1, local_size_y = 1, local_size_z = 1) in;
precision highp float;
layout(std430, binding = 0) buffer data_i32 { int _data_i32_[];}; 
layout(std430, binding = 1) buffer gtmp_i32 { int _gtmp_i32_[];}; 

const float inf = 1.0f / 0.0f;
const float nan = 0.0f / 0.0f;
void substep_c56_00()
{ // serial
  int BWX = 0;
  int CmU = int(0);
  int BWZ = BWX + 229424 * CmU; // S0
  int BX0 = BWZ + 0; // S1
  int BX2 = BX0 + 4 * CmU; // S1
  int BX3 = BX2 + 0; // S2
  int C = _data_i32_[BX3 >> 2];
  int D = 0;
  _gtmp_i32_[D >> 2] = C;
}

void main()
{
  substep_c56_00();
}
