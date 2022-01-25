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
      int BTS = 0;
      int CjT = int(0);
      int BTU = BTS + 491520 * CjT; // S0
      int BTV = BTU + 32768; // S1
      int Cu2 = int(8191);
      int CtN = W & Cu2;
      int CjV = int(1);
      int BTY = BTV + 8 * CtN; // S1
      int BTZ = BTY + 0; // S2
      float At = _data_f32_[BTZ >> 2];
      float Au = float(128.0);
      float Av = At * Au;
      int BU9 = BTY + 4; // S3
      float Ax = _data_f32_[BU9 >> 2];
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
      float AP = float(1.0);
      float AQ = AF - AP;
      float AR = AH - AP;
      float AS = AQ * AQ;
      float AT = AR * AR;
      float AU = float(0.75);
      float AV = AU - AS;
      float AW = AU - AT;
      float AX = AF - Az;
      float AY = AH - Az;
      float AZ = AX * AX;
      float B0 = AY * AY;
      float B1 = AZ * Az;
      float B2 = B0 * Az;
      int BUf = BTU + 0; // S12
      int BUi = BUf + 4 * CtN; // S12
      int BUj = BUi + 0; // S13
      float B4 = _data_f32_[BUj >> 2];
      float B5 = B4 - AP;
      float B6 = float(-0.08);
      float B7 = B5 * B6;
      int BUp = BTU + 229376; // S7
      int BUs = BUp + 16 * CtN; // S7
      int BUt = BUs + 0; // S8
      float B9 = _data_f32_[BUt >> 2];
      float Ba = float(1.5258789e-05);
      float Bb = B9 * Ba;
      int BUD = BUs + 4; // S9
      float Bd = _data_f32_[BUD >> 2];
      float Be = Bd * Ba;
      int BUN = BUs + 8; // S10
      float Bg = _data_f32_[BUN >> 2];
      float Bh = Bg * Ba;
      int BUX = BUs + 12; // S11
      float Bj = _data_f32_[BUX >> 2];
      float Bk = Bj * Ba;
      float Bl = B7 + Bb;
      float Bm = B7 + Bk;
      float Bn = float(0.0);
      float Bo = Bn - AF;
      float Bp = Bn - AH;
      float Bq = float(0.0078125);
      float Br = Bo * Bq;
      float Bs = Bp * Bq;
      float Bt = AN * AO;
      int BV3 = BTU + 98304; // S4
      int BV6 = BV3 + 8 * CtN; // S4
      int BV7 = BV6 + 0; // S5
      float Bv = _data_f32_[BV7 >> 2];
      float Bw = Bv * Ba;
      int BVh = BV6 + 4; // S6
      float By = _data_f32_[BVh >> 2];
      float Bz = By * Ba;
      float BA = Bl * Br;
      float BB = Be * Bs;
      float BC = BA + BB;
      float BD = Bh * Br;
      float BE = Bm * Bs;
      float BF = BD + BE;
      float BG = Bw + BC;
      float BH = Bz + BF;
      float BI = Bt * BG;
      float BJ = Bt * BH;
      int BVo = BTU + 360448; // S14
      int Caz = int(127);
      int CaA = AC & Caz;
      int CaE = AD & Caz;
      int Cu8 = int(7);
      int Cu9 = CaA << Cu8;
      int CkJ = CaE + Cu9;
      int BVs = BVo + 8 * CkJ; // S14
      int BVt = BVs + 0; // S15
      float BL;
      { // Begin Atomic Op
      BL = atomicAdd_data_f32(BVt >> 2, BI);
      } // End Atomic Op

  }
}

void main()
{
  substep_c44_01();
}
