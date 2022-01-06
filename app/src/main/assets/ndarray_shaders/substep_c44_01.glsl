#version 310 es
layout(local_size_x = 128, local_size_y = 1, local_size_z = 1) in;
precision highp float;
layout(std430, binding = 1) buffer gtmp_i32 { int _gtmp_i32_[];}; 
layout(std430, binding = 1) buffer gtmp_f32 { float _gtmp_f32_[];}; 
layout(std430, binding = 2) buffer args_i32 { int _args_i32_[];}; 
layout(std430, binding = 2) buffer args_f32 { float _args_f32_[];}; 
layout(std430, binding = 5) buffer arr5_i32 { int _arr5_i32_[];}; 
layout(std430, binding = 5) buffer arr5_f32 { float _arr5_f32_[];}; 
layout(std430, binding = 4) buffer arr4_i32 { int _arr4_i32_[];}; 
layout(std430, binding = 4) buffer arr4_f32 { float _arr4_f32_[];}; 

const float inf = 1.0f / 0.0f;
const float nan = 0.0f / 0.0f;
void substep_c44_01()
{ // range for
  // range from args buffer
  int W = _args_i32_[16 + 5 * 8 + 0];
  int X = _args_i32_[16 + 5 * 8 + 1];
  int Ax = W * X;
  int _beg = 0, _end = Ax;
  int _sid0 = int(gl_GlobalInvocationID.x);
  for (int _sid = _sid0; _sid < (_end - _beg); _sid += int(gl_WorkGroupSize.x * gl_NumWorkGroups.x)) {
    int _itv = _beg + _sid;
      int W = _args_i32_[16 + 5 * 8 + 0];
      int X = _args_i32_[16 + 5 * 8 + 1];
      int Y = _itv;
      int Z = Y - X * int(Y / X);
      int Aq = Y / X;
      int Ar = Aq - W * int(Aq / W);
      int At = int(0);
      int _li_Au = 0;
      int _s0_arr4 = _args_i32_[16 + 4 * 8 + 0];
      int _s1_arr4 = _args_i32_[16 + 4 * 8 + 1];
      int _s2_arr4 = _args_i32_[16 + 4 * 8 + 2];
      { // linear seek
        _li_Au *= _s0_arr4;
        _li_Au += Ar;
        _li_Au *= _s1_arr4;
        _li_Au += Z;
        _li_Au *= _s2_arr4;
        _li_Au += At;
      }
      int Au = _li_Au << 2;
      float Av = float(0.0);
      _arr4_f32_[Au >> 2] = Av;
      int Ax = int(1);
      int _li_Ay = 0;
      { // linear seek
        _li_Ay *= _s0_arr4;
        _li_Ay += Ar;
        _li_Ay *= _s1_arr4;
        _li_Ay += Z;
        _li_Ay *= _s2_arr4;
        _li_Ay += Ax;
      }
      int Ay = _li_Ay << 2;
      _arr4_f32_[Ay >> 2] = Av;
      int _li_AB = 0;
      int _s0_arr5 = _args_i32_[16 + 5 * 8 + 0];
      int _s1_arr5 = _args_i32_[16 + 5 * 8 + 1];
      { // linear seek
        _li_AB *= _s0_arr5;
        _li_AB += Ar;
        _li_AB *= _s1_arr5;
        _li_AB += Z;
      }
      int AB = _li_AB << 2;
      _arr5_f32_[AB >> 2] = Av;
  }
}

void main()
{
  substep_c44_01();
}
