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
      int C9n = int(7);
      int C9o = D >> C9n;
      float O = float(0.0);
      int BTj = 0;
      int Cjv = int(0);
      int BTl = BTj + 491520 * Cjv; // S0
      int BTm = BTl + 360448; // S14
      int Cu0 = int(127);
      int CtJ = C9o & Cu0;
      int CtL = D & Cu0;
      int Cu7 = CtJ << C9n;
      int CjC = CtL + Cu7;
      int BTq = BTm + 8 * CjC; // S14
      int BTr = BTq + 0; // S15
      _data_f32_[BTr >> 2] = O;
      int BTD = BTq + 4; // S16
      _data_f32_[BTD >> 2] = O;
      int BTK = BTl + 163840; // S17
      int BTO = BTK + 4 * CjC; // S17
      int BTP = BTO + 0; // S18
      _data_f32_[BTP >> 2] = O;
  }
}

void main()
{
  substep_c44_00();
}
