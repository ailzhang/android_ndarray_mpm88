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
      int ASw = int(7);
      int ASx = D >> ASw;
      float O = float(0.0);
      int ALi = 0;
      int AXa = int(0);
      int ALk = ALi + 491520 * AXa; // S0
      int ALl = ALk + 360448; // S14
      int B1X = int(127);
      int B1M = ASx & B1X;
      int B1O = D & B1X;
      int B21 = B1M << ASw;
      int AXh = B1O + B21;
      int ALp = ALl + 8 * AXh; // S14
      int ALq = ALp + 0; // S15
      _data_f32_[ALq >> 2] = O;
      int ALC = ALp + 4; // S16
      _data_f32_[ALC >> 2] = O;
      int ALJ = ALk + 163840; // S17
      int ALN = ALJ + 4 * AXh; // S17
      int ALO = ALN + 0; // S18
      _data_f32_[ALO >> 2] = O;
  }
}

void main()
{
  substep_c44_00();
}
