#version 310 es
layout(local_size_x = 128, local_size_y = 1, local_size_z = 1) in;
precision highp float;
layout(std430, binding = 2) buffer args_i32 { int _args_i32_[];}; 
layout(std430, binding = 5) buffer arr5_i32 { int _arr5_i32_[];}; 
layout(std430, binding = 4) buffer arr4_i32 { int _arr4_i32_[];}; 

const float inf = 1.0f / 0.0f;
const float nan = 0.0f / 0.0f;
void substep_c44_00()
{ // range for
  // range from args buffer
  int B = _args_i32_[16 + 5 * 8 + 0];
  int C = _args_i32_[16 + 5 * 8 + 1];
  int Av = B * C;
  int _beg = 0, _end = Av;
  int _sid0 = int(gl_GlobalInvocationID.x);
  for (int _sid = _sid0; _sid < (_end - _beg); _sid += int(gl_WorkGroupSize.x * gl_NumWorkGroups.x)) {
    int _itv = _beg + _sid;
      int B = _args_i32_[16 + 5 * 8 + 0];
      int C = _args_i32_[16 + 5 * 8 + 1];
      int D = _itv;
      int E = D - C * int(D / C);
      int F = D / C;
      int G = F - B * int(F / B);
      int I = int(0);
      int _li_J = 0;
      int _s0_arr4 = _args_i32_[16 + 4 * 8 + 0];
      int _s1_arr4 = _args_i32_[16 + 4 * 8 + 1];
      int _s2_arr4 = _args_i32_[16 + 4 * 8 + 2];
      { // linear seek
        _li_J *= _s0_arr4;
        _li_J += G;
        _li_J *= _s1_arr4;
        _li_J += E;
        _li_J *= _s2_arr4;
        _li_J += I;
      }
      int J = _li_J << 2;
      _arr4_i32_[J >> 2] = I;
      int L = int(1);
      int _li_M = 0;
      { // linear seek
        _li_M *= _s0_arr4;
        _li_M += G;
        _li_M *= _s1_arr4;
        _li_M += E;
        _li_M *= _s2_arr4;
        _li_M += L;
      }
      int M = _li_M << 2;
      _arr4_i32_[M >> 2] = I;
      int _li_P = 0;
      int _s0_arr5 = _args_i32_[16 + 5 * 8 + 0];
      int _s1_arr5 = _args_i32_[16 + 5 * 8 + 1];
      { // linear seek
        _li_P *= _s0_arr5;
        _li_P += G;
        _li_P *= _s1_arr5;
        _li_P += E;
      }
      int P = _li_P << 2;
      _arr5_i32_[P >> 2] = I;
  }
}

void main()
{
  substep_c44_00();
}
