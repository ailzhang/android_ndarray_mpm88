#version 310 es
layout(local_size_x = 128, local_size_y = 1, local_size_z = 1) in;
precision highp float;
layout(std430, binding = 0) buffer data_i32 { int _data_i32_[];}; 
layout(std430, binding = 0) buffer data_f32 { float _data_f32_[];}; 
layout(std430, binding = 1) buffer gtmp_i32 { int _gtmp_i32_[];}; 
layout(std430, binding = 1) buffer gtmp_f32 { float _gtmp_f32_[];}; 

uvec4 _rand_; void _init_rand() { int RAND_STATE = 1024; uint i = (7654321u + gl_GlobalInvocationID.x) * (1234567u + 9723451u * uint(_gtmp_i32_[RAND_STATE])); _rand_.x = 123456789u * i * 1000000007u; _rand_.y = 362436069u; _rand_.z = 521288629u; _rand_.w = 88675123u; _gtmp_i32_[RAND_STATE] += 1; } uint _rand_u32() { uint t = _rand_.x ^ (_rand_.x << 11); _rand_.xyz = _rand_.yzw; _rand_.w = (_rand_.w ^ (_rand_.w >> 19)) ^ (t ^ (t >> 8)); return _rand_.w * 1000000007u; } float _rand_f32() { return float(_rand_u32()) * (1.0 / 4294967296.0); } int _rand_i32() { return int(_rand_u32()); }
const float inf = 1.0f / 0.0f;
const float nan = 0.0f / 0.0f;
void init_c46_00()
{ // range for
  // range known at compile time
  int _sid0 = int(gl_GlobalInvocationID.x);
  for (int _sid = _sid0; _sid < (4096); _sid += int(gl_WorkGroupSize.x * gl_NumWorkGroups.x)) {
    int _itv = 0 + _sid;
      int B = _itv;
      float C = _rand_f32();
      float D = _rand_f32();
      float E = float(0.4);
      float F = C * E;
      float G = float(0.2);
      float H = F + G;
      float I = D * E;
      float J = I + G;
      int Bl = 0;
      int Cs = int(0);
      int Bn = Bl + 344064 * Cs; // S0
      int Bo = Bn + 16384; // S1
      int Ca = int(4095);
      int Cb = B & Ca;
      int Br = Bo + 8 * Cb; // S1
      int Bs = Br + 0; // S2
      _data_f32_[Bs >> 2] = H;
      int BC = Br + 4; // S3
      _data_f32_[BC >> 2] = J;
      float P = float(0.0);
      int BI = Bn + 49152; // S4
      int BL = BI + 8 * Cb; // S4
      int BM = BL + 0; // S5
      _data_f32_[BM >> 2] = P;
      float S = float(-1.0);
      int BW = BL + 4; // S6
      _data_f32_[BW >> 2] = S;
      float V = float(1.0);
      int C2 = Bn + 0; // S12
      int C5 = C2 + 4 * Cb; // S12
      int C6 = C5 + 0; // S13
      _data_f32_[C6 >> 2] = V;
  }
}

void main()
{
  _init_rand();
  init_c46_00();
}
