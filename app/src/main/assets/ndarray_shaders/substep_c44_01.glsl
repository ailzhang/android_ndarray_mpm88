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
  int Y = _args_i32_[32 + 5 * 8 + 0];
  int Z = _args_i32_[32 + 5 * 8 + 1];
  int AE = Y * Z;
  int _beg = 0, _end = AE;
  int _sid0 = int(gl_GlobalInvocationID.x);
  for (int _sid = _sid0; _sid < (_end - _beg); _sid += int(gl_WorkGroupSize.x * gl_NumWorkGroups.x)) {
    int _itv = _beg + _sid;
      int Y = _args_i32_[32 + 5 * 8 + 0];
      int Z = _args_i32_[32 + 5 * 8 + 1];
      int Aq = _itv;
      int Ar = Aq - Z * int(Aq / Z);
      int As = Aq / Z;
      int At = As - Y * int(As / Y);
      int Av = int(0);
      int _li_Aw = 0;
      int _s0_arr4 = _args_i32_[32 + 4 * 8 + 0];
      int _s1_arr4 = _args_i32_[32 + 4 * 8 + 1];
      int _s2_arr4 = _args_i32_[32 + 4 * 8 + 2];
      { // linear seek
        _li_Aw *= _s0_arr4;
        _li_Aw += At;
        _li_Aw *= _s1_arr4;
        _li_Aw += Ar;
        _li_Aw *= _s2_arr4;
        _li_Aw += Av;
      }
      int Aw = _li_Aw << 2;
      float Ax = float(0.0);
      _arr4_f32_[Aw >> 2] = Ax;
      int Az = int(1);
      int _li_AA = 0;
      { // linear seek
        _li_AA *= _s0_arr4;
        _li_AA += At;
        _li_AA *= _s1_arr4;
        _li_AA += Ar;
        _li_AA *= _s2_arr4;
        _li_AA += Az;
      }
      int AA = _li_AA << 2;
      _arr4_f32_[AA >> 2] = Ax;
      int _li_AD = 0;
      int _s0_arr5 = _args_i32_[32 + 5 * 8 + 0];
      int _s1_arr5 = _args_i32_[32 + 5 * 8 + 1];
      { // linear seek
        _li_AD *= _s0_arr5;
        _li_AD += At;
        _li_AD *= _s1_arr5;
        _li_AD += Ar;
      }
      int AD = _li_AD << 2;
      _arr5_f32_[AD >> 2] = Ax;
  }
}

void main()
{
  substep_c44_01();
}
