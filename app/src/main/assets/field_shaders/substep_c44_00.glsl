#version 310 es
layout(local_size_x = 128, local_size_y = 1, local_size_z = 1) in;
precision highp float;
layout(std430, binding = 0) buffer data_f32 { float _data_f32_[];}; 

const float inf = 1.0f / 0.0f;
const float nan = 0.0f / 0.0f;
void substep_c44_00()
{ // range for
  // range known at compile time
  int _sid0 = int(gl_GlobalInvocationID.x);
  for (int _sid = _sid0; _sid < (16384); _sid += int(gl_WorkGroupSize.x * gl_NumWorkGroups.x)) {
    int _itv = 0 + _sid;
      int D = _itv;
      int T4 = int(7);
      int T5 = D >> T4;
      float O = float(0.0);
      int Qu = 0;
      int UC = int(0);
      int Qw = Qu + 491520 * UC; // S0
      int Qx = Qw + 360448; // S14
      int Wj = int(127);
      int W8 = T5 & Wj;
      int Wa = D & Wj;
      int Wn = W8 << T4;
      int UJ = Wa + Wn;
      int QB = Qx + 8 * UJ; // S14
      int QC = QB + 0; // S15
      _data_f32_[QC >> 2] = O;
  }
}

void main()
{
  substep_c44_00();
}
