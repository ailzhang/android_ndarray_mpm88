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
void init_c46_01()
{ // range for
  // range known at runtime
  int _beg = 0, _end = _gtmp_i32_[0 >> 2];
  int _sid0 = int(gl_GlobalInvocationID.x);
  for (int _sid = _sid0; _sid < (_end - _beg); _sid += int(gl_WorkGroupSize.x * gl_NumWorkGroups.x)) {
    int _itv = _beg + _sid;
      int F = _itv;
      int G = 0;
      int H = _gtmp_i32_[G >> 2];
      int I = F - H * int(F / H);
      float J = _rand_f32();
      float K = _rand_f32();
      float L = float(0.4);
      float M = J * L;
      float N = float(0.2);
      float O = M + N;
      float P = K * L;
      float Q = P + N;
      int S = int(0);
      int _li_T = 0;
      { // linear seek
        int _s0_T = _args_i32_[16 + 0 * 8 + 0];
        int _s1_T = _args_i32_[16 + 0 * 8 + 1];
        _li_T *= _s0_T;
        _li_T += I;
        _li_T *= _s1_T;
        _li_T += S;
      }
      int T = _li_T << 2;
      _arr0_f32_[T >> 2] = O;
      int V = int(1);
      int _li_W = 0;
      { // linear seek
        int _s0_W = _args_i32_[16 + 0 * 8 + 0];
        int _s1_W = _args_i32_[16 + 0 * 8 + 1];
        _li_W *= _s0_W;
        _li_W += I;
        _li_W *= _s1_W;
        _li_W += V;
      }
      int W = _li_W << 2;
      _arr0_f32_[W >> 2] = Q;
      int _li_Z = 0;
      { // linear seek
        int _s0_Z = _args_i32_[16 + 1 * 8 + 0];
        int _s1_Z = _args_i32_[16 + 1 * 8 + 1];
        _li_Z *= _s0_Z;
        _li_Z += I;
        _li_Z *= _s1_Z;
        _li_Z += S;
      }
      int Z = _li_Z << 2;
      float Aq = float(0.0);
      _arr1_f32_[Z >> 2] = Aq;
      int _li_As = 0;
      { // linear seek
        int _s0_As = _args_i32_[16 + 1 * 8 + 0];
        int _s1_As = _args_i32_[16 + 1 * 8 + 1];
        _li_As *= _s0_As;
        _li_As += I;
        _li_As *= _s1_As;
        _li_As += V;
      }
      int As = _li_As << 2;
      float At = float(-1.0);
      _arr1_f32_[As >> 2] = At;
      int _li_Aw = 0;
      { // linear seek
        int _s0_Aw = _args_i32_[16 + 2 * 8 + 0];
        _li_Aw *= _s0_Aw;
        _li_Aw += I;
      }
      int Aw = _li_Aw << 2;
      float Ax = float(1.0);
      _arr2_f32_[Aw >> 2] = Ax;
  }
}

void main()
{
  _init_rand();
  init_c46_01();
}
