#version 310 es
layout(local_size_x = 128, local_size_y = 1, local_size_z = 1) in;
precision highp float;
layout(std430, binding = 2) buffer args_i32 { int _args_i32_[];}; 
layout(std430, binding = 2) buffer args_f32 { float _args_f32_[];}; 
layout(std430, binding = 10) buffer arr1_i32 { int _arr1_i32_[];}; 
layout(std430, binding = 10) buffer arr1_f32 { float _arr1_f32_[];}; 
layout(std430, binding = 9) buffer arr2_i32 { int _arr2_i32_[];}; 
layout(std430, binding = 9) buffer arr2_f32 { float _arr2_f32_[];}; 
layout(std430, binding = 8) buffer arr3_i32 { int _arr3_i32_[];}; 
layout(std430, binding = 8) buffer arr3_f32 { float _arr3_f32_[];}; 
layout(std430, binding = 7) buffer arr6_i32 { int _arr6_i32_[];}; 
layout(std430, binding = 7) buffer arr6_f32 { float _arr6_f32_[];}; 
layout(std430, binding = 6) buffer arr0_i32 { int _arr0_i32_[];}; 
layout(std430, binding = 6) buffer arr0_f32 { float _arr0_f32_[];}; 
layout(std430, binding = 5) buffer arr5_i32 { int _arr5_i32_[];}; 
layout(std430, binding = 5) buffer arr5_f32 { float _arr5_f32_[];}; 
layout(std430, binding = 4) buffer arr4_i32 { int _arr4_i32_[];}; 
layout(std430, binding = 4) buffer arr4_f32 { float _arr4_f32_[];}; 
float atomicAdd_arr0_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr0_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) + rhs)); } while (old_val != atomicCompSwap(_arr0_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicSub_arr0_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr0_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) - rhs)); } while (old_val != atomicCompSwap(_arr0_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMax_arr0_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr0_i32_[addr]; new_val = floatBitsToInt(max(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_arr0_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMin_arr0_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr0_i32_[addr]; new_val = floatBitsToInt(min(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_arr0_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); }float atomicAdd_arr1_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr1_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) + rhs)); } while (old_val != atomicCompSwap(_arr1_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicSub_arr1_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr1_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) - rhs)); } while (old_val != atomicCompSwap(_arr1_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMax_arr1_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr1_i32_[addr]; new_val = floatBitsToInt(max(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_arr1_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMin_arr1_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr1_i32_[addr]; new_val = floatBitsToInt(min(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_arr1_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); }float atomicAdd_arr2_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr2_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) + rhs)); } while (old_val != atomicCompSwap(_arr2_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicSub_arr2_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr2_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) - rhs)); } while (old_val != atomicCompSwap(_arr2_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMax_arr2_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr2_i32_[addr]; new_val = floatBitsToInt(max(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_arr2_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMin_arr2_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr2_i32_[addr]; new_val = floatBitsToInt(min(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_arr2_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); }float atomicAdd_arr3_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr3_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) + rhs)); } while (old_val != atomicCompSwap(_arr3_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicSub_arr3_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr3_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) - rhs)); } while (old_val != atomicCompSwap(_arr3_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMax_arr3_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr3_i32_[addr]; new_val = floatBitsToInt(max(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_arr3_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMin_arr3_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr3_i32_[addr]; new_val = floatBitsToInt(min(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_arr3_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); }float atomicAdd_arr4_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr4_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) + rhs)); } while (old_val != atomicCompSwap(_arr4_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicSub_arr4_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr4_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) - rhs)); } while (old_val != atomicCompSwap(_arr4_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMax_arr4_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr4_i32_[addr]; new_val = floatBitsToInt(max(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_arr4_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMin_arr4_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr4_i32_[addr]; new_val = floatBitsToInt(min(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_arr4_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); }float atomicAdd_arr5_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr5_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) + rhs)); } while (old_val != atomicCompSwap(_arr5_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicSub_arr5_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr5_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) - rhs)); } while (old_val != atomicCompSwap(_arr5_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMax_arr5_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr5_i32_[addr]; new_val = floatBitsToInt(max(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_arr5_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMin_arr5_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr5_i32_[addr]; new_val = floatBitsToInt(min(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_arr5_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); }float atomicAdd_arr6_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr6_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) + rhs)); } while (old_val != atomicCompSwap(_arr6_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicSub_arr6_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr6_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) - rhs)); } while (old_val != atomicCompSwap(_arr6_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMax_arr6_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr6_i32_[addr]; new_val = floatBitsToInt(max(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_arr6_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMin_arr6_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr6_i32_[addr]; new_val = floatBitsToInt(min(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_arr6_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); }
const float inf = 1.0f / 0.0f;
const float nan = 0.0f / 0.0f;
void substep_c44_03()
{ // range for
  // range from args buffer
  int IK = _args_i32_[16 + 0 * 8 + 0];
  int _beg = 0, _end = IK;
  int _sid0 = int(gl_GlobalInvocationID.x);
  for (int _sid = _sid0; _sid < (_end - _beg); _sid += int(gl_WorkGroupSize.x * gl_NumWorkGroups.x)) {
    int _itv = _beg + _sid;
      int IK = _args_i32_[16 + 0 * 8 + 0];
      int IL = _itv;
      int IM = IL - IK * int(IL / IK);
      int IO = int(0);
      int _li_IP = 0;
      int _s0_arr0 = _args_i32_[16 + 0 * 8 + 0];
      int _s1_arr0 = _args_i32_[16 + 0 * 8 + 1];
      { // linear seek
        _li_IP *= _s0_arr0;
        _li_IP += IM;
        _li_IP *= _s1_arr0;
        _li_IP += IO;
      }
      int IP = _li_IP << 2;
      float IQ = _arr0_f32_[IP >> 2];
      float IR = float(64.0);
      float IS = IQ * IR;
      int IT = int(1);
      int _li_IU = 0;
      { // linear seek
        _li_IU *= _s0_arr0;
        _li_IU += IM;
        _li_IU *= _s1_arr0;
        _li_IU += IT;
      }
      int IU = _li_IU << 2;
      float IV = _arr0_f32_[IU >> 2];
      float IW = IV * IR;
      float IX = float(0.5);
      float IY = IS - IX;
      float IZ = IW - IX;
      int J0 = int(IY);
      int J1 = int(IZ);
      float J2 = float(J0);
      float J3 = float(J1);
      float J4 = IS - J2;
      float J5 = IW - J3;
      float J6 = float(1.5);
      float J7 = J6 - J4;
      float J8 = J6 - J5;
      float J9 = J7 * J7;
      float Ja = J8 * J8;
      float Jb = J9 * IX;
      float Jc = Ja * IX;
      float Jd = float(1.0);
      float Je = J4 - Jd;
      float Jf = J5 - Jd;
      float Jg = Je * Je;
      float Jh = Jf * Jf;
      float Ji = float(0.75);
      float Jj = Ji - Jg;
      float Jk = Ji - Jh;
      float Jl = J4 - IX;
      float Jm = J5 - IX;
      float Jn = Jl * Jl;
      float Jo = Jm * Jm;
      float Jp = Jn * IX;
      float Jq = Jo * IX;
      float Jx = float(0.0);
      float Jy = Jx - J4;
      float Jz = Jx - J5;
      int _li_JB = 0;
      int _s0_arr4 = _args_i32_[16 + 4 * 8 + 0];
      int _s1_arr4 = _args_i32_[16 + 4 * 8 + 1];
      int _s2_arr4 = _args_i32_[16 + 4 * 8 + 2];
      { // linear seek
        _li_JB *= _s0_arr4;
        _li_JB += J0;
        _li_JB *= _s1_arr4;
        _li_JB += J1;
        _li_JB *= _s2_arr4;
        _li_JB += IO;
      }
      int JB = _li_JB << 2;
      int JC = _arr4_i32_[JB >> 2];
      float JD = float(JC);
      float JE = float(0.0001);
      float JF = JD * JE;
      int _li_JG = 0;
      { // linear seek
        _li_JG *= _s0_arr4;
        _li_JG += J0;
        _li_JG *= _s1_arr4;
        _li_JG += J1;
        _li_JG *= _s2_arr4;
        _li_JG += IT;
      }
      int JG = _li_JG << 2;
      int JH = _arr4_i32_[JG >> 2];
      float JI = float(JH);
      float JJ = JI * JE;
      float JK = Jb * Jc;
      float JL = JK * JF;
      float JM = JK * JJ;
      float JT = JF * Jy;
      float JU = JF * Jz;
      float JV = JJ * Jy;
      float JW = JJ * Jz;
      float JX = float(256.0);
      float JY = JK * JX;
      float JZ = JY * JT;
      float K0 = JY * JU;
      float K1 = JY * JV;
      float K2 = JY * JW;
      float Kf = Jd - J5;
      int Kg = J1 + IT;
      int _li_Kh = 0;
      { // linear seek
        _li_Kh *= _s0_arr4;
        _li_Kh += J0;
        _li_Kh *= _s1_arr4;
        _li_Kh += Kg;
        _li_Kh *= _s2_arr4;
        _li_Kh += IO;
      }
      int Kh = _li_Kh << 2;
      int Ki = _arr4_i32_[Kh >> 2];
      float Kj = float(Ki);
      float Kk = Kj * JE;
      int _li_Kl = 0;
      { // linear seek
        _li_Kl *= _s0_arr4;
        _li_Kl += J0;
        _li_Kl *= _s1_arr4;
        _li_Kl += Kg;
        _li_Kl *= _s2_arr4;
        _li_Kl += IT;
      }
      int Kl = _li_Kl << 2;
      int Km = _arr4_i32_[Kl >> 2];
      float Kn = float(Km);
      float Ko = Kn * JE;
      float Kp = Jb * Jk;
      float Kq = Kp * Kk;
      float Kr = Kp * Ko;
      float Kt = JL + Kq;
      float Kw = JM + Kr;
      float Ky = Kk * Jy;
      float Kz = Kk * Kf;
      float KA = Ko * Jy;
      float KB = Ko * Kf;
      float KC = Kp * JX;
      float KD = KC * Ky;
      float KE = KC * Kz;
      float KF = KC * KA;
      float KG = KC * KB;
      float KI = JZ + KD;
      float KL = K0 + KE;
      float KO = K1 + KF;
      float KR = K2 + KG;
      float KT = float(2.0);
      float KU = KT - J5;
      int KV = int(2);
      int KW = J1 + KV;
      int _li_KX = 0;
      { // linear seek
        _li_KX *= _s0_arr4;
        _li_KX += J0;
        _li_KX *= _s1_arr4;
        _li_KX += KW;
        _li_KX *= _s2_arr4;
        _li_KX += IO;
      }
      int KX = _li_KX << 2;
      int KY = _arr4_i32_[KX >> 2];
      float KZ = float(KY);
      float L0 = KZ * JE;
      int _li_L1 = 0;
      { // linear seek
        _li_L1 *= _s0_arr4;
        _li_L1 += J0;
        _li_L1 *= _s1_arr4;
        _li_L1 += KW;
        _li_L1 *= _s2_arr4;
        _li_L1 += IT;
      }
      int L1 = _li_L1 << 2;
      int L2 = _arr4_i32_[L1 >> 2];
      float L3 = float(L2);
      float L4 = L3 * JE;
      float L5 = Jb * Jq;
      float L6 = L5 * L0;
      float L7 = L5 * L4;
      float L9 = Kt + L6;
      float Lc = Kw + L7;
      float Le = L0 * Jy;
      float Lf = L0 * KU;
      float Lg = L4 * Jy;
      float Lh = L4 * KU;
      float Li = L5 * JX;
      float Lj = Li * Le;
      float Lk = Li * Lf;
      float Ll = Li * Lg;
      float Lm = Li * Lh;
      float Lo = KI + Lj;
      float Lr = KL + Lk;
      float Lu = KO + Ll;
      float Lx = KR + Lm;
      float Lz = Jd - J4;
      int LA = J0 + IT;
      int _li_LB = 0;
      { // linear seek
        _li_LB *= _s0_arr4;
        _li_LB += LA;
        _li_LB *= _s1_arr4;
        _li_LB += J1;
        _li_LB *= _s2_arr4;
        _li_LB += IO;
      }
      int LB = _li_LB << 2;
      int LC = _arr4_i32_[LB >> 2];
      float LD = float(LC);
      float LE = LD * JE;
      int _li_LF = 0;
      { // linear seek
        _li_LF *= _s0_arr4;
        _li_LF += LA;
        _li_LF *= _s1_arr4;
        _li_LF += J1;
        _li_LF *= _s2_arr4;
        _li_LF += IT;
      }
      int LF = _li_LF << 2;
      int LG = _arr4_i32_[LF >> 2];
      float LH = float(LG);
      float LI = LH * JE;
      float LJ = Jj * Jc;
      float LK = LJ * LE;
      float LL = LJ * LI;
      float LN = L9 + LK;
      float LQ = Lc + LL;
      float LS = LE * Lz;
      float LT = LE * Jz;
      float LU = LI * Lz;
      float LV = LI * Jz;
      float LW = LJ * JX;
      float LX = LW * LS;
      float LY = LW * LT;
      float LZ = LW * LU;
      float M0 = LW * LV;
      float M2 = Lo + LX;
      float M5 = Lr + LY;
      float M8 = Lu + LZ;
      float Mb = Lx + M0;
      int _li_Md = 0;
      { // linear seek
        _li_Md *= _s0_arr4;
        _li_Md += LA;
        _li_Md *= _s1_arr4;
        _li_Md += Kg;
        _li_Md *= _s2_arr4;
        _li_Md += IO;
      }
      int Md = _li_Md << 2;
      int Me = _arr4_i32_[Md >> 2];
      float Mf = float(Me);
      float Mg = Mf * JE;
      int _li_Mh = 0;
      { // linear seek
        _li_Mh *= _s0_arr4;
        _li_Mh += LA;
        _li_Mh *= _s1_arr4;
        _li_Mh += Kg;
        _li_Mh *= _s2_arr4;
        _li_Mh += IT;
      }
      int Mh = _li_Mh << 2;
      int Mi = _arr4_i32_[Mh >> 2];
      float Mj = float(Mi);
      float Mk = Mj * JE;
      float Ml = Jj * Jk;
      float Mm = Ml * Mg;
      float Mn = Ml * Mk;
      float Mp = LN + Mm;
      float Ms = LQ + Mn;
      float Mu = Mg * Lz;
      float Mv = Mg * Kf;
      float Mw = Mk * Lz;
      float Mx = Mk * Kf;
      float My = Ml * JX;
      float Mz = My * Mu;
      float MA = My * Mv;
      float MB = My * Mw;
      float MC = My * Mx;
      float ME = M2 + Mz;
      float MH = M5 + MA;
      float MK = M8 + MB;
      float MN = Mb + MC;
      int _li_MP = 0;
      { // linear seek
        _li_MP *= _s0_arr4;
        _li_MP += LA;
        _li_MP *= _s1_arr4;
        _li_MP += KW;
        _li_MP *= _s2_arr4;
        _li_MP += IO;
      }
      int MP = _li_MP << 2;
      int MQ = _arr4_i32_[MP >> 2];
      float MR = float(MQ);
      float MS = MR * JE;
      int _li_MT = 0;
      { // linear seek
        _li_MT *= _s0_arr4;
        _li_MT += LA;
        _li_MT *= _s1_arr4;
        _li_MT += KW;
        _li_MT *= _s2_arr4;
        _li_MT += IT;
      }
      int MT = _li_MT << 2;
      int MU = _arr4_i32_[MT >> 2];
      float MV = float(MU);
      float MW = MV * JE;
      float MX = Jj * Jq;
      float MY = MX * MS;
      float MZ = MX * MW;
      float N1 = Mp + MY;
      float N4 = Ms + MZ;
      float N6 = MS * Lz;
      float N7 = MS * KU;
      float N8 = MW * Lz;
      float N9 = MW * KU;
      float Na = MX * JX;
      float Nb = Na * N6;
      float Nc = Na * N7;
      float Nd = Na * N8;
      float Ne = Na * N9;
      float Ng = ME + Nb;
      float Nj = MH + Nc;
      float Nm = MK + Nd;
      float Np = MN + Ne;
      float Nr = KT - J4;
      int Ns = J0 + KV;
      int _li_Nt = 0;
      { // linear seek
        _li_Nt *= _s0_arr4;
        _li_Nt += Ns;
        _li_Nt *= _s1_arr4;
        _li_Nt += J1;
        _li_Nt *= _s2_arr4;
        _li_Nt += IO;
      }
      int Nt = _li_Nt << 2;
      int Nu = _arr4_i32_[Nt >> 2];
      float Nv = float(Nu);
      float Nw = Nv * JE;
      int _li_Nx = 0;
      { // linear seek
        _li_Nx *= _s0_arr4;
        _li_Nx += Ns;
        _li_Nx *= _s1_arr4;
        _li_Nx += J1;
        _li_Nx *= _s2_arr4;
        _li_Nx += IT;
      }
      int Nx = _li_Nx << 2;
      int Ny = _arr4_i32_[Nx >> 2];
      float Nz = float(Ny);
      float NA = Nz * JE;
      float NB = Jp * Jc;
      float NC = NB * Nw;
      float ND = NB * NA;
      float NF = N1 + NC;
      float NI = N4 + ND;
      float NK = Nw * Nr;
      float NL = Nw * Jz;
      float NM = NA * Nr;
      float NN = NA * Jz;
      float NO = NB * JX;
      float NP = NO * NK;
      float NQ = NO * NL;
      float NR = NO * NM;
      float NS = NO * NN;
      float NU = Ng + NP;
      float NX = Nj + NQ;
      float O0 = Nm + NR;
      float O3 = Np + NS;
      int _li_O5 = 0;
      { // linear seek
        _li_O5 *= _s0_arr4;
        _li_O5 += Ns;
        _li_O5 *= _s1_arr4;
        _li_O5 += Kg;
        _li_O5 *= _s2_arr4;
        _li_O5 += IO;
      }
      int O5 = _li_O5 << 2;
      int O6 = _arr4_i32_[O5 >> 2];
      float O7 = float(O6);
      float O8 = O7 * JE;
      int _li_O9 = 0;
      { // linear seek
        _li_O9 *= _s0_arr4;
        _li_O9 += Ns;
        _li_O9 *= _s1_arr4;
        _li_O9 += Kg;
        _li_O9 *= _s2_arr4;
        _li_O9 += IT;
      }
      int O9 = _li_O9 << 2;
      int Oa = _arr4_i32_[O9 >> 2];
      float Ob = float(Oa);
      float Oc = Ob * JE;
      float Od = Jp * Jk;
      float Oe = Od * O8;
      float Of = Od * Oc;
      float Oh = NF + Oe;
      float Ok = NI + Of;
      float Om = O8 * Nr;
      float On = O8 * Kf;
      float Oo = Oc * Nr;
      float Op = Oc * Kf;
      float Oq = Od * JX;
      float Or = Oq * Om;
      float Os = Oq * On;
      float Ot = Oq * Oo;
      float Ou = Oq * Op;
      float Ow = NU + Or;
      float Oz = NX + Os;
      float OC = O0 + Ot;
      float OF = O3 + Ou;
      int _li_OH = 0;
      { // linear seek
        _li_OH *= _s0_arr4;
        _li_OH += Ns;
        _li_OH *= _s1_arr4;
        _li_OH += KW;
        _li_OH *= _s2_arr4;
        _li_OH += IO;
      }
      int OH = _li_OH << 2;
      int OI = _arr4_i32_[OH >> 2];
      float OJ = float(OI);
      float OK = OJ * JE;
      int _li_OL = 0;
      { // linear seek
        _li_OL *= _s0_arr4;
        _li_OL += Ns;
        _li_OL *= _s1_arr4;
        _li_OL += KW;
        _li_OL *= _s2_arr4;
        _li_OL += IT;
      }
      int OL = _li_OL << 2;
      int OM = _arr4_i32_[OL >> 2];
      float ON = float(OM);
      float OO = ON * JE;
      float OP = Jp * Jq;
      float OQ = OP * OK;
      float OR = OP * OO;
      float OT = Oh + OQ;
      float OW = Ok + OR;
      float OY = OK * Nr;
      float OZ = OK * KU;
      float P0 = OO * Nr;
      float P1 = OO * KU;
      float P2 = OP * JX;
      float P3 = P2 * OY;
      float P4 = P2 * OZ;
      float P5 = P2 * P0;
      float P6 = P2 * P1;
      float P8 = Ow + P3;
      float Pb = Oz + P4;
      float Pe = OC + P5;
      float Ph = OF + P6;
      int _li_Pq = 0;
      int _s0_arr1 = _args_i32_[16 + 1 * 8 + 0];
      int _s1_arr1 = _args_i32_[16 + 1 * 8 + 1];
      { // linear seek
        _li_Pq *= _s0_arr1;
        _li_Pq += IM;
        _li_Pq *= _s1_arr1;
        _li_Pq += IO;
      }
      int Pq = _li_Pq << 2;
      _arr1_f32_[Pq >> 2] = OT;
      int _li_Ps = 0;
      { // linear seek
        _li_Ps *= _s0_arr1;
        _li_Ps += IM;
        _li_Ps *= _s1_arr1;
        _li_Ps += IT;
      }
      int Ps = _li_Ps << 2;
      _arr1_f32_[Ps >> 2] = OW;
      int _li_Pv = 0;
      int _s0_arr6 = _args_i32_[16 + 6 * 8 + 0];
      int _s1_arr6 = _args_i32_[16 + 6 * 8 + 1];
      int _s2_arr6 = _args_i32_[16 + 6 * 8 + 2];
      { // linear seek
        _li_Pv *= _s0_arr6;
        _li_Pv += IM;
        _li_Pv *= _s1_arr6;
        _li_Pv += IO;
        _li_Pv *= _s2_arr6;
        _li_Pv += IO;
      }
      int Pv = _li_Pv << 2;
      _arr6_f32_[Pv >> 2] = P8;
      int _li_Px = 0;
      { // linear seek
        _li_Px *= _s0_arr6;
        _li_Px += IM;
        _li_Px *= _s1_arr6;
        _li_Px += IO;
        _li_Px *= _s2_arr6;
        _li_Px += IT;
      }
      int Px = _li_Px << 2;
      _arr6_f32_[Px >> 2] = Pb;
      int _li_Pz = 0;
      { // linear seek
        _li_Pz *= _s0_arr6;
        _li_Pz += IM;
        _li_Pz *= _s1_arr6;
        _li_Pz += IT;
        _li_Pz *= _s2_arr6;
        _li_Pz += IO;
      }
      int Pz = _li_Pz << 2;
      _arr6_f32_[Pz >> 2] = Pe;
      int _li_PB = 0;
      { // linear seek
        _li_PB *= _s0_arr6;
        _li_PB += IM;
        _li_PB *= _s1_arr6;
        _li_PB += IT;
        _li_PB *= _s2_arr6;
        _li_PB += IT;
      }
      int PB = _li_PB << 2;
      _arr6_f32_[PB >> 2] = Ph;
      float PD = OT * JE;
      float PE = OW * JE;
      float PF;
      { // Begin Atomic Op
      PF = atomicAdd_arr0_f32(IP >> 2, PD);
      } // End Atomic Op
      float PG;
      { // Begin Atomic Op
      PG = atomicAdd_arr0_f32(IU >> 2, PE);
      } // End Atomic Op
  }
}

void main()
{
  substep_c44_03();
}
