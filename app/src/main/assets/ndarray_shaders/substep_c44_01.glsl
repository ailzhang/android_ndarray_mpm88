#version 310 es
layout(local_size_x = 128, local_size_y = 1, local_size_z = 1) in;
precision highp float;
layout(std430, binding = 2) buffer args_i32 { int _args_i32_[];};
layout(std430, binding = 2) buffer args_f32 { float _args_f32_[];};
layout(std430, binding = 5) buffer arr1_i32 { int _arr1_i32_[];};
layout(std430, binding = 5) buffer arr1_f32 { float _arr1_f32_[];};
layout(std430, binding = 9) buffer arr5_i32 { int _arr5_i32_[];};
layout(std430, binding = 9) buffer arr5_f32 { float _arr5_f32_[];};
layout(std430, binding = 4) buffer arr0_i32 { int _arr0_i32_[];};
layout(std430, binding = 4) buffer arr0_f32 { float _arr0_f32_[];};
layout(std430, binding = 8) buffer arr4_i32 { int _arr4_i32_[];};
layout(std430, binding = 8) buffer arr4_f32 { float _arr4_f32_[];};
layout(std430, binding = 6) buffer arr2_i32 { int _arr2_i32_[];};
layout(std430, binding = 6) buffer arr2_f32 { float _arr2_f32_[];};
layout(std430, binding = 7) buffer arr3_i32 { int _arr3_i32_[];};
layout(std430, binding = 7) buffer arr3_f32 { float _arr3_f32_[];};
float atomicAdd_arr0_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr0_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) + rhs)); } while (old_val != atomicCompSwap(_arr0_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicSub_arr0_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr0_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) - rhs)); } while (old_val != atomicCompSwap(_arr0_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMax_arr0_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr0_i32_[addr]; new_val = floatBitsToInt(max(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_arr0_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMin_arr0_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr0_i32_[addr]; new_val = floatBitsToInt(min(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_arr0_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); }float atomicAdd_arr1_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr1_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) + rhs)); } while (old_val != atomicCompSwap(_arr1_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicSub_arr1_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr1_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) - rhs)); } while (old_val != atomicCompSwap(_arr1_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMax_arr1_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr1_i32_[addr]; new_val = floatBitsToInt(max(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_arr1_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMin_arr1_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr1_i32_[addr]; new_val = floatBitsToInt(min(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_arr1_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); }float atomicAdd_arr2_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr2_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) + rhs)); } while (old_val != atomicCompSwap(_arr2_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicSub_arr2_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr2_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) - rhs)); } while (old_val != atomicCompSwap(_arr2_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMax_arr2_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr2_i32_[addr]; new_val = floatBitsToInt(max(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_arr2_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMin_arr2_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr2_i32_[addr]; new_val = floatBitsToInt(min(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_arr2_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); }float atomicAdd_arr3_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr3_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) + rhs)); } while (old_val != atomicCompSwap(_arr3_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicSub_arr3_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr3_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) - rhs)); } while (old_val != atomicCompSwap(_arr3_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMax_arr3_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr3_i32_[addr]; new_val = floatBitsToInt(max(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_arr3_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMin_arr3_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr3_i32_[addr]; new_val = floatBitsToInt(min(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_arr3_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); }float atomicAdd_arr4_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr4_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) + rhs)); } while (old_val != atomicCompSwap(_arr4_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicSub_arr4_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr4_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) - rhs)); } while (old_val != atomicCompSwap(_arr4_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMax_arr4_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr4_i32_[addr]; new_val = floatBitsToInt(max(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_arr4_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMin_arr4_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr4_i32_[addr]; new_val = floatBitsToInt(min(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_arr4_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); }float atomicAdd_arr5_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr5_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) + rhs)); } while (old_val != atomicCompSwap(_arr5_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicSub_arr5_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr5_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) - rhs)); } while (old_val != atomicCompSwap(_arr5_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMax_arr5_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr5_i32_[addr]; new_val = floatBitsToInt(max(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_arr5_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMin_arr5_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr5_i32_[addr]; new_val = floatBitsToInt(min(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_arr5_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); }
const float inf = 1.0f / 0.0f;
const float nan = 0.0f / 0.0f;
void substep_c44_01()
{ // range for
  // range from args buffer
  int U = _args_i32_[16 + 0 * 8 + 0];
  int _beg = 0, _end = U;
  int _sid0 = int(gl_GlobalInvocationID.x);
  for (int _sid = _sid0; _sid < (_end - _beg); _sid += int(gl_WorkGroupSize.x * gl_NumWorkGroups.x)) {
    int _itv = _beg + _sid;
    int _s1_arr0 = 2;
    int _s1_arr1 = 2;
    int _s1_arr3 = 2;
    int _s2_arr3 = 2;
    int _s2_arr4 = 2;
    int V = _itv;
    int W = V - U * int(V / U);
    int Y = int(0);
    int Z = W;
    Z *= _s1_arr0;
    Z += Y;
    float Aq = _arr0_f32_[Z];
    int Ar = _args_i32_[16 + 4 * 8 + 0];
    float As = float(Ar);
    float At = Aq * As;
    int Au = int(1);
    int Av = W;
    Av *= _s1_arr0;
    Av += Au;
    float Aw = _arr0_f32_[Av];
    float Ax = Aw * As;
    float Ay = float(0.5);
    float Az = At - Ay;
    float AA = Ax - Ay;
    int AB = int(Az);
    int AC = int(AA);
    float AD = float(AB);
    float AE = float(AC);
    float AF = At - AD;
    float AG = Ax - AE;
    float AH = float(1.5);
    float AI = AH - AF;
    float AJ = AH - AG;
    float AK = AI * AI;
    float AL = AJ * AJ;
    float AM = AK * Ay;
    float AN = AL * Ay;
    float AO = float(1.0);
    float AP = AF - AO;
    float AQ = AG - AO;
    float AR = AP * AP;
    float AS = AQ * AQ;
    float AT = float(0.75);
    float AU = AT - AR;
    float AV = AT - AS;
    float AW = AF - Ay;
    float AX = AG - Ay;
    float AY = AW * AW;
    float AZ = AX * AX;
    float B0 = AY * Ay;
    float B1 = AZ * Ay;
    float B2 = float(0.0002);
    float B3 = float(0.0078125);
    float B4 = As * B3;
    float B5 = B2 / B4;
    float B6 = float(min(B5, B2));
    float B7 = float(-B6);
    float B8 = AO / As;
    float B9 = B8 * Ay;
    float Ba = B9 * B9;
    float Bb = B7 * Ba;
    int _s0_arr2 = _args_i32_[16 + 2 * 8 + 0];
    int Bd = W;
    float Be = _arr2_f32_[Bd];
    float Bf = Be - AO;
    float Bg = Bb * Bf;
    float Bh = float(4.0);
    float Bi = Bg * Bh;
    float Bj = Bi * As;
    float Bk = Bj * As;
    float Bl = float(400.0);
    float Bm = Bk * Bl;
    int Bo = W;
    Bo *= _s1_arr3;
    Bo += Y;
    Bo *= _s2_arr3;
    Bo += Y;
    float Bp = _arr3_f32_[Bo];
    float Bq = Ba * Bp;
    int Br = W;
    Br *= _s1_arr3;
    Br += Y;
    Br *= _s2_arr3;
    Br += Au;
    float Bs = _arr3_f32_[Br];
    float Bt = Ba * Bs;
    int Bu = W;
    Bu *= _s1_arr3;
    Bu += Au;
    Bu *= _s2_arr3;
    Bu += Y;
    float Bv = _arr3_f32_[Bu];
    float Bw = Ba * Bv;
    int Bx = W;
    Bx *= _s1_arr3;
    Bx += Au;
    Bx *= _s2_arr3;
    Bx += Au;
    float By = _arr3_f32_[Bx];
    float Bz = Ba * By;
    float BA = Bm + Bq;
    float BB = Bm + Bz;
    float BC = float(0.0);
    float BD = BC - AF;
    float BE = BC - AG;
    float BF = BD * B8;
    float BG = BE * B8;
    float BH = AM * AN;
    int BJ = W;
    BJ *= _s1_arr1;
    BJ += Y;
    float BK = _arr1_f32_[BJ];
    float BL = Ba * BK;
    int BM = W;
    BM *= _s1_arr1;
    BM += Au;
    float BN = _arr1_f32_[BM];
    float BO = Ba * BN;
    float BP = BA * BF;
    float BQ = Bt * BG;
    float BR = BP + BQ;
    float BS = Bw * BF;
    float BT = BB * BG;
    float BU = BS + BT;
    float BV = BL + BR;
    float BW = BO + BU;
    float BX = BH * BV;
    float BY = BH * BW;
    int _s1_arr4 = _args_i32_[16 + 4 * 8 + 1];
    int C0 = AB;
    C0 *= _s1_arr4;
    C0 += AC;
    C0 *= _s2_arr4;
    C0 += Y;
    float C1;
    { // Begin Atomic Op
      C1 = atomicAdd_arr4_f32(C0, BX);
    } // End Atomic Op
    int C2 = AB;
    C2 *= _s1_arr4;
    C2 += AC;
    C2 *= _s2_arr4;
    C2 += Au;
    float C3;
    { // Begin Atomic Op
      C3 = atomicAdd_arr4_f32(C2, BY);
    } // End Atomic Op
    float C4 = BH * Ba;
    int _s0_arr5 = _args_i32_[16 + 5 * 8 + 0];
    int _s1_arr5 = _args_i32_[16 + 5 * 8 + 1];
    int C6 = AB;
    C6 *= _s1_arr5;
    C6 += AC;
    float C7;
    { // Begin Atomic Op
      C7 = atomicAdd_arr5_f32(C6, C4);
    } // End Atomic Op
    float C8 = AO - AG;
    float C9 = C8 * B8;
    float Ca = AM * AV;
    int Cb = AC + Au;
    float Cc = Bt * C9;
    float Cd = BP + Cc;
    float Ce = BB * C9;
    float Cf = BS + Ce;
    float Cg = BL + Cd;
    float Ch = BO + Cf;
    float Ci = Ca * Cg;
    float Cj = Ca * Ch;
    int Ck = AB;
    Ck *= _s1_arr4;
    Ck += Cb;
    Ck *= _s2_arr4;
    Ck += Y;
    float Cl;
    { // Begin Atomic Op
      Cl = atomicAdd_arr4_f32(Ck, Ci);
    } // End Atomic Op
    int Cm = AB;
    Cm *= _s1_arr4;
    Cm += Cb;
    Cm *= _s2_arr4;
    Cm += Au;
    float Cn;
    { // Begin Atomic Op
      Cn = atomicAdd_arr4_f32(Cm, Cj);
    } // End Atomic Op
    float Co = Ca * Ba;
    int Cp = AB;
    Cp *= _s1_arr5;
    Cp += Cb;
    float Cq;
    { // Begin Atomic Op
      Cq = atomicAdd_arr5_f32(Cp, Co);
    } // End Atomic Op
    float Cr = float(2.0);
    float Cs = Cr - AG;
    float Ct = Cs * B8;
    float Cu = AM * B1;
    int Cv = int(2);
    int Cw = AC + Cv;
    float Cx = Bt * Ct;
    float Cy = BP + Cx;
    float Cz = BB * Ct;
    float CA = BS + Cz;
    float CB = BL + Cy;
    float CC = BO + CA;
    float CD = Cu * CB;
    float CE = Cu * CC;
    int CF = AB;
    CF *= _s1_arr4;
    CF += Cw;
    CF *= _s2_arr4;
    CF += Y;
    float CG;
    { // Begin Atomic Op
      CG = atomicAdd_arr4_f32(CF, CD);
    } // End Atomic Op
    int CH = AB;
    CH *= _s1_arr4;
    CH += Cw;
    CH *= _s2_arr4;
    CH += Au;
    float CI;
    { // Begin Atomic Op
      CI = atomicAdd_arr4_f32(CH, CE);
    } // End Atomic Op
    float CJ = Cu * Ba;
    int CK = AB;
    CK *= _s1_arr5;
    CK += Cw;
    float CL;
    { // Begin Atomic Op
      CL = atomicAdd_arr5_f32(CK, CJ);
    } // End Atomic Op
    float CM = AO - AF;
    float CN = CM * B8;
    float CO = AU * AN;
    int CP = AB + Au;
    float CQ = BA * CN;
    float CR = CQ + BQ;
    float CS = Bw * CN;
    float CT = CS + BT;
    float CU = BL + CR;
    float CV = BO + CT;
    float CW = CO * CU;
    float CX = CO * CV;
    int CY = CP;
    CY *= _s1_arr4;
    CY += AC;
    CY *= _s2_arr4;
    CY += Y;
    float CZ;
    { // Begin Atomic Op
      CZ = atomicAdd_arr4_f32(CY, CW);
    } // End Atomic Op
    int D0 = CP;
    D0 *= _s1_arr4;
    D0 += AC;
    D0 *= _s2_arr4;
    D0 += Au;
    float D1;
    { // Begin Atomic Op
      D1 = atomicAdd_arr4_f32(D0, CX);
    } // End Atomic Op
    float D2 = CO * Ba;
    int D3 = CP;
    D3 *= _s1_arr5;
    D3 += AC;
    float D4;
    { // Begin Atomic Op
      D4 = atomicAdd_arr5_f32(D3, D2);
    } // End Atomic Op
    float D5 = AU * AV;
    float D6 = CQ + Cc;
    float D7 = CS + Ce;
    float D8 = BL + D6;
    float D9 = BO + D7;
    float Da = D5 * D8;
    float Db = D5 * D9;
    int Dc = CP;
    Dc *= _s1_arr4;
    Dc += Cb;
    Dc *= _s2_arr4;
    Dc += Y;
    float Dd;
    { // Begin Atomic Op
      Dd = atomicAdd_arr4_f32(Dc, Da);
    } // End Atomic Op
    int De = CP;
    De *= _s1_arr4;
    De += Cb;
    De *= _s2_arr4;
    De += Au;
    float Df;
    { // Begin Atomic Op
      Df = atomicAdd_arr4_f32(De, Db);
    } // End Atomic Op
    float Dg = D5 * Ba;
    int Dh = CP;
    Dh *= _s1_arr5;
    Dh += Cb;
    float Di;
    { // Begin Atomic Op
      Di = atomicAdd_arr5_f32(Dh, Dg);
    } // End Atomic Op
    float Dj = AU * B1;
    float Dk = CQ + Cx;
    float Dl = CS + Cz;
    float Dm = BL + Dk;
    float Dn = BO + Dl;
    float Do = Dj * Dm;
    float Dp = Dj * Dn;
    int Dq = CP;
    Dq *= _s1_arr4;
    Dq += Cw;
    Dq *= _s2_arr4;
    Dq += Y;
    float Dr;
    { // Begin Atomic Op
      Dr = atomicAdd_arr4_f32(Dq, Do);
    } // End Atomic Op
    int Ds = CP;
    Ds *= _s1_arr4;
    Ds += Cw;
    Ds *= _s2_arr4;
    Ds += Au;
    float Dt;
    { // Begin Atomic Op
      Dt = atomicAdd_arr4_f32(Ds, Dp);
    } // End Atomic Op
    float Du = Dj * Ba;
    int Dv = CP;
    Dv *= _s1_arr5;
    Dv += Cw;
    float Dw;
    { // Begin Atomic Op
      Dw = atomicAdd_arr5_f32(Dv, Du);
    } // End Atomic Op
    float Dx = Cr - AF;
    float Dy = Dx * B8;
    float Dz = B0 * AN;
    int DA = AB + Cv;
    float DB = BA * Dy;
    float DC = DB + BQ;
    float DD = Bw * Dy;
    float DE = DD + BT;
    float DF = BL + DC;
    float DG = BO + DE;
    float DH = Dz * DF;
    float DI = Dz * DG;
    int DJ = DA;
    DJ *= _s1_arr4;
    DJ += AC;
    DJ *= _s2_arr4;
    DJ += Y;
    float DK;
    { // Begin Atomic Op
      DK = atomicAdd_arr4_f32(DJ, DH);
    } // End Atomic Op
    int DL = DA;
    DL *= _s1_arr4;
    DL += AC;
    DL *= _s2_arr4;
    DL += Au;
    float DM;
    { // Begin Atomic Op
      DM = atomicAdd_arr4_f32(DL, DI);
    } // End Atomic Op
    float DN = Dz * Ba;
    int DO = DA;
    DO *= _s1_arr5;
    DO += AC;
    float DP;
    { // Begin Atomic Op
      DP = atomicAdd_arr5_f32(DO, DN);
    } // End Atomic Op
    float DQ = B0 * AV;
    float DR = DB + Cc;
    float DS = DD + Ce;
    float DT = BL + DR;
    float DU = BO + DS;
    float DV = DQ * DT;
    float DW = DQ * DU;
    int DX = DA;
    DX *= _s1_arr4;
    DX += Cb;
    DX *= _s2_arr4;
    DX += Y;
    float DY;
    { // Begin Atomic Op
      DY = atomicAdd_arr4_f32(DX, DV);
    } // End Atomic Op
    int DZ = DA;
    DZ *= _s1_arr4;
    DZ += Cb;
    DZ *= _s2_arr4;
    DZ += Au;
    float E0;
    { // Begin Atomic Op
      E0 = atomicAdd_arr4_f32(DZ, DW);
    } // End Atomic Op
    float E1 = DQ * Ba;
    int E2 = DA;
    E2 *= _s1_arr5;
    E2 += Cb;
    float E3;
    { // Begin Atomic Op
      E3 = atomicAdd_arr5_f32(E2, E1);
    } // End Atomic Op
    float E4 = B0 * B1;
    float E5 = DB + Cx;
    float E6 = DD + Cz;
    float E7 = BL + E5;
    float E8 = BO + E6;
    float E9 = E4 * E7;
    float Ea = E4 * E8;
    int Eb = DA;
    Eb *= _s1_arr4;
    Eb += Cw;
    Eb *= _s2_arr4;
    Eb += Y;
    float Ec;
    { // Begin Atomic Op
      Ec = atomicAdd_arr4_f32(Eb, E9);
    } // End Atomic Op
    int Ed = DA;
    Ed *= _s1_arr4;
    Ed += Cw;
    Ed *= _s2_arr4;
    Ed += Au;
    float Ee;
    { // Begin Atomic Op
      Ee = atomicAdd_arr4_f32(Ed, Ea);
    } // End Atomic Op
    float Ef = E4 * Ba;
    int Eg = DA;
    Eg *= _s1_arr5;
    Eg += Cw;
    float Eh;
    { // Begin Atomic Op
      Eh = atomicAdd_arr5_f32(Eg, Ef);
    } // End Atomic Op
  }
}

void main()
{
  substep_c44_01();
}
