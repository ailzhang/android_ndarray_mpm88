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
      int ALR = 0;
      int AXy = int(0);
      int ALT = ALR + 491520 * AXy; // S0
      int ALU = ALT + 32768; // S1
      int B1Z = int(8191);
      int B1Q = W & B1Z;
      int AXA = int(1);
      int ALX = ALU + 8 * B1Q; // S1
      int ALY = ALX + 0; // S2
      float At = _data_f32_[ALY >> 2];
      float Au = float(128.0);
      float Av = At * Au;
      int AM8 = ALX + 4; // S3
      float Ax = _data_f32_[AM8 >> 2];
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
      int AMe = ALT + 0; // S12
      int AMh = AMe + 4 * B1Q; // S12
      int AMi = AMh + 0; // S13
      float B4 = _data_f32_[AMi >> 2];
      float B5 = B4 - AP;
      float B6 = float(-0.08);
      float B7 = B5 * B6;
      int AMo = ALT + 229376; // S7
      int AMr = AMo + 16 * B1Q; // S7
      int AMs = AMr + 0; // S8
      float B9 = _data_f32_[AMs >> 2];
      float Ba = float(1.5258789e-05);
      float Bb = B9 * Ba;
      int AMC = AMr + 4; // S9
      float Bd = _data_f32_[AMC >> 2];
      float Be = Bd * Ba;
      int AMM = AMr + 8; // S10
      float Bg = _data_f32_[AMM >> 2];
      float Bh = Bg * Ba;
      int AMW = AMr + 12; // S11
      float Bj = _data_f32_[AMW >> 2];
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
      int AN2 = ALT + 98304; // S4
      int AN5 = AN2 + 8 * B1Q; // S4
      int AN6 = AN5 + 0; // S5
      float Bv = _data_f32_[AN6 >> 2];
      float Bw = Bv * Ba;
      int ANg = AN5 + 4; // S6
      float By = _data_f32_[ANg >> 2];
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
      int ANn = ALT + 360448; // S14
      int ATI = int(127);
      int ATJ = AC & ATI;
      int ATN = AD & ATI;
      int B22 = int(7);
      int B23 = ATJ << B22;
      int AYo = ATN + B23;
      int ANr = ANn + 8 * AYo; // S14
      int ANs = ANr + 0; // S15
      float BL;
      { // Begin Atomic Op
      BL = atomicAdd_data_f32(ANs >> 2, BI);
      } // End Atomic Op
      int ANE = ANr + 4; // S16
      float BN;
      { // Begin Atomic Op
      BN = atomicAdd_data_f32(ANE >> 2, BJ);
      } // End Atomic Op
      float BO = Bt * Ba;
      int ANL = ALT + 163840; // S17
      int ANP = ANL + 4 * AYo; // S17
      int ANQ = ANP + 0; // S18
      float BQ;
      { // Begin Atomic Op
      BQ = atomicAdd_data_f32(ANQ >> 2, BO);
      } // End Atomic Op
      float BR = AP - AH;
      float BS = BR * Bq;
      float BT = AN * AW;
      int BV = AD + AXA;
      float BW = Be * BS;
      float BX = BA + BW;
      float BY = Bm * BS;
      float BZ = BD + BY;
      float C0 = Bw + BX;
      float C1 = Bz + BZ;
      float C2 = BT * C0;
      float C3 = BT * C1;
      int AUb = BV & ATI;
      int AYM = AUb + B23;
      int AO1 = ANn + 8 * AYM; // S14
      int AO2 = AO1 + 0; // S15
      float C5;
      { // Begin Atomic Op
      C5 = atomicAdd_data_f32(AO2 >> 2, C2);
      } // End Atomic Op
      int AOe = AO1 + 4; // S16
      float C7;
      { // Begin Atomic Op
      C7 = atomicAdd_data_f32(AOe >> 2, C3);
      } // End Atomic Op
      float C8 = BT * Ba;
      int AOp = ANL + 4 * AYM; // S17
      int AOq = AOp + 0; // S18
      float Ca;
      { // Begin Atomic Op
      Ca = atomicAdd_data_f32(AOq >> 2, C8);
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
      int AUz = Cg & ATI;
      int AZa = AUz + B23;
      int AOB = ANn + 8 * AZa; // S14
      int AOC = AOB + 0; // S15
      float Cq;
      { // Begin Atomic Op
      Cq = atomicAdd_data_f32(AOC >> 2, Cn);
      } // End Atomic Op
      int AOO = AOB + 4; // S16
      float Cs;
      { // Begin Atomic Op
      Cs = atomicAdd_data_f32(AOO >> 2, Co);
      } // End Atomic Op
      float Ct = Ce * Ba;
      int AOZ = ANL + 4 * AZa; // S17
      int AP0 = AOZ + 0; // S18
      float Cv;
      { // Begin Atomic Op
      Cv = atomicAdd_data_f32(AP0 >> 2, Ct);
      } // End Atomic Op
      float Cw = AP - AF;
      float Cx = Cw * Bq;
      float Cy = AV * AO;
      int Cz = AC + AXA;
      float CA = Bl * Cx;
      float CB = CA + BB;
      float CC = Bh * Cx;
      float CD = CC + BE;
      float CE = Bw + CB;
      float CF = Bz + CD;
      float CG = Cy * CE;
      float CH = Cy * CF;
      int AUT = Cz & ATI;
      int B25 = AUT << B22;
      int AZy = ATN + B25;
      int APb = ANn + 8 * AZy; // S14
      int APc = APb + 0; // S15
      float CJ;
      { // Begin Atomic Op
      CJ = atomicAdd_data_f32(APc >> 2, CG);
      } // End Atomic Op
      int APo = APb + 4; // S16
      float CL;
      { // Begin Atomic Op
      CL = atomicAdd_data_f32(APo >> 2, CH);
      } // End Atomic Op
      float CM = Cy * Ba;
      int APz = ANL + 4 * AZy; // S17
      int APA = APz + 0; // S18
      float CO;
      { // Begin Atomic Op
      CO = atomicAdd_data_f32(APA >> 2, CM);
      } // End Atomic Op
      float CP = AV * AW;
      float CQ = CA + BW;
      float CR = CC + BY;
      float CS = Bw + CQ;
      float CT = Bz + CR;
      float CU = CP * CS;
      float CV = CP * CT;
      int AZW = AUb + B25;
      int APL = ANn + 8 * AZW; // S14
      int APM = APL + 0; // S15
      float CX;
      { // Begin Atomic Op
      CX = atomicAdd_data_f32(APM >> 2, CU);
      } // End Atomic Op
      int APY = APL + 4; // S16
      float CZ;
      { // Begin Atomic Op
      CZ = atomicAdd_data_f32(APY >> 2, CV);
      } // End Atomic Op
      float D0 = CP * Ba;
      int AQ9 = ANL + 4 * AZW; // S17
      int AQa = AQ9 + 0; // S18
      float D2;
      { // Begin Atomic Op
      D2 = atomicAdd_data_f32(AQa >> 2, D0);
      } // End Atomic Op
      float D3 = AV * B2;
      float D4 = CA + Ch;
      float D5 = CC + Cj;
      float D6 = Bw + D4;
      float D7 = Bz + D5;
      float D8 = D3 * D6;
      float D9 = D3 * D7;
      int B0k = AUz + B25;
      int AQl = ANn + 8 * B0k; // S14
      int AQm = AQl + 0; // S15
      float Db;
      { // Begin Atomic Op
      Db = atomicAdd_data_f32(AQm >> 2, D8);
      } // End Atomic Op
      int AQy = AQl + 4; // S16
      float Dd;
      { // Begin Atomic Op
      Dd = atomicAdd_data_f32(AQy >> 2, D9);
      } // End Atomic Op
      float De = D3 * Ba;
      int AQJ = ANL + 4 * B0k; // S17
      int AQK = AQJ + 0; // S18
      float Dg;
      { // Begin Atomic Op
      Dg = atomicAdd_data_f32(AQK >> 2, De);
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
      int AW3 = Dk & ATI;
      int B27 = AW3 << B22;
      int B0I = ATN + B27;
      int AQV = ANn + 8 * B0I; // S14
      int AQW = AQV + 0; // S15
      float Du;
      { // Begin Atomic Op
      Du = atomicAdd_data_f32(AQW >> 2, Dr);
      } // End Atomic Op
      int AR8 = AQV + 4; // S16
      float Dw;
      { // Begin Atomic Op
      Dw = atomicAdd_data_f32(AR8 >> 2, Ds);
      } // End Atomic Op
      float Dx = Dj * Ba;
      int ARj = ANL + 4 * B0I; // S17
      int ARk = ARj + 0; // S18
      float Dz;
      { // Begin Atomic Op
      Dz = atomicAdd_data_f32(ARk >> 2, Dx);
      } // End Atomic Op
      float DA = B1 * AW;
      float DB = Dl + BW;
      float DC = Dn + BY;
      float DD = Bw + DB;
      float DE = Bz + DC;
      float DF = DA * DD;
      float DG = DA * DE;
      int B16 = AUb + B27;
      int ARv = ANn + 8 * B16; // S14
      int ARw = ARv + 0; // S15
      float DI;
      { // Begin Atomic Op
      DI = atomicAdd_data_f32(ARw >> 2, DF);
      } // End Atomic Op
      int ARI = ARv + 4; // S16
      float DK;
      { // Begin Atomic Op
      DK = atomicAdd_data_f32(ARI >> 2, DG);
      } // End Atomic Op
      float DL = DA * Ba;
      int ART = ANL + 4 * B16; // S17
      int ARU = ART + 0; // S18
      float DN;
      { // Begin Atomic Op
      DN = atomicAdd_data_f32(ARU >> 2, DL);
      } // End Atomic Op
      float DO = B1 * B2;
      float DP = Dl + Ch;
      float DQ = Dn + Cj;
      float DR = Bw + DP;
      float DS = Bz + DQ;
      float DT = DO * DR;
      float DU = DO * DS;
      int B1u = AUz + B27;
      int AS5 = ANn + 8 * B1u; // S14
      int AS6 = AS5 + 0; // S15
      float DW;
      { // Begin Atomic Op
      DW = atomicAdd_data_f32(AS6 >> 2, DT);
      } // End Atomic Op
      int ASi = AS5 + 4; // S16
      float DY;
      { // Begin Atomic Op
      DY = atomicAdd_data_f32(ASi >> 2, DU);
      } // End Atomic Op
      float DZ = DO * Ba;
      int ASt = ANL + 4 * B1u; // S17
      int ASu = ASt + 0; // S18
      float E1;
      { // Begin Atomic Op
      E1 = atomicAdd_data_f32(ASu >> 2, DZ);
      } // End Atomic Op
  }
}

void main()
{
  substep_c44_01();
}
