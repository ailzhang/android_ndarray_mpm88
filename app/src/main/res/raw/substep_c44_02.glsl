#version 310 es
layout(local_size_x = 32, local_size_y = 1, local_size_z = 1) in;
precision highp float;
layout(std430, binding = 1) buffer gtmp_i32 { int _gtmp_i32_[];}; 
layout(std430, binding = 1) buffer gtmp_f32 { float _gtmp_f32_[];}; 
layout(std430, binding = 2) buffer args_i32 { int _args_i32_[];}; 
layout(std430, binding = 2) buffer args_f32 { float _args_f32_[];}; 
layout(std430, binding = 9) buffer arr3_i32 { int _arr3_i32_[];}; 
layout(std430, binding = 9) buffer arr3_f32 { float _arr3_f32_[];}; 
layout(std430, binding = 8) buffer arr2_i32 { int _arr2_i32_[];}; 
layout(std430, binding = 8) buffer arr2_f32 { float _arr2_f32_[];}; 
layout(std430, binding = 7) buffer arr1_i32 { int _arr1_i32_[];}; 
layout(std430, binding = 7) buffer arr1_f32 { float _arr1_f32_[];}; 
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
      int AN = int(1);
      int _li_AO = 0;
      { // linear seek
        _li_AO *= _s0_arr0;
        _li_AO += AI;
        _li_AO *= _s1_arr0;
        _li_AO += AN;
      }
      int AO = _li_AO << 2;
      float AP = _arr0_f32_[AO >> 2];
      int _li_AR = 0;
      int _s0_arr1 = _args_i32_[16 + 1 * 8 + 0];
      int _s1_arr1 = _args_i32_[16 + 1 * 8 + 1];
      { // linear seek
        _li_AR *= _s0_arr1;
        _li_AR += AI;
        _li_AR *= _s1_arr1;
        _li_AR += AK;
      }
      int AR = _li_AR << 2;
      float AS = _arr1_f32_[AR >> 2];
      int _li_AT = 0;
      { // linear seek
        _li_AT *= _s0_arr1;
        _li_AT += AI;
        _li_AT *= _s1_arr1;
        _li_AT += AN;
      }
      int AT = _li_AT << 2;
      float AU = _arr1_f32_[AT >> 2];
      int AV = 0;
      float AW = _gtmp_f32_[AV >> 2];
      float AX = AM * AW;
      float AY = AP * AW;
      float AZ = float(0.5);
      float B0 = AX - AZ;
      float B1 = AY - AZ;
      int B2 = int(B0);
      int B3 = int(B1);
      float B4 = float(B2);
      float B5 = float(B3);
      float B6 = AX - B4;
      float B7 = AY - B5;
      float B8 = float(1.5);
      float B9 = B8 - B6;
      float Ba = B8 - B7;
      float Bb = B9 * B9;
      float Bc = Ba * Ba;
      float Bd = Bb * AZ;
      float Be = Bc * AZ;
      float Bf = float(1.0);
      float Bg = B6 - Bf;
      float Bh = B7 - Bf;
      float Bi = Bg * Bg;
      float Bj = Bh * Bh;
      float Bk = float(0.75);
      float Bl = Bk - Bi;
      float Bm = Bk - Bj;
      float Bn = B6 - AZ;
      float Bo = B7 - AZ;
      float Bp = Bn * Bn;
      float Bq = Bo * Bo;
      float Br = Bp * AZ;
      float Bs = Bq * AZ;
      int Bt = 4;
      float Bu = _gtmp_f32_[Bt >> 2];
      float Bv = float(-Bu);
      int Bw = 8;
      float Bx = _gtmp_f32_[Bw >> 2];
      float By = Bv * Bx;
      int _li_BA = 0;
      int _s0_arr2 = _args_i32_[16 + 2 * 8 + 0];
      { // linear seek
        _li_BA *= _s0_arr2;
        _li_BA += AI;
      }
      int BA = _li_BA << 2;
      float BB = _arr2_f32_[BA >> 2];
      float BC = BB - Bf;
      float BD = By * BC;
      float BE = float(4.0);
      float BF = BD * BE;
      float BG = BF * AW;
      float BH = BG * AW;
      float BI = float(400.0);
      float BJ = BH * BI;
      int _li_BL = 0;
      int _s0_arr3 = _args_i32_[16 + 3 * 8 + 0];
      int _s1_arr3 = _args_i32_[16 + 3 * 8 + 1];
      int _s2_arr3 = _args_i32_[16 + 3 * 8 + 2];
      { // linear seek
        _li_BL *= _s0_arr3;
        _li_BL += AI;
        _li_BL *= _s1_arr3;
        _li_BL += AK;
        _li_BL *= _s2_arr3;
        _li_BL += AK;
      }
      int BL = _li_BL << 2;
      float BM = _arr3_f32_[BL >> 2];
      float BN = Bx * BM;
      int _li_BO = 0;
      { // linear seek
        _li_BO *= _s0_arr3;
        _li_BO += AI;
        _li_BO *= _s1_arr3;
        _li_BO += AK;
        _li_BO *= _s2_arr3;
        _li_BO += AN;
      }
      int BO = _li_BO << 2;
      float BP = _arr3_f32_[BO >> 2];
      float BQ = Bx * BP;
      int _li_BR = 0;
      { // linear seek
        _li_BR *= _s0_arr3;
        _li_BR += AI;
        _li_BR *= _s1_arr3;
        _li_BR += AN;
        _li_BR *= _s2_arr3;
        _li_BR += AK;
      }
      int BR = _li_BR << 2;
      float BS = _arr3_f32_[BR >> 2];
      float BT = Bx * BS;
      int _li_BU = 0;
      { // linear seek
        _li_BU *= _s0_arr3;
        _li_BU += AI;
        _li_BU *= _s1_arr3;
        _li_BU += AN;
        _li_BU *= _s2_arr3;
        _li_BU += AN;
      }
      int BU = _li_BU << 2;
      float BV = _arr3_f32_[BU >> 2];
      float BW = Bx * BV;
      float BX = BJ + BN;
      float BY = BJ + BW;
      float BZ = float(0.0);
      float C0 = BZ - B6;
      float C1 = BZ - B7;
      int C2 = 12;
      float C3 = _gtmp_f32_[C2 >> 2];
      float C4 = C0 * C3;
      float C5 = C1 * C3;
      float C6 = Bd * Be;
      float C7 = Bx * AS;
      float C8 = Bx * AU;
      float C9 = BX * C4;
      float Ca = BQ * C5;
      float Cb = C9 + Ca;
      float Cc = BT * C4;
      float Cd = BY * C5;
      float Ce = Cc + Cd;
      float Cf = C7 + Cb;
      float Cg = C8 + Ce;
      float Ch = C6 * Cf;
      float Ci = C6 * Cg;
      int _li_Ck = 0;
      int _s0_arr4 = _args_i32_[16 + 4 * 8 + 0];
      int _s1_arr4 = _args_i32_[16 + 4 * 8 + 1];
      int _s2_arr4 = _args_i32_[16 + 4 * 8 + 2];
      { // linear seek
        _li_Ck *= _s0_arr4;
        _li_Ck += B2;
        _li_Ck *= _s1_arr4;
        _li_Ck += B3;
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
        _li_Cm += B2;
        _li_Cm *= _s1_arr4;
        _li_Cm += B3;
        _li_Cm *= _s2_arr4;
        _li_Cm += AN;
      }
      int Cm = _li_Cm << 2;
      float Cn;
      { // Begin Atomic Op
      Cn = atomicAdd_arr4_f32(Cm >> 2, Ci);
      } // End Atomic Op
      float Co = C6 * Bx;
      int _li_Cq = 0;
      int _s0_arr5 = _args_i32_[16 + 5 * 8 + 0];
      int _s1_arr5 = _args_i32_[16 + 5 * 8 + 1];
      { // linear seek
        _li_Cq *= _s0_arr5;
        _li_Cq += B2;
        _li_Cq *= _s1_arr5;
        _li_Cq += B3;
      }
      int Cq = _li_Cq << 2;
      float Cr;
      { // Begin Atomic Op
      Cr = atomicAdd_arr5_f32(Cq >> 2, Co);
      } // End Atomic Op
      float Cs = Bf - B7;
      float Ct = Cs * C3;
      float Cu = Bd * Bm;
      int Cv = B3 + AN;
      float Cw = BQ * Ct;
      float Cx = C9 + Cw;
      float Cy = BY * Ct;
      float Cz = Cc + Cy;
      float CA = C7 + Cx;
      float CB = C8 + Cz;
      float CC = Cu * CA;
      float CD = Cu * CB;
      int _li_CE = 0;
      { // linear seek
        _li_CE *= _s0_arr4;
        _li_CE += B2;
        _li_CE *= _s1_arr4;
        _li_CE += Cv;
        _li_CE *= _s2_arr4;
        _li_CE += AK;
      }
      int CE = _li_CE << 2;
      float CF;
      { // Begin Atomic Op
      CF = atomicAdd_arr4_f32(CE >> 2, CC);
      } // End Atomic Op
      int _li_CG = 0;
      { // linear seek
        _li_CG *= _s0_arr4;
        _li_CG += B2;
        _li_CG *= _s1_arr4;
        _li_CG += Cv;
        _li_CG *= _s2_arr4;
        _li_CG += AN;
      }
      int CG = _li_CG << 2;
      float CH;
      { // Begin Atomic Op
      CH = atomicAdd_arr4_f32(CG >> 2, CD);
      } // End Atomic Op
      float CI = Cu * Bx;
      int _li_CJ = 0;
      { // linear seek
        _li_CJ *= _s0_arr5;
        _li_CJ += B2;
        _li_CJ *= _s1_arr5;
        _li_CJ += Cv;
      }
      int CJ = _li_CJ << 2;
      float CK;
      { // Begin Atomic Op
      CK = atomicAdd_arr5_f32(CJ >> 2, CI);
      } // End Atomic Op
      float CL = float(2.0);
      float CM = CL - B7;
      float CN = CM * C3;
      float CO = Bd * Bs;
      int CP = int(2);
      int CQ = B3 + CP;
      float CR = BQ * CN;
      float CS = C9 + CR;
      float CT = BY * CN;
      float CU = Cc + CT;
      float CV = C7 + CS;
      float CW = C8 + CU;
      float CX = CO * CV;
      float CY = CO * CW;
      int _li_CZ = 0;
      { // linear seek
        _li_CZ *= _s0_arr4;
        _li_CZ += B2;
        _li_CZ *= _s1_arr4;
        _li_CZ += CQ;
        _li_CZ *= _s2_arr4;
        _li_CZ += AK;
      }
      int CZ = _li_CZ << 2;
      float D0;
      { // Begin Atomic Op
      D0 = atomicAdd_arr4_f32(CZ >> 2, CX);
      } // End Atomic Op
      int _li_D1 = 0;
      { // linear seek
        _li_D1 *= _s0_arr4;
        _li_D1 += B2;
        _li_D1 *= _s1_arr4;
        _li_D1 += CQ;
        _li_D1 *= _s2_arr4;
        _li_D1 += AN;
      }
      int D1 = _li_D1 << 2;
      float D2;
      { // Begin Atomic Op
      D2 = atomicAdd_arr4_f32(D1 >> 2, CY);
      } // End Atomic Op
      float D3 = CO * Bx;
      int _li_D4 = 0;
      { // linear seek
        _li_D4 *= _s0_arr5;
        _li_D4 += B2;
        _li_D4 *= _s1_arr5;
        _li_D4 += CQ;
      }
      int D4 = _li_D4 << 2;
      float D5;
      { // Begin Atomic Op
      D5 = atomicAdd_arr5_f32(D4 >> 2, D3);
      } // End Atomic Op
      float D6 = Bf - B6;
      float D7 = D6 * C3;
      float D8 = Bl * Be;
      int D9 = B2 + AN;
      float Da = BX * D7;
      float Db = Da + Ca;
      float Dc = BT * D7;
      float Dd = Dc + Cd;
      float De = C7 + Db;
      float Df = C8 + Dd;
      float Dg = D8 * De;
      float Dh = D8 * Df;
      int _li_Di = 0;
      { // linear seek
        _li_Di *= _s0_arr4;
        _li_Di += D9;
        _li_Di *= _s1_arr4;
        _li_Di += B3;
        _li_Di *= _s2_arr4;
        _li_Di += AK;
      }
      int Di = _li_Di << 2;
      float Dj;
      { // Begin Atomic Op
      Dj = atomicAdd_arr4_f32(Di >> 2, Dg);
      } // End Atomic Op
      int _li_Dk = 0;
      { // linear seek
        _li_Dk *= _s0_arr4;
        _li_Dk += D9;
        _li_Dk *= _s1_arr4;
        _li_Dk += B3;
        _li_Dk *= _s2_arr4;
        _li_Dk += AN;
      }
      int Dk = _li_Dk << 2;
      float Dl;
      { // Begin Atomic Op
      Dl = atomicAdd_arr4_f32(Dk >> 2, Dh);
      } // End Atomic Op
      float Dm = D8 * Bx;
      int _li_Dn = 0;
      { // linear seek
        _li_Dn *= _s0_arr5;
        _li_Dn += D9;
        _li_Dn *= _s1_arr5;
        _li_Dn += B3;
      }
      int Dn = _li_Dn << 2;
      float Do;
      { // Begin Atomic Op
      Do = atomicAdd_arr5_f32(Dn >> 2, Dm);
      } // End Atomic Op
      float Dp = Bl * Bm;
      float Dq = Da + Cw;
      float Dr = Dc + Cy;
      float Ds = C7 + Dq;
      float Dt = C8 + Dr;
      float Du = Dp * Ds;
      float Dv = Dp * Dt;
      int _li_Dw = 0;
      { // linear seek
        _li_Dw *= _s0_arr4;
        _li_Dw += D9;
        _li_Dw *= _s1_arr4;
        _li_Dw += Cv;
        _li_Dw *= _s2_arr4;
        _li_Dw += AK;
      }
      int Dw = _li_Dw << 2;
      float Dx;
      { // Begin Atomic Op
      Dx = atomicAdd_arr4_f32(Dw >> 2, Du);
      } // End Atomic Op
      int _li_Dy = 0;
      { // linear seek
        _li_Dy *= _s0_arr4;
        _li_Dy += D9;
        _li_Dy *= _s1_arr4;
        _li_Dy += Cv;
        _li_Dy *= _s2_arr4;
        _li_Dy += AN;
      }
      int Dy = _li_Dy << 2;
      float Dz;
      { // Begin Atomic Op
      Dz = atomicAdd_arr4_f32(Dy >> 2, Dv);
      } // End Atomic Op
      float DA = Dp * Bx;
      int _li_DB = 0;
      { // linear seek
        _li_DB *= _s0_arr5;
        _li_DB += D9;
        _li_DB *= _s1_arr5;
        _li_DB += Cv;
      }
      int DB = _li_DB << 2;
      float DC;
      { // Begin Atomic Op
      DC = atomicAdd_arr5_f32(DB >> 2, DA);
      } // End Atomic Op
      float DD = Bl * Bs;
      float DE = Da + CR;
      float DF = Dc + CT;
      float DG = C7 + DE;
      float DH = C8 + DF;
      float DI = DD * DG;
      float DJ = DD * DH;
      int _li_DK = 0;
      { // linear seek
        _li_DK *= _s0_arr4;
        _li_DK += D9;
        _li_DK *= _s1_arr4;
        _li_DK += CQ;
        _li_DK *= _s2_arr4;
        _li_DK += AK;
      }
      int DK = _li_DK << 2;
      float DL;
      { // Begin Atomic Op
      DL = atomicAdd_arr4_f32(DK >> 2, DI);
      } // End Atomic Op
      int _li_DM = 0;
      { // linear seek
        _li_DM *= _s0_arr4;
        _li_DM += D9;
        _li_DM *= _s1_arr4;
        _li_DM += CQ;
        _li_DM *= _s2_arr4;
        _li_DM += AN;
      }
      int DM = _li_DM << 2;
      float DN;
      { // Begin Atomic Op
      DN = atomicAdd_arr4_f32(DM >> 2, DJ);
      } // End Atomic Op
      float DO = DD * Bx;
      int _li_DP = 0;
      { // linear seek
        _li_DP *= _s0_arr5;
        _li_DP += D9;
        _li_DP *= _s1_arr5;
        _li_DP += CQ;
      }
      int DP = _li_DP << 2;
      float DQ;
      { // Begin Atomic Op
      DQ = atomicAdd_arr5_f32(DP >> 2, DO);
      } // End Atomic Op
      float DR = CL - B6;
      float DS = DR * C3;
      float DT = Br * Be;
      int DU = B2 + CP;
      float DV = BX * DS;
      float DW = DV + Ca;
      float DX = BT * DS;
      float DY = DX + Cd;
      float DZ = C7 + DW;
      float E0 = C8 + DY;
      float E1 = DT * DZ;
      float E2 = DT * E0;
      int _li_E3 = 0;
      { // linear seek
        _li_E3 *= _s0_arr4;
        _li_E3 += DU;
        _li_E3 *= _s1_arr4;
        _li_E3 += B3;
        _li_E3 *= _s2_arr4;
        _li_E3 += AK;
      }
      int E3 = _li_E3 << 2;
      float E4;
      { // Begin Atomic Op
      E4 = atomicAdd_arr4_f32(E3 >> 2, E1);
      } // End Atomic Op
      int _li_E5 = 0;
      { // linear seek
        _li_E5 *= _s0_arr4;
        _li_E5 += DU;
        _li_E5 *= _s1_arr4;
        _li_E5 += B3;
        _li_E5 *= _s2_arr4;
        _li_E5 += AN;
      }
      int E5 = _li_E5 << 2;
      float E6;
      { // Begin Atomic Op
      E6 = atomicAdd_arr4_f32(E5 >> 2, E2);
      } // End Atomic Op
      float E7 = DT * Bx;
      int _li_E8 = 0;
      { // linear seek
        _li_E8 *= _s0_arr5;
        _li_E8 += DU;
        _li_E8 *= _s1_arr5;
        _li_E8 += B3;
      }
      int E8 = _li_E8 << 2;
      float E9;
      { // Begin Atomic Op
      E9 = atomicAdd_arr5_f32(E8 >> 2, E7);
      } // End Atomic Op
      float Ea = Br * Bm;
      float Eb = DV + Cw;
      float Ec = DX + Cy;
      float Ed = C7 + Eb;
      float Ee = C8 + Ec;
      float Ef = Ea * Ed;
      float Eg = Ea * Ee;
      int _li_Eh = 0;
      { // linear seek
        _li_Eh *= _s0_arr4;
        _li_Eh += DU;
        _li_Eh *= _s1_arr4;
        _li_Eh += Cv;
        _li_Eh *= _s2_arr4;
        _li_Eh += AK;
      }
      int Eh = _li_Eh << 2;
      float Ei;
      { // Begin Atomic Op
      Ei = atomicAdd_arr4_f32(Eh >> 2, Ef);
      } // End Atomic Op
      int _li_Ej = 0;
      { // linear seek
        _li_Ej *= _s0_arr4;
        _li_Ej += DU;
        _li_Ej *= _s1_arr4;
        _li_Ej += Cv;
        _li_Ej *= _s2_arr4;
        _li_Ej += AN;
      }
      int Ej = _li_Ej << 2;
      float Ek;
      { // Begin Atomic Op
      Ek = atomicAdd_arr4_f32(Ej >> 2, Eg);
      } // End Atomic Op
      float El = Ea * Bx;
      int _li_Em = 0;
      { // linear seek
        _li_Em *= _s0_arr5;
        _li_Em += DU;
        _li_Em *= _s1_arr5;
        _li_Em += Cv;
      }
      int Em = _li_Em << 2;
      float En;
      { // Begin Atomic Op
      En = atomicAdd_arr5_f32(Em >> 2, El);
      } // End Atomic Op
      float Eo = Br * Bs;
      float Ep = DV + CR;
      float Eq = DX + CT;
      float Er = C7 + Ep;
      float Es = C8 + Eq;
      float Et = Eo * Er;
      float Eu = Eo * Es;
      int _li_Ev = 0;
      { // linear seek
        _li_Ev *= _s0_arr4;
        _li_Ev += DU;
        _li_Ev *= _s1_arr4;
        _li_Ev += CQ;
        _li_Ev *= _s2_arr4;
        _li_Ev += AK;
      }
      int Ev = _li_Ev << 2;
      float Ew;
      { // Begin Atomic Op
      Ew = atomicAdd_arr4_f32(Ev >> 2, Et);
      } // End Atomic Op
      int _li_Ex = 0;
      { // linear seek
        _li_Ex *= _s0_arr4;
        _li_Ex += DU;
        _li_Ex *= _s1_arr4;
        _li_Ex += CQ;
        _li_Ex *= _s2_arr4;
        _li_Ex += AN;
      }
      int Ex = _li_Ex << 2;
      float Ey;
      { // Begin Atomic Op
      Ey = atomicAdd_arr4_f32(Ex >> 2, Eu);
      } // End Atomic Op
      float Ez = Eo * Bx;
      int _li_EA = 0;
      { // linear seek
        _li_EA *= _s0_arr5;
        _li_EA += DU;
        _li_EA *= _s1_arr5;
        _li_EA += CQ;
      }
      int EA = _li_EA << 2;
      float EB;
      { // Begin Atomic Op
      EB = atomicAdd_arr5_f32(EA >> 2, Ez);
      } // End Atomic Op
  }
}

void main()
{
  substep_c44_02();
}
