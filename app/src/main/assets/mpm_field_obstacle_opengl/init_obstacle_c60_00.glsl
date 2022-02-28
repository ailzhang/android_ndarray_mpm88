#version 310 es
layout(local_size_x = 128, local_size_y = 1, local_size_z = 1) in;
precision highp float;
layout(std430, binding = 0) buffer data_f32 { float _data_f32_[];}; 

const float inf = 1.0f / 0.0f;
const float nan = 0.0f / 0.0f;
void init_obstacle_c60_00()
{ // range for
  // range known at compile time
  int _sid0 = int(gl_GlobalInvocationID.x);
  for (int _sid = _sid0; _sid < (2); _sid += int(gl_WorkGroupSize.x * gl_NumWorkGroups.x)) {
    int _itv = 0 + _sid;
      int B = _itv;
      int C = int(1);
      int D = B << C;
      float F = float(0.0);
      int CGy = 0;
      int CJ3 = int(0);
      int CGA = CGy + 229424 * CJ3; // S0
      int CGB = CGA + 8; // S25
      int CGC = int(4);
      int CGD = D - CGC * int(D / CGC);
      int CGH = CGB + 8 * CGD; // S25
      int CGI = CGH + 0; // S26
      _data_f32_[CGI >> 2] = F;
      int CGV = CGH + 4; // S27
      _data_f32_[CGV >> 2] = F;
      int J = D + C;
      int CH3 = J - CGC * int(J / CGC);
      int CH7 = CGB + 8 * CH3; // S25
      int CH8 = CH7 + 0; // S26
      _data_f32_[CH8 >> 2] = F;
      int CHl = CH7 + 4; // S27
      _data_f32_[CHl >> 2] = F;
  }
}

void main()
{
  init_obstacle_c60_00();
}
