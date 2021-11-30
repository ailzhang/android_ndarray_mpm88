#version 310 es
layout(local_size_x = 128, local_size_y = 1, local_size_z = 1) in;
precision highp float;
layout(std430, binding = 0) buffer data_i32 { int _data_i32_[];}; 
layout(std430, binding = 0) buffer data_f32 { float _data_f32_[];}; 
layout(std430, binding = 1) buffer gtmp_i32 { int _gtmp_i32_[];}; 
layout(std430, binding = 1) buffer gtmp_f32 { float _gtmp_f32_[];}; 
layout(std430, binding = 2) buffer args_i32 { int _args_i32_[];}; 
layout(std430, binding = 2) buffer args_f32 { float _args_f32_[];}; 
layout(std430, binding = 7) buffer arr1_i32 { int _arr1_i32_[];}; 
layout(std430, binding = 7) buffer arr1_f32 { float _arr1_f32_[];}; 
layout(std430, binding = 6) buffer arr3_i32 { int _arr3_i32_[];}; 
layout(std430, binding = 6) buffer arr3_f32 { float _arr3_f32_[];}; 
layout(std430, binding = 5) buffer arr2_i32 { int _arr2_i32_[];}; 
layout(std430, binding = 5) buffer arr2_f32 { float _arr2_f32_[];}; 
layout(std430, binding = 4) buffer arr0_i32 { int _arr0_i32_[];}; 
layout(std430, binding = 4) buffer arr0_f32 { float _arr0_f32_[];}; 
float atomicAdd_data_f32(int addr, float rhs) { int old, new, ret; do { old = _data_i32_[addr]; new = floatBitsToInt((intBitsToFloat(old) + rhs)); } while (old != atomicCompSwap(_data_i32_[addr], old, new)); return intBitsToFloat(old); } float atomicSub_data_f32(int addr, float rhs) { int old, new, ret; do { old = _data_i32_[addr]; new = floatBitsToInt((intBitsToFloat(old) - rhs)); } while (old != atomicCompSwap(_data_i32_[addr], old, new)); return intBitsToFloat(old); } float atomicMax_data_f32(int addr, float rhs) { int old, new, ret; do { old = _data_i32_[addr]; new = floatBitsToInt(max(intBitsToFloat(old), rhs)); } while (old != atomicCompSwap(_data_i32_[addr], old, new)); return intBitsToFloat(old); } float atomicMin_data_f32(int addr, float rhs) { int old, new, ret; do { old = _data_i32_[addr]; new = floatBitsToInt(min(intBitsToFloat(old), rhs)); } while (old != atomicCompSwap(_data_i32_[addr], old, new)); return intBitsToFloat(old); }float atomicAdd_gtmp_f32(int addr, float rhs) { int old, new, ret; do { old = _gtmp_i32_[addr]; new = floatBitsToInt((intBitsToFloat(old) + rhs)); } while (old != atomicCompSwap(_gtmp_i32_[addr], old, new)); return intBitsToFloat(old); } float atomicSub_gtmp_f32(int addr, float rhs) { int old, new, ret; do { old = _gtmp_i32_[addr]; new = floatBitsToInt((intBitsToFloat(old) - rhs)); } while (old != atomicCompSwap(_gtmp_i32_[addr], old, new)); return intBitsToFloat(old); } float atomicMax_gtmp_f32(int addr, float rhs) { int old, new, ret; do { old = _gtmp_i32_[addr]; new = floatBitsToInt(max(intBitsToFloat(old), rhs)); } while (old != atomicCompSwap(_gtmp_i32_[addr], old, new)); return intBitsToFloat(old); } float atomicMin_gtmp_f32(int addr, float rhs) { int old, new, ret; do { old = _gtmp_i32_[addr]; new = floatBitsToInt(min(intBitsToFloat(old), rhs)); } while (old != atomicCompSwap(_gtmp_i32_[addr], old, new)); return intBitsToFloat(old); }float atomicAdd_arr0_f32(int addr, float rhs) { int old, new, ret; do { old = _arr0_i32_[addr]; new = floatBitsToInt((intBitsToFloat(old) + rhs)); } while (old != atomicCompSwap(_arr0_i32_[addr], old, new)); return intBitsToFloat(old); } float atomicSub_arr0_f32(int addr, float rhs) { int old, new, ret; do { old = _arr0_i32_[addr]; new = floatBitsToInt((intBitsToFloat(old) - rhs)); } while (old != atomicCompSwap(_arr0_i32_[addr], old, new)); return intBitsToFloat(old); } float atomicMax_arr0_f32(int addr, float rhs) { int old, new, ret; do { old = _arr0_i32_[addr]; new = floatBitsToInt(max(intBitsToFloat(old), rhs)); } while (old != atomicCompSwap(_arr0_i32_[addr], old, new)); return intBitsToFloat(old); } float atomicMin_arr0_f32(int addr, float rhs) { int old, new, ret; do { old = _arr0_i32_[addr]; new = floatBitsToInt(min(intBitsToFloat(old), rhs)); } while (old != atomicCompSwap(_arr0_i32_[addr], old, new)); return intBitsToFloat(old); }float atomicAdd_arr1_f32(int addr, float rhs) { int old, new, ret; do { old = _arr1_i32_[addr]; new = floatBitsToInt((intBitsToFloat(old) + rhs)); } while (old != atomicCompSwap(_arr1_i32_[addr], old, new)); return intBitsToFloat(old); } float atomicSub_arr1_f32(int addr, float rhs) { int old, new, ret; do { old = _arr1_i32_[addr]; new = floatBitsToInt((intBitsToFloat(old) - rhs)); } while (old != atomicCompSwap(_arr1_i32_[addr], old, new)); return intBitsToFloat(old); } float atomicMax_arr1_f32(int addr, float rhs) { int old, new, ret; do { old = _arr1_i32_[addr]; new = floatBitsToInt(max(intBitsToFloat(old), rhs)); } while (old != atomicCompSwap(_arr1_i32_[addr], old, new)); return intBitsToFloat(old); } float atomicMin_arr1_f32(int addr, float rhs) { int old, new, ret; do { old = _arr1_i32_[addr]; new = floatBitsToInt(min(intBitsToFloat(old), rhs)); } while (old != atomicCompSwap(_arr1_i32_[addr], old, new)); return intBitsToFloat(old); }float atomicAdd_arr2_f32(int addr, float rhs) { int old, new, ret; do { old = _arr2_i32_[addr]; new = floatBitsToInt((intBitsToFloat(old) + rhs)); } while (old != atomicCompSwap(_arr2_i32_[addr], old, new)); return intBitsToFloat(old); } float atomicSub_arr2_f32(int addr, float rhs) { int old, new, ret; do { old = _arr2_i32_[addr]; new = floatBitsToInt((intBitsToFloat(old) - rhs)); } while (old != atomicCompSwap(_arr2_i32_[addr], old, new)); return intBitsToFloat(old); } float atomicMax_arr2_f32(int addr, float rhs) { int old, new, ret; do { old = _arr2_i32_[addr]; new = floatBitsToInt(max(intBitsToFloat(old), rhs)); } while (old != atomicCompSwap(_arr2_i32_[addr], old, new)); return intBitsToFloat(old); } float atomicMin_arr2_f32(int addr, float rhs) { int old, new, ret; do { old = _arr2_i32_[addr]; new = floatBitsToInt(min(intBitsToFloat(old), rhs)); } while (old != atomicCompSwap(_arr2_i32_[addr], old, new)); return intBitsToFloat(old); }float atomicAdd_arr3_f32(int addr, float rhs) { int old, new, ret; do { old = _arr3_i32_[addr]; new = floatBitsToInt((intBitsToFloat(old) + rhs)); } while (old != atomicCompSwap(_arr3_i32_[addr], old, new)); return intBitsToFloat(old); } float atomicSub_arr3_f32(int addr, float rhs) { int old, new, ret; do { old = _arr3_i32_[addr]; new = floatBitsToInt((intBitsToFloat(old) - rhs)); } while (old != atomicCompSwap(_arr3_i32_[addr], old, new)); return intBitsToFloat(old); } float atomicMax_arr3_f32(int addr, float rhs) { int old, new, ret; do { old = _arr3_i32_[addr]; new = floatBitsToInt(max(intBitsToFloat(old), rhs)); } while (old != atomicCompSwap(_arr3_i32_[addr], old, new)); return intBitsToFloat(old); } float atomicMin_arr3_f32(int addr, float rhs) { int old, new, ret; do { old = _arr3_i32_[addr]; new = floatBitsToInt(min(intBitsToFloat(old), rhs)); } while (old != atomicCompSwap(_arr3_i32_[addr], old, new)); return intBitsToFloat(old); }
const float inf = 1.0f / 0.0f;
const float nan = 0.0f / 0.0f;
void substep_c54_02()
{ // range for
  // range known at runtime
  int _beg = 0, _end = _gtmp_i32_[0 >> 2];
  int _sid0 = int(gl_GlobalInvocationID.x);
  for (int _sid = _sid0; _sid < (_end - _beg); _sid += int(gl_WorkGroupSize.x * gl_NumWorkGroups.x)) {
    int _itv = _beg + _sid;
      int Z = _itv;
      int Aq = 0;
      int Ar = _gtmp_i32_[Aq >> 2];
      int As = Z - Ar * int(Z / Ar);
      int Au = int(0);
      int _li_Av = 0;
      { // linear seek
        int _s0_Av = _args_i32_[16 + 0 * 8 + 0];
        int _s1_Av = _args_i32_[16 + 0 * 8 + 1];
        _li_Av *= _s0_Av;
        _li_Av += As;
        _li_Av *= _s1_Av;
        _li_Av += Au;
      }
      int Av = _li_Av << 2;
      float Aw = _arr0_f32_[Av >> 2];
      float Ax = float(128.0);
      float Ay = Aw * Ax;
      int Az = int(1);
      int _li_AA = 0;
      { // linear seek
        int _s0_AA = _args_i32_[16 + 0 * 8 + 0];
        int _s1_AA = _args_i32_[16 + 0 * 8 + 1];
        _li_AA *= _s0_AA;
        _li_AA += As;
        _li_AA *= _s1_AA;
        _li_AA += Az;
      }
      int AA = _li_AA << 2;
      float AB = _arr0_f32_[AA >> 2];
      float AC = AB * Ax;
      float AD = float(0.5);
      float AE = Ay - AD;
      float AF = AC - AD;
      int AG = int(AE);
      int AH = int(AF);
      float AI = float(AG);
      float AJ = float(AH);
      float AK = Ay - AI;
      float AL = AC - AJ;
      float AM = float(1.5);
      float AN = AM - AK;
      float AO = AM - AL;
      float AP = AN * AN;
      float AQ = AO * AO;
      float AR = AP * AD;
      float AS = AQ * AD;
      float AT = float(1.0);
      float AU = AK - AT;
      float AV = AL - AT;
      float AW = AU * AU;
      float AX = AV * AV;
      float AY = float(0.75);
      float AZ = AY - AW;
      float B0 = AY - AX;
      float B1 = AK - AD;
      float B2 = AL - AD;
      float B3 = B1 * B1;
      float B4 = B2 * B2;
      float B5 = B3 * AD;
      float B6 = B4 * AD;
      int _li_B8 = 0;
      { // linear seek
        int _s0_B8 = _args_i32_[16 + 2 * 8 + 0];
        _li_B8 *= _s0_B8;
        _li_B8 += As;
      }
      int B8 = _li_B8 << 2;
      float B9 = _arr2_f32_[B8 >> 2];
      float Ba = B9 - AT;
      float Bb = float(-0.08);
      float Bc = Ba * Bb;
      int _li_Be = 0;
      { // linear seek
        int _s0_Be = _args_i32_[16 + 3 * 8 + 0];
        int _s1_Be = _args_i32_[16 + 3 * 8 + 1];
        int _s2_Be = _args_i32_[16 + 3 * 8 + 2];
        _li_Be *= _s0_Be;
        _li_Be += As;
        _li_Be *= _s1_Be;
        _li_Be += Au;
        _li_Be *= _s2_Be;
        _li_Be += Au;
      }
      int Be = _li_Be << 2;
      float Bf = _arr3_f32_[Be >> 2];
      float Bg = float(1.5258789e-05);
      float Bh = Bf * Bg;
      int _li_Bi = 0;
      { // linear seek
        int _s0_Bi = _args_i32_[16 + 3 * 8 + 0];
        int _s1_Bi = _args_i32_[16 + 3 * 8 + 1];
        int _s2_Bi = _args_i32_[16 + 3 * 8 + 2];
        _li_Bi *= _s0_Bi;
        _li_Bi += As;
        _li_Bi *= _s1_Bi;
        _li_Bi += Au;
        _li_Bi *= _s2_Bi;
        _li_Bi += Az;
      }
      int Bi = _li_Bi << 2;
      float Bj = _arr3_f32_[Bi >> 2];
      float Bk = Bj * Bg;
      int _li_Bl = 0;
      { // linear seek
        int _s0_Bl = _args_i32_[16 + 3 * 8 + 0];
        int _s1_Bl = _args_i32_[16 + 3 * 8 + 1];
        int _s2_Bl = _args_i32_[16 + 3 * 8 + 2];
        _li_Bl *= _s0_Bl;
        _li_Bl += As;
        _li_Bl *= _s1_Bl;
        _li_Bl += Az;
        _li_Bl *= _s2_Bl;
        _li_Bl += Au;
      }
      int Bl = _li_Bl << 2;
      float Bm = _arr3_f32_[Bl >> 2];
      float Bn = Bm * Bg;
      int _li_Bo = 0;
      { // linear seek
        int _s0_Bo = _args_i32_[16 + 3 * 8 + 0];
        int _s1_Bo = _args_i32_[16 + 3 * 8 + 1];
        int _s2_Bo = _args_i32_[16 + 3 * 8 + 2];
        _li_Bo *= _s0_Bo;
        _li_Bo += As;
        _li_Bo *= _s1_Bo;
        _li_Bo += Az;
        _li_Bo *= _s2_Bo;
        _li_Bo += Az;
      }
      int Bo = _li_Bo << 2;
      float Bp = _arr3_f32_[Bo >> 2];
      float Bq = Bp * Bg;
      float Br = Bc + Bh;
      float Bs = Bc + Bq;
      float Bt = float(0.0);
      float Bu = Bt - AK;
      float Bv = Bt - AL;
      float Bw = float(0.0078125);
      float Bx = Bu * Bw;
      float By = Bv * Bw;
      float Bz = AR * AS;
      int _li_BB = 0;
      { // linear seek
        int _s0_BB = _args_i32_[16 + 1 * 8 + 0];
        int _s1_BB = _args_i32_[16 + 1 * 8 + 1];
        _li_BB *= _s0_BB;
        _li_BB += As;
        _li_BB *= _s1_BB;
        _li_BB += Au;
      }
      int BB = _li_BB << 2;
      float BC = _arr1_f32_[BB >> 2];
      float BD = BC * Bg;
      int _li_BE = 0;
      { // linear seek
        int _s0_BE = _args_i32_[16 + 1 * 8 + 0];
        int _s1_BE = _args_i32_[16 + 1 * 8 + 1];
        _li_BE *= _s0_BE;
        _li_BE += As;
        _li_BE *= _s1_BE;
        _li_BE += Az;
      }
      int BE = _li_BE << 2;
      float BF = _arr1_f32_[BE >> 2];
      float BG = BF * Bg;
      float BH = Br * Bx;
      float BI = Bk * By;
      float BJ = BH + BI;
      float BK = Bn * Bx;
      float BL = Bs * By;
      float BM = BK + BL;
      float BN = BD + BJ;
      float BO = BG + BM;
      float BP = Bz * BN;
      float BQ = Bz * BO;
      int BHv = 0;
      int BHx = BHv + 196608 * Au; // S0
      int BHy = BHx + 65536; // S1
      int BTD = int(127);
      int BTE = AG & BTD;
      int BTI = AH & BTD;
      int Ca1 = int(7);
      int Ca2 = BTE << Ca1;
      int C1Y = BTI + Ca2;
      int BHC = BHy + 8 * C1Y; // S1
      int BHD = BHC + 0; // S2
      float BS;
      { // Begin Atomic Op
      BS = atomicAdd_data_f32(BHD >> 2, BP);
      } // End Atomic Op
      int BHP = BHC + 4; // S3
      float BU;
      { // Begin Atomic Op
      BU = atomicAdd_data_f32(BHP >> 2, BQ);
      } // End Atomic Op
      float BV = Bz * Bg;
      int BHW = BHx + 0; // S4
      int BI0 = BHW + 4 * C1Y; // S4
      int BI1 = BI0 + 0; // S5
      float BX;
      { // Begin Atomic Op
      BX = atomicAdd_data_f32(BI1 >> 2, BV);
      } // End Atomic Op
      float BY = AT - AL;
      float BZ = BY * Bw;
      float C0 = AR * B0;
      int C1 = AH + Az;
      float C2 = Bk * BZ;
      float C3 = BH + C2;
      float C4 = Bs * BZ;
      float C5 = BK + C4;
      float C6 = BD + C3;
      float C7 = BG + C5;
      float C8 = C0 * C6;
      float C9 = C0 * C7;
      int BU6 = C1 & BTD;
      int C2m = BU6 + Ca2;
      int BIc = BHy + 8 * C2m; // S1
      int BId = BIc + 0; // S2
      float Cb;
      { // Begin Atomic Op
      Cb = atomicAdd_data_f32(BId >> 2, C8);
      } // End Atomic Op
      int BIp = BIc + 4; // S3
      float Cd;
      { // Begin Atomic Op
      Cd = atomicAdd_data_f32(BIp >> 2, C9);
      } // End Atomic Op
      float Ce = C0 * Bg;
      int BIA = BHW + 4 * C2m; // S4
      int BIB = BIA + 0; // S5
      float Cg;
      { // Begin Atomic Op
      Cg = atomicAdd_data_f32(BIB >> 2, Ce);
      } // End Atomic Op
      float Ch = float(2.0);
      float Ci = Ch - AL;
      float Cj = Ci * Bw;
      float Ck = AR * B6;
      int Cl = int(2);
      int Cm = AH + Cl;
      float Cn = Bk * Cj;
      float Co = BH + Cn;
      float Cp = Bs * Cj;
      float Cq = BK + Cp;
      float Cr = BD + Co;
      float Cs = BG + Cq;
      float Ct = Ck * Cr;
      float Cu = Ck * Cs;
      int BUu = Cm & BTD;
      int C2K = BUu + Ca2;
      int BIM = BHy + 8 * C2K; // S1
      int BIN = BIM + 0; // S2
      float Cw;
      { // Begin Atomic Op
      Cw = atomicAdd_data_f32(BIN >> 2, Ct);
      } // End Atomic Op
      int BIZ = BIM + 4; // S3
      float Cy;
      { // Begin Atomic Op
      Cy = atomicAdd_data_f32(BIZ >> 2, Cu);
      } // End Atomic Op
      float Cz = Ck * Bg;
      int BJa = BHW + 4 * C2K; // S4
      int BJb = BJa + 0; // S5
      float CB;
      { // Begin Atomic Op
      CB = atomicAdd_data_f32(BJb >> 2, Cz);
      } // End Atomic Op
      float CC = AT - AK;
      float CD = CC * Bw;
      float CE = AZ * AS;
      int CF = AG + Az;
      float CG = Br * CD;
      float CH = CG + BI;
      float CI = Bn * CD;
      float CJ = CI + BL;
      float CK = BD + CH;
      float CL = BG + CJ;
      float CM = CE * CK;
      float CN = CE * CL;
      int BUO = CF & BTD;
      int Ca4 = BUO << Ca1;
      int C38 = BTI + Ca4;
      int BJm = BHy + 8 * C38; // S1
      int BJn = BJm + 0; // S2
      float CP;
      { // Begin Atomic Op
      CP = atomicAdd_data_f32(BJn >> 2, CM);
      } // End Atomic Op
      int BJz = BJm + 4; // S3
      float CR;
      { // Begin Atomic Op
      CR = atomicAdd_data_f32(BJz >> 2, CN);
      } // End Atomic Op
      float CS = CE * Bg;
      int BJK = BHW + 4 * C38; // S4
      int BJL = BJK + 0; // S5
      float CU;
      { // Begin Atomic Op
      CU = atomicAdd_data_f32(BJL >> 2, CS);
      } // End Atomic Op
      float CV = AZ * B0;
      float CW = CG + C2;
      float CX = CI + C4;
      float CY = BD + CW;
      float CZ = BG + CX;
      float D0 = CV * CY;
      float D1 = CV * CZ;
      int C3w = BU6 + Ca4;
      int BJW = BHy + 8 * C3w; // S1
      int BJX = BJW + 0; // S2
      float D3;
      { // Begin Atomic Op
      D3 = atomicAdd_data_f32(BJX >> 2, D0);
      } // End Atomic Op
      int BK9 = BJW + 4; // S3
      float D5;
      { // Begin Atomic Op
      D5 = atomicAdd_data_f32(BK9 >> 2, D1);
      } // End Atomic Op
      float D6 = CV * Bg;
      int BKk = BHW + 4 * C3w; // S4
      int BKl = BKk + 0; // S5
      float D8;
      { // Begin Atomic Op
      D8 = atomicAdd_data_f32(BKl >> 2, D6);
      } // End Atomic Op
      float D9 = AZ * B6;
      float Da = CG + Cn;
      float Db = CI + Cp;
      float Dc = BD + Da;
      float Dd = BG + Db;
      float De = D9 * Dc;
      float Df = D9 * Dd;
      int C3U = BUu + Ca4;
      int BKw = BHy + 8 * C3U; // S1
      int BKx = BKw + 0; // S2
      float Dh;
      { // Begin Atomic Op
      Dh = atomicAdd_data_f32(BKx >> 2, De);
      } // End Atomic Op
      int BKJ = BKw + 4; // S3
      float Dj;
      { // Begin Atomic Op
      Dj = atomicAdd_data_f32(BKJ >> 2, Df);
      } // End Atomic Op
      float Dk = D9 * Bg;
      int BKU = BHW + 4 * C3U; // S4
      int BKV = BKU + 0; // S5
      float Dm;
      { // Begin Atomic Op
      Dm = atomicAdd_data_f32(BKV >> 2, Dk);
      } // End Atomic Op
      float Dn = Ch - AK;
      float Do = Dn * Bw;
      float Dp = B5 * AS;
      int Dq = AG + Cl;
      float Dr = Br * Do;
      float Ds = Dr + BI;
      float Dt = Bn * Do;
      float Du = Dt + BL;
      float Dv = BD + Ds;
      float Dw = BG + Du;
      float Dx = Dp * Dv;
      float Dy = Dp * Dw;
      int BVY = Dq & BTD;
      int Ca6 = BVY << Ca1;
      int C4i = BTI + Ca6;
      int BL6 = BHy + 8 * C4i; // S1
      int BL7 = BL6 + 0; // S2
      float DA;
      { // Begin Atomic Op
      DA = atomicAdd_data_f32(BL7 >> 2, Dx);
      } // End Atomic Op
      int BLj = BL6 + 4; // S3
      float DC;
      { // Begin Atomic Op
      DC = atomicAdd_data_f32(BLj >> 2, Dy);
      } // End Atomic Op
      float DD = Dp * Bg;
      int BLu = BHW + 4 * C4i; // S4
      int BLv = BLu + 0; // S5
      float DF;
      { // Begin Atomic Op
      DF = atomicAdd_data_f32(BLv >> 2, DD);
      } // End Atomic Op
      float DG = B5 * B0;
      float DH = Dr + C2;
      float DI = Dt + C4;
      float DJ = BD + DH;
      float DK = BG + DI;
      float DL = DG * DJ;
      float DM = DG * DK;
      int C4G = BU6 + Ca6;
      int BLG = BHy + 8 * C4G; // S1
      int BLH = BLG + 0; // S2
      float DO;
      { // Begin Atomic Op
      DO = atomicAdd_data_f32(BLH >> 2, DL);
      } // End Atomic Op
      int BLT = BLG + 4; // S3
      float DQ;
      { // Begin Atomic Op
      DQ = atomicAdd_data_f32(BLT >> 2, DM);
      } // End Atomic Op
      float DR = DG * Bg;
      int BM4 = BHW + 4 * C4G; // S4
      int BM5 = BM4 + 0; // S5
      float DT;
      { // Begin Atomic Op
      DT = atomicAdd_data_f32(BM5 >> 2, DR);
      } // End Atomic Op
      float DU = B5 * B6;
      float DV = Dr + Cn;
      float DW = Dt + Cp;
      float DX = BD + DV;
      float DY = BG + DW;
      float DZ = DU * DX;
      float E0 = DU * DY;
      int C54 = BUu + Ca6;
      int BMg = BHy + 8 * C54; // S1
      int BMh = BMg + 0; // S2
      float E2;
      { // Begin Atomic Op
      E2 = atomicAdd_data_f32(BMh >> 2, DZ);
      } // End Atomic Op
      int BMt = BMg + 4; // S3
      float E4;
      { // Begin Atomic Op
      E4 = atomicAdd_data_f32(BMt >> 2, E0);
      } // End Atomic Op
      float E5 = DU * Bg;
      int BME = BHW + 4 * C54; // S4
      int BMF = BME + 0; // S5
      float E7;
      { // Begin Atomic Op
      E7 = atomicAdd_data_f32(BMF >> 2, E5);
      } // End Atomic Op
  }
}

void main()
{
  substep_c54_02();
}
