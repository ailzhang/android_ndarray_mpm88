#version 310 es
layout(local_size_x = 32, local_size_y = 1, local_size_z = 1) in;
precision highp float;
layout(std430, binding = 1) buffer gtmp_i32 { int _gtmp_i32_[];}; 
layout(std430, binding = 1) buffer gtmp_f32 { float _gtmp_f32_[];}; 
layout(std430, binding = 2) buffer args_i32 { int _args_i32_[];}; 
layout(std430, binding = 2) buffer args_f32 { float _args_f32_[];}; 
layout(std430, binding = 9) buffer arr3_i32 { int _arr3_i32_[];}; 
layout(std430, binding = 9) buffer arr3_f32 { float _arr3_f32_[];}; 
layout(std430, binding = 8) buffer arr2_i32 { int _arr2_i32_[];}; 
layout(std430, binding = 8) buffer arr2_f32 { float _arr2_f32_[];}; 
layout(std430, binding = 7) buffer arr1_i32 { int _arr1_i32_[];}; 
layout(std430, binding = 7) buffer arr1_f32 { float _arr1_f32_[];}; 
layout(std430, binding = 6) buffer arr0_i32 { int _arr0_i32_[];}; 
layout(std430, binding = 6) buffer arr0_f32 { float _arr0_f32_[];}; 
layout(std430, binding = 5) buffer arr5_i32 { int _arr5_i32_[];}; 
layout(std430, binding = 5) buffer arr5_f32 { float _arr5_f32_[];}; 
layout(std430, binding = 4) buffer arr4_i32 { int _arr4_i32_[];}; 
layout(std430, binding = 4) buffer arr4_f32 { float _arr4_f32_[];}; 
float atomicAdd_gtmp_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _gtmp_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) + rhs)); } while (old_val != atomicCompSwap(_gtmp_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicSub_gtmp_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _gtmp_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) - rhs)); } while (old_val != atomicCompSwap(_gtmp_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMax_gtmp_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _gtmp_i32_[addr]; new_val = floatBitsToInt(max(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_gtmp_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMin_gtmp_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _gtmp_i32_[addr]; new_val = floatBitsToInt(min(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_gtmp_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); }float atomicAdd_arr0_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr0_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) + rhs)); } while (old_val != atomicCompSwap(_arr0_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicSub_arr0_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr0_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) - rhs)); } while (old_val != atomicCompSwap(_arr0_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMax_arr0_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr0_i32_[addr]; new_val = floatBitsToInt(max(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_arr0_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMin_arr0_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr0_i32_[addr]; new_val = floatBitsToInt(min(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_arr0_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); }float atomicAdd_arr1_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr1_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) + rhs)); } while (old_val != atomicCompSwap(_arr1_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicSub_arr1_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr1_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) - rhs)); } while (old_val != atomicCompSwap(_arr1_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMax_arr1_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr1_i32_[addr]; new_val = floatBitsToInt(max(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_arr1_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMin_arr1_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr1_i32_[addr]; new_val = floatBitsToInt(min(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_arr1_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); }float atomicAdd_arr2_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr2_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) + rhs)); } while (old_val != atomicCompSwap(_arr2_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicSub_arr2_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr2_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) - rhs)); } while (old_val != atomicCompSwap(_arr2_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMax_arr2_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr2_i32_[addr]; new_val = floatBitsToInt(max(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_arr2_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMin_arr2_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr2_i32_[addr]; new_val = floatBitsToInt(min(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_arr2_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); }float atomicAdd_arr3_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr3_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) + rhs)); } while (old_val != atomicCompSwap(_arr3_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicSub_arr3_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr3_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) - rhs)); } while (old_val != atomicCompSwap(_arr3_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMax_arr3_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr3_i32_[addr]; new_val = floatBitsToInt(max(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_arr3_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMin_arr3_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr3_i32_[addr]; new_val = floatBitsToInt(min(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_arr3_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); }float atomicAdd_arr4_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr4_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) + rhs)); } while (old_val != atomicCompSwap(_arr4_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicSub_arr4_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr4_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) - rhs)); } while (old_val != atomicCompSwap(_arr4_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMax_arr4_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr4_i32_[addr]; new_val = floatBitsToInt(max(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_arr4_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMin_arr4_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr4_i32_[addr]; new_val = floatBitsToInt(min(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_arr4_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); }float atomicAdd_arr5_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr5_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) + rhs)); } while (old_val != atomicCompSwap(_arr5_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicSub_arr5_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr5_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) - rhs)); } while (old_val != atomicCompSwap(_arr5_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMax_arr5_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr5_i32_[addr]; new_val = floatBitsToInt(max(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_arr5_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMin_arr5_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr5_i32_[addr]; new_val = floatBitsToInt(min(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_arr5_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); }
const float inf = 1.0f / 0.0f;
const float nan = 0.0f / 0.0f;
void substep_c44_04()
{ // range for
  // range from args buffer
  int FK = _args_i32_[16 + 0 * 8 + 0];
  int _beg = 0, _end = FK;
  int _sid0 = int(gl_GlobalInvocationID.x);
  for (int _sid = _sid0; _sid < (_end - _beg); _sid += int(gl_WorkGroupSize.x * gl_NumWorkGroups.x)) {
    int _itv = _beg + _sid;
      int FK = _args_i32_[16 + 0 * 8 + 0];
      int FL = _itv;
      int FM = FL - FK * int(FL / FK);
      int FO = int(0);
      int _li_FP = 0;
      int _s0_arr0 = _args_i32_[16 + 0 * 8 + 0];
      int _s1_arr0 = _args_i32_[16 + 0 * 8 + 1];
      { // linear seek
        _li_FP *= _s0_arr0;
        _li_FP += FM;
        _li_FP *= _s1_arr0;
        _li_FP += FO;
      }
      int FP = _li_FP << 2;
      float FQ = _arr0_f32_[FP >> 2];
      int FR = 0;
      float FS = _gtmp_f32_[FR >> 2];
      float FT = FQ * FS;
      int FU = int(1);
      int _li_FV = 0;
      { // linear seek
        _li_FV *= _s0_arr0;
        _li_FV += FM;
        _li_FV *= _s1_arr0;
        _li_FV += FU;
      }
      int FV = _li_FV << 2;
      float FW = _arr0_f32_[FV >> 2];
      float FX = FW * FS;
      float FY = float(0.5);
      float FZ = FT - FY;
      float G0 = FX - FY;
      int G1 = int(FZ);
      int G2 = int(G0);
      float G3 = float(G1);
      float G4 = float(G2);
      float G5 = FT - G3;
      float G6 = FX - G4;
      float G7 = float(1.5);
      float G8 = G7 - G5;
      float G9 = G7 - G6;
      float Ga = G8 * G8;
      float Gb = G9 * G9;
      float Gc = Ga * FY;
      float Gd = Gb * FY;
      float Ge = float(1.0);
      float Gf = G5 - Ge;
      float Gg = G6 - Ge;
      float Gh = Gf * Gf;
      float Gi = Gg * Gg;
      float Gj = float(0.75);
      float Gk = Gj - Gh;
      float Gl = Gj - Gi;
      float Gm = G5 - FY;
      float Gn = G6 - FY;
      float Go = Gm * Gm;
      float Gp = Gn * Gn;
      float Gq = Go * FY;
      float Gr = Gp * FY;
      float Gy = float(0.0);
      float Gz = Gy - G5;
      float GA = Gy - G6;
      int _li_GC = 0;
      int _s0_arr4 = _args_i32_[16 + 4 * 8 + 0];
      int _s1_arr4 = _args_i32_[16 + 4 * 8 + 1];
      int _s2_arr4 = _args_i32_[16 + 4 * 8 + 2];
      { // linear seek
        _li_GC *= _s0_arr4;
        _li_GC += G1;
        _li_GC *= _s1_arr4;
        _li_GC += G2;
        _li_GC *= _s2_arr4;
        _li_GC += FO;
      }
      int GC = _li_GC << 2;
      float GD = _arr4_f32_[GC >> 2];
      int _li_GE = 0;
      { // linear seek
        _li_GE *= _s0_arr4;
        _li_GE += G1;
        _li_GE *= _s1_arr4;
        _li_GE += G2;
        _li_GE *= _s2_arr4;
        _li_GE += FU;
      }
      int GE = _li_GE << 2;
      float GF = _arr4_f32_[GE >> 2];
      float GG = Gc * Gd;
      float GH = GG * GD;
      float GI = GG * GF;
      float GP = GD * Gz;
      float GQ = GD * GA;
      float GR = GF * Gz;
      float GS = GF * GA;
      float GT = float(4.0);
      float GU = GG * GT;
      float GV = GU * GP;
      float GW = GU * GQ;
      float GX = GU * GR;
      float GY = GU * GS;
      float GZ = GV * FS;
      float H0 = GW * FS;
      float H1 = GX * FS;
      float H2 = GY * FS;
      float Hf = Ge - G6;
      int Hg = G2 + FU;
      int _li_Hh = 0;
      { // linear seek
        _li_Hh *= _s0_arr4;
        _li_Hh += G1;
        _li_Hh *= _s1_arr4;
        _li_Hh += Hg;
        _li_Hh *= _s2_arr4;
        _li_Hh += FO;
      }
      int Hh = _li_Hh << 2;
      float Hi = _arr4_f32_[Hh >> 2];
      int _li_Hj = 0;
      { // linear seek
        _li_Hj *= _s0_arr4;
        _li_Hj += G1;
        _li_Hj *= _s1_arr4;
        _li_Hj += Hg;
        _li_Hj *= _s2_arr4;
        _li_Hj += FU;
      }
      int Hj = _li_Hj << 2;
      float Hk = _arr4_f32_[Hj >> 2];
      float Hl = Gc * Gl;
      float Hm = Hl * Hi;
      float Hn = Hl * Hk;
      float Hp = GH + Hm;
      float Hs = GI + Hn;
      float Hu = Hi * Gz;
      float Hv = Hi * Hf;
      float Hw = Hk * Gz;
      float Hx = Hk * Hf;
      float Hy = Hl * GT;
      float Hz = Hy * Hu;
      float HA = Hy * Hv;
      float HB = Hy * Hw;
      float HC = Hy * Hx;
      float HD = Hz * FS;
      float HE = HA * FS;
      float HF = HB * FS;
      float HG = HC * FS;
      float HI = GZ + HD;
      float HL = H0 + HE;
      float HO = H1 + HF;
      float HR = H2 + HG;
      float HT = float(2.0);
      float HU = HT - G6;
      int HV = int(2);
      int HW = G2 + HV;
      int _li_HX = 0;
      { // linear seek
        _li_HX *= _s0_arr4;
        _li_HX += G1;
        _li_HX *= _s1_arr4;
        _li_HX += HW;
        _li_HX *= _s2_arr4;
        _li_HX += FO;
      }
      int HX = _li_HX << 2;
      float HY = _arr4_f32_[HX >> 2];
      int _li_HZ = 0;
      { // linear seek
        _li_HZ *= _s0_arr4;
        _li_HZ += G1;
        _li_HZ *= _s1_arr4;
        _li_HZ += HW;
        _li_HZ *= _s2_arr4;
        _li_HZ += FU;
      }
      int HZ = _li_HZ << 2;
      float I0 = _arr4_f32_[HZ >> 2];
      float I1 = Gc * Gr;
      float I2 = I1 * HY;
      float I3 = I1 * I0;
      float I5 = Hp + I2;
      float I8 = Hs + I3;
      float Ia = HY * Gz;
      float Ib = HY * HU;
      float Ic = I0 * Gz;
      float Id = I0 * HU;
      float Ie = I1 * GT;
      float If = Ie * Ia;
      float Ig = Ie * Ib;
      float Ih = Ie * Ic;
      float Ii = Ie * Id;
      float Ij = If * FS;
      float Ik = Ig * FS;
      float Il = Ih * FS;
      float Im = Ii * FS;
      float Io = HI + Ij;
      float Ir = HL + Ik;
      float Iu = HO + Il;
      float Ix = HR + Im;
      float Iz = Ge - G5;
      int IA = G1 + FU;
      int _li_IB = 0;
      { // linear seek
        _li_IB *= _s0_arr4;
        _li_IB += IA;
        _li_IB *= _s1_arr4;
        _li_IB += G2;
        _li_IB *= _s2_arr4;
        _li_IB += FO;
      }
      int IB = _li_IB << 2;
      float IC = _arr4_f32_[IB >> 2];
      int _li_ID = 0;
      { // linear seek
        _li_ID *= _s0_arr4;
        _li_ID += IA;
        _li_ID *= _s1_arr4;
        _li_ID += G2;
        _li_ID *= _s2_arr4;
        _li_ID += FU;
      }
      int ID = _li_ID << 2;
      float IE = _arr4_f32_[ID >> 2];
      float IF = Gk * Gd;
      float IG = IF * IC;
      float IH = IF * IE;
      float IJ = I5 + IG;
      float IM = I8 + IH;
      float IO = IC * Iz;
      float IP = IC * GA;
      float IQ = IE * Iz;
      float IR = IE * GA;
      float IS = IF * GT;
      float IT = IS * IO;
      float IU = IS * IP;
      float IV = IS * IQ;
      float IW = IS * IR;
      float IX = IT * FS;
      float IY = IU * FS;
      float IZ = IV * FS;
      float J0 = IW * FS;
      float J2 = Io + IX;
      float J5 = Ir + IY;
      float J8 = Iu + IZ;
      float Jb = Ix + J0;
      int _li_Jd = 0;
      { // linear seek
        _li_Jd *= _s0_arr4;
        _li_Jd += IA;
        _li_Jd *= _s1_arr4;
        _li_Jd += Hg;
        _li_Jd *= _s2_arr4;
        _li_Jd += FO;
      }
      int Jd = _li_Jd << 2;
      float Je = _arr4_f32_[Jd >> 2];
      int _li_Jf = 0;
      { // linear seek
        _li_Jf *= _s0_arr4;
        _li_Jf += IA;
        _li_Jf *= _s1_arr4;
        _li_Jf += Hg;
        _li_Jf *= _s2_arr4;
        _li_Jf += FU;
      }
      int Jf = _li_Jf << 2;
      float Jg = _arr4_f32_[Jf >> 2];
      float Jh = Gk * Gl;
      float Ji = Jh * Je;
      float Jj = Jh * Jg;
      float Jl = IJ + Ji;
      float Jo = IM + Jj;
      float Jq = Je * Iz;
      float Jr = Je * Hf;
      float Js = Jg * Iz;
      float Jt = Jg * Hf;
      float Ju = Jh * GT;
      float Jv = Ju * Jq;
      float Jw = Ju * Jr;
      float Jx = Ju * Js;
      float Jy = Ju * Jt;
      float Jz = Jv * FS;
      float JA = Jw * FS;
      float JB = Jx * FS;
      float JC = Jy * FS;
      float JE = J2 + Jz;
      float JH = J5 + JA;
      float JK = J8 + JB;
      float JN = Jb + JC;
      int _li_JP = 0;
      { // linear seek
        _li_JP *= _s0_arr4;
        _li_JP += IA;
        _li_JP *= _s1_arr4;
        _li_JP += HW;
        _li_JP *= _s2_arr4;
        _li_JP += FO;
      }
      int JP = _li_JP << 2;
      float JQ = _arr4_f32_[JP >> 2];
      int _li_JR = 0;
      { // linear seek
        _li_JR *= _s0_arr4;
        _li_JR += IA;
        _li_JR *= _s1_arr4;
        _li_JR += HW;
        _li_JR *= _s2_arr4;
        _li_JR += FU;
      }
      int JR = _li_JR << 2;
      float JS = _arr4_f32_[JR >> 2];
      float JT = Gk * Gr;
      float JU = JT * JQ;
      float JV = JT * JS;
      float JX = Jl + JU;
      float K0 = Jo + JV;
      float K2 = JQ * Iz;
      float K3 = JQ * HU;
      float K4 = JS * Iz;
      float K5 = JS * HU;
      float K6 = JT * GT;
      float K7 = K6 * K2;
      float K8 = K6 * K3;
      float K9 = K6 * K4;
      float Ka = K6 * K5;
      float Kb = K7 * FS;
      float Kc = K8 * FS;
      float Kd = K9 * FS;
      float Ke = Ka * FS;
      float Kg = JE + Kb;
      float Kj = JH + Kc;
      float Km = JK + Kd;
      float Kp = JN + Ke;
      float Kr = HT - G5;
      int Ks = G1 + HV;
      int _li_Kt = 0;
      { // linear seek
        _li_Kt *= _s0_arr4;
        _li_Kt += Ks;
        _li_Kt *= _s1_arr4;
        _li_Kt += G2;
        _li_Kt *= _s2_arr4;
        _li_Kt += FO;
      }
      int Kt = _li_Kt << 2;
      float Ku = _arr4_f32_[Kt >> 2];
      int _li_Kv = 0;
      { // linear seek
        _li_Kv *= _s0_arr4;
        _li_Kv += Ks;
        _li_Kv *= _s1_arr4;
        _li_Kv += G2;
        _li_Kv *= _s2_arr4;
        _li_Kv += FU;
      }
      int Kv = _li_Kv << 2;
      float Kw = _arr4_f32_[Kv >> 2];
      float Kx = Gq * Gd;
      float Ky = Kx * Ku;
      float Kz = Kx * Kw;
      float KB = JX + Ky;
      float KE = K0 + Kz;
      float KG = Ku * Kr;
      float KH = Ku * GA;
      float KI = Kw * Kr;
      float KJ = Kw * GA;
      float KK = Kx * GT;
      float KL = KK * KG;
      float KM = KK * KH;
      float KN = KK * KI;
      float KO = KK * KJ;
      float KP = KL * FS;
      float KQ = KM * FS;
      float KR = KN * FS;
      float KS = KO * FS;
      float KU = Kg + KP;
      float KX = Kj + KQ;
      float L0 = Km + KR;
      float L3 = Kp + KS;
      int _li_L5 = 0;
      { // linear seek
        _li_L5 *= _s0_arr4;
        _li_L5 += Ks;
        _li_L5 *= _s1_arr4;
        _li_L5 += Hg;
        _li_L5 *= _s2_arr4;
        _li_L5 += FO;
      }
      int L5 = _li_L5 << 2;
      float L6 = _arr4_f32_[L5 >> 2];
      int _li_L7 = 0;
      { // linear seek
        _li_L7 *= _s0_arr4;
        _li_L7 += Ks;
        _li_L7 *= _s1_arr4;
        _li_L7 += Hg;
        _li_L7 *= _s2_arr4;
        _li_L7 += FU;
      }
      int L7 = _li_L7 << 2;
      float L8 = _arr4_f32_[L7 >> 2];
      float L9 = Gq * Gl;
      float La = L9 * L6;
      float Lb = L9 * L8;
      float Ld = KB + La;
      float Lg = KE + Lb;
      float Li = L6 * Kr;
      float Lj = L6 * Hf;
      float Lk = L8 * Kr;
      float Ll = L8 * Hf;
      float Lm = L9 * GT;
      float Ln = Lm * Li;
      float Lo = Lm * Lj;
      float Lp = Lm * Lk;
      float Lq = Lm * Ll;
      float Lr = Ln * FS;
      float Ls = Lo * FS;
      float Lt = Lp * FS;
      float Lu = Lq * FS;
      float Lw = KU + Lr;
      float Lz = KX + Ls;
      float LC = L0 + Lt;
      float LF = L3 + Lu;
      int _li_LH = 0;
      { // linear seek
        _li_LH *= _s0_arr4;
        _li_LH += Ks;
        _li_LH *= _s1_arr4;
        _li_LH += HW;
        _li_LH *= _s2_arr4;
        _li_LH += FO;
      }
      int LH = _li_LH << 2;
      float LI = _arr4_f32_[LH >> 2];
      int _li_LJ = 0;
      { // linear seek
        _li_LJ *= _s0_arr4;
        _li_LJ += Ks;
        _li_LJ *= _s1_arr4;
        _li_LJ += HW;
        _li_LJ *= _s2_arr4;
        _li_LJ += FU;
      }
      int LJ = _li_LJ << 2;
      float LK = _arr4_f32_[LJ >> 2];
      float LL = Gq * Gr;
      float LM = LL * LI;
      float LN = LL * LK;
      float LP = Ld + LM;
      float LS = Lg + LN;
      float LU = LI * Kr;
      float LV = LI * HU;
      float LW = LK * Kr;
      float LX = LK * HU;
      float LY = LL * GT;
      float LZ = LY * LU;
      float M0 = LY * LV;
      float M1 = LY * LW;
      float M2 = LY * LX;
      float M3 = LZ * FS;
      float M4 = M0 * FS;
      float M5 = M1 * FS;
      float M6 = M2 * FS;
      float M8 = Lw + M3;
      float Mb = Lz + M4;
      float Me = LC + M5;
      float Mh = LF + M6;
      int _li_Ml = 0;
      int _s0_arr1 = _args_i32_[16 + 1 * 8 + 0];
      int _s1_arr1 = _args_i32_[16 + 1 * 8 + 1];
      { // linear seek
        _li_Ml *= _s0_arr1;
        _li_Ml += FM;
        _li_Ml *= _s1_arr1;
        _li_Ml += FO;
      }
      int Ml = _li_Ml << 2;
      _arr1_f32_[Ml >> 2] = LP;
      int _li_Mo = 0;
      { // linear seek
        _li_Mo *= _s0_arr1;
        _li_Mo += FM;
        _li_Mo *= _s1_arr1;
        _li_Mo += FU;
      }
      int Mo = _li_Mo << 2;
      _arr1_f32_[Mo >> 2] = LS;
      int Mq = 4;
      float Mr = _gtmp_f32_[Mq >> 2];
      float Ms = Mr * LP;
      float Mt = Mr * LS;
      float Mu;
      { // Begin Atomic Op
      Mu = atomicAdd_arr0_f32(FP >> 2, Ms);
      } // End Atomic Op
      float Mv;
      { // Begin Atomic Op
      Mv = atomicAdd_arr0_f32(FV >> 2, Mt);
      } // End Atomic Op
      int _li_Mx = 0;
      int _s0_arr2 = _args_i32_[16 + 2 * 8 + 0];
      { // linear seek
        _li_Mx *= _s0_arr2;
        _li_Mx += FM;
      }
      int Mx = _li_Mx << 2;
      float My = _arr2_f32_[Mx >> 2];
      float MB = M8 + Mh;
      float MC = Mr * MB;
      float MD = MC + Ge;
      float ME = My * MD;
      _arr2_f32_[Mx >> 2] = ME;
      int _li_MH = 0;
      int _s0_arr3 = _args_i32_[16 + 3 * 8 + 0];
      int _s1_arr3 = _args_i32_[16 + 3 * 8 + 1];
      int _s2_arr3 = _args_i32_[16 + 3 * 8 + 2];
      { // linear seek
        _li_MH *= _s0_arr3;
        _li_MH += FM;
        _li_MH *= _s1_arr3;
        _li_MH += FO;
        _li_MH *= _s2_arr3;
        _li_MH += FO;
      }
      int MH = _li_MH << 2;
      _arr3_f32_[MH >> 2] = M8;
      int _li_MK = 0;
      { // linear seek
        _li_MK *= _s0_arr3;
        _li_MK += FM;
        _li_MK *= _s1_arr3;
        _li_MK += FO;
        _li_MK *= _s2_arr3;
        _li_MK += FU;
      }
      int MK = _li_MK << 2;
      _arr3_f32_[MK >> 2] = Mb;
      int _li_MN = 0;
      { // linear seek
        _li_MN *= _s0_arr3;
        _li_MN += FM;
        _li_MN *= _s1_arr3;
        _li_MN += FU;
        _li_MN *= _s2_arr3;
        _li_MN += FO;
      }
      int MN = _li_MN << 2;
      _arr3_f32_[MN >> 2] = Me;
      int _li_MP = 0;
      { // linear seek
        _li_MP *= _s0_arr3;
        _li_MP += FM;
        _li_MP *= _s1_arr3;
        _li_MP += FU;
        _li_MP *= _s2_arr3;
        _li_MP += FU;
      }
      int MP = _li_MP << 2;
      _arr3_f32_[MP >> 2] = Mh;
  }
}

void main()
{
  substep_c44_04();
}
