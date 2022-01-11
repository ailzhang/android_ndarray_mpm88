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
      int C = _itv;
      float I = _rand_f32();
      float J = _rand_f32();
      float K = float(0.4);
      float L = I * K;
      float M = float(0.2);
      float N = L + M;
      float O = J * K;
      float P = O + M;
      int Cd = 0;
      int Ei = int(0);
      int Cf = Cd + 262144 * Ei; // S0
      int Cg = Cf + 32768; // S1
      int F9 = int(4095);
      int F2 = C & F9;
      int Cj = Cg + 8 * F2; // S1
      int Ck = Cj + 0; // S2
      _data_f32_[Ck >> 2] = N;
      int Cu = Cj + 4; // S3
      _data_f32_[Cu >> 2] = P;
      float V = float(0.0);
      int CA = Cf + 65536; // S4
      int CD = CA + 8 * F2; // S4
      int CE = CD + 0; // S5
      _data_f32_[CE >> 2] = V;
      int CO = CD + 4; // S6
      _data_f32_[CO >> 2] = V;
      float Aq = float(1.0);
      int CU = Cf + 196608; // S12
      int CX = CU + 16 * F2; // S12
      int CY = CX + 0; // S13
      _data_f32_[CY >> 2] = Aq;
      int D8 = CX + 4; // S14
      _data_f32_[D8 >> 2] = V;
      int Di = CX + 8; // S15
      _data_f32_[Di >> 2] = V;
      int Ds = CX + 12; // S16
      _data_f32_[Ds >> 2] = Aq;
      int Dy = Cf + 0; // S17
      int DB = Dy + 4 * F2; // S17
      int DC = DB + 0; // S18
      _data_f32_[DC >> 2] = Aq;
  }
}

void main()
{
  _init_rand();
  init_c46_00();
}
