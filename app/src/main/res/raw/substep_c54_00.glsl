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
      int BUQ = int(7);
      int BUR = D >> BUQ;
      float O = float(0.0);
      int BGg = 0;
      int C4c = int(0);
      int BGi = BGg + 311296 * C4c; // S0
      int BGj = BGi + 180224; // S11
      int CdR = int(127);
      int CdE = BUR & CdR;
      int CdG = D & CdR;
      int CdW = CdE << BUQ;
      int C4j = CdG + CdW;
      int BGn = BGj + 8 * C4j; // S11
      int BGo = BGn + 0; // S12
      _data_f32_[BGo >> 2] = O;
      int BGA = BGn + 4; // S13
      _data_f32_[BGA >> 2] = O;
      int BGH = BGi + 114688; // S14
      int BGL = BGH + 4 * C4j; // S14
      int BGM = BGL + 0; // S15
      _data_f32_[BGM >> 2] = O;
  }
}

void main()
{
  substep_c54_00();
}
