#version 310 es
layout(local_size_x = 128, local_size_y = 1, local_size_z = 1) in;
precision highp float;
layout(std430, binding = 1) buffer gtmp_i32 { int _gtmp_i32_[];}; 
layout(std430, binding = 1) buffer gtmp_f32 { float _gtmp_f32_[];}; 
layout(std430, binding = 2) buffer args_i32 { int _args_i32_[];}; 
layout(std430, binding = 2) buffer args_f32 { float _args_f32_[];}; 
layout(std430, binding = 9) buffer arr1_i32 { int _arr1_i32_[];}; 
layout(std430, binding = 9) buffer arr1_f32 { float _arr1_f32_[];}; 
layout(std430, binding = 8) buffer arr3_i32 { int _arr3_i32_[];}; 
layout(std430, binding = 8) buffer arr3_f32 { float _arr3_f32_[];}; 
layout(std430, binding = 7) buffer arr2_i32 { int _arr2_i32_[];}; 
layout(std430, binding = 7) buffer arr2_f32 { float _arr2_f32_[];}; 
layout(std430, binding = 6) buffer arr0_i32 { int _arr0_i32_[];}; 
layout(std430, binding = 6) buffer arr0_f32 { float _arr0_f32_[];}; 
layout(std430, binding = 5) buffer arr5_i32 { int _arr5_i32_[];}; 
layout(std430, binding = 5) buffer arr5_f32 { float _arr5_f32_[];}; 
layout(std430, binding = 4) buffer arr4_i32 { int _arr4_i32_[];}; 
layout(std430, binding = 4) buffer arr4_f32 { float _arr4_f32_[];}; 
float atomicAdd_gtmp_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _gtmp_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) + rhs)); } while (old_val != atomicCompSwap(_gtmp_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicSub_gtmp_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _gtmp_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) - rhs)); } while (old_val != atomicCompSwap(_gtmp_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMax_gtmp_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _gtmp_i32_[addr]; new_val = floatBitsToInt(max(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_gtmp_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMin_gtmp_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _gtmp_i32_[addr]; new_val = floatBitsToInt(min(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_gtmp_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); }float atomicAdd_arr0_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr0_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) + rhs)); } while (old_val != atomicCompSwap(_arr0_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicSub_arr0_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr0_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) - rhs)); } while (old_val != atomicCompSwap(_arr0_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMax_arr0_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr0_i32_[addr]; new_val = floatBitsToInt(max(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_arr0_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMin_arr0_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr0_i32_[addr]; new_val = floatBitsToInt(min(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_arr0_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); }float atomicAdd_arr1_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr1_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) + rhs)); } while (old_val != atomicCompSwap(_arr1_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicSub_arr1_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr1_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) - rhs)); } while (old_val != atomicCompSwap(_arr1_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMax_arr1_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr1_i32_[addr]; new_val = floatBitsToInt(max(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_arr1_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMin_arr1_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr1_i32_[addr]; new_val = floatBitsToInt(min(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_arr1_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); }float atomicAdd_arr2_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr2_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) + rhs)); } while (old_val != atomicCompSwap(_arr2_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicSub_arr2_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr2_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) - rhs)); } while (old_val != atomicCompSwap(_arr2_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMax_arr2_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr2_i32_[addr]; new_val = floatBitsToInt(max(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_arr2_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMin_arr2_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr2_i32_[addr]; new_val = floatBitsToInt(min(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_arr2_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); }float atomicAdd_arr3_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr3_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) + rhs)); } while (old_val != atomicCompSwap(_arr3_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicSub_arr3_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr3_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) - rhs)); } while (old_val != atomicCompSwap(_arr3_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMax_arr3_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr3_i32_[addr]; new_val = floatBitsToInt(max(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_arr3_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMin_arr3_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr3_i32_[addr]; new_val = floatBitsToInt(min(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_arr3_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); }float atomicAdd_arr4_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr4_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) + rhs)); } while (old_val != atomicCompSwap(_arr4_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicSub_arr4_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr4_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) - rhs)); } while (old_val != atomicCompSwap(_arr4_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMax_arr4_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr4_i32_[addr]; new_val = floatBitsToInt(max(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_arr4_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMin_arr4_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr4_i32_[addr]; new_val = floatBitsToInt(min(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_arr4_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); }float atomicAdd_arr5_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr5_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) + rhs)); } while (old_val != atomicCompSwap(_arr5_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicSub_arr5_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr5_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) - rhs)); } while (old_val != atomicCompSwap(_arr5_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMax_arr5_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr5_i32_[addr]; new_val = floatBitsToInt(max(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_arr5_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMin_arr5_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr5_i32_[addr]; new_val = floatBitsToInt(min(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_arr5_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); }
const float inf = 1.0f / 0.0f;
const float nan = 0.0f / 0.0f;
void substep_c44_03()
{ // range for
  // range known at runtime
  int _beg = 0, _end = _gtmp_i32_[12 >> 2];
  int _sid0 = int(gl_GlobalInvocationID.x);
  for (int _sid = _sid0; _sid < (_end - _beg); _sid += int(gl_WorkGroupSize.x * gl_NumWorkGroups.x)) {
    int _itv = _beg + _sid;
      int AW = _itv;
      int AX = 12;
      int AY = _gtmp_i32_[AX >> 2];
      int AZ = AW - AY * int(AW / AY);
      int B1 = int(0);
      int _li_B2 = 0;
      { // linear seek
        int _s0_B2 = _args_i32_[16 + 0 * 8 + 0];
        int _s1_B2 = _args_i32_[16 + 0 * 8 + 1];
        _li_B2 *= _s0_B2;
        _li_B2 += AZ;
        _li_B2 *= _s1_B2;
        _li_B2 += B1;
      }
      int B2 = _li_B2 << 2;
      float B3 = _arr0_f32_[B2 >> 2];
      int B4 = 16;
      int B5 = _gtmp_i32_[B4 >> 2];
      float B6 = float(B5);
      float B7 = B3 * B6;
      int B8 = int(1);
      int _li_B9 = 0;
      { // linear seek
        int _s0_B9 = _args_i32_[16 + 0 * 8 + 0];
        int _s1_B9 = _args_i32_[16 + 0 * 8 + 1];
        _li_B9 *= _s0_B9;
        _li_B9 += AZ;
        _li_B9 *= _s1_B9;
        _li_B9 += B8;
      }
      int B9 = _li_B9 << 2;
      float Ba = _arr0_f32_[B9 >> 2];
      float Bb = Ba * B6;
      float Bc = float(0.5);
      float Bd = B7 - Bc;
      float Be = Bb - Bc;
      int Bf = int(Bd);
      int Bg = int(Be);
      float Bh = float(Bf);
      float Bi = float(Bg);
      float Bj = B7 - Bh;
      float Bk = Bb - Bi;
      float Bl = float(1.5);
      float Bm = Bl - Bj;
      float Bn = Bl - Bk;
      float Bo = Bm * Bm;
      float Bp = Bn * Bn;
      float Bq = Bo * Bc;
      float Br = Bp * Bc;
      float Bs = float(1.0);
      float Bt = Bj - Bs;
      float Bu = Bk - Bs;
      float Bv = Bt * Bt;
      float Bw = Bu * Bu;
      float Bx = float(0.75);
      float By = Bx - Bv;
      float Bz = Bx - Bw;
      float BA = Bj - Bc;
      float BB = Bk - Bc;
      float BC = BA * BA;
      float BD = BB * BB;
      float BE = BC * Bc;
      float BF = BD * Bc;
      int BG = 20;
      float BH = _gtmp_f32_[BG >> 2];
      float BI = float(-BH);
      int BJ = 24;
      float BK = _gtmp_f32_[BJ >> 2];
      float BL = BI * BK;
      int _li_BN = 0;
      { // linear seek
        int _s0_BN = _args_i32_[16 + 2 * 8 + 0];
        _li_BN *= _s0_BN;
        _li_BN += AZ;
      }
      int BN = _li_BN << 2;
      float BO = _arr2_f32_[BN >> 2];
      float BP = BO - Bs;
      float BQ = BL * BP;
      float BR = float(4.0);
      float BS = BQ * BR;
      float BT = BS * B6;
      float BU = BT * B6;
      float BV = float(400.0);
      float BW = BU * BV;
      int _li_BY = 0;
      { // linear seek
        int _s0_BY = _args_i32_[16 + 3 * 8 + 0];
        int _s1_BY = _args_i32_[16 + 3 * 8 + 1];
        int _s2_BY = _args_i32_[16 + 3 * 8 + 2];
        _li_BY *= _s0_BY;
        _li_BY += AZ;
        _li_BY *= _s1_BY;
        _li_BY += B1;
        _li_BY *= _s2_BY;
        _li_BY += B1;
      }
      int BY = _li_BY << 2;
      float BZ = _arr3_f32_[BY >> 2];
      float C0 = BK * BZ;
      int _li_C1 = 0;
      { // linear seek
        int _s0_C1 = _args_i32_[16 + 3 * 8 + 0];
        int _s1_C1 = _args_i32_[16 + 3 * 8 + 1];
        int _s2_C1 = _args_i32_[16 + 3 * 8 + 2];
        _li_C1 *= _s0_C1;
        _li_C1 += AZ;
        _li_C1 *= _s1_C1;
        _li_C1 += B1;
        _li_C1 *= _s2_C1;
        _li_C1 += B8;
      }
      int C1 = _li_C1 << 2;
      float C2 = _arr3_f32_[C1 >> 2];
      float C3 = BK * C2;
      int _li_C4 = 0;
      { // linear seek
        int _s0_C4 = _args_i32_[16 + 3 * 8 + 0];
        int _s1_C4 = _args_i32_[16 + 3 * 8 + 1];
        int _s2_C4 = _args_i32_[16 + 3 * 8 + 2];
        _li_C4 *= _s0_C4;
        _li_C4 += AZ;
        _li_C4 *= _s1_C4;
        _li_C4 += B8;
        _li_C4 *= _s2_C4;
        _li_C4 += B1;
      }
      int C4 = _li_C4 << 2;
      float C5 = _arr3_f32_[C4 >> 2];
      float C6 = BK * C5;
      int _li_C7 = 0;
      { // linear seek
        int _s0_C7 = _args_i32_[16 + 3 * 8 + 0];
        int _s1_C7 = _args_i32_[16 + 3 * 8 + 1];
        int _s2_C7 = _args_i32_[16 + 3 * 8 + 2];
        _li_C7 *= _s0_C7;
        _li_C7 += AZ;
        _li_C7 *= _s1_C7;
        _li_C7 += B8;
        _li_C7 *= _s2_C7;
        _li_C7 += B8;
      }
      int C7 = _li_C7 << 2;
      float C8 = _arr3_f32_[C7 >> 2];
      float C9 = BK * C8;
      float Ca = BW + C0;
      float Cb = BW + C9;
      float Cc = float(0.0);
      float Cd = Cc - Bj;
      float Ce = Cc - Bk;
      int Cf = 28;
      float Cg = _gtmp_f32_[Cf >> 2];
      float Ch = Cd * Cg;
      float Ci = Ce * Cg;
      float Cj = Bq * Br;
      int _li_Cl = 0;
      { // linear seek
        int _s0_Cl = _args_i32_[16 + 1 * 8 + 0];
        int _s1_Cl = _args_i32_[16 + 1 * 8 + 1];
        _li_Cl *= _s0_Cl;
        _li_Cl += AZ;
        _li_Cl *= _s1_Cl;
        _li_Cl += B1;
      }
      int Cl = _li_Cl << 2;
      float Cm = _arr1_f32_[Cl >> 2];
      float Cn = BK * Cm;
      int _li_Co = 0;
      { // linear seek
        int _s0_Co = _args_i32_[16 + 1 * 8 + 0];
        int _s1_Co = _args_i32_[16 + 1 * 8 + 1];
        _li_Co *= _s0_Co;
        _li_Co += AZ;
        _li_Co *= _s1_Co;
        _li_Co += B8;
      }
      int Co = _li_Co << 2;
      float Cp = _arr1_f32_[Co >> 2];
      float Cq = BK * Cp;
      float Cr = Ca * Ch;
      float Cs = C3 * Ci;
      float Ct = Cr + Cs;
      float Cu = C6 * Ch;
      float Cv = Cb * Ci;
      float Cw = Cu + Cv;
      float Cx = Cn + Ct;
      float Cy = Cq + Cw;
      float Cz = Cj * Cx;
      float CA = Cj * Cy;
      int _li_CC = 0;
      { // linear seek
        int _s0_CC = _args_i32_[16 + 4 * 8 + 0];
        int _s1_CC = _args_i32_[16 + 4 * 8 + 1];
        int _s2_CC = _args_i32_[16 + 4 * 8 + 2];
        _li_CC *= _s0_CC;
        _li_CC += Bf;
        _li_CC *= _s1_CC;
        _li_CC += Bg;
        _li_CC *= _s2_CC;
        _li_CC += B1;
      }
      int CC = _li_CC << 2;
      float CD;
      { // Begin Atomic Op
      CD = atomicAdd_arr4_f32(CC >> 2, Cz);
      } // End Atomic Op
      int _li_CE = 0;
      { // linear seek
        int _s0_CE = _args_i32_[16 + 4 * 8 + 0];
        int _s1_CE = _args_i32_[16 + 4 * 8 + 1];
        int _s2_CE = _args_i32_[16 + 4 * 8 + 2];
        _li_CE *= _s0_CE;
        _li_CE += Bf;
        _li_CE *= _s1_CE;
        _li_CE += Bg;
        _li_CE *= _s2_CE;
        _li_CE += B8;
      }
      int CE = _li_CE << 2;
      float CF;
      { // Begin Atomic Op
      CF = atomicAdd_arr4_f32(CE >> 2, CA);
      } // End Atomic Op
      float CG = Cj * BK;
      int _li_CI = 0;
      { // linear seek
        int _s0_CI = _args_i32_[16 + 5 * 8 + 0];
        int _s1_CI = _args_i32_[16 + 5 * 8 + 1];
        _li_CI *= _s0_CI;
        _li_CI += Bf;
        _li_CI *= _s1_CI;
        _li_CI += Bg;
      }
      int CI = _li_CI << 2;
      float CJ;
      { // Begin Atomic Op
      CJ = atomicAdd_arr5_f32(CI >> 2, CG);
      } // End Atomic Op
      float CK = Bs - Bk;
      float CL = CK * Cg;
      float CM = Bq * Bz;
      int CN = Bg + B8;
      float CO = _arr1_f32_[Cl >> 2];
      float CP = BK * CO;
      float CQ = _arr1_f32_[Co >> 2];
      float CR = BK * CQ;
      float CS = C3 * CL;
      float CT = Cr + CS;
      float CU = Cb * CL;
      float CV = Cu + CU;
      float CW = CP + CT;
      float CX = CR + CV;
      float CY = CM * CW;
      float CZ = CM * CX;
      int _li_D0 = 0;
      { // linear seek
        int _s0_D0 = _args_i32_[16 + 4 * 8 + 0];
        int _s1_D0 = _args_i32_[16 + 4 * 8 + 1];
        int _s2_D0 = _args_i32_[16 + 4 * 8 + 2];
        _li_D0 *= _s0_D0;
        _li_D0 += Bf;
        _li_D0 *= _s1_D0;
        _li_D0 += CN;
        _li_D0 *= _s2_D0;
        _li_D0 += B1;
      }
      int D0 = _li_D0 << 2;
      float D1;
      { // Begin Atomic Op
      D1 = atomicAdd_arr4_f32(D0 >> 2, CY);
      } // End Atomic Op
      int _li_D2 = 0;
      { // linear seek
        int _s0_D2 = _args_i32_[16 + 4 * 8 + 0];
        int _s1_D2 = _args_i32_[16 + 4 * 8 + 1];
        int _s2_D2 = _args_i32_[16 + 4 * 8 + 2];
        _li_D2 *= _s0_D2;
        _li_D2 += Bf;
        _li_D2 *= _s1_D2;
        _li_D2 += CN;
        _li_D2 *= _s2_D2;
        _li_D2 += B8;
      }
      int D2 = _li_D2 << 2;
      float D3;
      { // Begin Atomic Op
      D3 = atomicAdd_arr4_f32(D2 >> 2, CZ);
      } // End Atomic Op
      float D4 = CM * BK;
      int _li_D5 = 0;
      { // linear seek
        int _s0_D5 = _args_i32_[16 + 5 * 8 + 0];
        int _s1_D5 = _args_i32_[16 + 5 * 8 + 1];
        _li_D5 *= _s0_D5;
        _li_D5 += Bf;
        _li_D5 *= _s1_D5;
        _li_D5 += CN;
      }
      int D5 = _li_D5 << 2;
      float D6;
      { // Begin Atomic Op
      D6 = atomicAdd_arr5_f32(D5 >> 2, D4);
      } // End Atomic Op
      float D7 = float(2.0);
      float D8 = D7 - Bk;
      float D9 = D8 * Cg;
      float Da = Bq * BF;
      int Db = int(2);
      int Dc = Bg + Db;
      float Dd = _arr1_f32_[Cl >> 2];
      float De = BK * Dd;
      float Df = _arr1_f32_[Co >> 2];
      float Dg = BK * Df;
      float Dh = C3 * D9;
      float Di = Cr + Dh;
      float Dj = Cb * D9;
      float Dk = Cu + Dj;
      float Dl = De + Di;
      float Dm = Dg + Dk;
      float Dn = Da * Dl;
      float Do = Da * Dm;
      int _li_Dp = 0;
      { // linear seek
        int _s0_Dp = _args_i32_[16 + 4 * 8 + 0];
        int _s1_Dp = _args_i32_[16 + 4 * 8 + 1];
        int _s2_Dp = _args_i32_[16 + 4 * 8 + 2];
        _li_Dp *= _s0_Dp;
        _li_Dp += Bf;
        _li_Dp *= _s1_Dp;
        _li_Dp += Dc;
        _li_Dp *= _s2_Dp;
        _li_Dp += B1;
      }
      int Dp = _li_Dp << 2;
      float Dq;
      { // Begin Atomic Op
      Dq = atomicAdd_arr4_f32(Dp >> 2, Dn);
      } // End Atomic Op
      int _li_Dr = 0;
      { // linear seek
        int _s0_Dr = _args_i32_[16 + 4 * 8 + 0];
        int _s1_Dr = _args_i32_[16 + 4 * 8 + 1];
        int _s2_Dr = _args_i32_[16 + 4 * 8 + 2];
        _li_Dr *= _s0_Dr;
        _li_Dr += Bf;
        _li_Dr *= _s1_Dr;
        _li_Dr += Dc;
        _li_Dr *= _s2_Dr;
        _li_Dr += B8;
      }
      int Dr = _li_Dr << 2;
      float Ds;
      { // Begin Atomic Op
      Ds = atomicAdd_arr4_f32(Dr >> 2, Do);
      } // End Atomic Op
      float Dt = Da * BK;
      int _li_Du = 0;
      { // linear seek
        int _s0_Du = _args_i32_[16 + 5 * 8 + 0];
        int _s1_Du = _args_i32_[16 + 5 * 8 + 1];
        _li_Du *= _s0_Du;
        _li_Du += Bf;
        _li_Du *= _s1_Du;
        _li_Du += Dc;
      }
      int Du = _li_Du << 2;
      float Dv;
      { // Begin Atomic Op
      Dv = atomicAdd_arr5_f32(Du >> 2, Dt);
      } // End Atomic Op
      float Dw = Bs - Bj;
      float Dx = Dw * Cg;
      float Dy = By * Br;
      int Dz = Bf + B8;
      float DA = _arr1_f32_[Cl >> 2];
      float DB = BK * DA;
      float DC = _arr1_f32_[Co >> 2];
      float DD = BK * DC;
      float DE = Ca * Dx;
      float DF = DE + Cs;
      float DG = C6 * Dx;
      float DH = DG + Cv;
      float DI = DB + DF;
      float DJ = DD + DH;
      float DK = Dy * DI;
      float DL = Dy * DJ;
      int _li_DM = 0;
      { // linear seek
        int _s0_DM = _args_i32_[16 + 4 * 8 + 0];
        int _s1_DM = _args_i32_[16 + 4 * 8 + 1];
        int _s2_DM = _args_i32_[16 + 4 * 8 + 2];
        _li_DM *= _s0_DM;
        _li_DM += Dz;
        _li_DM *= _s1_DM;
        _li_DM += Bg;
        _li_DM *= _s2_DM;
        _li_DM += B1;
      }
      int DM = _li_DM << 2;
      float DN;
      { // Begin Atomic Op
      DN = atomicAdd_arr4_f32(DM >> 2, DK);
      } // End Atomic Op
      int _li_DO = 0;
      { // linear seek
        int _s0_DO = _args_i32_[16 + 4 * 8 + 0];
        int _s1_DO = _args_i32_[16 + 4 * 8 + 1];
        int _s2_DO = _args_i32_[16 + 4 * 8 + 2];
        _li_DO *= _s0_DO;
        _li_DO += Dz;
        _li_DO *= _s1_DO;
        _li_DO += Bg;
        _li_DO *= _s2_DO;
        _li_DO += B8;
      }
      int DO = _li_DO << 2;
      float DP;
      { // Begin Atomic Op
      DP = atomicAdd_arr4_f32(DO >> 2, DL);
      } // End Atomic Op
      float DQ = Dy * BK;
      int _li_DR = 0;
      { // linear seek
        int _s0_DR = _args_i32_[16 + 5 * 8 + 0];
        int _s1_DR = _args_i32_[16 + 5 * 8 + 1];
        _li_DR *= _s0_DR;
        _li_DR += Dz;
        _li_DR *= _s1_DR;
        _li_DR += Bg;
      }
      int DR = _li_DR << 2;
      float DS;
      { // Begin Atomic Op
      DS = atomicAdd_arr5_f32(DR >> 2, DQ);
      } // End Atomic Op
      float DT = By * Bz;
      float DU = _arr1_f32_[Cl >> 2];
      float DV = BK * DU;
      float DW = _arr1_f32_[Co >> 2];
      float DX = BK * DW;
      float DY = DE + CS;
      float DZ = DG + CU;
      float E0 = DV + DY;
      float E1 = DX + DZ;
      float E2 = DT * E0;
      float E3 = DT * E1;
      int _li_E4 = 0;
      { // linear seek
        int _s0_E4 = _args_i32_[16 + 4 * 8 + 0];
        int _s1_E4 = _args_i32_[16 + 4 * 8 + 1];
        int _s2_E4 = _args_i32_[16 + 4 * 8 + 2];
        _li_E4 *= _s0_E4;
        _li_E4 += Dz;
        _li_E4 *= _s1_E4;
        _li_E4 += CN;
        _li_E4 *= _s2_E4;
        _li_E4 += B1;
      }
      int E4 = _li_E4 << 2;
      float E5;
      { // Begin Atomic Op
      E5 = atomicAdd_arr4_f32(E4 >> 2, E2);
      } // End Atomic Op
      int _li_E6 = 0;
      { // linear seek
        int _s0_E6 = _args_i32_[16 + 4 * 8 + 0];
        int _s1_E6 = _args_i32_[16 + 4 * 8 + 1];
        int _s2_E6 = _args_i32_[16 + 4 * 8 + 2];
        _li_E6 *= _s0_E6;
        _li_E6 += Dz;
        _li_E6 *= _s1_E6;
        _li_E6 += CN;
        _li_E6 *= _s2_E6;
        _li_E6 += B8;
      }
      int E6 = _li_E6 << 2;
      float E7;
      { // Begin Atomic Op
      E7 = atomicAdd_arr4_f32(E6 >> 2, E3);
      } // End Atomic Op
      float E8 = DT * BK;
      int _li_E9 = 0;
      { // linear seek
        int _s0_E9 = _args_i32_[16 + 5 * 8 + 0];
        int _s1_E9 = _args_i32_[16 + 5 * 8 + 1];
        _li_E9 *= _s0_E9;
        _li_E9 += Dz;
        _li_E9 *= _s1_E9;
        _li_E9 += CN;
      }
      int E9 = _li_E9 << 2;
      float Ea;
      { // Begin Atomic Op
      Ea = atomicAdd_arr5_f32(E9 >> 2, E8);
      } // End Atomic Op
      float Eb = By * BF;
      float Ec = _arr1_f32_[Cl >> 2];
      float Ed = BK * Ec;
      float Ee = _arr1_f32_[Co >> 2];
      float Ef = BK * Ee;
      float Eg = DE + Dh;
      float Eh = DG + Dj;
      float Ei = Ed + Eg;
      float Ej = Ef + Eh;
      float Ek = Eb * Ei;
      float El = Eb * Ej;
      int _li_Em = 0;
      { // linear seek
        int _s0_Em = _args_i32_[16 + 4 * 8 + 0];
        int _s1_Em = _args_i32_[16 + 4 * 8 + 1];
        int _s2_Em = _args_i32_[16 + 4 * 8 + 2];
        _li_Em *= _s0_Em;
        _li_Em += Dz;
        _li_Em *= _s1_Em;
        _li_Em += Dc;
        _li_Em *= _s2_Em;
        _li_Em += B1;
      }
      int Em = _li_Em << 2;
      float En;
      { // Begin Atomic Op
      En = atomicAdd_arr4_f32(Em >> 2, Ek);
      } // End Atomic Op
      int _li_Eo = 0;
      { // linear seek
        int _s0_Eo = _args_i32_[16 + 4 * 8 + 0];
        int _s1_Eo = _args_i32_[16 + 4 * 8 + 1];
        int _s2_Eo = _args_i32_[16 + 4 * 8 + 2];
        _li_Eo *= _s0_Eo;
        _li_Eo += Dz;
        _li_Eo *= _s1_Eo;
        _li_Eo += Dc;
        _li_Eo *= _s2_Eo;
        _li_Eo += B8;
      }
      int Eo = _li_Eo << 2;
      float Ep;
      { // Begin Atomic Op
      Ep = atomicAdd_arr4_f32(Eo >> 2, El);
      } // End Atomic Op
      float Eq = Eb * BK;
      int _li_Er = 0;
      { // linear seek
        int _s0_Er = _args_i32_[16 + 5 * 8 + 0];
        int _s1_Er = _args_i32_[16 + 5 * 8 + 1];
        _li_Er *= _s0_Er;
        _li_Er += Dz;
        _li_Er *= _s1_Er;
        _li_Er += Dc;
      }
      int Er = _li_Er << 2;
      float Es;
      { // Begin Atomic Op
      Es = atomicAdd_arr5_f32(Er >> 2, Eq);
      } // End Atomic Op
      float Et = D7 - Bj;
      float Eu = Et * Cg;
      float Ev = BE * Br;
      int Ew = Bf + Db;
      float Ex = _arr1_f32_[Cl >> 2];
      float Ey = BK * Ex;
      float Ez = _arr1_f32_[Co >> 2];
      float EA = BK * Ez;
      float EB = Ca * Eu;
      float EC = EB + Cs;
      float ED = C6 * Eu;
      float EE = ED + Cv;
      float EF = Ey + EC;
      float EG = EA + EE;
      float EH = Ev * EF;
      float EI = Ev * EG;
      int _li_EJ = 0;
      { // linear seek
        int _s0_EJ = _args_i32_[16 + 4 * 8 + 0];
        int _s1_EJ = _args_i32_[16 + 4 * 8 + 1];
        int _s2_EJ = _args_i32_[16 + 4 * 8 + 2];
        _li_EJ *= _s0_EJ;
        _li_EJ += Ew;
        _li_EJ *= _s1_EJ;
        _li_EJ += Bg;
        _li_EJ *= _s2_EJ;
        _li_EJ += B1;
      }
      int EJ = _li_EJ << 2;
      float EK;
      { // Begin Atomic Op
      EK = atomicAdd_arr4_f32(EJ >> 2, EH);
      } // End Atomic Op
      int _li_EL = 0;
      { // linear seek
        int _s0_EL = _args_i32_[16 + 4 * 8 + 0];
        int _s1_EL = _args_i32_[16 + 4 * 8 + 1];
        int _s2_EL = _args_i32_[16 + 4 * 8 + 2];
        _li_EL *= _s0_EL;
        _li_EL += Ew;
        _li_EL *= _s1_EL;
        _li_EL += Bg;
        _li_EL *= _s2_EL;
        _li_EL += B8;
      }
      int EL = _li_EL << 2;
      float EM;
      { // Begin Atomic Op
      EM = atomicAdd_arr4_f32(EL >> 2, EI);
      } // End Atomic Op
      float EN = Ev * BK;
      int _li_EO = 0;
      { // linear seek
        int _s0_EO = _args_i32_[16 + 5 * 8 + 0];
        int _s1_EO = _args_i32_[16 + 5 * 8 + 1];
        _li_EO *= _s0_EO;
        _li_EO += Ew;
        _li_EO *= _s1_EO;
        _li_EO += Bg;
      }
      int EO = _li_EO << 2;
      float EP;
      { // Begin Atomic Op
      EP = atomicAdd_arr5_f32(EO >> 2, EN);
      } // End Atomic Op
      float EQ = BE * Bz;
      float ER = _arr1_f32_[Cl >> 2];
      float ES = BK * ER;
      float ET = _arr1_f32_[Co >> 2];
      float EU = BK * ET;
      float EV = EB + CS;
      float EW = ED + CU;
      float EX = ES + EV;
      float EY = EU + EW;
      float EZ = EQ * EX;
      float F0 = EQ * EY;
      int _li_F1 = 0;
      { // linear seek
        int _s0_F1 = _args_i32_[16 + 4 * 8 + 0];
        int _s1_F1 = _args_i32_[16 + 4 * 8 + 1];
        int _s2_F1 = _args_i32_[16 + 4 * 8 + 2];
        _li_F1 *= _s0_F1;
        _li_F1 += Ew;
        _li_F1 *= _s1_F1;
        _li_F1 += CN;
        _li_F1 *= _s2_F1;
        _li_F1 += B1;
      }
      int F1 = _li_F1 << 2;
      float F2;
      { // Begin Atomic Op
      F2 = atomicAdd_arr4_f32(F1 >> 2, EZ);
      } // End Atomic Op
      int _li_F3 = 0;
      { // linear seek
        int _s0_F3 = _args_i32_[16 + 4 * 8 + 0];
        int _s1_F3 = _args_i32_[16 + 4 * 8 + 1];
        int _s2_F3 = _args_i32_[16 + 4 * 8 + 2];
        _li_F3 *= _s0_F3;
        _li_F3 += Ew;
        _li_F3 *= _s1_F3;
        _li_F3 += CN;
        _li_F3 *= _s2_F3;
        _li_F3 += B8;
      }
      int F3 = _li_F3 << 2;
      float F4;
      { // Begin Atomic Op
      F4 = atomicAdd_arr4_f32(F3 >> 2, F0);
      } // End Atomic Op
      float F5 = EQ * BK;
      int _li_F6 = 0;
      { // linear seek
        int _s0_F6 = _args_i32_[16 + 5 * 8 + 0];
        int _s1_F6 = _args_i32_[16 + 5 * 8 + 1];
        _li_F6 *= _s0_F6;
        _li_F6 += Ew;
        _li_F6 *= _s1_F6;
        _li_F6 += CN;
      }
      int F6 = _li_F6 << 2;
      float F7;
      { // Begin Atomic Op
      F7 = atomicAdd_arr5_f32(F6 >> 2, F5);
      } // End Atomic Op
      float F8 = BE * BF;
      float F9 = _arr1_f32_[Cl >> 2];
      float Fa = BK * F9;
      float Fb = _arr1_f32_[Co >> 2];
      float Fc = BK * Fb;
      float Fd = EB + Dh;
      float Fe = ED + Dj;
      float Ff = Fa + Fd;
      float Fg = Fc + Fe;
      float Fh = F8 * Ff;
      float Fi = F8 * Fg;
      int _li_Fj = 0;
      { // linear seek
        int _s0_Fj = _args_i32_[16 + 4 * 8 + 0];
        int _s1_Fj = _args_i32_[16 + 4 * 8 + 1];
        int _s2_Fj = _args_i32_[16 + 4 * 8 + 2];
        _li_Fj *= _s0_Fj;
        _li_Fj += Ew;
        _li_Fj *= _s1_Fj;
        _li_Fj += Dc;
        _li_Fj *= _s2_Fj;
        _li_Fj += B1;
      }
      int Fj = _li_Fj << 2;
      float Fk;
      { // Begin Atomic Op
      Fk = atomicAdd_arr4_f32(Fj >> 2, Fh);
      } // End Atomic Op
      int _li_Fl = 0;
      { // linear seek
        int _s0_Fl = _args_i32_[16 + 4 * 8 + 0];
        int _s1_Fl = _args_i32_[16 + 4 * 8 + 1];
        int _s2_Fl = _args_i32_[16 + 4 * 8 + 2];
        _li_Fl *= _s0_Fl;
        _li_Fl += Ew;
        _li_Fl *= _s1_Fl;
        _li_Fl += Dc;
        _li_Fl *= _s2_Fl;
        _li_Fl += B8;
      }
      int Fl = _li_Fl << 2;
      float Fm;
      { // Begin Atomic Op
      Fm = atomicAdd_arr4_f32(Fl >> 2, Fi);
      } // End Atomic Op
      float Fn = F8 * BK;
      int _li_Fo = 0;
      { // linear seek
        int _s0_Fo = _args_i32_[16 + 5 * 8 + 0];
        int _s1_Fo = _args_i32_[16 + 5 * 8 + 1];
        _li_Fo *= _s0_Fo;
        _li_Fo += Ew;
        _li_Fo *= _s1_Fo;
        _li_Fo += Dc;
      }
      int Fo = _li_Fo << 2;
      float Fp;
      { // Begin Atomic Op
      Fp = atomicAdd_arr5_f32(Fo >> 2, Fn);
      } // End Atomic Op
  }
}

void main()
{
  substep_c44_03();
}
