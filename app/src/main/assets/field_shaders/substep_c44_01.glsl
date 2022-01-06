#version 310 es
layout(local_size_x = 128, local_size_y = 1, local_size_z = 1) in;
precision highp float;
layout(std430, binding = 0) buffer data_i32 { int _data_i32_[];}; 
layout(std430, binding = 0) buffer data_f32 { float _data_f32_[];}; 
float atomicAdd_data_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _data_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) + rhs)); } while (old_val != atomicCompSwap(_data_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicSub_data_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _data_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) - rhs)); } while (old_val != atomicCompSwap(_data_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMax_data_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _data_i32_[addr]; new_val = floatBitsToInt(max(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_data_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMin_data_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _data_i32_[addr]; new_val = floatBitsToInt(min(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_data_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); }
const float inf = 1.0f / 0.0f;
const float nan = 0.0f / 0.0f;
void substep_c44_01()
{ // range for
  // range known at compile time
  int _sid0 = int(gl_GlobalInvocationID.x);
  for (int _sid = _sid0; _sid < (8192); _sid += int(gl_WorkGroupSize.x * gl_NumWorkGroups.x)) {
    int _itv = 0 + _sid;
      int W = _itv;
      int R3 = 0;
      int V0 = int(0);
      int R5 = R3 + 491520 * V0; // S0
      int R6 = R5 + 32768; // S1
      int Wl = int(8191);
      int Wc = W & Wl;
      int R9 = R6 + 8 * Wc; // S1
      int Ra = R9 + 0; // S2
      float At = _data_f32_[Ra >> 2];
      float Au = float(128.0);
      float Av = At * Au;
      int Rk = R9 + 4; // S3
      float Ax = _data_f32_[Rk >> 2];
      float Ay = Ax * Au;
      float Az = float(0.5);
      float AA = Av - Az;
      float AB = Ay - Az;
      int AC = int(AA);
      int AD = int(AB);
      float AE = float(AC);
      float AF = Av - AE;
      float AG = float(AD);
      float AH = Ay - AG;
      float AI = float(1.5);
      float AJ = AI - AF;
      float AK = AI - AH;
      float AL = AJ * AJ;
      float AM = AK * AK;
      float AN = AL * Az;
      float AO = AM * Az;
      int Rq = R5 + 0; // S12
      int Rt = Rq + 4 * Wc; // S12
      int Ru = Rt + 0; // S13
      float AQ = _data_f32_[Ru >> 2];
      float AR = float(1.0);
      float AS = AQ - AR;
      float AT = float(-0.08);
      float AU = AS * AT;
      int RA = R5 + 229376; // S7
      int RD = RA + 16 * Wc; // S7
      int RE = RD + 0; // S8
      float AW = _data_f32_[RE >> 2];
      float AX = float(1.5258789e-05);
      float AY = AW * AX;
      int RO = RD + 4; // S9
      float B0 = _data_f32_[RO >> 2];
      float B1 = B0 * AX;
      int RY = RD + 8; // S10
      float B3 = _data_f32_[RY >> 2];
      float B4 = B3 * AX;
      int S8 = RD + 12; // S11
      float B6 = _data_f32_[S8 >> 2];
      float B7 = B6 * AX;
      float B8 = AU + AY;
      float B9 = AU + B7;
      float Ba = float(0.0);
      float Bb = Ba - AF;
      float Bc = Ba - AH;
      float Bd = float(0.0078125);
      float Be = Bb * Bd;
      float Bf = Bc * Bd;
      float Bg = AN * AO;
      int Se = R5 + 98304; // S4
      int Sh = Se + 8 * Wc; // S4
      int Si = Sh + 0; // S5
      float Bi = _data_f32_[Si >> 2];
      float Bj = Bi * AX;
      int Ss = Sh + 4; // S6
      float Bl = _data_f32_[Ss >> 2];
      float Bm = Bl * AX;
      float Bn = B8 * Be;
      float Bo = B1 * Bf;
      float Bp = Bn + Bo;
      float Bq = B4 * Be;
      float Br = B9 * Bf;
      float Bs = Bq + Br;
      float Bt = Bj + Bp;
      float Bu = Bm + Bs;
      float Bv = Bg * Bt;
      float Bw = Bg * Bu;
      int Sz = R5 + 360448; // S14
      int Ug = int(127);
      int Uh = AC & Ug;
      int Ul = AD & Ug;
      int Wo = int(7);
      int Wp = Uh << Wo;
      int VQ = Ul + Wp;
      int SD = Sz + 8 * VQ; // S14
      int SE = SD + 0; // S15
      float By;
      { // Begin Atomic Op
      By = atomicAdd_data_f32(SE >> 2, Bv);
      } // End Atomic Op
  }
}

void main()
{
  substep_c44_01();
}
