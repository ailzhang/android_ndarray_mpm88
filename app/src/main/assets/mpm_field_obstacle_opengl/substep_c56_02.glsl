#version 310 es
layout(local_size_x = 128, local_size_y = 1, local_size_z = 1) in;
precision highp float;
layout(std430, binding = 0) buffer data_i32 { int _data_i32_[];}; 
layout(std430, binding = 0) buffer data_f32 { float _data_f32_[];}; 
layout(std430, binding = 1) buffer gtmp_i32 { int _gtmp_i32_[];}; 
layout(std430, binding = 1) buffer gtmp_f32 { float _gtmp_f32_[];}; 
float atomicAdd_data_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _data_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) + rhs)); } while (old_val != atomicCompSwap(_data_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicSub_data_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _data_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) - rhs)); } while (old_val != atomicCompSwap(_data_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMax_data_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _data_i32_[addr]; new_val = floatBitsToInt(max(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_data_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMin_data_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _data_i32_[addr]; new_val = floatBitsToInt(min(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_data_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); }float atomicAdd_gtmp_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _gtmp_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) + rhs)); } while (old_val != atomicCompSwap(_gtmp_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicSub_gtmp_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _gtmp_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) - rhs)); } while (old_val != atomicCompSwap(_gtmp_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMax_gtmp_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _gtmp_i32_[addr]; new_val = floatBitsToInt(max(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_gtmp_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMin_gtmp_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _gtmp_i32_[addr]; new_val = floatBitsToInt(min(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_gtmp_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); }
const float inf = 1.0f / 0.0f;
const float nan = 0.0f / 0.0f;
void substep_c56_02()
{ // range for
  // range known at runtime
  int _beg = 0, _end = _gtmp_i32_[0 >> 2];
  int _sid0 = int(gl_GlobalInvocationID.x);
  for (int _sid = _sid0; _sid < (_end - _beg); _sid += int(gl_WorkGroupSize.x * gl_NumWorkGroups.x)) {
    int _itv = _beg + _sid;
      int AA = _itv;
      int BXY = 0;
      int Cnk = int(0);
      int BY0 = BXY + 229424 * Cnk; // S0
      int BY1 = BY0 + 65576; // S7
      int BY2 = int(4096);
      int BY3 = AA - BY2 * int(AA / BY2);
      int Cnm = int(1);
      int BY7 = BY1 + 8 * BY3; // S7
      int BY8 = BY7 + 0; // S8
      float AC = _data_f32_[BY8 >> 2];
      float AD = float(64.0);
      float AE = AC * AD;
      int BYl = BY7 + 4; // S9
      float AG = _data_f32_[BYl >> 2];
      float AH = AG * AD;
      float AI = float(0.5);
      float AJ = AE - AI;
      float AK = AH - AI;
      int AL = int(AJ);
      int AM = int(AK);
      float AN = float(AL);
      float AO = AE - AN;
      float AP = float(AM);
      float AQ = AH - AP;
      float AR = float(1.5);
      float AS = AR - AO;
      float AT = AR - AQ;
      float AU = AS * AS;
      float AV = AT * AT;
      float AW = AU * AI;
      float AX = AV * AI;
      float AY = float(1.0);
      float AZ = AO - AY;
      float B0 = AQ - AY;
      float B1 = AZ * AZ;
      float B2 = B0 * B0;
      float B3 = float(0.75);
      float B4 = B3 - B1;
      float B5 = B3 - B2;
      float B6 = AO - AI;
      float B7 = AQ - AI;
      float B8 = B6 * B6;
      float B9 = B7 * B7;
      float Ba = B8 * AI;
      float Bb = B9 * AI;
      int BYr = BY0 + 40; // S3
      int BYx = BYr + 4 * BY3; // S3
      int BYy = BYx + 0; // S4
      float Bd = _data_f32_[BYy >> 2];
      float Be = float(-0.625);
      float Bf = Bd * Be;
      int BYE = BY0 + 32808; // S18
      int BYK = BYE + 4 * BY3; // S18
      int BYL = BYK + 0; // S19
      float Bh = _data_f32_[BYL >> 2];
      float Bi = Bh - AY;
      float Bj = Bf * Bi;
      float Bk = float(4096.0);
      float Bl = Bj * Bk;
      int BYR = BY0 + 16424; // S5
      int BYX = BYR + 4 * BY3; // S5
      int BYY = BYX + 0; // S6
      float Bn = _data_f32_[BYY >> 2];
      int BZ4 = BY0 + 163888; // S13
      int BZa = BZ4 + 16 * BY3; // S13
      int BZb = BZa + 0; // S14
      float Bp = _data_f32_[BZb >> 2];
      float Bq = Bn * Bp;
      int BZo = BZa + 4; // S15
      float Bs = _data_f32_[BZo >> 2];
      float Bt = Bn * Bs;
      int BZB = BZa + 8; // S16
      float Bv = _data_f32_[BZB >> 2];
      float Bw = Bn * Bv;
      int BZO = BZa + 12; // S17
      float By = _data_f32_[BZO >> 2];
      float Bz = Bn * By;
      float BA = Bl + Bq;
      float BB = Bl + Bz;
      float BC = float(0.0);
      float BD = BC - AO;
      float BE = BC - AQ;
      float BF = float(0.015625);
      float BG = BD * BF;
      float BH = BE * BF;
      float BI = AW * AX;
      int BZU = BY0 + 98344; // S10
      int C00 = BZU + 8 * BY3; // S10
      int C01 = C00 + 0; // S11
      float BK = _data_f32_[C01 >> 2];
      float BL = Bn * BK;
      int C0e = C00 + 4; // S12
      float BN = _data_f32_[C0e >> 2];
      float BO = Bn * BN;
      float BP = BA * BG;
      float BQ = Bt * BH;
      float BR = BP + BQ;
      float BS = Bw * BG;
      float BT = BB * BH;
      float BU = BS + BT;
      float BV = BL + BR;
      float BW = BO + BU;
      float BX = BI * BV;
      float BY = BI * BW;
      int C0l = BY0 + 131112; // S20
      int C0m = int(64);
      int C0n = AL - C0m * int(AL / C0m);
      int C0r = AM - C0m * int(AM / C0m);
      int Cyb = int(6);
      int Cyc = C0n << Cyb;
      int Cok = C0r + Cyc;
      int C0v = C0l + 8 * Cok; // S20
      int C0w = C0v + 0; // S21
      float C0;
      { // Begin Atomic Op
      C0 = atomicAdd_data_f32(C0w >> 2, BX);
      } // End Atomic Op
      int C0O = C0v + 4; // S22
      float C2;
      { // Begin Atomic Op
      C2 = atomicAdd_data_f32(C0O >> 2, BY);
      } // End Atomic Op
      float C3 = BI * Bn;
      int C0V = BY0 + 49192; // S23
      int C15 = C0V + 4 * Cok; // S23
      int C16 = C15 + 0; // S24
      float C5;
      { // Begin Atomic Op
      C5 = atomicAdd_data_f32(C16 >> 2, C3);
      } // End Atomic Op
      float C6 = AY - AQ;
      float C7 = C6 * BF;
      float C8 = AW * B5;
      int Ca = AM + Cnm;
      float Cb = Bt * C7;
      float Cc = BP + Cb;
      float Cd = BB * C7;
      float Ce = BS + Cd;
      float Cf = BL + Cc;
      float Cg = BO + Ce;
      float Ch = C8 * Cf;
      float Ci = C8 * Cg;
      int C1j = Ca - C0m * int(Ca / C0m);
      int CoI = C1j + Cyc;
      int C1n = C0l + 8 * CoI; // S20
      int C1o = C1n + 0; // S21
      float Ck;
      { // Begin Atomic Op
      Ck = atomicAdd_data_f32(C1o >> 2, Ch);
      } // End Atomic Op
      int C1G = C1n + 4; // S22
      float Cm;
      { // Begin Atomic Op
      Cm = atomicAdd_data_f32(C1G >> 2, Ci);
      } // End Atomic Op
      float Cn = C8 * Bn;
      int C1X = C0V + 4 * CoI; // S23
      int C1Y = C1X + 0; // S24
      float Cp;
      { // Begin Atomic Op
      Cp = atomicAdd_data_f32(C1Y >> 2, Cn);
      } // End Atomic Op
      float Cq = float(2.0);
      float Cr = Cq - AQ;
      float Cs = Cr * BF;
      float Ct = AW * Bb;
      int Cu = int(2);
      int Cv = AM + Cu;
      float Cw = Bt * Cs;
      float Cx = BP + Cw;
      float Cy = BB * Cs;
      float Cz = BS + Cy;
      float CA = BL + Cx;
      float CB = BO + Cz;
      float CC = Ct * CA;
      float CD = Ct * CB;
      int C2b = Cv - C0m * int(Cv / C0m);
      int Cp6 = C2b + Cyc;
      int C2f = C0l + 8 * Cp6; // S20
      int C2g = C2f + 0; // S21
      float CF;
      { // Begin Atomic Op
      CF = atomicAdd_data_f32(C2g >> 2, CC);
      } // End Atomic Op
      int C2y = C2f + 4; // S22
      float CH;
      { // Begin Atomic Op
      CH = atomicAdd_data_f32(C2y >> 2, CD);
      } // End Atomic Op
      float CI = Ct * Bn;
      int C2P = C0V + 4 * Cp6; // S23
      int C2Q = C2P + 0; // S24
      float CK;
      { // Begin Atomic Op
      CK = atomicAdd_data_f32(C2Q >> 2, CI);
      } // End Atomic Op
      float CL = AY - AO;
      float CM = CL * BF;
      float CN = B4 * AX;
      int CO = AL + Cnm;
      float CP = BA * CM;
      float CQ = CP + BQ;
      float CR = Bw * CM;
      float CS = CR + BT;
      float CT = BL + CQ;
      float CU = BO + CS;
      float CV = CN * CT;
      float CW = CN * CU;
      int C2Z = CO - C0m * int(CO / C0m);
      int Cye = C2Z << Cyb;
      int Cpu = C0r + Cye;
      int C37 = C0l + 8 * Cpu; // S20
      int C38 = C37 + 0; // S21
      float CY;
      { // Begin Atomic Op
      CY = atomicAdd_data_f32(C38 >> 2, CV);
      } // End Atomic Op
      int C3q = C37 + 4; // S22
      float D0;
      { // Begin Atomic Op
      D0 = atomicAdd_data_f32(C3q >> 2, CW);
      } // End Atomic Op
      float D1 = CN * Bn;
      int C3H = C0V + 4 * Cpu; // S23
      int C3I = C3H + 0; // S24
      float D3;
      { // Begin Atomic Op
      D3 = atomicAdd_data_f32(C3I >> 2, D1);
      } // End Atomic Op
      float D4 = B4 * B5;
      float D5 = CP + Cb;
      float D6 = CR + Cd;
      float D7 = BL + D5;
      float D8 = BO + D6;
      float D9 = D4 * D7;
      float Da = D4 * D8;
      int CpS = C1j + Cye;
      int C3Z = C0l + 8 * CpS; // S20
      int C40 = C3Z + 0; // S21
      float Dc;
      { // Begin Atomic Op
      Dc = atomicAdd_data_f32(C40 >> 2, D9);
      } // End Atomic Op
      int C4i = C3Z + 4; // S22
      float De;
      { // Begin Atomic Op
      De = atomicAdd_data_f32(C4i >> 2, Da);
      } // End Atomic Op
      float Df = D4 * Bn;
      int C4z = C0V + 4 * CpS; // S23
      int C4A = C4z + 0; // S24
      float Dh;
      { // Begin Atomic Op
      Dh = atomicAdd_data_f32(C4A >> 2, Df);
      } // End Atomic Op
      float Di = B4 * Bb;
      float Dj = CP + Cw;
      float Dk = CR + Cy;
      float Dl = BL + Dj;
      float Dm = BO + Dk;
      float Dn = Di * Dl;
      float Do = Di * Dm;
      int Cqg = C2b + Cye;
      int C4R = C0l + 8 * Cqg; // S20
      int C4S = C4R + 0; // S21
      float Dq;
      { // Begin Atomic Op
      Dq = atomicAdd_data_f32(C4S >> 2, Dn);
      } // End Atomic Op
      int C5a = C4R + 4; // S22
      float Ds;
      { // Begin Atomic Op
      Ds = atomicAdd_data_f32(C5a >> 2, Do);
      } // End Atomic Op
      float Dt = Di * Bn;
      int C5r = C0V + 4 * Cqg; // S23
      int C5s = C5r + 0; // S24
      float Dv;
      { // Begin Atomic Op
      Dv = atomicAdd_data_f32(C5s >> 2, Dt);
      } // End Atomic Op
      float Dw = Cq - AO;
      float Dx = Dw * BF;
      float Dy = Ba * AX;
      int Dz = AL + Cu;
      float DA = BA * Dx;
      float DB = DA + BQ;
      float DC = Bw * Dx;
      float DD = DC + BT;
      float DE = BL + DB;
      float DF = BO + DD;
      float DG = Dy * DE;
      float DH = Dy * DF;
      int C5B = Dz - C0m * int(Dz / C0m);
      int Cyg = C5B << Cyb;
      int CqE = C0r + Cyg;
      int C5J = C0l + 8 * CqE; // S20
      int C5K = C5J + 0; // S21
      float DJ;
      { // Begin Atomic Op
      DJ = atomicAdd_data_f32(C5K >> 2, DG);
      } // End Atomic Op
      int C62 = C5J + 4; // S22
      float DL;
      { // Begin Atomic Op
      DL = atomicAdd_data_f32(C62 >> 2, DH);
      } // End Atomic Op
      float DM = Dy * Bn;
      int C6j = C0V + 4 * CqE; // S23
      int C6k = C6j + 0; // S24
      float DO;
      { // Begin Atomic Op
      DO = atomicAdd_data_f32(C6k >> 2, DM);
      } // End Atomic Op
      float DP = Ba * B5;
      float DQ = DA + Cb;
      float DR = DC + Cd;
      float DS = BL + DQ;
      float DT = BO + DR;
      float DU = DP * DS;
      float DV = DP * DT;
      int Cr2 = C1j + Cyg;
      int C6B = C0l + 8 * Cr2; // S20
      int C6C = C6B + 0; // S21
      float DX;
      { // Begin Atomic Op
      DX = atomicAdd_data_f32(C6C >> 2, DU);
      } // End Atomic Op
      int C6U = C6B + 4; // S22
      float DZ;
      { // Begin Atomic Op
      DZ = atomicAdd_data_f32(C6U >> 2, DV);
      } // End Atomic Op
      float E0 = DP * Bn;
      int C7b = C0V + 4 * Cr2; // S23
      int C7c = C7b + 0; // S24
      float E2;
      { // Begin Atomic Op
      E2 = atomicAdd_data_f32(C7c >> 2, E0);
      } // End Atomic Op
      float E3 = Ba * Bb;
      float E4 = DA + Cw;
      float E5 = DC + Cy;
      float E6 = BL + E4;
      float E7 = BO + E5;
      float E8 = E3 * E6;
      float E9 = E3 * E7;
      int Crq = C2b + Cyg;
      int C7t = C0l + 8 * Crq; // S20
      int C7u = C7t + 0; // S21
      float Eb;
      { // Begin Atomic Op
      Eb = atomicAdd_data_f32(C7u >> 2, E8);
      } // End Atomic Op
      int C7M = C7t + 4; // S22
      float Ed;
      { // Begin Atomic Op
      Ed = atomicAdd_data_f32(C7M >> 2, E9);
      } // End Atomic Op
      float Ee = E3 * Bn;
      int C83 = C0V + 4 * Crq; // S23
      int C84 = C83 + 0; // S24
      float Eg;
      { // Begin Atomic Op
      Eg = atomicAdd_data_f32(C84 >> 2, Ee);
      } // End Atomic Op
  }
}

void main()
{
  substep_c56_02();
}
