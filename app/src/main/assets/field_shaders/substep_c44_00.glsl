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
      int CjJ = int(0);
      int Ca5 = int(127);
      float V = float(0.0);
      int D = _itv;
      int C9B = int(7);
      int C9C = D >> C9B;
      int C9E = C9C & Ca5;
      int C9I = D & Ca5;
      int N = int(96);
      int O = -int(C9E < N);
      int R = -int(C9I < N);
      int S = O & R;
      if (S != 0) {
        int BTx = 0;
        int BTz = BTx + 344064 * CjJ; // S0
        int BTA = BTz + 212992; // S14
        int Cul = C9E << C9B;
        int CjQ = C9I + Cul;
        int BTE = BTA + 8 * CjQ; // S14
        int BTF = BTE + 0; // S15
        _data_f32_[BTF >> 2] = V;
        int BTR = BTE + 4; // S16
        _data_f32_[BTR >> 2] = V;
        int BTY = BTz + 147456; // S17
        int BU2 = BTY + 4 * CjQ; // S17
        int BU3 = BU2 + 0; // S18
        _data_f32_[BU3 >> 2] = V;
      }
  }
}

void main()
{
  substep_c44_00();
}
