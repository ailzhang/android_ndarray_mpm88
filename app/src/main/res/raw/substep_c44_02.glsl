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
void substep_c44_02()
{ // range for
  // range from args buffer
  int AG = _args_i32_[16 + 0 * 8 + 0];
  int _beg = 0, _end = AG;
  int _sid0 = int(gl_GlobalInvocationID.x);
  for (int _sid = _sid0; _sid < (_end - _beg); _sid += int(gl_WorkGroupSize.x * gl_NumWorkGroups.x)) {
    int _itv = _beg + _sid;
      int AG = _args_i32_[16 + 0 * 8 + 0];
      int AH = _itv;
      int AI = AH - AG * int(AH / AG);
      int AK = int(0);
      int _li_AL = 0;
      int _s0_arr0 = _args_i32_[16 + 0 * 8 + 0];
      int _s1_arr0 = _args_i32_[16 + 0 * 8 + 1];
      { // linear seek
        _li_AL *= _s0_arr0;
        _li_AL += AI;
        _li_AL *= _s1_arr0;
        _li_AL += AK;
      }
      int AL = _li_AL << 2;
      float AM = _arr0_f32_[AL >> 2];
      int AN = 0;
      float AO = _gtmp_f32_[AN >> 2];
      float AP = AM * AO;
      int AQ = int(1);
      int _li_AR = 0;
      { // linear seek
        _li_AR *= _s0_arr0;
        _li_AR += AI;
        _li_AR *= _s1_arr0;
        _li_AR += AQ;
      }
      int AR = _li_AR << 2;
      float AS = _arr0_f32_[AR >> 2];
      float AT = AS * AO;
      float AU = float(0.5);
      float AV = AP - AU;
      float AW = AT - AU;
      int AX = int(AV);
      int AY = int(AW);
      float AZ = float(AX);
      float B0 = float(AY);
      float B1 = AP - AZ;
      float B2 = AT - B0;
      float B3 = float(1.5);
      float B4 = B3 - B1;
      float B5 = B3 - B2;
      float B6 = B4 * B4;
      float B7 = B5 * B5;
      float B8 = B6 * AU;
      float B9 = B7 * AU;
      float Ba = float(1.0);
      float Bb = B1 - Ba;
      float Bc = B2 - Ba;
      float Bd = Bb * Bb;
      float Be = Bc * Bc;
      float Bf = float(0.75);
      float Bg = Bf - Bd;
      float Bh = Bf - Be;
      float Bi = B1 - AU;
      float Bj = B2 - AU;
      float Bk = Bi * Bi;
      float Bl = Bj * Bj;
      float Bm = Bk * AU;
      float Bn = Bl * AU;
      int Bo = 4;
      float Bp = _gtmp_f32_[Bo >> 2];
      float Bq = float(-Bp);
      int Br = 8;
      float Bs = _gtmp_f32_[Br >> 2];
      float Bt = Bq * Bs;
      int _li_Bv = 0;
      int _s0_arr2 = _args_i32_[16 + 2 * 8 + 0];
      { // linear seek
        _li_Bv *= _s0_arr2;
        _li_Bv += AI;
      }
      int Bv = _li_Bv << 2;
      float Bw = _arr2_f32_[Bv >> 2];
      float Bx = Bw - Ba;
      float By = Bt * Bx;
      float Bz = float(4.0);
      float BA = By * Bz;
      float BB = BA * AO;
      float BC = BB * AO;
      float BD = float(400.0);
      float BE = BC * BD;
      int _li_BG = 0;
      int _s0_arr3 = _args_i32_[16 + 3 * 8 + 0];
      int _s1_arr3 = _args_i32_[16 + 3 * 8 + 1];
      int _s2_arr3 = _args_i32_[16 + 3 * 8 + 2];
      { // linear seek
        _li_BG *= _s0_arr3;
        _li_BG += AI;
        _li_BG *= _s1_arr3;
        _li_BG += AK;
        _li_BG *= _s2_arr3;
        _li_BG += AK;
      }
      int BG = _li_BG << 2;
      float BH = _arr3_f32_[BG >> 2];
      float BI = Bs * BH;
      int _li_BJ = 0;
      { // linear seek
        _li_BJ *= _s0_arr3;
        _li_BJ += AI;
        _li_BJ *= _s1_arr3;
        _li_BJ += AK;
        _li_BJ *= _s2_arr3;
        _li_BJ += AQ;
      }
      int BJ = _li_BJ << 2;
      float BK = _arr3_f32_[BJ >> 2];
      float BL = Bs * BK;
      int _li_BM = 0;
      { // linear seek
        _li_BM *= _s0_arr3;
        _li_BM += AI;
        _li_BM *= _s1_arr3;
        _li_BM += AQ;
        _li_BM *= _s2_arr3;
        _li_BM += AK;
      }
      int BM = _li_BM << 2;
      float BN = _arr3_f32_[BM >> 2];
      float BO = Bs * BN;
      int _li_BP = 0;
      { // linear seek
        _li_BP *= _s0_arr3;
        _li_BP += AI;
        _li_BP *= _s1_arr3;
        _li_BP += AQ;
        _li_BP *= _s2_arr3;
        _li_BP += AQ;
      }
      int BP = _li_BP << 2;
      float BQ = _arr3_f32_[BP >> 2];
      float BR = Bs * BQ;
      float BS = BE + BI;
      float BT = BE + BR;
      float BU = float(0.0);
      float BV = BU - B1;
      float BW = BU - B2;
      int BX = 12;
      float BY = _gtmp_f32_[BX >> 2];
      float BZ = BV * BY;
      float C0 = BW * BY;
      float C1 = B8 * B9;
      int _li_C3 = 0;
      int _s0_arr1 = _args_i32_[16 + 1 * 8 + 0];
      int _s1_arr1 = _args_i32_[16 + 1 * 8 + 1];
      { // linear seek
        _li_C3 *= _s0_arr1;
        _li_C3 += AI;
        _li_C3 *= _s1_arr1;
        _li_C3 += AK;
      }
      int C3 = _li_C3 << 2;
      float C4 = _arr1_f32_[C3 >> 2];
      float C5 = Bs * C4;
      int _li_C6 = 0;
      { // linear seek
        _li_C6 *= _s0_arr1;
        _li_C6 += AI;
        _li_C6 *= _s1_arr1;
        _li_C6 += AQ;
      }
      int C6 = _li_C6 << 2;
      float C7 = _arr1_f32_[C6 >> 2];
      float C8 = Bs * C7;
      float C9 = BS * BZ;
      float Ca = BL * C0;
      float Cb = C9 + Ca;
      float Cc = BO * BZ;
      float Cd = BT * C0;
      float Ce = Cc + Cd;
      float Cf = C5 + Cb;
      float Cg = C8 + Ce;
      float Ch = C1 * Cf;
      float Ci = C1 * Cg;
      int _li_Ck = 0;
      int _s0_arr4 = _args_i32_[16 + 4 * 8 + 0];
      int _s1_arr4 = _args_i32_[16 + 4 * 8 + 1];
      int _s2_arr4 = _args_i32_[16 + 4 * 8 + 2];
      { // linear seek
        _li_Ck *= _s0_arr4;
        _li_Ck += AX;
        _li_Ck *= _s1_arr4;
        _li_Ck += AY;
        _li_Ck *= _s2_arr4;
        _li_Ck += AK;
      }
      int Ck = _li_Ck << 2;
      float Cl;
      { // Begin Atomic Op
      Cl = atomicAdd_arr4_f32(Ck >> 2, Ch);
      } // End Atomic Op
      int _li_Cm = 0;
      { // linear seek
        _li_Cm *= _s0_arr4;
        _li_Cm += AX;
        _li_Cm *= _s1_arr4;
        _li_Cm += AY;
        _li_Cm *= _s2_arr4;
        _li_Cm += AQ;
      }
      int Cm = _li_Cm << 2;
      float Cn;
      { // Begin Atomic Op
      Cn = atomicAdd_arr4_f32(Cm >> 2, Ci);
      } // End Atomic Op
      float Co = C1 * Bs;
      int _li_Cq = 0;
      int _s0_arr5 = _args_i32_[16 + 5 * 8 + 0];
      int _s1_arr5 = _args_i32_[16 + 5 * 8 + 1];
      { // linear seek
        _li_Cq *= _s0_arr5;
        _li_Cq += AX;
        _li_Cq *= _s1_arr5;
        _li_Cq += AY;
      }
      int Cq = _li_Cq << 2;
      float Cr;
      { // Begin Atomic Op
      Cr = atomicAdd_arr5_f32(Cq >> 2, Co);
      } // End Atomic Op
      float Cs = Ba - B2;
      float Ct = Cs * BY;
      float Cu = B8 * Bh;
      int Cv = AY + AQ;
      float Cw = _arr1_f32_[C3 >> 2];
      float Cx = Bs * Cw;
      float Cy = _arr1_f32_[C6 >> 2];
      float Cz = Bs * Cy;
      float CA = BL * Ct;
      float CB = C9 + CA;
      float CC = BT * Ct;
      float CD = Cc + CC;
      float CE = Cx + CB;
      float CF = Cz + CD;
      float CG = Cu * CE;
      float CH = Cu * CF;
      int _li_CI = 0;
      { // linear seek
        _li_CI *= _s0_arr4;
        _li_CI += AX;
        _li_CI *= _s1_arr4;
        _li_CI += Cv;
        _li_CI *= _s2_arr4;
        _li_CI += AK;
      }
      int CI = _li_CI << 2;
      float CJ;
      { // Begin Atomic Op
      CJ = atomicAdd_arr4_f32(CI >> 2, CG);
      } // End Atomic Op
      int _li_CK = 0;
      { // linear seek
        _li_CK *= _s0_arr4;
        _li_CK += AX;
        _li_CK *= _s1_arr4;
        _li_CK += Cv;
        _li_CK *= _s2_arr4;
        _li_CK += AQ;
      }
      int CK = _li_CK << 2;
      float CL;
      { // Begin Atomic Op
      CL = atomicAdd_arr4_f32(CK >> 2, CH);
      } // End Atomic Op
      float CM = Cu * Bs;
      int _li_CN = 0;
      { // linear seek
        _li_CN *= _s0_arr5;
        _li_CN += AX;
        _li_CN *= _s1_arr5;
        _li_CN += Cv;
      }
      int CN = _li_CN << 2;
      float CO;
      { // Begin Atomic Op
      CO = atomicAdd_arr5_f32(CN >> 2, CM);
      } // End Atomic Op
      float CP = float(2.0);
      float CQ = CP - B2;
      float CR = CQ * BY;
      float CS = B8 * Bn;
      int CT = int(2);
      int CU = AY + CT;
      float CV = _arr1_f32_[C3 >> 2];
      float CW = Bs * CV;
      float CX = _arr1_f32_[C6 >> 2];
      float CY = Bs * CX;
      float CZ = BL * CR;
      float D0 = C9 + CZ;
      float D1 = BT * CR;
      float D2 = Cc + D1;
      float D3 = CW + D0;
      float D4 = CY + D2;
      float D5 = CS * D3;
      float D6 = CS * D4;
      int _li_D7 = 0;
      { // linear seek
        _li_D7 *= _s0_arr4;
        _li_D7 += AX;
        _li_D7 *= _s1_arr4;
        _li_D7 += CU;
        _li_D7 *= _s2_arr4;
        _li_D7 += AK;
      }
      int D7 = _li_D7 << 2;
      float D8;
      { // Begin Atomic Op
      D8 = atomicAdd_arr4_f32(D7 >> 2, D5);
      } // End Atomic Op
      int _li_D9 = 0;
      { // linear seek
        _li_D9 *= _s0_arr4;
        _li_D9 += AX;
        _li_D9 *= _s1_arr4;
        _li_D9 += CU;
        _li_D9 *= _s2_arr4;
        _li_D9 += AQ;
      }
      int D9 = _li_D9 << 2;
      float Da;
      { // Begin Atomic Op
      Da = atomicAdd_arr4_f32(D9 >> 2, D6);
      } // End Atomic Op
      float Db = CS * Bs;
      int _li_Dc = 0;
      { // linear seek
        _li_Dc *= _s0_arr5;
        _li_Dc += AX;
        _li_Dc *= _s1_arr5;
        _li_Dc += CU;
      }
      int Dc = _li_Dc << 2;
      float Dd;
      { // Begin Atomic Op
      Dd = atomicAdd_arr5_f32(Dc >> 2, Db);
      } // End Atomic Op
      float De = Ba - B1;
      float Df = De * BY;
      float Dg = Bg * B9;
      int Dh = AX + AQ;
      float Di = _arr1_f32_[C3 >> 2];
      float Dj = Bs * Di;
      float Dk = _arr1_f32_[C6 >> 2];
      float Dl = Bs * Dk;
      float Dm = BS * Df;
      float Dn = Dm + Ca;
      float Do = BO * Df;
      float Dp = Do + Cd;
      float Dq = Dj + Dn;
      float Dr = Dl + Dp;
      float Ds = Dg * Dq;
      float Dt = Dg * Dr;
      int _li_Du = 0;
      { // linear seek
        _li_Du *= _s0_arr4;
        _li_Du += Dh;
        _li_Du *= _s1_arr4;
        _li_Du += AY;
        _li_Du *= _s2_arr4;
        _li_Du += AK;
      }
      int Du = _li_Du << 2;
      float Dv;
      { // Begin Atomic Op
      Dv = atomicAdd_arr4_f32(Du >> 2, Ds);
      } // End Atomic Op
      int _li_Dw = 0;
      { // linear seek
        _li_Dw *= _s0_arr4;
        _li_Dw += Dh;
        _li_Dw *= _s1_arr4;
        _li_Dw += AY;
        _li_Dw *= _s2_arr4;
        _li_Dw += AQ;
      }
      int Dw = _li_Dw << 2;
      float Dx;
      { // Begin Atomic Op
      Dx = atomicAdd_arr4_f32(Dw >> 2, Dt);
      } // End Atomic Op
      float Dy = Dg * Bs;
      int _li_Dz = 0;
      { // linear seek
        _li_Dz *= _s0_arr5;
        _li_Dz += Dh;
        _li_Dz *= _s1_arr5;
        _li_Dz += AY;
      }
      int Dz = _li_Dz << 2;
      float DA;
      { // Begin Atomic Op
      DA = atomicAdd_arr5_f32(Dz >> 2, Dy);
      } // End Atomic Op
      float DB = Bg * Bh;
      float DC = _arr1_f32_[C3 >> 2];
      float DD = Bs * DC;
      float DE = _arr1_f32_[C6 >> 2];
      float DF = Bs * DE;
      float DG = Dm + CA;
      float DH = Do + CC;
      float DI = DD + DG;
      float DJ = DF + DH;
      float DK = DB * DI;
      float DL = DB * DJ;
      int _li_DM = 0;
      { // linear seek
        _li_DM *= _s0_arr4;
        _li_DM += Dh;
        _li_DM *= _s1_arr4;
        _li_DM += Cv;
        _li_DM *= _s2_arr4;
        _li_DM += AK;
      }
      int DM = _li_DM << 2;
      float DN;
      { // Begin Atomic Op
      DN = atomicAdd_arr4_f32(DM >> 2, DK);
      } // End Atomic Op
      int _li_DO = 0;
      { // linear seek
        _li_DO *= _s0_arr4;
        _li_DO += Dh;
        _li_DO *= _s1_arr4;
        _li_DO += Cv;
        _li_DO *= _s2_arr4;
        _li_DO += AQ;
      }
      int DO = _li_DO << 2;
      float DP;
      { // Begin Atomic Op
      DP = atomicAdd_arr4_f32(DO >> 2, DL);
      } // End Atomic Op
      float DQ = DB * Bs;
      int _li_DR = 0;
      { // linear seek
        _li_DR *= _s0_arr5;
        _li_DR += Dh;
        _li_DR *= _s1_arr5;
        _li_DR += Cv;
      }
      int DR = _li_DR << 2;
      float DS;
      { // Begin Atomic Op
      DS = atomicAdd_arr5_f32(DR >> 2, DQ);
      } // End Atomic Op
      float DT = Bg * Bn;
      float DU = _arr1_f32_[C3 >> 2];
      float DV = Bs * DU;
      float DW = _arr1_f32_[C6 >> 2];
      float DX = Bs * DW;
      float DY = Dm + CZ;
      float DZ = Do + D1;
      float E0 = DV + DY;
      float E1 = DX + DZ;
      float E2 = DT * E0;
      float E3 = DT * E1;
      int _li_E4 = 0;
      { // linear seek
        _li_E4 *= _s0_arr4;
        _li_E4 += Dh;
        _li_E4 *= _s1_arr4;
        _li_E4 += CU;
        _li_E4 *= _s2_arr4;
        _li_E4 += AK;
      }
      int E4 = _li_E4 << 2;
      float E5;
      { // Begin Atomic Op
      E5 = atomicAdd_arr4_f32(E4 >> 2, E2);
      } // End Atomic Op
      int _li_E6 = 0;
      { // linear seek
        _li_E6 *= _s0_arr4;
        _li_E6 += Dh;
        _li_E6 *= _s1_arr4;
        _li_E6 += CU;
        _li_E6 *= _s2_arr4;
        _li_E6 += AQ;
      }
      int E6 = _li_E6 << 2;
      float E7;
      { // Begin Atomic Op
      E7 = atomicAdd_arr4_f32(E6 >> 2, E3);
      } // End Atomic Op
      float E8 = DT * Bs;
      int _li_E9 = 0;
      { // linear seek
        _li_E9 *= _s0_arr5;
        _li_E9 += Dh;
        _li_E9 *= _s1_arr5;
        _li_E9 += CU;
      }
      int E9 = _li_E9 << 2;
      float Ea;
      { // Begin Atomic Op
      Ea = atomicAdd_arr5_f32(E9 >> 2, E8);
      } // End Atomic Op
      float Eb = CP - B1;
      float Ec = Eb * BY;
      float Ed = Bm * B9;
      int Ee = AX + CT;
      float Ef = _arr1_f32_[C3 >> 2];
      float Eg = Bs * Ef;
      float Eh = _arr1_f32_[C6 >> 2];
      float Ei = Bs * Eh;
      float Ej = BS * Ec;
      float Ek = Ej + Ca;
      float El = BO * Ec;
      float Em = El + Cd;
      float En = Eg + Ek;
      float Eo = Ei + Em;
      float Ep = Ed * En;
      float Eq = Ed * Eo;
      int _li_Er = 0;
      { // linear seek
        _li_Er *= _s0_arr4;
        _li_Er += Ee;
        _li_Er *= _s1_arr4;
        _li_Er += AY;
        _li_Er *= _s2_arr4;
        _li_Er += AK;
      }
      int Er = _li_Er << 2;
      float Es;
      { // Begin Atomic Op
      Es = atomicAdd_arr4_f32(Er >> 2, Ep);
      } // End Atomic Op
      int _li_Et = 0;
      { // linear seek
        _li_Et *= _s0_arr4;
        _li_Et += Ee;
        _li_Et *= _s1_arr4;
        _li_Et += AY;
        _li_Et *= _s2_arr4;
        _li_Et += AQ;
      }
      int Et = _li_Et << 2;
      float Eu;
      { // Begin Atomic Op
      Eu = atomicAdd_arr4_f32(Et >> 2, Eq);
      } // End Atomic Op
      float Ev = Ed * Bs;
      int _li_Ew = 0;
      { // linear seek
        _li_Ew *= _s0_arr5;
        _li_Ew += Ee;
        _li_Ew *= _s1_arr5;
        _li_Ew += AY;
      }
      int Ew = _li_Ew << 2;
      float Ex;
      { // Begin Atomic Op
      Ex = atomicAdd_arr5_f32(Ew >> 2, Ev);
      } // End Atomic Op
      float Ey = Bm * Bh;
      float Ez = _arr1_f32_[C3 >> 2];
      float EA = Bs * Ez;
      float EB = _arr1_f32_[C6 >> 2];
      float EC = Bs * EB;
      float ED = Ej + CA;
      float EE = El + CC;
      float EF = EA + ED;
      float EG = EC + EE;
      float EH = Ey * EF;
      float EI = Ey * EG;
      int _li_EJ = 0;
      { // linear seek
        _li_EJ *= _s0_arr4;
        _li_EJ += Ee;
        _li_EJ *= _s1_arr4;
        _li_EJ += Cv;
        _li_EJ *= _s2_arr4;
        _li_EJ += AK;
      }
      int EJ = _li_EJ << 2;
      float EK;
      { // Begin Atomic Op
      EK = atomicAdd_arr4_f32(EJ >> 2, EH);
      } // End Atomic Op
      int _li_EL = 0;
      { // linear seek
        _li_EL *= _s0_arr4;
        _li_EL += Ee;
        _li_EL *= _s1_arr4;
        _li_EL += Cv;
        _li_EL *= _s2_arr4;
        _li_EL += AQ;
      }
      int EL = _li_EL << 2;
      float EM;
      { // Begin Atomic Op
      EM = atomicAdd_arr4_f32(EL >> 2, EI);
      } // End Atomic Op
      float EN = Ey * Bs;
      int _li_EO = 0;
      { // linear seek
        _li_EO *= _s0_arr5;
        _li_EO += Ee;
        _li_EO *= _s1_arr5;
        _li_EO += Cv;
      }
      int EO = _li_EO << 2;
      float EP;
      { // Begin Atomic Op
      EP = atomicAdd_arr5_f32(EO >> 2, EN);
      } // End Atomic Op
      float EQ = Bm * Bn;
      float ER = _arr1_f32_[C3 >> 2];
      float ES = Bs * ER;
      float ET = _arr1_f32_[C6 >> 2];
      float EU = Bs * ET;
      float EV = Ej + CZ;
      float EW = El + D1;
      float EX = ES + EV;
      float EY = EU + EW;
      float EZ = EQ * EX;
      float F0 = EQ * EY;
      int _li_F1 = 0;
      { // linear seek
        _li_F1 *= _s0_arr4;
        _li_F1 += Ee;
        _li_F1 *= _s1_arr4;
        _li_F1 += CU;
        _li_F1 *= _s2_arr4;
        _li_F1 += AK;
      }
      int F1 = _li_F1 << 2;
      float F2;
      { // Begin Atomic Op
      F2 = atomicAdd_arr4_f32(F1 >> 2, EZ);
      } // End Atomic Op
      int _li_F3 = 0;
      { // linear seek
        _li_F3 *= _s0_arr4;
        _li_F3 += Ee;
        _li_F3 *= _s1_arr4;
        _li_F3 += CU;
        _li_F3 *= _s2_arr4;
        _li_F3 += AQ;
      }
      int F3 = _li_F3 << 2;
      float F4;
      { // Begin Atomic Op
      F4 = atomicAdd_arr4_f32(F3 >> 2, F0);
      } // End Atomic Op
      float F5 = EQ * Bs;
      int _li_F6 = 0;
      { // linear seek
        _li_F6 *= _s0_arr5;
        _li_F6 += Ee;
        _li_F6 *= _s1_arr5;
        _li_F6 += CU;
      }
      int F6 = _li_F6 << 2;
      float F7;
      { // Begin Atomic Op
      F7 = atomicAdd_arr5_f32(F6 >> 2, F5);
      } // End Atomic Op
  }
}

void main()
{
  substep_c44_02();
}
