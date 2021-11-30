#version 310 es
layout(local_size_x = 128, local_size_y = 1, local_size_z = 1) in;
precision highp float;
layout(std430, binding = 0) buffer data_i32 { int _data_i32_[];}; 
layout(std430, binding = 0) buffer data_f32 { float _data_f32_[];}; 
layout(std430, binding = 1) buffer gtmp_i32 { int _gtmp_i32_[];}; 
layout(std430, binding = 1) buffer gtmp_f32 { float _gtmp_f32_[];}; 
layout(std430, binding = 2) buffer args_i32 { int _args_i32_[];}; 
layout(std430, binding = 2) buffer args_f32 { float _args_f32_[];}; 
layout(std430, binding = 4) buffer arr0_i32 { int _arr0_i32_[];}; 
layout(std430, binding = 4) buffer arr0_f32 { float _arr0_f32_[];}; 
float atomicAdd_data_f32(int addr, float rhs) { int old, new, ret; do { old = _data_i32_[addr]; new = floatBitsToInt((intBitsToFloat(old) + rhs)); } while (old != atomicCompSwap(_data_i32_[addr], old, new)); return intBitsToFloat(old); } float atomicSub_data_f32(int addr, float rhs) { int old, new, ret; do { old = _data_i32_[addr]; new = floatBitsToInt((intBitsToFloat(old) - rhs)); } while (old != atomicCompSwap(_data_i32_[addr], old, new)); return intBitsToFloat(old); } float atomicMax_data_f32(int addr, float rhs) { int old, new, ret; do { old = _data_i32_[addr]; new = floatBitsToInt(max(intBitsToFloat(old), rhs)); } while (old != atomicCompSwap(_data_i32_[addr], old, new)); return intBitsToFloat(old); } float atomicMin_data_f32(int addr, float rhs) { int old, new, ret; do { old = _data_i32_[addr]; new = floatBitsToInt(min(intBitsToFloat(old), rhs)); } while (old != atomicCompSwap(_data_i32_[addr], old, new)); return intBitsToFloat(old); }float atomicAdd_gtmp_f32(int addr, float rhs) { int old, new, ret; do { old = _gtmp_i32_[addr]; new = floatBitsToInt((intBitsToFloat(old) + rhs)); } while (old != atomicCompSwap(_gtmp_i32_[addr], old, new)); return intBitsToFloat(old); } float atomicSub_gtmp_f32(int addr, float rhs) { int old, new, ret; do { old = _gtmp_i32_[addr]; new = floatBitsToInt((intBitsToFloat(old) - rhs)); } while (old != atomicCompSwap(_gtmp_i32_[addr], old, new)); return intBitsToFloat(old); } float atomicMax_gtmp_f32(int addr, float rhs) { int old, new, ret; do { old = _gtmp_i32_[addr]; new = floatBitsToInt(max(intBitsToFloat(old), rhs)); } while (old != atomicCompSwap(_gtmp_i32_[addr], old, new)); return intBitsToFloat(old); } float atomicMin_gtmp_f32(int addr, float rhs) { int old, new, ret; do { old = _gtmp_i32_[addr]; new = floatBitsToInt(min(intBitsToFloat(old), rhs)); } while (old != atomicCompSwap(_gtmp_i32_[addr], old, new)); return intBitsToFloat(old); }float atomicAdd_arr0_f32(int addr, float rhs) { int old, new, ret; do { old = _arr0_i32_[addr]; new = floatBitsToInt((intBitsToFloat(old) + rhs)); } while (old != atomicCompSwap(_arr0_i32_[addr], old, new)); return intBitsToFloat(old); } float atomicSub_arr0_f32(int addr, float rhs) { int old, new, ret; do { old = _arr0_i32_[addr]; new = floatBitsToInt((intBitsToFloat(old) - rhs)); } while (old != atomicCompSwap(_arr0_i32_[addr], old, new)); return intBitsToFloat(old); } float atomicMax_arr0_f32(int addr, float rhs) { int old, new, ret; do { old = _arr0_i32_[addr]; new = floatBitsToInt(max(intBitsToFloat(old), rhs)); } while (old != atomicCompSwap(_arr0_i32_[addr], old, new)); return intBitsToFloat(old); } float atomicMin_arr0_f32(int addr, float rhs) { int old, new, ret; do { old = _arr0_i32_[addr]; new = floatBitsToInt(min(intBitsToFloat(old), rhs)); } while (old != atomicCompSwap(_arr0_i32_[addr], old, new)); return intBitsToFloat(old); }
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
      int BGP = 0;
      int BGR = BGP + 311296 * Au; // S0
      int BGS = BGR + 0; // S4
      int BVo = int(4095);
      int BVp = As & BVo;
      int BGV = BGS + 4 * BVp; // S4
      int BGW = BGV + 0; // S5
      float B8 = _data_f32_[BGW >> 2];
      float B9 = B8 - AT;
      float Ba = float(-0.08);
      float Bb = B9 * Ba;
      int BH2 = BGR + 49152; // S6
      int BH5 = BH2 + 16 * BVp; // S6
      int BH6 = BH5 + 0; // S7
      float Bd = _data_f32_[BH6 >> 2];
      float Be = float(1.5258789e-05);
      float Bf = Bd * Be;
      int BHg = BH5 + 4; // S8
      float Bh = _data_f32_[BHg >> 2];
      float Bi = Bh * Be;
      int BHq = BH5 + 8; // S9
      float Bk = _data_f32_[BHq >> 2];
      float Bl = Bk * Be;
      int BHA = BH5 + 12; // S10
      float Bn = _data_f32_[BHA >> 2];
      float Bo = Bn * Be;
      float Bp = Bb + Bf;
      float Bq = Bb + Bo;
      float Br = float(0.0);
      float Bs = Br - AK;
      float Bt = Br - AL;
      float Bu = float(0.0078125);
      float Bv = Bs * Bu;
      float Bw = Bt * Bu;
      float Bx = AR * AS;
      int BHG = BGR + 16384; // S1
      int BHJ = BHG + 8 * BVp; // S1
      int BHK = BHJ + 0; // S2
      float Bz = _data_f32_[BHK >> 2];
      float BA = Bz * Be;
      int BHU = BHJ + 4; // S3
      float BC = _data_f32_[BHU >> 2];
      float BD = BC * Be;
      float BE = Bp * Bv;
      float BF = Bi * Bw;
      float BG = BE + BF;
      float BH = Bl * Bv;
      float BI = Bq * Bw;
      float BJ = BH + BI;
      float BK = BA + BG;
      float BL = BD + BJ;
      float BM = Bx * BK;
      float BN = Bx * BL;
      int BI1 = BGR + 180224; // S11
      int BVQ = int(127);
      int BVR = AG & BVQ;
      int BVV = AH & BVQ;
      int CdX = int(7);
      int CdY = BVR << CdX;
      int C5g = BVV + CdY;
      int BI5 = BI1 + 8 * C5g; // S11
      int BI6 = BI5 + 0; // S12
      float BP;
      { // Begin Atomic Op
      BP = atomicAdd_data_f32(BI6 >> 2, BM);
      } // End Atomic Op
      int BIi = BI5 + 4; // S13
      float BR;
      { // Begin Atomic Op
      BR = atomicAdd_data_f32(BIi >> 2, BN);
      } // End Atomic Op
      float BS = Bx * Be;
      int BIp = BGR + 114688; // S14
      int BIt = BIp + 4 * C5g; // S14
      int BIu = BIt + 0; // S15
      float BU;
      { // Begin Atomic Op
      BU = atomicAdd_data_f32(BIu >> 2, BS);
      } // End Atomic Op
      float BV = AT - AL;
      float BW = BV * Bu;
      float BX = AR * B0;
      int BY = AH + Az;
      float BZ = Bi * BW;
      float C0 = BE + BZ;
      float C1 = Bq * BW;
      float C2 = BH + C1;
      float C3 = BA + C0;
      float C4 = BD + C2;
      float C5 = BX * C3;
      float C6 = BX * C4;
      int BWj = BY & BVQ;
      int C5E = BWj + CdY;
      int BIF = BI1 + 8 * C5E; // S11
      int BIG = BIF + 0; // S12
      float C8;
      { // Begin Atomic Op
      C8 = atomicAdd_data_f32(BIG >> 2, C5);
      } // End Atomic Op
      int BIS = BIF + 4; // S13
      float Ca;
      { // Begin Atomic Op
      Ca = atomicAdd_data_f32(BIS >> 2, C6);
      } // End Atomic Op
      float Cb = BX * Be;
      int BJ3 = BIp + 4 * C5E; // S14
      int BJ4 = BJ3 + 0; // S15
      float Cd;
      { // Begin Atomic Op
      Cd = atomicAdd_data_f32(BJ4 >> 2, Cb);
      } // End Atomic Op
      float Ce = float(2.0);
      float Cf = Ce - AL;
      float Cg = Cf * Bu;
      float Ch = AR * B6;
      int Ci = int(2);
      int Cj = AH + Ci;
      float Ck = Bi * Cg;
      float Cl = BE + Ck;
      float Cm = Bq * Cg;
      float Cn = BH + Cm;
      float Co = BA + Cl;
      float Cp = BD + Cn;
      float Cq = Ch * Co;
      float Cr = Ch * Cp;
      int BWH = Cj & BVQ;
      int C62 = BWH + CdY;
      int BJf = BI1 + 8 * C62; // S11
      int BJg = BJf + 0; // S12
      float Ct;
      { // Begin Atomic Op
      Ct = atomicAdd_data_f32(BJg >> 2, Cq);
      } // End Atomic Op
      int BJs = BJf + 4; // S13
      float Cv;
      { // Begin Atomic Op
      Cv = atomicAdd_data_f32(BJs >> 2, Cr);
      } // End Atomic Op
      float Cw = Ch * Be;
      int BJD = BIp + 4 * C62; // S14
      int BJE = BJD + 0; // S15
      float Cy;
      { // Begin Atomic Op
      Cy = atomicAdd_data_f32(BJE >> 2, Cw);
      } // End Atomic Op
      float Cz = AT - AK;
      float CA = Cz * Bu;
      float CB = AZ * AS;
      int CC = AG + Az;
      float CD = Bp * CA;
      float CE = CD + BF;
      float CF = Bl * CA;
      float CG = CF + BI;
      float CH = BA + CE;
      float CI = BD + CG;
      float CJ = CB * CH;
      float CK = CB * CI;
      int BX1 = CC & BVQ;
      int Ce0 = BX1 << CdX;
      int C6q = BVV + Ce0;
      int BJP = BI1 + 8 * C6q; // S11
      int BJQ = BJP + 0; // S12
      float CM;
      { // Begin Atomic Op
      CM = atomicAdd_data_f32(BJQ >> 2, CJ);
      } // End Atomic Op
      int BK2 = BJP + 4; // S13
      float CO;
      { // Begin Atomic Op
      CO = atomicAdd_data_f32(BK2 >> 2, CK);
      } // End Atomic Op
      float CP = CB * Be;
      int BKd = BIp + 4 * C6q; // S14
      int BKe = BKd + 0; // S15
      float CR;
      { // Begin Atomic Op
      CR = atomicAdd_data_f32(BKe >> 2, CP);
      } // End Atomic Op
      float CS = AZ * B0;
      float CT = CD + BZ;
      float CU = CF + C1;
      float CV = BA + CT;
      float CW = BD + CU;
      float CX = CS * CV;
      float CY = CS * CW;
      int C6O = BWj + Ce0;
      int BKp = BI1 + 8 * C6O; // S11
      int BKq = BKp + 0; // S12
      float D0;
      { // Begin Atomic Op
      D0 = atomicAdd_data_f32(BKq >> 2, CX);
      } // End Atomic Op
      int BKC = BKp + 4; // S13
      float D2;
      { // Begin Atomic Op
      D2 = atomicAdd_data_f32(BKC >> 2, CY);
      } // End Atomic Op
      float D3 = CS * Be;
      int BKN = BIp + 4 * C6O; // S14
      int BKO = BKN + 0; // S15
      float D5;
      { // Begin Atomic Op
      D5 = atomicAdd_data_f32(BKO >> 2, D3);
      } // End Atomic Op
      float D6 = AZ * B6;
      float D7 = CD + Ck;
      float D8 = CF + Cm;
      float D9 = BA + D7;
      float Da = BD + D8;
      float Db = D6 * D9;
      float Dc = D6 * Da;
      int C7c = BWH + Ce0;
      int BKZ = BI1 + 8 * C7c; // S11
      int BL0 = BKZ + 0; // S12
      float De;
      { // Begin Atomic Op
      De = atomicAdd_data_f32(BL0 >> 2, Db);
      } // End Atomic Op
      int BLc = BKZ + 4; // S13
      float Dg;
      { // Begin Atomic Op
      Dg = atomicAdd_data_f32(BLc >> 2, Dc);
      } // End Atomic Op
      float Dh = D6 * Be;
      int BLn = BIp + 4 * C7c; // S14
      int BLo = BLn + 0; // S15
      float Dj;
      { // Begin Atomic Op
      Dj = atomicAdd_data_f32(BLo >> 2, Dh);
      } // End Atomic Op
      float Dk = Ce - AK;
      float Dl = Dk * Bu;
      float Dm = B5 * AS;
      int Dn = AG + Ci;
      float Do = Bp * Dl;
      float Dp = Do + BF;
      float Dq = Bl * Dl;
      float Dr = Dq + BI;
      float Ds = BA + Dp;
      float Dt = BD + Dr;
      float Du = Dm * Ds;
      float Dv = Dm * Dt;
      int BYb = Dn & BVQ;
      int Ce2 = BYb << CdX;
      int C7A = BVV + Ce2;
      int BLz = BI1 + 8 * C7A; // S11
      int BLA = BLz + 0; // S12
      float Dx;
      { // Begin Atomic Op
      Dx = atomicAdd_data_f32(BLA >> 2, Du);
      } // End Atomic Op
      int BLM = BLz + 4; // S13
      float Dz;
      { // Begin Atomic Op
      Dz = atomicAdd_data_f32(BLM >> 2, Dv);
      } // End Atomic Op
      float DA = Dm * Be;
      int BLX = BIp + 4 * C7A; // S14
      int BLY = BLX + 0; // S15
      float DC;
      { // Begin Atomic Op
      DC = atomicAdd_data_f32(BLY >> 2, DA);
      } // End Atomic Op
      float DD = B5 * B0;
      float DE = Do + BZ;
      float DF = Dq + C1;
      float DG = BA + DE;
      float DH = BD + DF;
      float DI = DD * DG;
      float DJ = DD * DH;
      int C7Y = BWj + Ce2;
      int BM9 = BI1 + 8 * C7Y; // S11
      int BMa = BM9 + 0; // S12
      float DL;
      { // Begin Atomic Op
      DL = atomicAdd_data_f32(BMa >> 2, DI);
      } // End Atomic Op
      int BMm = BM9 + 4; // S13
      float DN;
      { // Begin Atomic Op
      DN = atomicAdd_data_f32(BMm >> 2, DJ);
      } // End Atomic Op
      float DO = DD * Be;
      int BMx = BIp + 4 * C7Y; // S14
      int BMy = BMx + 0; // S15
      float DQ;
      { // Begin Atomic Op
      DQ = atomicAdd_data_f32(BMy >> 2, DO);
      } // End Atomic Op
      float DR = B5 * B6;
      float DS = Do + Ck;
      float DT = Dq + Cm;
      float DU = BA + DS;
      float DV = BD + DT;
      float DW = DR * DU;
      float DX = DR * DV;
      int C8m = BWH + Ce2;
      int BMJ = BI1 + 8 * C8m; // S11
      int BMK = BMJ + 0; // S12
      float DZ;
      { // Begin Atomic Op
      DZ = atomicAdd_data_f32(BMK >> 2, DW);
      } // End Atomic Op
      int BMW = BMJ + 4; // S13
      float E1;
      { // Begin Atomic Op
      E1 = atomicAdd_data_f32(BMW >> 2, DX);
      } // End Atomic Op
      float E2 = DR * Be;
      int BN7 = BIp + 4 * C8m; // S14
      int BN8 = BN7 + 0; // S15
      float E4;
      { // Begin Atomic Op
      E4 = atomicAdd_data_f32(BN8 >> 2, E2);
      } // End Atomic Op
  }
}

void main()
{
  substep_c54_02();
}
