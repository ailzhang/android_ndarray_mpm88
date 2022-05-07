#version 310 es
layout(local_size_x = 128, local_size_y = 1, local_size_z = 1) in;
precision highp float;
layout(std430, binding = 1) buffer gtmp_i32 { int _gtmp_i32_[];}; 
layout(std430, binding = 1) buffer gtmp_f32 { float _gtmp_f32_[];}; 
layout(std430, binding = 2) buffer args_i32 { int _args_i32_[];}; 
layout(std430, binding = 2) buffer args_f32 { float _args_f32_[];}; 
layout(std430, binding = 6) buffer arr2_i32 { int _arr2_i32_[];}; 
layout(std430, binding = 6) buffer arr2_f32 { float _arr2_f32_[];}; 
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
      int _s0_arr0 = _args_i32_[16 + 0 * 8 + 0];
      int _s1_arr0 = _args_i32_[16 + 0 * 8 + 1];
      int O = D;
      O *= _s1_arr0;
      O += N;
      _arr0_f32_[O] = J;
      int Q = int(1);
      int R = D;
      R *= _s1_arr0;
      R += Q;
      _arr0_f32_[R] = L;
      int _s0_arr1 = _args_i32_[16 + 1 * 8 + 0];
      int _s1_arr1 = _args_i32_[16 + 1 * 8 + 1];
      int U = D;
      U *= _s1_arr1;
      U += N;
      float V = float(0.0);
      _arr1_f32_[U] = V;
      int X = D;
      X *= _s1_arr1;
      X += Q;
      float Y = float(-1.0);
      _arr1_f32_[X] = Y;
      int _s0_arr2 = _args_i32_[16 + 2 * 8 + 0];
      int Ar = D;
      float As = float(1.0);
      _arr2_f32_[Ar] = As;
  }
}

void main()
{
  _init_rand();
  init_c46_00();
}
