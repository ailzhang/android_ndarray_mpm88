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
float atomicAdd_gtmp_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _gtmp_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) + rhs)); } while (old_val != atomicCompSwap(_gtmp_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicSub_gtmp_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _gtmp_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) - rhs)); } while (old_val != atomicCompSwap(_gtmp_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMax_gtmp_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _gtmp_i32_[addr]; new_val = floatBitsToInt(max(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_gtmp_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMin_gtmp_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _gtmp_i32_[addr]; new_val = floatBitsToInt(min(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_gtmp_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); }float atomicAdd_arr0_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr0_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) + rhs)); } while (old_val != atomicCompSwap(_arr0_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicSub_arr0_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr0_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) - rhs)); } while (old_val != atomicCompSwap(_arr0_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMax_arr0_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr0_i32_[addr]; new_val = floatBitsToInt(max(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_arr0_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMin_arr0_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr0_i32_[addr]; new_val = floatBitsToInt(min(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_arr0_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); }float atomicAdd_arr1_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr1_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) + rhs)); } while (old_val != atomicCompSwap(_arr1_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicSub_arr1_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr1_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) - rhs)); } while (old_val != atomicCompSwap(_arr1_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMax_arr1_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr1_i32_[addr]; new_val = floatBitsToInt(max(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_arr1_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMin_arr1_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr1_i32_[addr]; new_val = floatBitsToInt(min(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_arr1_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); }float atomicAdd_arr2_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr2_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) + rhs)); } while (old_val != atomicCompSwap(_arr2_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicSub_arr2_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr2_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) - rhs)); } while (old_val != atomicCompSwap(_arr2_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMax_arr2_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr2_i32_[addr]; new_val = floatBitsToInt(max(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_arr2_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMin_arr2_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr2_i32_[addr]; new_val = floatBitsToInt(min(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_arr2_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); }float atomicAdd_arr3_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr3_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) + rhs)); } while (old_val != atomicCompSwap(_arr3_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicSub_arr3_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr3_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) - rhs)); } while (old_val != atomicCompSwap(_arr3_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMax_arr3_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr3_i32_[addr]; new_val = floatBitsToInt(max(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_arr3_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMin_arr3_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr3_i32_[addr]; new_val = floatBitsToInt(min(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_arr3_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); }float atomicAdd_arr4_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr4_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) + rhs)); } while (old_val != atomicCompSwap(_arr4_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicSub_arr4_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr4_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) - rhs)); } while (old_val != atomicCompSwap(_arr4_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMax_arr4_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr4_i32_[addr]; new_val = floatBitsToInt(max(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_arr4_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMin_arr4_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr4_i32_[addr]; new_val = floatBitsToInt(min(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_arr4_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); }float atomicAdd_arr5_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr5_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) + rhs)); } while (old_val != atomicCompSwap(_arr5_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicSub_arr5_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr5_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) - rhs)); } while (old_val != atomicCompSwap(_arr5_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMax_arr5_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr5_i32_[addr]; new_val = floatBitsToInt(max(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_arr5_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMin_arr5_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr5_i32_[addr]; new_val = floatBitsToInt(min(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_arr5_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); }
const float inf = 1.0f / 0.0f;
const float nan = 0.0f / 0.0f;
void substep_c44_07()
{ // range for
  // range known at runtime
  int _beg = 0, _end = _gtmp_i32_[28 >> 2];
  int _sid0 = int(gl_GlobalInvocationID.x);
  for (int _sid = _sid0; _sid < (_end - _beg); _sid += int(gl_WorkGroupSize.x * gl_NumWorkGroups.x)) {
    int _itv = _beg + _sid;
      int G8 = _itv;
      int G9 = 28;
      int Ga = _gtmp_i32_[G9 >> 2];
      int Gb = G8 - Ga * int(G8 / Ga);
      int Gd = int(0);
      int _li_Ge = 0;
      { // linear seek
        int _s0_Ge = _args_i32_[16 + 0 * 8 + 0];
        int _s1_Ge = _args_i32_[16 + 0 * 8 + 1];
        _li_Ge *= _s0_Ge;
        _li_Ge += Gb;
        _li_Ge *= _s1_Ge;
        _li_Ge += Gd;
      }
      int Ge = _li_Ge << 2;
      float Gf = _arr0_f32_[Ge >> 2];
      float Gg = float(128.0);
      float Gh = Gf * Gg;
      int Gi = int(1);
      int _li_Gj = 0;
      { // linear seek
        int _s0_Gj = _args_i32_[16 + 0 * 8 + 0];
        int _s1_Gj = _args_i32_[16 + 0 * 8 + 1];
        _li_Gj *= _s0_Gj;
        _li_Gj += Gb;
        _li_Gj *= _s1_Gj;
        _li_Gj += Gi;
      }
      int Gj = _li_Gj << 2;
      float Gk = _arr0_f32_[Gj >> 2];
      float Gl = Gk * Gg;
      float Gm = float(0.5);
      float Gn = Gh - Gm;
      float Go = Gl - Gm;
      int Gp = int(Gn);
      int Gq = int(Go);
      float Gr = float(Gp);
      float Gs = float(Gq);
      float Gt = Gh - Gr;
      float Gu = Gl - Gs;
      float Gv = float(1.5);
      float Gw = Gv - Gt;
      float Gx = Gv - Gu;
      float Gy = Gw * Gw;
      float Gz = Gx * Gx;
      float GA = Gy * Gm;
      float GB = Gz * Gm;
      float GC = float(1.0);
      float GD = Gt - GC;
      float GE = Gu - GC;
      float GF = GD * GD;
      float GG = GE * GE;
      float GH = float(0.75);
      float GI = GH - GF;
      float GJ = GH - GG;
      float GK = Gt - Gm;
      float GL = Gu - Gm;
      float GM = GK * GK;
      float GN = GL * GL;
      float GO = GM * Gm;
      float GP = GN * Gm;
      float GW = float(0.0);
      float GX = GW - Gt;
      float GY = GW - Gu;
      int _li_H0 = 0;
      { // linear seek
        int _s0_H0 = _args_i32_[16 + 4 * 8 + 0];
        int _s1_H0 = _args_i32_[16 + 4 * 8 + 1];
        int _s2_H0 = _args_i32_[16 + 4 * 8 + 2];
        _li_H0 *= _s0_H0;
        _li_H0 += Gp;
        _li_H0 *= _s1_H0;
        _li_H0 += Gq;
        _li_H0 *= _s2_H0;
        _li_H0 += Gd;
      }
      int H0 = _li_H0 << 2;
      float H1 = _arr4_f32_[H0 >> 2];
      int _li_H2 = 0;
      { // linear seek
        int _s0_H2 = _args_i32_[16 + 4 * 8 + 0];
        int _s1_H2 = _args_i32_[16 + 4 * 8 + 1];
        int _s2_H2 = _args_i32_[16 + 4 * 8 + 2];
        _li_H2 *= _s0_H2;
        _li_H2 += Gp;
        _li_H2 *= _s1_H2;
        _li_H2 += Gq;
        _li_H2 *= _s2_H2;
        _li_H2 += Gi;
      }
      int H2 = _li_H2 << 2;
      float H3 = _arr4_f32_[H2 >> 2];
      float H4 = GA * GB;
      float H5 = H4 * H1;
      float H6 = H4 * H3;
      float Hd = H1 * GX;
      float He = H1 * GY;
      float Hf = H3 * GX;
      float Hg = H3 * GY;
      float Hh = float(4.0);
      float Hi = H4 * Hh;
      float Hj = Hi * Hd;
      float Hk = Hi * He;
      float Hl = Hi * Hf;
      float Hm = Hi * Hg;
      float Hn = Hj * Gg;
      float Ho = Hk * Gg;
      float Hp = Hl * Gg;
      float Hq = Hm * Gg;
      float HD = GC - Gu;
      int HE = Gq + Gi;
      int _li_HF = 0;
      { // linear seek
        int _s0_HF = _args_i32_[16 + 4 * 8 + 0];
        int _s1_HF = _args_i32_[16 + 4 * 8 + 1];
        int _s2_HF = _args_i32_[16 + 4 * 8 + 2];
        _li_HF *= _s0_HF;
        _li_HF += Gp;
        _li_HF *= _s1_HF;
        _li_HF += HE;
        _li_HF *= _s2_HF;
        _li_HF += Gd;
      }
      int HF = _li_HF << 2;
      float HG = _arr4_f32_[HF >> 2];
      int _li_HH = 0;
      { // linear seek
        int _s0_HH = _args_i32_[16 + 4 * 8 + 0];
        int _s1_HH = _args_i32_[16 + 4 * 8 + 1];
        int _s2_HH = _args_i32_[16 + 4 * 8 + 2];
        _li_HH *= _s0_HH;
        _li_HH += Gp;
        _li_HH *= _s1_HH;
        _li_HH += HE;
        _li_HH *= _s2_HH;
        _li_HH += Gi;
      }
      int HH = _li_HH << 2;
      float HI = _arr4_f32_[HH >> 2];
      float HJ = GA * GJ;
      float HK = HJ * HG;
      float HL = HJ * HI;
      float HN = H5 + HK;
      float HQ = H6 + HL;
      float HS = HG * GX;
      float HT = HG * HD;
      float HU = HI * GX;
      float HV = HI * HD;
      float HW = HJ * Hh;
      float HX = HW * HS;
      float HY = HW * HT;
      float HZ = HW * HU;
      float I0 = HW * HV;
      float I1 = HX * Gg;
      float I2 = HY * Gg;
      float I3 = HZ * Gg;
      float I4 = I0 * Gg;
      float I6 = Hn + I1;
      float I9 = Ho + I2;
      float Ic = Hp + I3;
      float If = Hq + I4;
      float Ih = float(2.0);
      float Ii = Ih - Gu;
      int Ij = int(2);
      int Ik = Gq + Ij;
      int _li_Il = 0;
      { // linear seek
        int _s0_Il = _args_i32_[16 + 4 * 8 + 0];
        int _s1_Il = _args_i32_[16 + 4 * 8 + 1];
        int _s2_Il = _args_i32_[16 + 4 * 8 + 2];
        _li_Il *= _s0_Il;
        _li_Il += Gp;
        _li_Il *= _s1_Il;
        _li_Il += Ik;
        _li_Il *= _s2_Il;
        _li_Il += Gd;
      }
      int Il = _li_Il << 2;
      float Im = _arr4_f32_[Il >> 2];
      int _li_In = 0;
      { // linear seek
        int _s0_In = _args_i32_[16 + 4 * 8 + 0];
        int _s1_In = _args_i32_[16 + 4 * 8 + 1];
        int _s2_In = _args_i32_[16 + 4 * 8 + 2];
        _li_In *= _s0_In;
        _li_In += Gp;
        _li_In *= _s1_In;
        _li_In += Ik;
        _li_In *= _s2_In;
        _li_In += Gi;
      }
      int In = _li_In << 2;
      float Io = _arr4_f32_[In >> 2];
      float Ip = GA * GP;
      float Iq = Ip * Im;
      float Ir = Ip * Io;
      float It = HN + Iq;
      float Iw = HQ + Ir;
      float Iy = Im * GX;
      float Iz = Im * Ii;
      float IA = Io * GX;
      float IB = Io * Ii;
      float IC = Ip * Hh;
      float ID = IC * Iy;
      float IE = IC * Iz;
      float IF = IC * IA;
      float IG = IC * IB;
      float IH = ID * Gg;
      float II = IE * Gg;
      float IJ = IF * Gg;
      float IK = IG * Gg;
      float IM = I6 + IH;
      float IP = I9 + II;
      float IS = Ic + IJ;
      float IV = If + IK;
      float IX = GC - Gt;
      int IY = Gp + Gi;
      int _li_IZ = 0;
      { // linear seek
        int _s0_IZ = _args_i32_[16 + 4 * 8 + 0];
        int _s1_IZ = _args_i32_[16 + 4 * 8 + 1];
        int _s2_IZ = _args_i32_[16 + 4 * 8 + 2];
        _li_IZ *= _s0_IZ;
        _li_IZ += IY;
        _li_IZ *= _s1_IZ;
        _li_IZ += Gq;
        _li_IZ *= _s2_IZ;
        _li_IZ += Gd;
      }
      int IZ = _li_IZ << 2;
      float J0 = _arr4_f32_[IZ >> 2];
      int _li_J1 = 0;
      { // linear seek
        int _s0_J1 = _args_i32_[16 + 4 * 8 + 0];
        int _s1_J1 = _args_i32_[16 + 4 * 8 + 1];
        int _s2_J1 = _args_i32_[16 + 4 * 8 + 2];
        _li_J1 *= _s0_J1;
        _li_J1 += IY;
        _li_J1 *= _s1_J1;
        _li_J1 += Gq;
        _li_J1 *= _s2_J1;
        _li_J1 += Gi;
      }
      int J1 = _li_J1 << 2;
      float J2 = _arr4_f32_[J1 >> 2];
      float J3 = GI * GB;
      float J4 = J3 * J0;
      float J5 = J3 * J2;
      float J7 = It + J4;
      float Ja = Iw + J5;
      float Jc = J0 * IX;
      float Jd = J0 * GY;
      float Je = J2 * IX;
      float Jf = J2 * GY;
      float Jg = J3 * Hh;
      float Jh = Jg * Jc;
      float Ji = Jg * Jd;
      float Jj = Jg * Je;
      float Jk = Jg * Jf;
      float Jl = Jh * Gg;
      float Jm = Ji * Gg;
      float Jn = Jj * Gg;
      float Jo = Jk * Gg;
      float Jq = IM + Jl;
      float Jt = IP + Jm;
      float Jw = IS + Jn;
      float Jz = IV + Jo;
      int _li_JB = 0;
      { // linear seek
        int _s0_JB = _args_i32_[16 + 4 * 8 + 0];
        int _s1_JB = _args_i32_[16 + 4 * 8 + 1];
        int _s2_JB = _args_i32_[16 + 4 * 8 + 2];
        _li_JB *= _s0_JB;
        _li_JB += IY;
        _li_JB *= _s1_JB;
        _li_JB += HE;
        _li_JB *= _s2_JB;
        _li_JB += Gd;
      }
      int JB = _li_JB << 2;
      float JC = _arr4_f32_[JB >> 2];
      int _li_JD = 0;
      { // linear seek
        int _s0_JD = _args_i32_[16 + 4 * 8 + 0];
        int _s1_JD = _args_i32_[16 + 4 * 8 + 1];
        int _s2_JD = _args_i32_[16 + 4 * 8 + 2];
        _li_JD *= _s0_JD;
        _li_JD += IY;
        _li_JD *= _s1_JD;
        _li_JD += HE;
        _li_JD *= _s2_JD;
        _li_JD += Gi;
      }
      int JD = _li_JD << 2;
      float JE = _arr4_f32_[JD >> 2];
      float JF = GI * GJ;
      float JG = JF * JC;
      float JH = JF * JE;
      float JJ = J7 + JG;
      float JM = Ja + JH;
      float JO = JC * IX;
      float JP = JC * HD;
      float JQ = JE * IX;
      float JR = JE * HD;
      float JS = JF * Hh;
      float JT = JS * JO;
      float JU = JS * JP;
      float JV = JS * JQ;
      float JW = JS * JR;
      float JX = JT * Gg;
      float JY = JU * Gg;
      float JZ = JV * Gg;
      float K0 = JW * Gg;
      float K2 = Jq + JX;
      float K5 = Jt + JY;
      float K8 = Jw + JZ;
      float Kb = Jz + K0;
      int _li_Kd = 0;
      { // linear seek
        int _s0_Kd = _args_i32_[16 + 4 * 8 + 0];
        int _s1_Kd = _args_i32_[16 + 4 * 8 + 1];
        int _s2_Kd = _args_i32_[16 + 4 * 8 + 2];
        _li_Kd *= _s0_Kd;
        _li_Kd += IY;
        _li_Kd *= _s1_Kd;
        _li_Kd += Ik;
        _li_Kd *= _s2_Kd;
        _li_Kd += Gd;
      }
      int Kd = _li_Kd << 2;
      float Ke = _arr4_f32_[Kd >> 2];
      int _li_Kf = 0;
      { // linear seek
        int _s0_Kf = _args_i32_[16 + 4 * 8 + 0];
        int _s1_Kf = _args_i32_[16 + 4 * 8 + 1];
        int _s2_Kf = _args_i32_[16 + 4 * 8 + 2];
        _li_Kf *= _s0_Kf;
        _li_Kf += IY;
        _li_Kf *= _s1_Kf;
        _li_Kf += Ik;
        _li_Kf *= _s2_Kf;
        _li_Kf += Gi;
      }
      int Kf = _li_Kf << 2;
      float Kg = _arr4_f32_[Kf >> 2];
      float Kh = GI * GP;
      float Ki = Kh * Ke;
      float Kj = Kh * Kg;
      float Kl = JJ + Ki;
      float Ko = JM + Kj;
      float Kq = Ke * IX;
      float Kr = Ke * Ii;
      float Ks = Kg * IX;
      float Kt = Kg * Ii;
      float Ku = Kh * Hh;
      float Kv = Ku * Kq;
      float Kw = Ku * Kr;
      float Kx = Ku * Ks;
      float Ky = Ku * Kt;
      float Kz = Kv * Gg;
      float KA = Kw * Gg;
      float KB = Kx * Gg;
      float KC = Ky * Gg;
      float KE = K2 + Kz;
      float KH = K5 + KA;
      float KK = K8 + KB;
      float KN = Kb + KC;
      float KP = Ih - Gt;
      int KQ = Gp + Ij;
      int _li_KR = 0;
      { // linear seek
        int _s0_KR = _args_i32_[16 + 4 * 8 + 0];
        int _s1_KR = _args_i32_[16 + 4 * 8 + 1];
        int _s2_KR = _args_i32_[16 + 4 * 8 + 2];
        _li_KR *= _s0_KR;
        _li_KR += KQ;
        _li_KR *= _s1_KR;
        _li_KR += Gq;
        _li_KR *= _s2_KR;
        _li_KR += Gd;
      }
      int KR = _li_KR << 2;
      float KS = _arr4_f32_[KR >> 2];
      int _li_KT = 0;
      { // linear seek
        int _s0_KT = _args_i32_[16 + 4 * 8 + 0];
        int _s1_KT = _args_i32_[16 + 4 * 8 + 1];
        int _s2_KT = _args_i32_[16 + 4 * 8 + 2];
        _li_KT *= _s0_KT;
        _li_KT += KQ;
        _li_KT *= _s1_KT;
        _li_KT += Gq;
        _li_KT *= _s2_KT;
        _li_KT += Gi;
      }
      int KT = _li_KT << 2;
      float KU = _arr4_f32_[KT >> 2];
      float KV = GO * GB;
      float KW = KV * KS;
      float KX = KV * KU;
      float KZ = Kl + KW;
      float L2 = Ko + KX;
      float L4 = KS * KP;
      float L5 = KS * GY;
      float L6 = KU * KP;
      float L7 = KU * GY;
      float L8 = KV * Hh;
      float L9 = L8 * L4;
      float La = L8 * L5;
      float Lb = L8 * L6;
      float Lc = L8 * L7;
      float Ld = L9 * Gg;
      float Le = La * Gg;
      float Lf = Lb * Gg;
      float Lg = Lc * Gg;
      float Li = KE + Ld;
      float Ll = KH + Le;
      float Lo = KK + Lf;
      float Lr = KN + Lg;
      int _li_Lt = 0;
      { // linear seek
        int _s0_Lt = _args_i32_[16 + 4 * 8 + 0];
        int _s1_Lt = _args_i32_[16 + 4 * 8 + 1];
        int _s2_Lt = _args_i32_[16 + 4 * 8 + 2];
        _li_Lt *= _s0_Lt;
        _li_Lt += KQ;
        _li_Lt *= _s1_Lt;
        _li_Lt += HE;
        _li_Lt *= _s2_Lt;
        _li_Lt += Gd;
      }
      int Lt = _li_Lt << 2;
      float Lu = _arr4_f32_[Lt >> 2];
      int _li_Lv = 0;
      { // linear seek
        int _s0_Lv = _args_i32_[16 + 4 * 8 + 0];
        int _s1_Lv = _args_i32_[16 + 4 * 8 + 1];
        int _s2_Lv = _args_i32_[16 + 4 * 8 + 2];
        _li_Lv *= _s0_Lv;
        _li_Lv += KQ;
        _li_Lv *= _s1_Lv;
        _li_Lv += HE;
        _li_Lv *= _s2_Lv;
        _li_Lv += Gi;
      }
      int Lv = _li_Lv << 2;
      float Lw = _arr4_f32_[Lv >> 2];
      float Lx = GO * GJ;
      float Ly = Lx * Lu;
      float Lz = Lx * Lw;
      float LB = KZ + Ly;
      float LE = L2 + Lz;
      float LG = Lu * KP;
      float LH = Lu * HD;
      float LI = Lw * KP;
      float LJ = Lw * HD;
      float LK = Lx * Hh;
      float LL = LK * LG;
      float LM = LK * LH;
      float LN = LK * LI;
      float LO = LK * LJ;
      float LP = LL * Gg;
      float LQ = LM * Gg;
      float LR = LN * Gg;
      float LS = LO * Gg;
      float LU = Li + LP;
      float LX = Ll + LQ;
      float M0 = Lo + LR;
      float M3 = Lr + LS;
      int _li_M5 = 0;
      { // linear seek
        int _s0_M5 = _args_i32_[16 + 4 * 8 + 0];
        int _s1_M5 = _args_i32_[16 + 4 * 8 + 1];
        int _s2_M5 = _args_i32_[16 + 4 * 8 + 2];
        _li_M5 *= _s0_M5;
        _li_M5 += KQ;
        _li_M5 *= _s1_M5;
        _li_M5 += Ik;
        _li_M5 *= _s2_M5;
        _li_M5 += Gd;
      }
      int M5 = _li_M5 << 2;
      float M6 = _arr4_f32_[M5 >> 2];
      int _li_M7 = 0;
      { // linear seek
        int _s0_M7 = _args_i32_[16 + 4 * 8 + 0];
        int _s1_M7 = _args_i32_[16 + 4 * 8 + 1];
        int _s2_M7 = _args_i32_[16 + 4 * 8 + 2];
        _li_M7 *= _s0_M7;
        _li_M7 += KQ;
        _li_M7 *= _s1_M7;
        _li_M7 += Ik;
        _li_M7 *= _s2_M7;
        _li_M7 += Gi;
      }
      int M7 = _li_M7 << 2;
      float M8 = _arr4_f32_[M7 >> 2];
      float M9 = GO * GP;
      float Ma = M9 * M6;
      float Mb = M9 * M8;
      float Md = LB + Ma;
      float Mg = LE + Mb;
      float Mi = M6 * KP;
      float Mj = M6 * Ii;
      float Mk = M8 * KP;
      float Ml = M8 * Ii;
      float Mm = M9 * Hh;
      float Mn = Mm * Mi;
      float Mo = Mm * Mj;
      float Mp = Mm * Mk;
      float Mq = Mm * Ml;
      float Mr = Mn * Gg;
      float Ms = Mo * Gg;
      float Mt = Mp * Gg;
      float Mu = Mq * Gg;
      float Mw = LU + Mr;
      float Mz = LX + Ms;
      float MC = M0 + Mt;
      float MF = M3 + Mu;
      int _li_MJ = 0;
      { // linear seek
        int _s0_MJ = _args_i32_[16 + 1 * 8 + 0];
        int _s1_MJ = _args_i32_[16 + 1 * 8 + 1];
        _li_MJ *= _s0_MJ;
        _li_MJ += Gb;
        _li_MJ *= _s1_MJ;
        _li_MJ += Gd;
      }
      int MJ = _li_MJ << 2;
      _arr1_f32_[MJ >> 2] = Md;
      int _li_MM = 0;
      { // linear seek
        int _s0_MM = _args_i32_[16 + 1 * 8 + 0];
        int _s1_MM = _args_i32_[16 + 1 * 8 + 1];
        _li_MM *= _s0_MM;
        _li_MM += Gb;
        _li_MM *= _s1_MM;
        _li_MM += Gi;
      }
      int MM = _li_MM << 2;
      _arr1_f32_[MM >> 2] = Mg;
      float MO = float(0.0002);
      float MP = Md * MO;
      float MQ = Mg * MO;
      float MR;
      { // Begin Atomic Op
      MR = atomicAdd_arr0_f32(Ge >> 2, MP);
      } // End Atomic Op
      float MS;
      { // Begin Atomic Op
      MS = atomicAdd_arr0_f32(Gj >> 2, MQ);
      } // End Atomic Op
      int _li_MU = 0;
      { // linear seek
        int _s0_MU = _args_i32_[16 + 2 * 8 + 0];
        _li_MU *= _s0_MU;
        _li_MU += Gb;
      }
      int MU = _li_MU << 2;
      float MV = _arr2_f32_[MU >> 2];
      float MY = Mw + MF;
      float MZ = MY * MO;
      float N0 = MZ + GC;
      float N1 = MV * N0;
      _arr2_f32_[MU >> 2] = N1;
      int _li_N4 = 0;
      { // linear seek
        int _s0_N4 = _args_i32_[16 + 3 * 8 + 0];
        int _s1_N4 = _args_i32_[16 + 3 * 8 + 1];
        int _s2_N4 = _args_i32_[16 + 3 * 8 + 2];
        _li_N4 *= _s0_N4;
        _li_N4 += Gb;
        _li_N4 *= _s1_N4;
        _li_N4 += Gd;
        _li_N4 *= _s2_N4;
        _li_N4 += Gd;
      }
      int N4 = _li_N4 << 2;
      _arr3_f32_[N4 >> 2] = Mw;
      int _li_N7 = 0;
      { // linear seek
        int _s0_N7 = _args_i32_[16 + 3 * 8 + 0];
        int _s1_N7 = _args_i32_[16 + 3 * 8 + 1];
        int _s2_N7 = _args_i32_[16 + 3 * 8 + 2];
        _li_N7 *= _s0_N7;
        _li_N7 += Gb;
        _li_N7 *= _s1_N7;
        _li_N7 += Gd;
        _li_N7 *= _s2_N7;
        _li_N7 += Gi;
      }
      int N7 = _li_N7 << 2;
      _arr3_f32_[N7 >> 2] = Mz;
      int _li_Na = 0;
      { // linear seek
        int _s0_Na = _args_i32_[16 + 3 * 8 + 0];
        int _s1_Na = _args_i32_[16 + 3 * 8 + 1];
        int _s2_Na = _args_i32_[16 + 3 * 8 + 2];
        _li_Na *= _s0_Na;
        _li_Na += Gb;
        _li_Na *= _s1_Na;
        _li_Na += Gi;
        _li_Na *= _s2_Na;
        _li_Na += Gd;
      }
      int Na = _li_Na << 2;
      _arr3_f32_[Na >> 2] = MC;
      int _li_Nc = 0;
      { // linear seek
        int _s0_Nc = _args_i32_[16 + 3 * 8 + 0];
        int _s1_Nc = _args_i32_[16 + 3 * 8 + 1];
        int _s2_Nc = _args_i32_[16 + 3 * 8 + 2];
        _li_Nc *= _s0_Nc;
        _li_Nc += Gb;
        _li_Nc *= _s1_Nc;
        _li_Nc += Gi;
        _li_Nc *= _s2_Nc;
        _li_Nc += Gi;
      }
      int Nc = _li_Nc << 2;
      _arr3_f32_[Nc >> 2] = MF;
  }
}

void main()
{
  substep_c44_07();
}
