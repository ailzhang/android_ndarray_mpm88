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
      int At = _itv;
      int BU6 = 0;
      int Ck7 = int(0);
      int BU8 = BU6 + 344064 * Ck7; // S0
      int BU9 = BU8 + 16384; // S1
      int Cug = int(4095);
      int Cu1 = At & Cug;
      int Ck9 = int(1);
      int BUc = BU9 + 8 * Cu1; // S1
      int BUd = BUc + 0; // S2
      float AA = _data_f32_[BUd >> 2];
      float AB = float(96.0);
      float AC = AA * AB;
      int BUn = BUc + 4; // S3
      float AE = _data_f32_[BUn >> 2];
      float AF = AE * AB;
      float AG = float(0.5);
      float AH = AC - AG;
      float AI = AF - AG;
      int AJ = int(AH);
      int AK = int(AI);
      float AL = float(AJ);
      float AM = AC - AL;
      float AN = float(AK);
      float AO = AF - AN;
      float AP = float(1.5);
      float AQ = AP - AM;
      float AR = AP - AO;
      float AS = AQ * AQ;
      float AT = AR * AR;
      float AU = AS * AG;
      float AV = AT * AG;
      float AW = float(1.0);
      float AX = AM - AW;
      float AY = AO - AW;
      float AZ = AX * AX;
      float B0 = AY * AY;
      float B1 = float(0.75);
      float B2 = B1 - AZ;
      float B3 = B1 - B0;
      float B4 = AM - AG;
      float B5 = AO - AG;
      float B6 = B4 * B4;
      float B7 = B5 * B5;
      float B8 = B6 * AG;
      float B9 = B7 * AG;
      int BUt = BU8 + 0; // S12
      int BUw = BUt + 4 * Cu1; // S12
      int BUx = BUw + 0; // S13
      float Bb = _data_f32_[BUx >> 2];
      float Bc = Bb - AW;
      float Bd = float(-0.08);
      float Be = Bc * Bd;
      int BUD = BU8 + 81920; // S7
      int BUG = BUD + 16 * Cu1; // S7
      int BUH = BUG + 0; // S8
      float Bg = _data_f32_[BUH >> 2];
      float Bh = float(2.7126736e-05);
      float Bi = Bg * Bh;
      int BUR = BUG + 4; // S9
      float Bk = _data_f32_[BUR >> 2];
      float Bl = Bk * Bh;
      int BV1 = BUG + 8; // S10
      float Bn = _data_f32_[BV1 >> 2];
      float Bo = Bn * Bh;
      int BVb = BUG + 12; // S11
      float Bq = _data_f32_[BVb >> 2];
      float Br = Bq * Bh;
      float Bs = Be + Bi;
      float Bt = Be + Br;
      float Bu = float(0.0);
      float Bv = Bu - AM;
      float Bw = Bu - AO;
      float Bx = float(0.010416667);
      float By = Bv * Bx;
      float Bz = Bw * Bx;
      float BA = AU * AV;
      int BVh = BU8 + 49152; // S4
      int BVk = BVh + 8 * Cu1; // S4
      int BVl = BVk + 0; // S5
      float BC = _data_f32_[BVl >> 2];
      float BD = BC * Bh;
      int BVv = BVk + 4; // S6
      float BF = _data_f32_[BVv >> 2];
      float BG = BF * Bh;
      float BH = Bs * By;
      float BI = Bl * Bz;
      float BJ = BH + BI;
      float BK = Bo * By;
      float BL = Bt * Bz;
      float BM = BK + BL;
      float BN = BD + BJ;
      float BO = BG + BM;
      float BP = BA * BN;
      float BQ = BA * BO;
      int BVC = BU8 + 212992; // S14
      int CaN = int(127);
      int CaO = AJ & CaN;
      int CaS = AK & CaN;
      int Cum = int(7);
      int Cun = CaO << Cum;
      int CkX = CaS + Cun;
      int BVG = BVC + 8 * CkX; // S14
      int BVH = BVG + 0; // S15
      float BS;
      { // Begin Atomic Op
      BS = atomicAdd_data_f32(BVH >> 2, BP);
      } // End Atomic Op
      int BVT = BVG + 4; // S16
      float BU;
      { // Begin Atomic Op
      BU = atomicAdd_data_f32(BVT >> 2, BQ);
      } // End Atomic Op
      float BV = BA * Bh;
      int BW0 = BU8 + 147456; // S17
      int BW4 = BW0 + 4 * CkX; // S17
      int BW5 = BW4 + 0; // S18
      float BX;
      { // Begin Atomic Op
      BX = atomicAdd_data_f32(BW5 >> 2, BV);
      } // End Atomic Op
      float BY = AW - AO;
      float BZ = BY * Bx;
      float C0 = AU * B3;
      int C2 = AK + Ck9;
      float C3 = Bl * BZ;
      float C4 = BH + C3;
      float C5 = Bt * BZ;
      float C6 = BK + C5;
      float C7 = BD + C4;
      float C8 = BG + C6;
      float C9 = C0 * C7;
      float Ca = C0 * C8;
      int Cbg = C2 & CaN;
      int Cll = Cbg + Cun;
      int BWg = BVC + 8 * Cll; // S14
      int BWh = BWg + 0; // S15
      float Cc;
      { // Begin Atomic Op
      Cc = atomicAdd_data_f32(BWh >> 2, C9);
      } // End Atomic Op
      int BWt = BWg + 4; // S16
      float Ce;
      { // Begin Atomic Op
      Ce = atomicAdd_data_f32(BWt >> 2, Ca);
      } // End Atomic Op
      float Cf = C0 * Bh;
      int BWE = BW0 + 4 * Cll; // S17
      int BWF = BWE + 0; // S18
      float Ch;
      { // Begin Atomic Op
      Ch = atomicAdd_data_f32(BWF >> 2, Cf);
      } // End Atomic Op
      float Ci = float(2.0);
      float Cj = Ci - AO;
      float Ck = Cj * Bx;
      float Cl = AU * B9;
      int Cm = int(2);
      int Cn = AK + Cm;
      float Co = Bl * Ck;
      float Cp = BH + Co;
      float Cq = Bt * Ck;
      float Cr = BK + Cq;
      float Cs = BD + Cp;
      float Ct = BG + Cr;
      float Cu = Cl * Cs;
      float Cv = Cl * Ct;
      int CbE = Cn & CaN;
      int ClJ = CbE + Cun;
      int BWQ = BVC + 8 * ClJ; // S14
      int BWR = BWQ + 0; // S15
      float Cx;
      { // Begin Atomic Op
      Cx = atomicAdd_data_f32(BWR >> 2, Cu);
      } // End Atomic Op
      int BX3 = BWQ + 4; // S16
      float Cz;
      { // Begin Atomic Op
      Cz = atomicAdd_data_f32(BX3 >> 2, Cv);
      } // End Atomic Op
      float CA = Cl * Bh;
      int BXe = BW0 + 4 * ClJ; // S17
      int BXf = BXe + 0; // S18
      float CC;
      { // Begin Atomic Op
      CC = atomicAdd_data_f32(BXf >> 2, CA);
      } // End Atomic Op
      float CD = AW - AM;
      float CE = CD * Bx;
      float CF = B2 * AV;
      int CG = AJ + Ck9;
      float CH = Bs * CE;
      float CI = CH + BI;
      float CJ = Bo * CE;
      float CK = CJ + BL;
      float CL = BD + CI;
      float CM = BG + CK;
      float CN = CF * CL;
      float CO = CF * CM;
      int CbY = CG & CaN;
      int Cup = CbY << Cum;
      int Cm7 = CaS + Cup;
      int BXq = BVC + 8 * Cm7; // S14
      int BXr = BXq + 0; // S15
      float CQ;
      { // Begin Atomic Op
      CQ = atomicAdd_data_f32(BXr >> 2, CN);
      } // End Atomic Op
      int BXD = BXq + 4; // S16
      float CS;
      { // Begin Atomic Op
      CS = atomicAdd_data_f32(BXD >> 2, CO);
      } // End Atomic Op
      float CT = CF * Bh;
      int BXO = BW0 + 4 * Cm7; // S17
      int BXP = BXO + 0; // S18
      float CV;
      { // Begin Atomic Op
      CV = atomicAdd_data_f32(BXP >> 2, CT);
      } // End Atomic Op
      float CW = B2 * B3;
      float CX = CH + C3;
      float CY = CJ + C5;
      float CZ = BD + CX;
      float D0 = BG + CY;
      float D1 = CW * CZ;
      float D2 = CW * D0;
      int Cmv = Cbg + Cup;
      int BY0 = BVC + 8 * Cmv; // S14
      int BY1 = BY0 + 0; // S15
      float D4;
      { // Begin Atomic Op
      D4 = atomicAdd_data_f32(BY1 >> 2, D1);
      } // End Atomic Op
      int BYd = BY0 + 4; // S16
      float D6;
      { // Begin Atomic Op
      D6 = atomicAdd_data_f32(BYd >> 2, D2);
      } // End Atomic Op
      float D7 = CW * Bh;
      int BYo = BW0 + 4 * Cmv; // S17
      int BYp = BYo + 0; // S18
      float D9;
      { // Begin Atomic Op
      D9 = atomicAdd_data_f32(BYp >> 2, D7);
      } // End Atomic Op
      float Da = B2 * B9;
      float Db = CH + Co;
      float Dc = CJ + Cq;
      float Dd = BD + Db;
      float De = BG + Dc;
      float Df = Da * Dd;
      float Dg = Da * De;
      int CmT = CbE + Cup;
      int BYA = BVC + 8 * CmT; // S14
      int BYB = BYA + 0; // S15
      float Di;
      { // Begin Atomic Op
      Di = atomicAdd_data_f32(BYB >> 2, Df);
      } // End Atomic Op
      int BYN = BYA + 4; // S16
      float Dk;
      { // Begin Atomic Op
      Dk = atomicAdd_data_f32(BYN >> 2, Dg);
      } // End Atomic Op
      float Dl = Da * Bh;
      int BYY = BW0 + 4 * CmT; // S17
      int BYZ = BYY + 0; // S18
      float Dn;
      { // Begin Atomic Op
      Dn = atomicAdd_data_f32(BYZ >> 2, Dl);
      } // End Atomic Op
      float Do = Ci - AM;
      float Dp = Do * Bx;
      float Dq = B8 * AV;
      int Dr = AJ + Cm;
      float Ds = Bs * Dp;
      float Dt = Ds + BI;
      float Du = Bo * Dp;
      float Dv = Du + BL;
      float Dw = BD + Dt;
      float Dx = BG + Dv;
      float Dy = Dq * Dw;
      float Dz = Dq * Dx;
      int Cd8 = Dr & CaN;
      int Cur = Cd8 << Cum;
      int Cnh = CaS + Cur;
      int BZa = BVC + 8 * Cnh; // S14
      int BZb = BZa + 0; // S15
      float DB;
      { // Begin Atomic Op
      DB = atomicAdd_data_f32(BZb >> 2, Dy);
      } // End Atomic Op
      int BZn = BZa + 4; // S16
      float DD;
      { // Begin Atomic Op
      DD = atomicAdd_data_f32(BZn >> 2, Dz);
      } // End Atomic Op
      float DE = Dq * Bh;
      int BZy = BW0 + 4 * Cnh; // S17
      int BZz = BZy + 0; // S18
      float DG;
      { // Begin Atomic Op
      DG = atomicAdd_data_f32(BZz >> 2, DE);
      } // End Atomic Op
      float DH = B8 * B3;
      float DI = Ds + C3;
      float DJ = Du + C5;
      float DK = BD + DI;
      float DL = BG + DJ;
      float DM = DH * DK;
      float DN = DH * DL;
      int CnF = Cbg + Cur;
      int BZK = BVC + 8 * CnF; // S14
      int BZL = BZK + 0; // S15
      float DP;
      { // Begin Atomic Op
      DP = atomicAdd_data_f32(BZL >> 2, DM);
      } // End Atomic Op
      int BZX = BZK + 4; // S16
      float DR;
      { // Begin Atomic Op
      DR = atomicAdd_data_f32(BZX >> 2, DN);
      } // End Atomic Op
      float DS = DH * Bh;
      int C08 = BW0 + 4 * CnF; // S17
      int C09 = C08 + 0; // S18
      float DU;
      { // Begin Atomic Op
      DU = atomicAdd_data_f32(C09 >> 2, DS);
      } // End Atomic Op
      float DV = B8 * B9;
      float DW = Ds + Co;
      float DX = Du + Cq;
      float DY = BD + DW;
      float DZ = BG + DX;
      float E0 = DV * DY;
      float E1 = DV * DZ;
      int Co3 = CbE + Cur;
      int C0k = BVC + 8 * Co3; // S14
      int C0l = C0k + 0; // S15
      float E3;
      { // Begin Atomic Op
      E3 = atomicAdd_data_f32(C0l >> 2, E0);
      } // End Atomic Op
      int C0x = C0k + 4; // S16
      float E5;
      { // Begin Atomic Op
      E5 = atomicAdd_data_f32(C0x >> 2, E1);
      } // End Atomic Op
      float E6 = DV * Bh;
      int C0I = BW0 + 4 * Co3; // S17
      int C0J = C0I + 0; // S18
      float E8;
      { // Begin Atomic Op
      E8 = atomicAdd_data_f32(C0J >> 2, E6);
      } // End Atomic Op
  }
}

void main()
{
  substep_c44_01();
}
