#version 310 es
layout(local_size_x = 128, local_size_y = 1, local_size_z = 1) in;
precision highp float;
layout(std430, binding = 0) buffer data_f32 { float _data_f32_[];}; 

const float inf = 1.0f / 0.0f;
const float nan = 0.0f / 0.0f;
void substep_c54_00()
{ // range for
  // range known at compile time
  int _sid0 = int(gl_GlobalInvocationID.x);
  for (int _sid = _sid0; _sid < (16384); _sid += int(gl_WorkGroupSize.x * gl_NumWorkGroups.x)) {
    int _itv = 0 + _sid;
      int D = _itv;
      int BT5 = int(7);
      int BT6 = D >> BT5;
      float O = float(0.0);
      int BGV = 0;
      int C1t = int(0);
      int BGX = BGV + 196608 * C1t; // S0
      int BGY = BGX + 65536; // S1
      int C9V = int(127);
      int C9I = BT6 & C9V;
      int C9K = D & C9V;
      int Ca0 = C9I << BT5;
      int C1A = C9K + Ca0;
      int BH2 = BGY + 8 * C1A; // S1
      int BH3 = BH2 + 0; // S2
      _data_f32_[BH3 >> 2] = O;
      int BHf = BH2 + 4; // S3
      _data_f32_[BHf >> 2] = O;
      int BHm = BGX + 0; // S4
      int BHq = BHm + 4 * C1A; // S4
      int BHr = BHq + 0; // S5
      _data_f32_[BHr >> 2] = O;
  }
}

void main()
{
  substep_c54_00();
}
