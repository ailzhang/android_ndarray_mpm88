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
  for (int _sid = _sid0; _sid < (4096); _sid += int(gl_WorkGroupSize.x * gl_NumWorkGroups.x)) {
    int _itv = 0 + _sid;
      int W = _itv;
      int BTS = 0;
      int CjT = int(0);
      int BTU = BTS + 196608 * CjT; // S0
      int BTV = BTU + 32768; // S1
      int Cu2 = int(4095);
      int CtN = W & Cu2;
      int CjV = int(1);
      int BTY = BTV + 8 * CtN; // S1
      int BTZ = BTY + 0; // S2
      float At = _data_f32_[BTZ >> 2];
      float Au = float(64.0);
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
      int BUp = BTU + 131072; // S7
      int BUs = BUp + 16 * CtN; // S7
      int BUt = BUs + 0; // S8
      float B9 = _data_f32_[BUt >> 2];
      float Ba = float(6.1035156e-05);
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
      float Bq = float(0.015625);
      float Br = Bo * Bq;
      float Bs = Bp * Bq;
      float Bt = AN * AO;
      int BV3 = BTU + 65536; // S4
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
      int BVo = BTU + 98304; // S14
      int Caz = int(63);
      int CaA = AC & Caz;
      int CaE = AD & Caz;
      int Cu8 = int(6);
      int Cu9 = CaA << Cu8;
      int CkJ = CaE + Cu9;
      int BVs = BVo + 8 * CkJ; // S14
      int BVt = BVs + 0; // S15
      float BL;
      { // Begin Atomic Op
      BL = atomicAdd_data_f32(BVt >> 2, BI);
      } // End Atomic Op
      int BVF = BVs + 4; // S16
      float BN;
      { // Begin Atomic Op
      BN = atomicAdd_data_f32(BVF >> 2, BJ);
      } // End Atomic Op
      float BO = Bt * Ba;
      int BVM = BTU + 16384; // S17
      int BVQ = BVM + 4 * CkJ; // S17
      int BVR = BVQ + 0; // S18
      float BQ;
      { // Begin Atomic Op
      BQ = atomicAdd_data_f32(BVR >> 2, BO);
      } // End Atomic Op
      float BR = AP - AH;
      float BS = BR * Bq;
      float BT = AN * AW;
      int BV = AD + CjV;
      float BW = Be * BS;
      float BX = BA + BW;
      float BY = Bm * BS;
      float BZ = BD + BY;
      float C0 = Bw + BX;
      float C1 = Bz + BZ;
      float C2 = BT * C0;
      float C3 = BT * C1;
      int Cb2 = BV & Caz;
      int Cl7 = Cb2 + Cu9;
      int BW2 = BVo + 8 * Cl7; // S14
      int BW3 = BW2 + 0; // S15
      float C5;
      { // Begin Atomic Op
      C5 = atomicAdd_data_f32(BW3 >> 2, C2);
      } // End Atomic Op
      int BWf = BW2 + 4; // S16
      float C7;
      { // Begin Atomic Op
      C7 = atomicAdd_data_f32(BWf >> 2, C3);
      } // End Atomic Op
      float C8 = BT * Ba;
      int BWq = BVM + 4 * Cl7; // S17
      int BWr = BWq + 0; // S18
      float Ca;
      { // Begin Atomic Op
      Ca = atomicAdd_data_f32(BWr >> 2, C8);
      } // End Atomic Op
      float Cb = float(2.0);
      float Cc = Cb - AH;
      float Cd = Cc * Bq;
      float Ce = AN * B2;
      int Cf = int(2);
      int Cg = AD + Cf;
      float Ch = Be * Cd;
      float Ci = BA + Ch;
      float Cj = Bm * Cd;
      float Ck = BD + Cj;
      float Cl = Bw + Ci;
      float Cm = Bz + Ck;
      float Cn = Ce * Cl;
      float Co = Ce * Cm;
      int Cbq = Cg & Caz;
      int Clv = Cbq + Cu9;
      int BWC = BVo + 8 * Clv; // S14
      int BWD = BWC + 0; // S15
      float Cq;
      { // Begin Atomic Op
      Cq = atomicAdd_data_f32(BWD >> 2, Cn);
      } // End Atomic Op
      int BWP = BWC + 4; // S16
      float Cs;
      { // Begin Atomic Op
      Cs = atomicAdd_data_f32(BWP >> 2, Co);
      } // End Atomic Op
      float Ct = Ce * Ba;
      int BX0 = BVM + 4 * Clv; // S17
      int BX1 = BX0 + 0; // S18
      float Cv;
      { // Begin Atomic Op
      Cv = atomicAdd_data_f32(BX1 >> 2, Ct);
      } // End Atomic Op
      float Cw = AP - AF;
      float Cx = Cw * Bq;
      float Cy = AV * AO;
      int Cz = AC + CjV;
      float CA = Bl * Cx;
      float CB = CA + BB;
      float CC = Bh * Cx;
      float CD = CC + BE;
      float CE = Bw + CB;
      float CF = Bz + CD;
      float CG = Cy * CE;
      float CH = Cy * CF;
      int CbK = Cz & Caz;
      int Cub = CbK << Cu8;
      int ClT = CaE + Cub;
      int BXc = BVo + 8 * ClT; // S14
      int BXd = BXc + 0; // S15
      float CJ;
      { // Begin Atomic Op
      CJ = atomicAdd_data_f32(BXd >> 2, CG);
      } // End Atomic Op
      int BXp = BXc + 4; // S16
      float CL;
      { // Begin Atomic Op
      CL = atomicAdd_data_f32(BXp >> 2, CH);
      } // End Atomic Op
      float CM = Cy * Ba;
      int BXA = BVM + 4 * ClT; // S17
      int BXB = BXA + 0; // S18
      float CO;
      { // Begin Atomic Op
      CO = atomicAdd_data_f32(BXB >> 2, CM);
      } // End Atomic Op
      float CP = AV * AW;
      float CQ = CA + BW;
      float CR = CC + BY;
      float CS = Bw + CQ;
      float CT = Bz + CR;
      float CU = CP * CS;
      float CV = CP * CT;
      int Cmh = Cb2 + Cub;
      int BXM = BVo + 8 * Cmh; // S14
      int BXN = BXM + 0; // S15
      float CX;
      { // Begin Atomic Op
      CX = atomicAdd_data_f32(BXN >> 2, CU);
      } // End Atomic Op
      int BXZ = BXM + 4; // S16
      float CZ;
      { // Begin Atomic Op
      CZ = atomicAdd_data_f32(BXZ >> 2, CV);
      } // End Atomic Op
      float D0 = CP * Ba;
      int BYa = BVM + 4 * Cmh; // S17
      int BYb = BYa + 0; // S18
      float D2;
      { // Begin Atomic Op
      D2 = atomicAdd_data_f32(BYb >> 2, D0);
      } // End Atomic Op
      float D3 = AV * B2;
      float D4 = CA + Ch;
      float D5 = CC + Cj;
      float D6 = Bw + D4;
      float D7 = Bz + D5;
      float D8 = D3 * D6;
      float D9 = D3 * D7;
      int CmF = Cbq + Cub;
      int BYm = BVo + 8 * CmF; // S14
      int BYn = BYm + 0; // S15
      float Db;
      { // Begin Atomic Op
      Db = atomicAdd_data_f32(BYn >> 2, D8);
      } // End Atomic Op
      int BYz = BYm + 4; // S16
      float Dd;
      { // Begin Atomic Op
      Dd = atomicAdd_data_f32(BYz >> 2, D9);
      } // End Atomic Op
      float De = D3 * Ba;
      int BYK = BVM + 4 * CmF; // S17
      int BYL = BYK + 0; // S18
      float Dg;
      { // Begin Atomic Op
      Dg = atomicAdd_data_f32(BYL >> 2, De);
      } // End Atomic Op
      float Dh = Cb - AF;
      float Di = Dh * Bq;
      float Dj = B1 * AO;
      int Dk = AC + Cf;
      float Dl = Bl * Di;
      float Dm = Dl + BB;
      float Dn = Bh * Di;
      float Do = Dn + BE;
      float Dp = Bw + Dm;
      float Dq = Bz + Do;
      float Dr = Dj * Dp;
      float Ds = Dj * Dq;
      int CcU = Dk & Caz;
      int Cud = CcU << Cu8;
      int Cn3 = CaE + Cud;
      int BYW = BVo + 8 * Cn3; // S14
      int BYX = BYW + 0; // S15
      float Du;
      { // Begin Atomic Op
      Du = atomicAdd_data_f32(BYX >> 2, Dr);
      } // End Atomic Op
      int BZ9 = BYW + 4; // S16
      float Dw;
      { // Begin Atomic Op
      Dw = atomicAdd_data_f32(BZ9 >> 2, Ds);
      } // End Atomic Op
      float Dx = Dj * Ba;
      int BZk = BVM + 4 * Cn3; // S17
      int BZl = BZk + 0; // S18
      float Dz;
      { // Begin Atomic Op
      Dz = atomicAdd_data_f32(BZl >> 2, Dx);
      } // End Atomic Op
      float DA = B1 * AW;
      float DB = Dl + BW;
      float DC = Dn + BY;
      float DD = Bw + DB;
      float DE = Bz + DC;
      float DF = DA * DD;
      float DG = DA * DE;
      int Cnr = Cb2 + Cud;
      int BZw = BVo + 8 * Cnr; // S14
      int BZx = BZw + 0; // S15
      float DI;
      { // Begin Atomic Op
      DI = atomicAdd_data_f32(BZx >> 2, DF);
      } // End Atomic Op
      int BZJ = BZw + 4; // S16
      float DK;
      { // Begin Atomic Op
      DK = atomicAdd_data_f32(BZJ >> 2, DG);
      } // End Atomic Op
      float DL = DA * Ba;
      int BZU = BVM + 4 * Cnr; // S17
      int BZV = BZU + 0; // S18
      float DN;
      { // Begin Atomic Op
      DN = atomicAdd_data_f32(BZV >> 2, DL);
      } // End Atomic Op
      float DO = B1 * B2;
      float DP = Dl + Ch;
      float DQ = Dn + Cj;
      float DR = Bw + DP;
      float DS = Bz + DQ;
      float DT = DO * DR;
      float DU = DO * DS;
      int CnP = Cbq + Cud;
      int C06 = BVo + 8 * CnP; // S14
      int C07 = C06 + 0; // S15
      float DW;
      { // Begin Atomic Op
      DW = atomicAdd_data_f32(C07 >> 2, DT);
      } // End Atomic Op
      int C0j = C06 + 4; // S16
      float DY;
      { // Begin Atomic Op
      DY = atomicAdd_data_f32(C0j >> 2, DU);
      } // End Atomic Op
      float DZ = DO * Ba;
      int C0u = BVM + 4 * CnP; // S17
      int C0v = C0u + 0; // S18
      float E1;
      { // Begin Atomic Op
      E1 = atomicAdd_data_f32(C0v >> 2, DZ);
      } // End Atomic Op
  }
}

void main()
{
  substep_c44_01();
}
