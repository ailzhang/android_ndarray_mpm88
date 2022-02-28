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
void emission_c62_01()
{ // range for
  // range known at runtime
  int _beg = _gtmp_i32_[0 >> 2], _end = _gtmp_i32_[4 >> 2];
  int _sid0 = int(gl_GlobalInvocationID.x);
  for (int _sid = _sid0; _sid < (_end - _beg); _sid += int(gl_WorkGroupSize.x * gl_NumWorkGroups.x)) {
    int _itv = _beg + _sid;
      int K = _itv;
      float L = _rand_f32();
      float M = float(0);
      float N = float(0.1);
      float O = L * N;
      float P = float(0.07);
      float Q = O + P;
      M = Q;
      float S = _rand_f32();
      float T = float(0.5);
      int U = -int(S > T);
      int V = int(1);
      int W = U & V;
      if (W != 0) {
      } else {
        float Y = float(-Q);
        M = Y;
      }
      float Aq = _rand_f32();
      float Ar = M;
      float As = Ar + T;
      float At = float(0.2);
      float Au = Aq * At;
      float Av = float(0.7);
      float Aw = Au + Av;
      int CB5 = 0;
      int CCP = int(0);
      int CB7 = CB5 + 229424 * CCP; // S0
      int CB8 = CB7 + 65576; // S7
      int CB9 = int(4096);
      int CBa = K - CB9 * int(K / CB9);
      int CBe = CB8 + 8 * CBa; // S7
      int CBf = CBe + 0; // S8
      _data_f32_[CBf >> 2] = As;
      int CBs = CBe + 4; // S9
      _data_f32_[CBs >> 2] = Aw;
      float AC = float(0.0);
      int CBy = CB7 + 98344; // S10
      int CBE = CBy + 8 * CBa; // S10
      int CBF = CBE + 0; // S11
      _data_f32_[CBF >> 2] = AC;
      float AF = float(-1.0);
      int CBS = CBE + 4; // S12
      _data_f32_[CBS >> 2] = AF;
      float AI = float(1.0);
      int CBY = CB7 + 32808; // S18
      int CC4 = CBY + 4 * CBa; // S18
      int CC5 = CC4 + 0; // S19
      _data_f32_[CC5 >> 2] = AI;
      float AL = float(6.1035156e-05);
      int CCb = CB7 + 40; // S3
      int CCh = CCb + 4 * CBa; // S3
      int CCi = CCh + 0; // S4
      _data_f32_[CCi >> 2] = AL;
      int CCo = CB7 + 16424; // S5
      int CCu = CCo + 4 * CBa; // S5
      int CCv = CCu + 0; // S6
      _data_f32_[CCv >> 2] = AL;
  }
}

void main()
{
  _init_rand();
  emission_c62_01();
}
