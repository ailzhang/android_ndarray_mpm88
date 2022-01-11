#version 310 es
layout(local_size_x = 128, local_size_y = 1, local_size_z = 1) in;
precision highp float;
layout(std430, binding = 1) buffer gtmp_i32 { int _gtmp_i32_[];}; 
layout(std430, binding = 1) buffer gtmp_f32 { float _gtmp_f32_[];}; 
layout(std430, binding = 2) buffer args_i32 { int _args_i32_[];}; 
layout(std430, binding = 2) buffer args_f32 { float _args_f32_[];}; 
layout(std430, binding = 7) buffer arr2_i32 { int _arr2_i32_[];}; 
layout(std430, binding = 7) buffer arr2_f32 { float _arr2_f32_[];}; 
layout(std430, binding = 6) buffer arr3_i32 { int _arr3_i32_[];}; 
layout(std430, binding = 6) buffer arr3_f32 { float _arr3_f32_[];}; 
layout(std430, binding = 5) buffer arr1_i32 { int _arr1_i32_[];}; 
layout(std430, binding = 5) buffer arr1_f32 { float _arr1_f32_[];}; 
layout(std430, binding = 4) buffer arr0_i32 { int _arr0_i32_[];}; 
layout(std430, binding = 4) buffer arr0_f32 { float _arr0_f32_[];}; 

uvec4 _rand_; void _init_rand() { int RAND_STATE = 1024; uint i = (7654321u + gl_GlobalInvocationID.x) * (1234567u + 9723451u * uint(_gtmp_i32_[RAND_STATE])); _rand_.x = 123456789u * i * 1000000007u; _rand_.y = 362436069u; _rand_.z = 521288629u; _rand_.w = 88675123u; _gtmp_i32_[RAND_STATE] += 1; } uint _rand_u32() { uint t = _rand_.x ^ (_rand_.x << 11); _rand_.xyz = _rand_.yzw; _rand_.w = (_rand_.w ^ (_rand_.w >> 19)) ^ (t ^ (t >> 8)); return _rand_.w * 1000000007u; } float _rand_f32() { return float(_rand_u32()) * (1.0 / 4294967296.0); } int _rand_i32() { return int(_rand_u32()); }
const float inf = 1.0f / 0.0f;
const float nan = 0.0f / 0.0f;
void init_c46_00()
{ // range for
  // range from args buffer
  int B = _args_i32_[16 + 0 * 8 + 0];
  int _beg = 0, _end = B;
  int _sid0 = int(gl_GlobalInvocationID.x);
  for (int _sid = _sid0; _sid < (_end - _beg); _sid += int(gl_WorkGroupSize.x * gl_NumWorkGroups.x)) {
    int _itv = _beg + _sid;
      int B = _args_i32_[16 + 0 * 8 + 0];
      int C = _itv;
      int D = C - B * int(C / B);
      float E = _rand_f32();
      float F = _rand_f32();
      float G = float(0.4);
      float H = E * G;
      float I = float(0.2);
      float J = H + I;
      float K = F * G;
      float L = K + I;
      int N = int(0);
      int _li_O = 0;
      int _s0_arr0 = _args_i32_[16 + 0 * 8 + 0];
      int _s1_arr0 = _args_i32_[16 + 0 * 8 + 1];
      { // linear seek
        _li_O *= _s0_arr0;
        _li_O += D;
        _li_O *= _s1_arr0;
        _li_O += N;
      }
      int O = _li_O << 2;
      _arr0_f32_[O >> 2] = J;
      int Q = int(1);
      int _li_R = 0;
      { // linear seek
        _li_R *= _s0_arr0;
        _li_R += D;
        _li_R *= _s1_arr0;
        _li_R += Q;
      }
      int R = _li_R << 2;
      _arr0_f32_[R >> 2] = L;
      int _li_U = 0;
      int _s0_arr1 = _args_i32_[16 + 1 * 8 + 0];
      int _s1_arr1 = _args_i32_[16 + 1 * 8 + 1];
      { // linear seek
        _li_U *= _s0_arr1;
        _li_U += D;
        _li_U *= _s1_arr1;
        _li_U += N;
      }
      int U = _li_U << 2;
      float V = float(0.0);
      _arr1_f32_[U >> 2] = V;
      int _li_X = 0;
      { // linear seek
        _li_X *= _s0_arr1;
        _li_X += D;
        _li_X *= _s1_arr1;
        _li_X += Q;
      }
      int X = _li_X << 2;
      _arr1_f32_[X >> 2] = V;
      int _li_Aq = 0;
      int _s0_arr3 = _args_i32_[16 + 3 * 8 + 0];
      int _s1_arr3 = _args_i32_[16 + 3 * 8 + 1];
      int _s2_arr3 = _args_i32_[16 + 3 * 8 + 2];
      { // linear seek
        _li_Aq *= _s0_arr3;
        _li_Aq += D;
        _li_Aq *= _s1_arr3;
        _li_Aq += N;
        _li_Aq *= _s2_arr3;
        _li_Aq += N;
      }
      int Aq = _li_Aq << 2;
      float Ar = float(1.0);
      _arr3_f32_[Aq >> 2] = Ar;
      int _li_At = 0;
      { // linear seek
        _li_At *= _s0_arr3;
        _li_At += D;
        _li_At *= _s1_arr3;
        _li_At += N;
        _li_At *= _s2_arr3;
        _li_At += Q;
      }
      int At = _li_At << 2;
      _arr3_f32_[At >> 2] = V;
      int _li_Av = 0;
      { // linear seek
        _li_Av *= _s0_arr3;
        _li_Av += D;
        _li_Av *= _s1_arr3;
        _li_Av += Q;
        _li_Av *= _s2_arr3;
        _li_Av += N;
      }
      int Av = _li_Av << 2;
      _arr3_f32_[Av >> 2] = V;
      int _li_Ax = 0;
      { // linear seek
        _li_Ax *= _s0_arr3;
        _li_Ax += D;
        _li_Ax *= _s1_arr3;
        _li_Ax += Q;
        _li_Ax *= _s2_arr3;
        _li_Ax += Q;
      }
      int Ax = _li_Ax << 2;
      _arr3_f32_[Ax >> 2] = Ar;
      int _li_AA = 0;
      int _s0_arr2 = _args_i32_[16 + 2 * 8 + 0];
      { // linear seek
        _li_AA *= _s0_arr2;
        _li_AA += D;
      }
      int AA = _li_AA << 2;
      _arr2_f32_[AA >> 2] = Ar;
  }
}

void main()
{
  _init_rand();
  init_c46_00();
}
