#version 310 es
layout(local_size_x = 1, local_size_y = 1, local_size_z = 1) in;
precision highp float;
layout(std430, binding = 0) buffer data_f32 { float _data_f32_[];}; 

const float inf = 1.0f / 0.0f;
const float nan = 0.0f / 0.0f;
void init_obstacle_c60_01()
{ // serial
  float P = float(0.23);
  int Q = int(0);
  float S = float(0.0);
  int CHo = 0;
  int CHq = CHo + 229424 * Q; // S0
  int CHr = CHq + 8; // S25
  int CHx = CHr + 8 * Q; // S25
  int CHy = CHx + 0; // S26
  _data_f32_[CHy >> 2] = S;
  int CHL = CHx + 4; // S27
  _data_f32_[CHL >> 2] = P;
  float W = float(1.0);
  int CKo = int(1);
  int CHX = CHr + 8 * CKo; // S25
  int CHY = CHX + 0; // S26
  _data_f32_[CHY >> 2] = W;
  int CIb = CHX + 4; // S27
  _data_f32_[CIb >> 2] = S;
  float As = float(0.15);
  float At = float(0.41);
  int CKr = int(2);
  int CIn = CHr + 8 * CKr; // S25
  int CIo = CIn + 0; // S26
  _data_f32_[CIo >> 2] = As;
  int CIB = CIn + 4; // S27
  _data_f32_[CIB >> 2] = At;
  float Az = float(0.85);
  float AA = float(0.25);
  int CKu = int(3);
  int CIN = CHr + 8 * CKu; // S25
  int CIO = CIN + 0; // S26
  _data_f32_[CIO >> 2] = Az;
  int CJ1 = CIN + 4; // S27
  _data_f32_[CJ1 >> 2] = AA;
}

void main()
{
  init_obstacle_c60_01();
}
