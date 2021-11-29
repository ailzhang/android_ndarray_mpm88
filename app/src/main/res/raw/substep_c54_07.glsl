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
float atomicAdd_gtmp_f32(int addr, float rhs) { int old, new, ret; do { old = _gtmp_i32_[addr]; new = floatBitsToInt((intBitsToFloat(old) + rhs)); } while (old != atomicCompSwap(_gtmp_i32_[addr], old, new)); return intBitsToFloat(old); } float atomicSub_gtmp_f32(int addr, float rhs) { int old, new, ret; do { old = _gtmp_i32_[addr]; new = floatBitsToInt((intBitsToFloat(old) - rhs)); } while (old != atomicCompSwap(_gtmp_i32_[addr], old, new)); return intBitsToFloat(old); } float atomicMax_gtmp_f32(int addr, float rhs) { int old, new, ret; do { old = _gtmp_i32_[addr]; new = floatBitsToInt(max(intBitsToFloat(old), rhs)); } while (old != atomicCompSwap(_gtmp_i32_[addr], old, new)); return intBitsToFloat(old); } float atomicMin_gtmp_f32(int addr, float rhs) { int old, new, ret; do { old = _gtmp_i32_[addr]; new = floatBitsToInt(min(intBitsToFloat(old), rhs)); } while (old != atomicCompSwap(_gtmp_i32_[addr], old, new)); return intBitsToFloat(old); }float atomicAdd_arr0_f32(int addr, float rhs) { int old, new, ret; do { old = _arr0_i32_[addr]; new = floatBitsToInt((intBitsToFloat(old) + rhs)); } while (old != atomicCompSwap(_arr0_i32_[addr], old, new)); return intBitsToFloat(old); } float atomicSub_arr0_f32(int addr, float rhs) { int old, new, ret; do { old = _arr0_i32_[addr]; new = floatBitsToInt((intBitsToFloat(old) - rhs)); } while (old != atomicCompSwap(_arr0_i32_[addr], old, new)); return intBitsToFloat(old); } float atomicMax_arr0_f32(int addr, float rhs) { int old, new, ret; do { old = _arr0_i32_[addr]; new = floatBitsToInt(max(intBitsToFloat(old), rhs)); } while (old != atomicCompSwap(_arr0_i32_[addr], old, new)); return intBitsToFloat(old); } float atomicMin_arr0_f32(int addr, float rhs) { int old, new, ret; do { old = _arr0_i32_[addr]; new = floatBitsToInt(min(intBitsToFloat(old), rhs)); } while (old != atomicCompSwap(_arr0_i32_[addr], old, new)); return intBitsToFloat(old); }float atomicAdd_arr1_f32(int addr, float rhs) { int old, new, ret; do { old = _arr1_i32_[addr]; new = floatBitsToInt((intBitsToFloat(old) + rhs)); } while (old != atomicCompSwap(_arr1_i32_[addr], old, new)); return intBitsToFloat(old); } float atomicSub_arr1_f32(int addr, float rhs) { int old, new, ret; do { old = _arr1_i32_[addr]; new = floatBitsToInt((intBitsToFloat(old) - rhs)); } while (old != atomicCompSwap(_arr1_i32_[addr], old, new)); return intBitsToFloat(old); } float atomicMax_arr1_f32(int addr, float rhs) { int old, new, ret; do { old = _arr1_i32_[addr]; new = floatBitsToInt(max(intBitsToFloat(old), rhs)); } while (old != atomicCompSwap(_arr1_i32_[addr], old, new)); return intBitsToFloat(old); } float atomicMin_arr1_f32(int addr, float rhs) { int old, new, ret; do { old = _arr1_i32_[addr]; new = floatBitsToInt(min(intBitsToFloat(old), rhs)); } while (old != atomicCompSwap(_arr1_i32_[addr], old, new)); return intBitsToFloat(old); }float atomicAdd_arr2_f32(int addr, float rhs) { int old, new, ret; do { old = _arr2_i32_[addr]; new = floatBitsToInt((intBitsToFloat(old) + rhs)); } while (old != atomicCompSwap(_arr2_i32_[addr], old, new)); return intBitsToFloat(old); } float atomicSub_arr2_f32(int addr, float rhs) { int old, new, ret; do { old = _arr2_i32_[addr]; new = floatBitsToInt((intBitsToFloat(old) - rhs)); } while (old != atomicCompSwap(_arr2_i32_[addr], old, new)); return intBitsToFloat(old); } float atomicMax_arr2_f32(int addr, float rhs) { int old, new, ret; do { old = _arr2_i32_[addr]; new = floatBitsToInt(max(intBitsToFloat(old), rhs)); } while (old != atomicCompSwap(_arr2_i32_[addr], old, new)); return intBitsToFloat(old); } float atomicMin_arr2_f32(int addr, float rhs) { int old, new, ret; do { old = _arr2_i32_[addr]; new = floatBitsToInt(min(intBitsToFloat(old), rhs)); } while (old != atomicCompSwap(_arr2_i32_[addr], old, new)); return intBitsToFloat(old); }float atomicAdd_arr3_f32(int addr, float rhs) { int old, new, ret; do { old = _arr3_i32_[addr]; new = floatBitsToInt((intBitsToFloat(old) + rhs)); } while (old != atomicCompSwap(_arr3_i32_[addr], old, new)); return intBitsToFloat(old); } float atomicSub_arr3_f32(int addr, float rhs) { int old, new, ret; do { old = _arr3_i32_[addr]; new = floatBitsToInt((intBitsToFloat(old) - rhs)); } while (old != atomicCompSwap(_arr3_i32_[addr], old, new)); return intBitsToFloat(old); } float atomicMax_arr3_f32(int addr, float rhs) { int old, new, ret; do { old = _arr3_i32_[addr]; new = floatBitsToInt(max(intBitsToFloat(old), rhs)); } while (old != atomicCompSwap(_arr3_i32_[addr], old, new)); return intBitsToFloat(old); } float atomicMin_arr3_f32(int addr, float rhs) { int old, new, ret; do { old = _arr3_i32_[addr]; new = floatBitsToInt(min(intBitsToFloat(old), rhs)); } while (old != atomicCompSwap(_arr3_i32_[addr], old, new)); return intBitsToFloat(old); }float atomicAdd_arr4_f32(int addr, float rhs) { int old, new, ret; do { old = _arr4_i32_[addr]; new = floatBitsToInt((intBitsToFloat(old) + rhs)); } while (old != atomicCompSwap(_arr4_i32_[addr], old, new)); return intBitsToFloat(old); } float atomicSub_arr4_f32(int addr, float rhs) { int old, new, ret; do { old = _arr4_i32_[addr]; new = floatBitsToInt((intBitsToFloat(old) - rhs)); } while (old != atomicCompSwap(_arr4_i32_[addr], old, new)); return intBitsToFloat(old); } float atomicMax_arr4_f32(int addr, float rhs) { int old, new, ret; do { old = _arr4_i32_[addr]; new = floatBitsToInt(max(intBitsToFloat(old), rhs)); } while (old != atomicCompSwap(_arr4_i32_[addr], old, new)); return intBitsToFloat(old); } float atomicMin_arr4_f32(int addr, float rhs) { int old, new, ret; do { old = _arr4_i32_[addr]; new = floatBitsToInt(min(intBitsToFloat(old), rhs)); } while (old != atomicCompSwap(_arr4_i32_[addr], old, new)); return intBitsToFloat(old); }float atomicAdd_arr5_f32(int addr, float rhs) { int old, new, ret; do { old = _arr5_i32_[addr]; new = floatBitsToInt((intBitsToFloat(old) + rhs)); } while (old != atomicCompSwap(_arr5_i32_[addr], old, new)); return intBitsToFloat(old); } float atomicSub_arr5_f32(int addr, float rhs) { int old, new, ret; do { old = _arr5_i32_[addr]; new = floatBitsToInt((intBitsToFloat(old) - rhs)); } while (old != atomicCompSwap(_arr5_i32_[addr], old, new)); return intBitsToFloat(old); } float atomicMax_arr5_f32(int addr, float rhs) { int old, new, ret; do { old = _arr5_i32_[addr]; new = floatBitsToInt(max(intBitsToFloat(old), rhs)); } while (old != atomicCompSwap(_arr5_i32_[addr], old, new)); return intBitsToFloat(old); } float atomicMin_arr5_f32(int addr, float rhs) { int old, new, ret; do { old = _arr5_i32_[addr]; new = floatBitsToInt(min(intBitsToFloat(old), rhs)); } while (old != atomicCompSwap(_arr5_i32_[addr], old, new)); return intBitsToFloat(old); }
const float inf = 1.0f / 0.0f;
const float nan = 0.0f / 0.0f;
void substep_c54_07()
{ // range for
  // range known at runtime
  int _beg = 0, _end = _gtmp_i32_[28 >> 2];
  int _sid0 = int(gl_GlobalInvocationID.x);
  for (int _sid = _sid0; _sid < (_end - _beg); _sid += int(gl_WorkGroupSize.x * gl_NumWorkGroups.x)) {
    int _itv = _beg + _sid;
      int G9 = _itv;
      int Ga = 28;
      int Gb = _gtmp_i32_[Ga >> 2];
      int Gc = G9 - Gb * int(G9 / Gb);
      int Ge = int(0);
      int _li_Gf = 0;
      { // linear seek
        int _s0_Gf = _args_i32_[16 + 0 * 8 + 0];
        int _s1_Gf = _args_i32_[16 + 0 * 8 + 1];
        _li_Gf *= _s0_Gf;
        _li_Gf += Gc;
        _li_Gf *= _s1_Gf;
        _li_Gf += Ge;
      }
      int Gf = _li_Gf << 2;
      float Gg = _arr0_f32_[Gf >> 2];
      float Gh = float(128.0);
      float Gi = Gg * Gh;
      int Gj = int(1);
      int _li_Gk = 0;
      { // linear seek
        int _s0_Gk = _args_i32_[16 + 0 * 8 + 0];
        int _s1_Gk = _args_i32_[16 + 0 * 8 + 1];
        _li_Gk *= _s0_Gk;
        _li_Gk += Gc;
        _li_Gk *= _s1_Gk;
        _li_Gk += Gj;
      }
      int Gk = _li_Gk << 2;
      float Gl = _arr0_f32_[Gk >> 2];
      float Gm = Gl * Gh;
      float Gn = float(0.5);
      float Go = Gi - Gn;
      float Gp = Gm - Gn;
      int Gq = int(Go);
      int Gr = int(Gp);
      float Gs = float(Gq);
      float Gt = float(Gr);
      float Gu = Gi - Gs;
      float Gv = Gm - Gt;
      float Gw = float(1.5);
      float Gx = Gw - Gu;
      float Gy = Gw - Gv;
      float Gz = Gx * Gx;
      float GA = Gy * Gy;
      float GB = Gz * Gn;
      float GC = GA * Gn;
      float GD = float(1.0);
      float GE = Gu - GD;
      float GF = Gv - GD;
      float GG = GE * GE;
      float GH = GF * GF;
      float GI = float(0.75);
      float GJ = GI - GG;
      float GK = GI - GH;
      float GL = Gu - Gn;
      float GM = Gv - Gn;
      float GN = GL * GL;
      float GO = GM * GM;
      float GP = GN * Gn;
      float GQ = GO * Gn;
      float GX = float(0.0);
      float GY = GX - Gu;
      float GZ = GX - Gv;
      float H0 = GB * GC;
      int _li_H2 = 0;
      { // linear seek
        int _s0_H2 = _args_i32_[16 + 4 * 8 + 0];
        int _s1_H2 = _args_i32_[16 + 4 * 8 + 1];
        int _s2_H2 = _args_i32_[16 + 4 * 8 + 2];
        _li_H2 *= _s0_H2;
        _li_H2 += Gq;
        _li_H2 *= _s1_H2;
        _li_H2 += Gr;
        _li_H2 *= _s2_H2;
        _li_H2 += Ge;
      }
      int H2 = _li_H2 << 2;
      float H3 = _arr4_f32_[H2 >> 2];
      float H4 = H0 * H3;
      int _li_H5 = 0;
      { // linear seek
        int _s0_H5 = _args_i32_[16 + 4 * 8 + 0];
        int _s1_H5 = _args_i32_[16 + 4 * 8 + 1];
        int _s2_H5 = _args_i32_[16 + 4 * 8 + 2];
        _li_H5 *= _s0_H5;
        _li_H5 += Gq;
        _li_H5 *= _s1_H5;
        _li_H5 += Gr;
        _li_H5 *= _s2_H5;
        _li_H5 += Gj;
      }
      int H5 = _li_H5 << 2;
      float H6 = _arr4_f32_[H5 >> 2];
      float H7 = H0 * H6;
      float He = H3 * GY;
      float Hf = H3 * GZ;
      float Hg = H6 * GY;
      float Hh = H6 * GZ;
      float Hi = float(4.0);
      float Hj = H0 * Hi;
      float Hk = Hj * He;
      float Hl = Hj * Hf;
      float Hm = Hj * Hg;
      float Hn = Hj * Hh;
      float Ho = Hk * Gh;
      float Hp = Hl * Gh;
      float Hq = Hm * Gh;
      float Hr = Hn * Gh;
      float HE = GD - Gv;
      int HF = Gr + Gj;
      float HG = GB * GK;
      int _li_HH = 0;
      { // linear seek
        int _s0_HH = _args_i32_[16 + 4 * 8 + 0];
        int _s1_HH = _args_i32_[16 + 4 * 8 + 1];
        int _s2_HH = _args_i32_[16 + 4 * 8 + 2];
        _li_HH *= _s0_HH;
        _li_HH += Gq;
        _li_HH *= _s1_HH;
        _li_HH += HF;
        _li_HH *= _s2_HH;
        _li_HH += Ge;
      }
      int HH = _li_HH << 2;
      float HI = _arr4_f32_[HH >> 2];
      float HJ = HG * HI;
      int _li_HK = 0;
      { // linear seek
        int _s0_HK = _args_i32_[16 + 4 * 8 + 0];
        int _s1_HK = _args_i32_[16 + 4 * 8 + 1];
        int _s2_HK = _args_i32_[16 + 4 * 8 + 2];
        _li_HK *= _s0_HK;
        _li_HK += Gq;
        _li_HK *= _s1_HK;
        _li_HK += HF;
        _li_HK *= _s2_HK;
        _li_HK += Gj;
      }
      int HK = _li_HK << 2;
      float HL = _arr4_f32_[HK >> 2];
      float HM = HG * HL;
      float HO = H4 + HJ;
      float HR = H7 + HM;
      float HT = HI * GY;
      float HU = HI * HE;
      float HV = HL * GY;
      float HW = HL * HE;
      float HX = HG * Hi;
      float HY = HX * HT;
      float HZ = HX * HU;
      float I0 = HX * HV;
      float I1 = HX * HW;
      float I2 = HY * Gh;
      float I3 = HZ * Gh;
      float I4 = I0 * Gh;
      float I5 = I1 * Gh;
      float I7 = Ho + I2;
      float Ia = Hp + I3;
      float Id = Hq + I4;
      float Ig = Hr + I5;
      float Ii = float(2.0);
      float Ij = Ii - Gv;
      int Ik = int(2);
      int Il = Gr + Ik;
      float Im = GB * GQ;
      int _li_In = 0;
      { // linear seek
        int _s0_In = _args_i32_[16 + 4 * 8 + 0];
        int _s1_In = _args_i32_[16 + 4 * 8 + 1];
        int _s2_In = _args_i32_[16 + 4 * 8 + 2];
        _li_In *= _s0_In;
        _li_In += Gq;
        _li_In *= _s1_In;
        _li_In += Il;
        _li_In *= _s2_In;
        _li_In += Ge;
      }
      int In = _li_In << 2;
      float Io = _arr4_f32_[In >> 2];
      float Ip = Im * Io;
      int _li_Iq = 0;
      { // linear seek
        int _s0_Iq = _args_i32_[16 + 4 * 8 + 0];
        int _s1_Iq = _args_i32_[16 + 4 * 8 + 1];
        int _s2_Iq = _args_i32_[16 + 4 * 8 + 2];
        _li_Iq *= _s0_Iq;
        _li_Iq += Gq;
        _li_Iq *= _s1_Iq;
        _li_Iq += Il;
        _li_Iq *= _s2_Iq;
        _li_Iq += Gj;
      }
      int Iq = _li_Iq << 2;
      float Ir = _arr4_f32_[Iq >> 2];
      float Is = Im * Ir;
      float Iu = HO + Ip;
      float Ix = HR + Is;
      float Iz = Io * GY;
      float IA = Io * Ij;
      float IB = Ir * GY;
      float IC = Ir * Ij;
      float ID = Im * Hi;
      float IE = ID * Iz;
      float IF = ID * IA;
      float IG = ID * IB;
      float IH = ID * IC;
      float II = IE * Gh;
      float IJ = IF * Gh;
      float IK = IG * Gh;
      float IL = IH * Gh;
      float IN = I7 + II;
      float IQ = Ia + IJ;
      float IT = Id + IK;
      float IW = Ig + IL;
      float IY = GD - Gu;
      int IZ = Gq + Gj;
      float J0 = GJ * GC;
      int _li_J1 = 0;
      { // linear seek
        int _s0_J1 = _args_i32_[16 + 4 * 8 + 0];
        int _s1_J1 = _args_i32_[16 + 4 * 8 + 1];
        int _s2_J1 = _args_i32_[16 + 4 * 8 + 2];
        _li_J1 *= _s0_J1;
        _li_J1 += IZ;
        _li_J1 *= _s1_J1;
        _li_J1 += Gr;
        _li_J1 *= _s2_J1;
        _li_J1 += Ge;
      }
      int J1 = _li_J1 << 2;
      float J2 = _arr4_f32_[J1 >> 2];
      float J3 = J0 * J2;
      int _li_J4 = 0;
      { // linear seek
        int _s0_J4 = _args_i32_[16 + 4 * 8 + 0];
        int _s1_J4 = _args_i32_[16 + 4 * 8 + 1];
        int _s2_J4 = _args_i32_[16 + 4 * 8 + 2];
        _li_J4 *= _s0_J4;
        _li_J4 += IZ;
        _li_J4 *= _s1_J4;
        _li_J4 += Gr;
        _li_J4 *= _s2_J4;
        _li_J4 += Gj;
      }
      int J4 = _li_J4 << 2;
      float J5 = _arr4_f32_[J4 >> 2];
      float J6 = J0 * J5;
      float J8 = Iu + J3;
      float Jb = Ix + J6;
      float Jd = J2 * IY;
      float Je = J2 * GZ;
      float Jf = J5 * IY;
      float Jg = J5 * GZ;
      float Jh = J0 * Hi;
      float Ji = Jh * Jd;
      float Jj = Jh * Je;
      float Jk = Jh * Jf;
      float Jl = Jh * Jg;
      float Jm = Ji * Gh;
      float Jn = Jj * Gh;
      float Jo = Jk * Gh;
      float Jp = Jl * Gh;
      float Jr = IN + Jm;
      float Ju = IQ + Jn;
      float Jx = IT + Jo;
      float JA = IW + Jp;
      float JC = GJ * GK;
      int _li_JD = 0;
      { // linear seek
        int _s0_JD = _args_i32_[16 + 4 * 8 + 0];
        int _s1_JD = _args_i32_[16 + 4 * 8 + 1];
        int _s2_JD = _args_i32_[16 + 4 * 8 + 2];
        _li_JD *= _s0_JD;
        _li_JD += IZ;
        _li_JD *= _s1_JD;
        _li_JD += HF;
        _li_JD *= _s2_JD;
        _li_JD += Ge;
      }
      int JD = _li_JD << 2;
      float JE = _arr4_f32_[JD >> 2];
      float JF = JC * JE;
      int _li_JG = 0;
      { // linear seek
        int _s0_JG = _args_i32_[16 + 4 * 8 + 0];
        int _s1_JG = _args_i32_[16 + 4 * 8 + 1];
        int _s2_JG = _args_i32_[16 + 4 * 8 + 2];
        _li_JG *= _s0_JG;
        _li_JG += IZ;
        _li_JG *= _s1_JG;
        _li_JG += HF;
        _li_JG *= _s2_JG;
        _li_JG += Gj;
      }
      int JG = _li_JG << 2;
      float JH = _arr4_f32_[JG >> 2];
      float JI = JC * JH;
      float JK = J8 + JF;
      float JN = Jb + JI;
      float JP = JE * IY;
      float JQ = JE * HE;
      float JR = JH * IY;
      float JS = JH * HE;
      float JT = JC * Hi;
      float JU = JT * JP;
      float JV = JT * JQ;
      float JW = JT * JR;
      float JX = JT * JS;
      float JY = JU * Gh;
      float JZ = JV * Gh;
      float K0 = JW * Gh;
      float K1 = JX * Gh;
      float K3 = Jr + JY;
      float K6 = Ju + JZ;
      float K9 = Jx + K0;
      float Kc = JA + K1;
      float Ke = GJ * GQ;
      int _li_Kf = 0;
      { // linear seek
        int _s0_Kf = _args_i32_[16 + 4 * 8 + 0];
        int _s1_Kf = _args_i32_[16 + 4 * 8 + 1];
        int _s2_Kf = _args_i32_[16 + 4 * 8 + 2];
        _li_Kf *= _s0_Kf;
        _li_Kf += IZ;
        _li_Kf *= _s1_Kf;
        _li_Kf += Il;
        _li_Kf *= _s2_Kf;
        _li_Kf += Ge;
      }
      int Kf = _li_Kf << 2;
      float Kg = _arr4_f32_[Kf >> 2];
      float Kh = Ke * Kg;
      int _li_Ki = 0;
      { // linear seek
        int _s0_Ki = _args_i32_[16 + 4 * 8 + 0];
        int _s1_Ki = _args_i32_[16 + 4 * 8 + 1];
        int _s2_Ki = _args_i32_[16 + 4 * 8 + 2];
        _li_Ki *= _s0_Ki;
        _li_Ki += IZ;
        _li_Ki *= _s1_Ki;
        _li_Ki += Il;
        _li_Ki *= _s2_Ki;
        _li_Ki += Gj;
      }
      int Ki = _li_Ki << 2;
      float Kj = _arr4_f32_[Ki >> 2];
      float Kk = Ke * Kj;
      float Km = JK + Kh;
      float Kp = JN + Kk;
      float Kr = Kg * IY;
      float Ks = Kg * Ij;
      float Kt = Kj * IY;
      float Ku = Kj * Ij;
      float Kv = Ke * Hi;
      float Kw = Kv * Kr;
      float Kx = Kv * Ks;
      float Ky = Kv * Kt;
      float Kz = Kv * Ku;
      float KA = Kw * Gh;
      float KB = Kx * Gh;
      float KC = Ky * Gh;
      float KD = Kz * Gh;
      float KF = K3 + KA;
      float KI = K6 + KB;
      float KL = K9 + KC;
      float KO = Kc + KD;
      float KQ = Ii - Gu;
      int KR = Gq + Ik;
      float KS = GP * GC;
      int _li_KT = 0;
      { // linear seek
        int _s0_KT = _args_i32_[16 + 4 * 8 + 0];
        int _s1_KT = _args_i32_[16 + 4 * 8 + 1];
        int _s2_KT = _args_i32_[16 + 4 * 8 + 2];
        _li_KT *= _s0_KT;
        _li_KT += KR;
        _li_KT *= _s1_KT;
        _li_KT += Gr;
        _li_KT *= _s2_KT;
        _li_KT += Ge;
      }
      int KT = _li_KT << 2;
      float KU = _arr4_f32_[KT >> 2];
      float KV = KS * KU;
      int _li_KW = 0;
      { // linear seek
        int _s0_KW = _args_i32_[16 + 4 * 8 + 0];
        int _s1_KW = _args_i32_[16 + 4 * 8 + 1];
        int _s2_KW = _args_i32_[16 + 4 * 8 + 2];
        _li_KW *= _s0_KW;
        _li_KW += KR;
        _li_KW *= _s1_KW;
        _li_KW += Gr;
        _li_KW *= _s2_KW;
        _li_KW += Gj;
      }
      int KW = _li_KW << 2;
      float KX = _arr4_f32_[KW >> 2];
      float KY = KS * KX;
      float L0 = Km + KV;
      float L3 = Kp + KY;
      float L5 = KU * KQ;
      float L6 = KU * GZ;
      float L7 = KX * KQ;
      float L8 = KX * GZ;
      float L9 = KS * Hi;
      float La = L9 * L5;
      float Lb = L9 * L6;
      float Lc = L9 * L7;
      float Ld = L9 * L8;
      float Le = La * Gh;
      float Lf = Lb * Gh;
      float Lg = Lc * Gh;
      float Lh = Ld * Gh;
      float Lj = KF + Le;
      float Lm = KI + Lf;
      float Lp = KL + Lg;
      float Ls = KO + Lh;
      float Lu = GP * GK;
      int _li_Lv = 0;
      { // linear seek
        int _s0_Lv = _args_i32_[16 + 4 * 8 + 0];
        int _s1_Lv = _args_i32_[16 + 4 * 8 + 1];
        int _s2_Lv = _args_i32_[16 + 4 * 8 + 2];
        _li_Lv *= _s0_Lv;
        _li_Lv += KR;
        _li_Lv *= _s1_Lv;
        _li_Lv += HF;
        _li_Lv *= _s2_Lv;
        _li_Lv += Ge;
      }
      int Lv = _li_Lv << 2;
      float Lw = _arr4_f32_[Lv >> 2];
      float Lx = Lu * Lw;
      int _li_Ly = 0;
      { // linear seek
        int _s0_Ly = _args_i32_[16 + 4 * 8 + 0];
        int _s1_Ly = _args_i32_[16 + 4 * 8 + 1];
        int _s2_Ly = _args_i32_[16 + 4 * 8 + 2];
        _li_Ly *= _s0_Ly;
        _li_Ly += KR;
        _li_Ly *= _s1_Ly;
        _li_Ly += HF;
        _li_Ly *= _s2_Ly;
        _li_Ly += Gj;
      }
      int Ly = _li_Ly << 2;
      float Lz = _arr4_f32_[Ly >> 2];
      float LA = Lu * Lz;
      float LC = L0 + Lx;
      float LF = L3 + LA;
      float LH = Lw * KQ;
      float LI = Lw * HE;
      float LJ = Lz * KQ;
      float LK = Lz * HE;
      float LL = Lu * Hi;
      float LM = LL * LH;
      float LN = LL * LI;
      float LO = LL * LJ;
      float LP = LL * LK;
      float LQ = LM * Gh;
      float LR = LN * Gh;
      float LS = LO * Gh;
      float LT = LP * Gh;
      float LV = Lj + LQ;
      float LY = Lm + LR;
      float M1 = Lp + LS;
      float M4 = Ls + LT;
      float M6 = GP * GQ;
      int _li_M7 = 0;
      { // linear seek
        int _s0_M7 = _args_i32_[16 + 4 * 8 + 0];
        int _s1_M7 = _args_i32_[16 + 4 * 8 + 1];
        int _s2_M7 = _args_i32_[16 + 4 * 8 + 2];
        _li_M7 *= _s0_M7;
        _li_M7 += KR;
        _li_M7 *= _s1_M7;
        _li_M7 += Il;
        _li_M7 *= _s2_M7;
        _li_M7 += Ge;
      }
      int M7 = _li_M7 << 2;
      float M8 = _arr4_f32_[M7 >> 2];
      float M9 = M6 * M8;
      int _li_Ma = 0;
      { // linear seek
        int _s0_Ma = _args_i32_[16 + 4 * 8 + 0];
        int _s1_Ma = _args_i32_[16 + 4 * 8 + 1];
        int _s2_Ma = _args_i32_[16 + 4 * 8 + 2];
        _li_Ma *= _s0_Ma;
        _li_Ma += KR;
        _li_Ma *= _s1_Ma;
        _li_Ma += Il;
        _li_Ma *= _s2_Ma;
        _li_Ma += Gj;
      }
      int Ma = _li_Ma << 2;
      float Mb = _arr4_f32_[Ma >> 2];
      float Mc = M6 * Mb;
      float Me = LC + M9;
      float Mh = LF + Mc;
      float Mj = M8 * KQ;
      float Mk = M8 * Ij;
      float Ml = Mb * KQ;
      float Mm = Mb * Ij;
      float Mn = M6 * Hi;
      float Mo = Mn * Mj;
      float Mp = Mn * Mk;
      float Mq = Mn * Ml;
      float Mr = Mn * Mm;
      float Ms = Mo * Gh;
      float Mt = Mp * Gh;
      float Mu = Mq * Gh;
      float Mv = Mr * Gh;
      float Mx = LV + Ms;
      float MA = LY + Mt;
      float MD = M1 + Mu;
      float MG = M4 + Mv;
      int _li_MK = 0;
      { // linear seek
        int _s0_MK = _args_i32_[16 + 1 * 8 + 0];
        int _s1_MK = _args_i32_[16 + 1 * 8 + 1];
        _li_MK *= _s0_MK;
        _li_MK += Gc;
        _li_MK *= _s1_MK;
        _li_MK += Ge;
      }
      int MK = _li_MK << 2;
      _arr1_f32_[MK >> 2] = Gx;
      int _li_MN = 0;
      { // linear seek
        int _s0_MN = _args_i32_[16 + 1 * 8 + 0];
        int _s1_MN = _args_i32_[16 + 1 * 8 + 1];
        _li_MN *= _s0_MN;
        _li_MN += Gc;
        _li_MN *= _s1_MN;
        _li_MN += Gj;
      }
      int MN = _li_MN << 2;
      _arr1_f32_[MN >> 2] = Mh;
      float MP = _arr1_f32_[MK >> 2];
      float MQ = float(0.0002);
      float MR = MP * MQ;
      float MS = Mh * MQ;
      float MT;
      { // Begin Atomic Op
      MT = atomicAdd_arr0_f32(Gf >> 2, MR);
      } // End Atomic Op
      float MU;
      { // Begin Atomic Op
      MU = atomicAdd_arr0_f32(Gk >> 2, MS);
      } // End Atomic Op
      int _li_MW = 0;
      { // linear seek
        int _s0_MW = _args_i32_[16 + 2 * 8 + 0];
        _li_MW *= _s0_MW;
        _li_MW += Gc;
      }
      int MW = _li_MW << 2;
      float MX = _arr2_f32_[MW >> 2];
      float N0 = Mx + MG;
      float N1 = N0 * MQ;
      float N2 = N1 + GD;
      float N3 = MX * N2;
      _arr2_f32_[MW >> 2] = N3;
      int _li_N6 = 0;
      { // linear seek
        int _s0_N6 = _args_i32_[16 + 3 * 8 + 0];
        int _s1_N6 = _args_i32_[16 + 3 * 8 + 1];
        int _s2_N6 = _args_i32_[16 + 3 * 8 + 2];
        _li_N6 *= _s0_N6;
        _li_N6 += Gc;
        _li_N6 *= _s1_N6;
        _li_N6 += Ge;
        _li_N6 *= _s2_N6;
        _li_N6 += Ge;
      }
      int N6 = _li_N6 << 2;
      _arr3_f32_[N6 >> 2] = Mx;
      int _li_N9 = 0;
      { // linear seek
        int _s0_N9 = _args_i32_[16 + 3 * 8 + 0];
        int _s1_N9 = _args_i32_[16 + 3 * 8 + 1];
        int _s2_N9 = _args_i32_[16 + 3 * 8 + 2];
        _li_N9 *= _s0_N9;
        _li_N9 += Gc;
        _li_N9 *= _s1_N9;
        _li_N9 += Ge;
        _li_N9 *= _s2_N9;
        _li_N9 += Gj;
      }
      int N9 = _li_N9 << 2;
      _arr3_f32_[N9 >> 2] = MA;
      int _li_Nc = 0;
      { // linear seek
        int _s0_Nc = _args_i32_[16 + 3 * 8 + 0];
        int _s1_Nc = _args_i32_[16 + 3 * 8 + 1];
        int _s2_Nc = _args_i32_[16 + 3 * 8 + 2];
        _li_Nc *= _s0_Nc;
        _li_Nc += Gc;
        _li_Nc *= _s1_Nc;
        _li_Nc += Gj;
        _li_Nc *= _s2_Nc;
        _li_Nc += Ge;
      }
      int Nc = _li_Nc << 2;
      _arr3_f32_[Nc >> 2] = MD;
      int _li_Ne = 0;
      { // linear seek
        int _s0_Ne = _args_i32_[16 + 3 * 8 + 0];
        int _s1_Ne = _args_i32_[16 + 3 * 8 + 1];
        int _s2_Ne = _args_i32_[16 + 3 * 8 + 2];
        _li_Ne *= _s0_Ne;
        _li_Ne += Gc;
        _li_Ne *= _s1_Ne;
        _li_Ne += Gj;
        _li_Ne *= _s2_Ne;
        _li_Ne += Gj;
      }
      int Ne = _li_Ne << 2;
      _arr3_f32_[Ne >> 2] = MG;
  }
}

void main()
{
  substep_c54_07();
}
