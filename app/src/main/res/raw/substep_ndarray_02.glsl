#version 310 es
layout(local_size_x = 128, local_size_y = 1, local_size_z = 1) in;
precision highp float;
layout(std430, binding = 1) buffer gtmp_i32 { int _gtmp_i32_[];}; 
layout(std430, binding = 1) buffer gtmp_f32 { float _gtmp_f32_[];}; 
layout(std430, binding = 2) buffer args_i32 { int _args_i32_[];}; 
layout(std430, binding = 2) buffer args_f32 { float _args_f32_[];}; 
layout(std430, binding = 9) buffer arr1_i32 { int _arr1_i32_[];}; 
layout(std430, binding = 9) buffer arr1_f32 { float _arr1_f32_[];}; 
layout(std430, binding = 5) buffer arr5_i32 { int _arr5_i32_[];}; 
layout(std430, binding = 5) buffer arr5_f32 { float _arr5_f32_[];}; 
layout(std430, binding = 6) buffer arr0_i32 { int _arr0_i32_[];}; 
layout(std430, binding = 6) buffer arr0_f32 { float _arr0_f32_[];}; 
layout(std430, binding = 4) buffer arr4_i32 { int _arr4_i32_[];}; 
layout(std430, binding = 4) buffer arr4_f32 { float _arr4_f32_[];}; 
layout(std430, binding = 7) buffer arr2_i32 { int _arr2_i32_[];}; 
layout(std430, binding = 7) buffer arr2_f32 { float _arr2_f32_[];}; 
layout(std430, binding = 8) buffer arr3_i32 { int _arr3_i32_[];}; 
layout(std430, binding = 8) buffer arr3_f32 { float _arr3_f32_[];}; 
float atomicAdd_gtmp_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _gtmp_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) + rhs)); } while (old_val != atomicCompSwap(_gtmp_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicSub_gtmp_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _gtmp_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) - rhs)); } while (old_val != atomicCompSwap(_gtmp_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMax_gtmp_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _gtmp_i32_[addr]; new_val = floatBitsToInt(max(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_gtmp_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMin_gtmp_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _gtmp_i32_[addr]; new_val = floatBitsToInt(min(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_gtmp_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); }float atomicAdd_arr0_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr0_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) + rhs)); } while (old_val != atomicCompSwap(_arr0_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicSub_arr0_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr0_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) - rhs)); } while (old_val != atomicCompSwap(_arr0_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMax_arr0_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr0_i32_[addr]; new_val = floatBitsToInt(max(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_arr0_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMin_arr0_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr0_i32_[addr]; new_val = floatBitsToInt(min(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_arr0_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); }float atomicAdd_arr1_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr1_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) + rhs)); } while (old_val != atomicCompSwap(_arr1_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicSub_arr1_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr1_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) - rhs)); } while (old_val != atomicCompSwap(_arr1_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMax_arr1_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr1_i32_[addr]; new_val = floatBitsToInt(max(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_arr1_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMin_arr1_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr1_i32_[addr]; new_val = floatBitsToInt(min(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_arr1_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); }float atomicAdd_arr2_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr2_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) + rhs)); } while (old_val != atomicCompSwap(_arr2_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicSub_arr2_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr2_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) - rhs)); } while (old_val != atomicCompSwap(_arr2_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMax_arr2_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr2_i32_[addr]; new_val = floatBitsToInt(max(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_arr2_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMin_arr2_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr2_i32_[addr]; new_val = floatBitsToInt(min(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_arr2_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); }float atomicAdd_arr3_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr3_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) + rhs)); } while (old_val != atomicCompSwap(_arr3_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicSub_arr3_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr3_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) - rhs)); } while (old_val != atomicCompSwap(_arr3_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMax_arr3_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr3_i32_[addr]; new_val = floatBitsToInt(max(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_arr3_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMin_arr3_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr3_i32_[addr]; new_val = floatBitsToInt(min(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_arr3_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); }float atomicAdd_arr4_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr4_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) + rhs)); } while (old_val != atomicCompSwap(_arr4_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicSub_arr4_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr4_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) - rhs)); } while (old_val != atomicCompSwap(_arr4_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMax_arr4_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr4_i32_[addr]; new_val = floatBitsToInt(max(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_arr4_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMin_arr4_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr4_i32_[addr]; new_val = floatBitsToInt(min(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_arr4_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); }float atomicAdd_arr5_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr5_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) + rhs)); } while (old_val != atomicCompSwap(_arr5_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicSub_arr5_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr5_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) - rhs)); } while (old_val != atomicCompSwap(_arr5_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMax_arr5_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr5_i32_[addr]; new_val = floatBitsToInt(max(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_arr5_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMin_arr5_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr5_i32_[addr]; new_val = floatBitsToInt(min(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_arr5_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); }
const float inf = 1.0f / 0.0f;
const float nan = 0.0f / 0.0f;
void substep_c44_02()
{ // range for
  // range from args buffer
  int AE = _args_i32_[16 + 0 * 8 + 0];
  int _beg = 0, _end = AE;
  int _sid0 = int(gl_GlobalInvocationID.x);
  for (int _sid = _sid0; _sid < (_end - _beg); _sid += int(gl_WorkGroupSize.x * gl_NumWorkGroups.x)) {
    int _itv = _beg + _sid;
      int AE = _args_i32_[16 + 0 * 8 + 0];
      int AF = _itv;
      int AG = AF - AE * int(AF / AE);
      int AI = int(0);
      int _li_AJ = 0;
      int _s0_arr0 = _args_i32_[16 + 0 * 8 + 0];
      int _s1_arr0 = _args_i32_[16 + 0 * 8 + 1];
      { // linear seek
        _li_AJ *= _s0_arr0;
        _li_AJ += AG;
        _li_AJ *= _s1_arr0;
        _li_AJ += AI;
      }
      int AJ = _li_AJ << 2;
      float AK = _arr0_f32_[AJ >> 2];
      int AL = 0;
      float AM = float(128);
      //float AM = _gtmp_f32_[AL >> 2];
      float AN = AK * AM;
      int AO = int(1);
      int _li_AP = 0;
      { // linear seek
        _li_AP *= _s0_arr0;
        _li_AP += AG;
        _li_AP *= _s1_arr0;
        _li_AP += AO;
      }
      int AP = _li_AP << 2;
      float AQ = _arr0_f32_[AP >> 2];
      float AR = AQ * AM;
      float AS = float(0.5);
      float AT = AN - AS;
      float AU = AR - AS;
      int AV = int(AT);
      int AW = int(AU);
      float AX = float(AV);
      float AY = float(AW);
      float AZ = AN - AX;
      float B0 = AR - AY;
      float B1 = float(1.5);
      float B2 = B1 - AZ;
      float B3 = B1 - B0;
      float B4 = B2 * B2;
      float B5 = B3 * B3;
      float B6 = B4 * AS;
      float B7 = B5 * AS;
      float B8 = float(1.0);
      float B9 = AZ - B8;
      float Ba = B0 - B8;
      float Bb = B9 * B9;
      float Bc = Ba * Ba;
      float Bd = float(0.75);
      float Be = Bd - Bb;
      float Bf = Bd - Bc;
      float Bg = AZ - AS;
      float Bh = B0 - AS;
      float Bi = Bg * Bg;
      float Bj = Bh * Bh;
      float Bk = Bi * AS;
      float Bl = Bj * AS;
      int Bm = 4;
      //float Bn = _gtmp_f32_[Bm >> 2];
      float Bn = float(0.0002);
      float Bo = float(-Bn);
      int Bp = 8;
      float Bq = 1.0 / 256.0 / 256.0;
      //float Bq = _gtmp_f32_[Bp >> 2];
      float Br = Bo * Bq;
      int _li_Bt = 0;
      int _s0_arr2 = _args_i32_[16 + 2 * 8 + 0];
      { // linear seek
        _li_Bt *= _s0_arr2;
        _li_Bt += AG;
      }
      int Bt = _li_Bt << 2;
      float Bu = _arr2_f32_[Bt >> 2];
      float Bv = Bu - B8;
      float Bw = Br * Bv;
      float Bx = float(4.0);
      float By = Bw * Bx;
      float Bz = By * AM;
      float BA = Bz * AM;
      float BB = float(400.0);
      float BC = BA * BB;
      int _li_BE = 0;
      int _s0_arr3 = _args_i32_[16 + 3 * 8 + 0];
      int _s1_arr3 = _args_i32_[16 + 3 * 8 + 1];
      int _s2_arr3 = _args_i32_[16 + 3 * 8 + 2];
      { // linear seek
        _li_BE *= _s0_arr3;
        _li_BE += AG;
        _li_BE *= _s1_arr3;
        _li_BE += AI;
        _li_BE *= _s2_arr3;
        _li_BE += AI;
      }
      int BE = _li_BE << 2;
      float BF = _arr3_f32_[BE >> 2];
      float BG = Bq * BF;
      int _li_BH = 0;
      { // linear seek
        _li_BH *= _s0_arr3;
        _li_BH += AG;
        _li_BH *= _s1_arr3;
        _li_BH += AI;
        _li_BH *= _s2_arr3;
        _li_BH += AO;
      }
      int BH = _li_BH << 2;
      float BI = _arr3_f32_[BH >> 2];
      float BJ = Bq * BI;
      int _li_BK = 0;
      { // linear seek
        _li_BK *= _s0_arr3;
        _li_BK += AG;
        _li_BK *= _s1_arr3;
        _li_BK += AO;
        _li_BK *= _s2_arr3;
        _li_BK += AI;
      }
      int BK = _li_BK << 2;
      float BL = _arr3_f32_[BK >> 2];
      float BM = Bq * BL;
      int _li_BN = 0;
      { // linear seek
        _li_BN *= _s0_arr3;
        _li_BN += AG;
        _li_BN *= _s1_arr3;
        _li_BN += AO;
        _li_BN *= _s2_arr3;
        _li_BN += AO;
      }
      int BN = _li_BN << 2;
      float BO = _arr3_f32_[BN >> 2];
      float BP = Bq * BO;
      float BQ = BC + BG;
      float BR = BC + BP;
      float BS = float(0.0);
      float BT = BS - AZ;
      float BU = BS - B0;
      int BV = 12;
      float BW = _gtmp_f32_[BV >> 2];
      float BX = BT * BW;
      float BY = BU * BW;
      float BZ = B6 * B7;
      int _li_C1 = 0;
      int _s0_arr1 = _args_i32_[16 + 1 * 8 + 0];
      int _s1_arr1 = _args_i32_[16 + 1 * 8 + 1];
      { // linear seek
        _li_C1 *= _s0_arr1;
        _li_C1 += AG;
        _li_C1 *= _s1_arr1;
        _li_C1 += AI;
      }
      int C1 = _li_C1 << 2;
      float C2 = _arr1_f32_[C1 >> 2];
      float C3 = Bq * C2;
      int _li_C4 = 0;
      { // linear seek
        _li_C4 *= _s0_arr1;
        _li_C4 += AG;
        _li_C4 *= _s1_arr1;
        _li_C4 += AO;
      }
      int C4 = _li_C4 << 2;
      float C5 = _arr1_f32_[C4 >> 2];
      float C6 = Bq * C5;
      float C7 = BQ * BX;
      float C8 = BJ * BY;
      float C9 = C7 + C8;
      float Ca = BM * BX;
      float Cb = BR * BY;
      float Cc = Ca + Cb;
      float Cd = C3 + C9;
      float Ce = C6 + Cc;
      float Cf = BZ * Cd;
      float Cg = BZ * Ce;
      int _li_Ci = 0;
      int _s0_arr4 = _args_i32_[16 + 4 * 8 + 0];
      int _s1_arr4 = _args_i32_[16 + 4 * 8 + 1];
      int _s2_arr4 = _args_i32_[16 + 4 * 8 + 2];
      { // linear seek
        _li_Ci *= _s0_arr4;
        _li_Ci += AV;
        _li_Ci *= _s1_arr4;
        _li_Ci += AW;
        _li_Ci *= _s2_arr4;
        _li_Ci += AI;
      }
      int Ci = _li_Ci << 2;
      float Cj;
      { // Begin Atomic Op
      Cj = atomicAdd_arr4_f32(Ci >> 2, Cf);
      } // End Atomic Op
      int _li_Ck = 0;
      { // linear seek
        _li_Ck *= _s0_arr4;
        _li_Ck += AV;
        _li_Ck *= _s1_arr4;
        _li_Ck += AW;
        _li_Ck *= _s2_arr4;
        _li_Ck += AO;
      }
      int Ck = _li_Ck << 2;
      float Cl;
      { // Begin Atomic Op
      Cl = atomicAdd_arr4_f32(Ck >> 2, Cg);
      } // End Atomic Op
      float Cm = BZ * Bq;
      int _li_Co = 0;
      int _s0_arr5 = _args_i32_[16 + 5 * 8 + 0];
      int _s1_arr5 = _args_i32_[16 + 5 * 8 + 1];
      { // linear seek
        _li_Co *= _s0_arr5;
        _li_Co += AV;
        _li_Co *= _s1_arr5;
        _li_Co += AW;
      }
      int Co = _li_Co << 2;
      float Cp;
      { // Begin Atomic Op
      Cp = atomicAdd_arr5_f32(Co >> 2, Cm);
      } // End Atomic Op
      float Cq = B8 - B0;
      float Cr = Cq * BW;
      float Cs = B6 * Bf;
      int Ct = AW + AO;
      float Cu = _arr1_f32_[C1 >> 2];
      float Cv = Bq * Cu;
      float Cw = _arr1_f32_[C4 >> 2];
      float Cx = Bq * Cw;
      float Cy = BJ * Cr;
      float Cz = C7 + Cy;
      float CA = BR * Cr;
      float CB = Ca + CA;
      float CC = Cv + Cz;
      float CD = Cx + CB;
      float CE = Cs * CC;
      float CF = Cs * CD;
      int _li_CG = 0;
      { // linear seek
        _li_CG *= _s0_arr4;
        _li_CG += AV;
        _li_CG *= _s1_arr4;
        _li_CG += Ct;
        _li_CG *= _s2_arr4;
        _li_CG += AI;
      }
      int CG = _li_CG << 2;
      float CH;
      { // Begin Atomic Op
      CH = atomicAdd_arr4_f32(CG >> 2, CE);
      } // End Atomic Op
      int _li_CI = 0;
      { // linear seek
        _li_CI *= _s0_arr4;
        _li_CI += AV;
        _li_CI *= _s1_arr4;
        _li_CI += Ct;
        _li_CI *= _s2_arr4;
        _li_CI += AO;
      }
      int CI = _li_CI << 2;
      float CJ;
      { // Begin Atomic Op
      CJ = atomicAdd_arr4_f32(CI >> 2, CF);
      } // End Atomic Op
      float CK = Cs * Bq;
      int _li_CL = 0;
      { // linear seek
        _li_CL *= _s0_arr5;
        _li_CL += AV;
        _li_CL *= _s1_arr5;
        _li_CL += Ct;
      }
      int CL = _li_CL << 2;
      float CM;
      { // Begin Atomic Op
      CM = atomicAdd_arr5_f32(CL >> 2, CK);
      } // End Atomic Op
      float CN = float(2.0);
      float CO = CN - B0;
      float CP = CO * BW;
      float CQ = B6 * Bl;
      int CR = int(2);
      int CS = AW + CR;
      float CT = _arr1_f32_[C1 >> 2];
      float CU = Bq * CT;
      float CV = _arr1_f32_[C4 >> 2];
      float CW = Bq * CV;
      float CX = BJ * CP;
      float CY = C7 + CX;
      float CZ = BR * CP;
      float D0 = Ca + CZ;
      float D1 = CU + CY;
      float D2 = CW + D0;
      float D3 = CQ * D1;
      float D4 = CQ * D2;
      int _li_D5 = 0;
      { // linear seek
        _li_D5 *= _s0_arr4;
        _li_D5 += AV;
        _li_D5 *= _s1_arr4;
        _li_D5 += CS;
        _li_D5 *= _s2_arr4;
        _li_D5 += AI;
      }
      int D5 = _li_D5 << 2;
      float D6;
      { // Begin Atomic Op
      D6 = atomicAdd_arr4_f32(D5 >> 2, D3);
      } // End Atomic Op
      int _li_D7 = 0;
      { // linear seek
        _li_D7 *= _s0_arr4;
        _li_D7 += AV;
        _li_D7 *= _s1_arr4;
        _li_D7 += CS;
        _li_D7 *= _s2_arr4;
        _li_D7 += AO;
      }
      int D7 = _li_D7 << 2;
      float D8;
      { // Begin Atomic Op
      D8 = atomicAdd_arr4_f32(D7 >> 2, D4);
      } // End Atomic Op
      float D9 = CQ * Bq;
      int _li_Da = 0;
      { // linear seek
        _li_Da *= _s0_arr5;
        _li_Da += AV;
        _li_Da *= _s1_arr5;
        _li_Da += CS;
      }
      int Da = _li_Da << 2;
      float Db;
      { // Begin Atomic Op
      Db = atomicAdd_arr5_f32(Da >> 2, D9);
      } // End Atomic Op
      float Dc = B8 - AZ;
      float Dd = Dc * BW;
      float De = Be * B7;
      int Df = AV + AO;
      float Dg = _arr1_f32_[C1 >> 2];
      float Dh = Bq * Dg;
      float Di = _arr1_f32_[C4 >> 2];
      float Dj = Bq * Di;
      float Dk = BQ * Dd;
      float Dl = Dk + C8;
      float Dm = BM * Dd;
      float Dn = Dm + Cb;
      float Do = Dh + Dl;
      float Dp = Dj + Dn;
      float Dq = De * Do;
      float Dr = De * Dp;
      int _li_Ds = 0;
      { // linear seek
        _li_Ds *= _s0_arr4;
        _li_Ds += Df;
        _li_Ds *= _s1_arr4;
        _li_Ds += AW;
        _li_Ds *= _s2_arr4;
        _li_Ds += AI;
      }
      int Ds = _li_Ds << 2;
      float Dt;
      { // Begin Atomic Op
      Dt = atomicAdd_arr4_f32(Ds >> 2, Dq);
      } // End Atomic Op
      int _li_Du = 0;
      { // linear seek
        _li_Du *= _s0_arr4;
        _li_Du += Df;
        _li_Du *= _s1_arr4;
        _li_Du += AW;
        _li_Du *= _s2_arr4;
        _li_Du += AO;
      }
      int Du = _li_Du << 2;
      float Dv;
      { // Begin Atomic Op
      Dv = atomicAdd_arr4_f32(Du >> 2, Dr);
      } // End Atomic Op
      float Dw = De * Bq;
      int _li_Dx = 0;
      { // linear seek
        _li_Dx *= _s0_arr5;
        _li_Dx += Df;
        _li_Dx *= _s1_arr5;
        _li_Dx += AW;
      }
      int Dx = _li_Dx << 2;
      float Dy;
      { // Begin Atomic Op
      Dy = atomicAdd_arr5_f32(Dx >> 2, Dw);
      } // End Atomic Op
      float Dz = Be * Bf;
      float DA = _arr1_f32_[C1 >> 2];
      float DB = Bq * DA;
      float DC = _arr1_f32_[C4 >> 2];
      float DD = Bq * DC;
      float DE = Dk + Cy;
      float DF = Dm + CA;
      float DG = DB + DE;
      float DH = DD + DF;
      float DI = Dz * DG;
      float DJ = Dz * DH;
      int _li_DK = 0;
      { // linear seek
        _li_DK *= _s0_arr4;
        _li_DK += Df;
        _li_DK *= _s1_arr4;
        _li_DK += Ct;
        _li_DK *= _s2_arr4;
        _li_DK += AI;
      }
      int DK = _li_DK << 2;
      float DL;
      { // Begin Atomic Op
      DL = atomicAdd_arr4_f32(DK >> 2, DI);
      } // End Atomic Op
      int _li_DM = 0;
      { // linear seek
        _li_DM *= _s0_arr4;
        _li_DM += Df;
        _li_DM *= _s1_arr4;
        _li_DM += Ct;
        _li_DM *= _s2_arr4;
        _li_DM += AO;
      }
      int DM = _li_DM << 2;
      float DN;
      { // Begin Atomic Op
      DN = atomicAdd_arr4_f32(DM >> 2, DJ);
      } // End Atomic Op
      float DO = Dz * Bq;
      int _li_DP = 0;
      { // linear seek
        _li_DP *= _s0_arr5;
        _li_DP += Df;
        _li_DP *= _s1_arr5;
        _li_DP += Ct;
      }
      int DP = _li_DP << 2;
      float DQ;
      { // Begin Atomic Op
      DQ = atomicAdd_arr5_f32(DP >> 2, DO);
      } // End Atomic Op
      float DR = Be * Bl;
      float DS = _arr1_f32_[C1 >> 2];
      float DT = Bq * DS;
      float DU = _arr1_f32_[C4 >> 2];
      float DV = Bq * DU;
      float DW = Dk + CX;
      float DX = Dm + CZ;
      float DY = DT + DW;
      float DZ = DV + DX;
      float E0 = DR * DY;
      float E1 = DR * DZ;
      int _li_E2 = 0;
      { // linear seek
        _li_E2 *= _s0_arr4;
        _li_E2 += Df;
        _li_E2 *= _s1_arr4;
        _li_E2 += CS;
        _li_E2 *= _s2_arr4;
        _li_E2 += AI;
      }
      int E2 = _li_E2 << 2;
      float E3;
      { // Begin Atomic Op
      E3 = atomicAdd_arr4_f32(E2 >> 2, E0);
      } // End Atomic Op
      int _li_E4 = 0;
      { // linear seek
        _li_E4 *= _s0_arr4;
        _li_E4 += Df;
        _li_E4 *= _s1_arr4;
        _li_E4 += CS;
        _li_E4 *= _s2_arr4;
        _li_E4 += AO;
      }
      int E4 = _li_E4 << 2;
      float E5;
      { // Begin Atomic Op
      E5 = atomicAdd_arr4_f32(E4 >> 2, E1);
      } // End Atomic Op
      float E6 = DR * Bq;
      int _li_E7 = 0;
      { // linear seek
        _li_E7 *= _s0_arr5;
        _li_E7 += Df;
        _li_E7 *= _s1_arr5;
        _li_E7 += CS;
      }
      int E7 = _li_E7 << 2;
      float E8;
      { // Begin Atomic Op
      E8 = atomicAdd_arr5_f32(E7 >> 2, E6);
      } // End Atomic Op
      float E9 = CN - AZ;
      float Ea = E9 * BW;
      float Eb = Bk * B7;
      int Ec = AV + CR;
      float Ed = _arr1_f32_[C1 >> 2];
      float Ee = Bq * Ed;
      float Ef = _arr1_f32_[C4 >> 2];
      float Eg = Bq * Ef;
      float Eh = BQ * Ea;
      float Ei = Eh + C8;
      float Ej = BM * Ea;
      float Ek = Ej + Cb;
      float El = Ee + Ei;
      float Em = Eg + Ek;
      float En = Eb * El;
      float Eo = Eb * Em;
      int _li_Ep = 0;
      { // linear seek
        _li_Ep *= _s0_arr4;
        _li_Ep += Ec;
        _li_Ep *= _s1_arr4;
        _li_Ep += AW;
        _li_Ep *= _s2_arr4;
        _li_Ep += AI;
      }
      int Ep = _li_Ep << 2;
      float Eq;
      { // Begin Atomic Op
      Eq = atomicAdd_arr4_f32(Ep >> 2, En);
      } // End Atomic Op
      int _li_Er = 0;
      { // linear seek
        _li_Er *= _s0_arr4;
        _li_Er += Ec;
        _li_Er *= _s1_arr4;
        _li_Er += AW;
        _li_Er *= _s2_arr4;
        _li_Er += AO;
      }
      int Er = _li_Er << 2;
      float Es;
      { // Begin Atomic Op
      Es = atomicAdd_arr4_f32(Er >> 2, Eo);
      } // End Atomic Op
      float Et = Eb * Bq;
      int _li_Eu = 0;
      { // linear seek
        _li_Eu *= _s0_arr5;
        _li_Eu += Ec;
        _li_Eu *= _s1_arr5;
        _li_Eu += AW;
      }
      int Eu = _li_Eu << 2;
      float Ev;
      { // Begin Atomic Op
      Ev = atomicAdd_arr5_f32(Eu >> 2, Et);
      } // End Atomic Op
      float Ew = Bk * Bf;
      float Ex = _arr1_f32_[C1 >> 2];
      float Ey = Bq * Ex;
      float Ez = _arr1_f32_[C4 >> 2];
      float EA = Bq * Ez;
      float EB = Eh + Cy;
      float EC = Ej + CA;
      float ED = Ey + EB;
      float EE = EA + EC;
      float EF = Ew * ED;
      float EG = Ew * EE;
      int _li_EH = 0;
      { // linear seek
        _li_EH *= _s0_arr4;
        _li_EH += Ec;
        _li_EH *= _s1_arr4;
        _li_EH += Ct;
        _li_EH *= _s2_arr4;
        _li_EH += AI;
      }
      int EH = _li_EH << 2;
      float EI;
      { // Begin Atomic Op
      EI = atomicAdd_arr4_f32(EH >> 2, EF);
      } // End Atomic Op
      int _li_EJ = 0;
      { // linear seek
        _li_EJ *= _s0_arr4;
        _li_EJ += Ec;
        _li_EJ *= _s1_arr4;
        _li_EJ += Ct;
        _li_EJ *= _s2_arr4;
        _li_EJ += AO;
      }
      int EJ = _li_EJ << 2;
      float EK;
      { // Begin Atomic Op
      EK = atomicAdd_arr4_f32(EJ >> 2, EG);
      } // End Atomic Op
      float EL = Ew * Bq;
      int _li_EM = 0;
      { // linear seek
        _li_EM *= _s0_arr5;
        _li_EM += Ec;
        _li_EM *= _s1_arr5;
        _li_EM += Ct;
      }
      int EM = _li_EM << 2;
      float EN;
      { // Begin Atomic Op
      EN = atomicAdd_arr5_f32(EM >> 2, EL);
      } // End Atomic Op
      float EO = Bk * Bl;
      float EP = _arr1_f32_[C1 >> 2];
      float EQ = Bq * EP;
      float ER = _arr1_f32_[C4 >> 2];
      float ES = Bq * ER;
      float ET = Eh + CX;
      float EU = Ej + CZ;
      float EV = EQ + ET;
      float EW = ES + EU;
      float EX = EO * EV;
      float EY = EO * EW;
      int _li_EZ = 0;
      { // linear seek
        _li_EZ *= _s0_arr4;
        _li_EZ += Ec;
        _li_EZ *= _s1_arr4;
        _li_EZ += CS;
        _li_EZ *= _s2_arr4;
        _li_EZ += AI;
      }
      int EZ = _li_EZ << 2;
      float F0;
      { // Begin Atomic Op
      F0 = atomicAdd_arr4_f32(EZ >> 2, EX);
      } // End Atomic Op
      int _li_F1 = 0;
      { // linear seek
        _li_F1 *= _s0_arr4;
        _li_F1 += Ec;
        _li_F1 *= _s1_arr4;
        _li_F1 += CS;
        _li_F1 *= _s2_arr4;
        _li_F1 += AO;
      }
      int F1 = _li_F1 << 2;
      float F2;
      { // Begin Atomic Op
      F2 = atomicAdd_arr4_f32(F1 >> 2, EY);
      } // End Atomic Op
      float F3 = EO * Bq;
      int _li_F4 = 0;
      { // linear seek
        _li_F4 *= _s0_arr5;
        _li_F4 += Ec;
        _li_F4 *= _s1_arr5;
        _li_F4 += CS;
      }
      int F4 = _li_F4 << 2;
      float F5;
      { // Begin Atomic Op
      F5 = atomicAdd_arr5_f32(F4 >> 2, F3);
      } // End Atomic Op
  }
}

void main()
{
  substep_c44_02();
}
