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
  int _beg = 0, _end = _gtmp_i32_[44 >> 2];
  int _sid0 = int(gl_GlobalInvocationID.x);
  for (int _sid = _sid0; _sid < (_end - _beg); _sid += int(gl_WorkGroupSize.x * gl_NumWorkGroups.x)) {
    int _itv = _beg + _sid;
      int GP = _itv;
      int GQ = 44;
      int GR = _gtmp_i32_[GQ >> 2];
      int GS = GP - GR * int(GP / GR);
      int GU = int(0);
      int _li_GV = 0;
      { // linear seek
        int _s0_GV = _args_i32_[16 + 0 * 8 + 0];
        int _s1_GV = _args_i32_[16 + 0 * 8 + 1];
        _li_GV *= _s0_GV;
        _li_GV += GS;
        _li_GV *= _s1_GV;
        _li_GV += GU;
      }
      int GV = _li_GV << 2;
      float GW = _arr0_f32_[GV >> 2];
      int GX = 16;
      int GY = _gtmp_i32_[GX >> 2];
      float GZ = float(GY);
      float H0 = GW * GZ;
      int H1 = int(1);
      int _li_H2 = 0;
      { // linear seek
        int _s0_H2 = _args_i32_[16 + 0 * 8 + 0];
        int _s1_H2 = _args_i32_[16 + 0 * 8 + 1];
        _li_H2 *= _s0_H2;
        _li_H2 += GS;
        _li_H2 *= _s1_H2;
        _li_H2 += H1;
      }
      int H2 = _li_H2 << 2;
      float H3 = _arr0_f32_[H2 >> 2];
      float H4 = H3 * GZ;
      float H5 = float(0.5);
      float H6 = H0 - H5;
      float H7 = H4 - H5;
      int H8 = int(H6);
      int H9 = int(H7);
      float Ha = float(H8);
      float Hb = float(H9);
      float Hc = H0 - Ha;
      float Hd = H4 - Hb;
      float He = float(1.5);
      float Hf = He - Hc;
      float Hg = He - Hd;
      float Hh = Hf * Hf;
      float Hi = Hg * Hg;
      float Hj = Hh * H5;
      float Hk = Hi * H5;
      float Hl = float(1.0);
      float Hm = Hc - Hl;
      float Hn = Hd - Hl;
      float Ho = Hm * Hm;
      float Hp = Hn * Hn;
      float Hq = float(0.75);
      float Hr = Hq - Ho;
      float Hs = Hq - Hp;
      float Ht = Hc - H5;
      float Hu = Hd - H5;
      float Hv = Ht * Ht;
      float Hw = Hu * Hu;
      float Hx = Hv * H5;
      float Hy = Hw * H5;
      float HF = float(0.0);
      float HG = HF - Hc;
      float HH = HF - Hd;
      int _li_HJ = 0;
      { // linear seek
        int _s0_HJ = _args_i32_[16 + 4 * 8 + 0];
        int _s1_HJ = _args_i32_[16 + 4 * 8 + 1];
        int _s2_HJ = _args_i32_[16 + 4 * 8 + 2];
        _li_HJ *= _s0_HJ;
        _li_HJ += H8;
        _li_HJ *= _s1_HJ;
        _li_HJ += H9;
        _li_HJ *= _s2_HJ;
        _li_HJ += GU;
      }
      int HJ = _li_HJ << 2;
      float HK = _arr4_f32_[HJ >> 2];
      int _li_HL = 0;
      { // linear seek
        int _s0_HL = _args_i32_[16 + 4 * 8 + 0];
        int _s1_HL = _args_i32_[16 + 4 * 8 + 1];
        int _s2_HL = _args_i32_[16 + 4 * 8 + 2];
        _li_HL *= _s0_HL;
        _li_HL += H8;
        _li_HL *= _s1_HL;
        _li_HL += H9;
        _li_HL *= _s2_HL;
        _li_HL += H1;
      }
      int HL = _li_HL << 2;
      float HM = _arr4_f32_[HL >> 2];
      float HN = Hj * Hk;
      float HO = HN * HK;
      float HP = HN * HM;
      float HW = HK * HG;
      float HX = HK * HH;
      float HY = HM * HG;
      float HZ = HM * HH;
      float I0 = float(4.0);
      float I1 = HN * I0;
      float I2 = I1 * HW;
      float I3 = I1 * HX;
      float I4 = I1 * HY;
      float I5 = I1 * HZ;
      float I6 = I2 * GZ;
      float I7 = I3 * GZ;
      float I8 = I4 * GZ;
      float I9 = I5 * GZ;
      float Im = Hl - Hd;
      int In = H9 + H1;
      int _li_Io = 0;
      { // linear seek
        int _s0_Io = _args_i32_[16 + 4 * 8 + 0];
        int _s1_Io = _args_i32_[16 + 4 * 8 + 1];
        int _s2_Io = _args_i32_[16 + 4 * 8 + 2];
        _li_Io *= _s0_Io;
        _li_Io += H8;
        _li_Io *= _s1_Io;
        _li_Io += In;
        _li_Io *= _s2_Io;
        _li_Io += GU;
      }
      int Io = _li_Io << 2;
      float Ip = _arr4_f32_[Io >> 2];
      int _li_Iq = 0;
      { // linear seek
        int _s0_Iq = _args_i32_[16 + 4 * 8 + 0];
        int _s1_Iq = _args_i32_[16 + 4 * 8 + 1];
        int _s2_Iq = _args_i32_[16 + 4 * 8 + 2];
        _li_Iq *= _s0_Iq;
        _li_Iq += H8;
        _li_Iq *= _s1_Iq;
        _li_Iq += In;
        _li_Iq *= _s2_Iq;
        _li_Iq += H1;
      }
      int Iq = _li_Iq << 2;
      float Ir = _arr4_f32_[Iq >> 2];
      float Is = Hj * Hs;
      float It = Is * Ip;
      float Iu = Is * Ir;
      float Iw = HO + It;
      float Iz = HP + Iu;
      float IB = Ip * HG;
      float IC = Ip * Im;
      float ID = Ir * HG;
      float IE = Ir * Im;
      float IF = Is * I0;
      float IG = IF * IB;
      float IH = IF * IC;
      float II = IF * ID;
      float IJ = IF * IE;
      float IK = IG * GZ;
      float IL = IH * GZ;
      float IM = II * GZ;
      float IN = IJ * GZ;
      float IP = I6 + IK;
      float IS = I7 + IL;
      float IV = I8 + IM;
      float IY = I9 + IN;
      float J0 = float(2.0);
      float J1 = J0 - Hd;
      int J2 = int(2);
      int J3 = H9 + J2;
      int _li_J4 = 0;
      { // linear seek
        int _s0_J4 = _args_i32_[16 + 4 * 8 + 0];
        int _s1_J4 = _args_i32_[16 + 4 * 8 + 1];
        int _s2_J4 = _args_i32_[16 + 4 * 8 + 2];
        _li_J4 *= _s0_J4;
        _li_J4 += H8;
        _li_J4 *= _s1_J4;
        _li_J4 += J3;
        _li_J4 *= _s2_J4;
        _li_J4 += GU;
      }
      int J4 = _li_J4 << 2;
      float J5 = _arr4_f32_[J4 >> 2];
      int _li_J6 = 0;
      { // linear seek
        int _s0_J6 = _args_i32_[16 + 4 * 8 + 0];
        int _s1_J6 = _args_i32_[16 + 4 * 8 + 1];
        int _s2_J6 = _args_i32_[16 + 4 * 8 + 2];
        _li_J6 *= _s0_J6;
        _li_J6 += H8;
        _li_J6 *= _s1_J6;
        _li_J6 += J3;
        _li_J6 *= _s2_J6;
        _li_J6 += H1;
      }
      int J6 = _li_J6 << 2;
      float J7 = _arr4_f32_[J6 >> 2];
      float J8 = Hj * Hy;
      float J9 = J8 * J5;
      float Ja = J8 * J7;
      float Jc = Iw + J9;
      float Jf = Iz + Ja;
      float Jh = J5 * HG;
      float Ji = J5 * J1;
      float Jj = J7 * HG;
      float Jk = J7 * J1;
      float Jl = J8 * I0;
      float Jm = Jl * Jh;
      float Jn = Jl * Ji;
      float Jo = Jl * Jj;
      float Jp = Jl * Jk;
      float Jq = Jm * GZ;
      float Jr = Jn * GZ;
      float Js = Jo * GZ;
      float Jt = Jp * GZ;
      float Jv = IP + Jq;
      float Jy = IS + Jr;
      float JB = IV + Js;
      float JE = IY + Jt;
      float JG = Hl - Hc;
      int JH = H8 + H1;
      int _li_JI = 0;
      { // linear seek
        int _s0_JI = _args_i32_[16 + 4 * 8 + 0];
        int _s1_JI = _args_i32_[16 + 4 * 8 + 1];
        int _s2_JI = _args_i32_[16 + 4 * 8 + 2];
        _li_JI *= _s0_JI;
        _li_JI += JH;
        _li_JI *= _s1_JI;
        _li_JI += H9;
        _li_JI *= _s2_JI;
        _li_JI += GU;
      }
      int JI = _li_JI << 2;
      float JJ = _arr4_f32_[JI >> 2];
      int _li_JK = 0;
      { // linear seek
        int _s0_JK = _args_i32_[16 + 4 * 8 + 0];
        int _s1_JK = _args_i32_[16 + 4 * 8 + 1];
        int _s2_JK = _args_i32_[16 + 4 * 8 + 2];
        _li_JK *= _s0_JK;
        _li_JK += JH;
        _li_JK *= _s1_JK;
        _li_JK += H9;
        _li_JK *= _s2_JK;
        _li_JK += H1;
      }
      int JK = _li_JK << 2;
      float JL = _arr4_f32_[JK >> 2];
      float JM = Hr * Hk;
      float JN = JM * JJ;
      float JO = JM * JL;
      float JQ = Jc + JN;
      float JT = Jf + JO;
      float JV = JJ * JG;
      float JW = JJ * HH;
      float JX = JL * JG;
      float JY = JL * HH;
      float JZ = JM * I0;
      float K0 = JZ * JV;
      float K1 = JZ * JW;
      float K2 = JZ * JX;
      float K3 = JZ * JY;
      float K4 = K0 * GZ;
      float K5 = K1 * GZ;
      float K6 = K2 * GZ;
      float K7 = K3 * GZ;
      float K9 = Jv + K4;
      float Kc = Jy + K5;
      float Kf = JB + K6;
      float Ki = JE + K7;
      int _li_Kk = 0;
      { // linear seek
        int _s0_Kk = _args_i32_[16 + 4 * 8 + 0];
        int _s1_Kk = _args_i32_[16 + 4 * 8 + 1];
        int _s2_Kk = _args_i32_[16 + 4 * 8 + 2];
        _li_Kk *= _s0_Kk;
        _li_Kk += JH;
        _li_Kk *= _s1_Kk;
        _li_Kk += In;
        _li_Kk *= _s2_Kk;
        _li_Kk += GU;
      }
      int Kk = _li_Kk << 2;
      float Kl = _arr4_f32_[Kk >> 2];
      int _li_Km = 0;
      { // linear seek
        int _s0_Km = _args_i32_[16 + 4 * 8 + 0];
        int _s1_Km = _args_i32_[16 + 4 * 8 + 1];
        int _s2_Km = _args_i32_[16 + 4 * 8 + 2];
        _li_Km *= _s0_Km;
        _li_Km += JH;
        _li_Km *= _s1_Km;
        _li_Km += In;
        _li_Km *= _s2_Km;
        _li_Km += H1;
      }
      int Km = _li_Km << 2;
      float Kn = _arr4_f32_[Km >> 2];
      float Ko = Hr * Hs;
      float Kp = Ko * Kl;
      float Kq = Ko * Kn;
      float Ks = JQ + Kp;
      float Kv = JT + Kq;
      float Kx = Kl * JG;
      float Ky = Kl * Im;
      float Kz = Kn * JG;
      float KA = Kn * Im;
      float KB = Ko * I0;
      float KC = KB * Kx;
      float KD = KB * Ky;
      float KE = KB * Kz;
      float KF = KB * KA;
      float KG = KC * GZ;
      float KH = KD * GZ;
      float KI = KE * GZ;
      float KJ = KF * GZ;
      float KL = K9 + KG;
      float KO = Kc + KH;
      float KR = Kf + KI;
      float KU = Ki + KJ;
      int _li_KW = 0;
      { // linear seek
        int _s0_KW = _args_i32_[16 + 4 * 8 + 0];
        int _s1_KW = _args_i32_[16 + 4 * 8 + 1];
        int _s2_KW = _args_i32_[16 + 4 * 8 + 2];
        _li_KW *= _s0_KW;
        _li_KW += JH;
        _li_KW *= _s1_KW;
        _li_KW += J3;
        _li_KW *= _s2_KW;
        _li_KW += GU;
      }
      int KW = _li_KW << 2;
      float KX = _arr4_f32_[KW >> 2];
      int _li_KY = 0;
      { // linear seek
        int _s0_KY = _args_i32_[16 + 4 * 8 + 0];
        int _s1_KY = _args_i32_[16 + 4 * 8 + 1];
        int _s2_KY = _args_i32_[16 + 4 * 8 + 2];
        _li_KY *= _s0_KY;
        _li_KY += JH;
        _li_KY *= _s1_KY;
        _li_KY += J3;
        _li_KY *= _s2_KY;
        _li_KY += H1;
      }
      int KY = _li_KY << 2;
      float KZ = _arr4_f32_[KY >> 2];
      float L0 = Hr * Hy;
      float L1 = L0 * KX;
      float L2 = L0 * KZ;
      float L4 = Ks + L1;
      float L7 = Kv + L2;
      float L9 = KX * JG;
      float La = KX * J1;
      float Lb = KZ * JG;
      float Lc = KZ * J1;
      float Ld = L0 * I0;
      float Le = Ld * L9;
      float Lf = Ld * La;
      float Lg = Ld * Lb;
      float Lh = Ld * Lc;
      float Li = Le * GZ;
      float Lj = Lf * GZ;
      float Lk = Lg * GZ;
      float Ll = Lh * GZ;
      float Ln = KL + Li;
      float Lq = KO + Lj;
      float Lt = KR + Lk;
      float Lw = KU + Ll;
      float Ly = J0 - Hc;
      int Lz = H8 + J2;
      int _li_LA = 0;
      { // linear seek
        int _s0_LA = _args_i32_[16 + 4 * 8 + 0];
        int _s1_LA = _args_i32_[16 + 4 * 8 + 1];
        int _s2_LA = _args_i32_[16 + 4 * 8 + 2];
        _li_LA *= _s0_LA;
        _li_LA += Lz;
        _li_LA *= _s1_LA;
        _li_LA += H9;
        _li_LA *= _s2_LA;
        _li_LA += GU;
      }
      int LA = _li_LA << 2;
      float LB = _arr4_f32_[LA >> 2];
      int _li_LC = 0;
      { // linear seek
        int _s0_LC = _args_i32_[16 + 4 * 8 + 0];
        int _s1_LC = _args_i32_[16 + 4 * 8 + 1];
        int _s2_LC = _args_i32_[16 + 4 * 8 + 2];
        _li_LC *= _s0_LC;
        _li_LC += Lz;
        _li_LC *= _s1_LC;
        _li_LC += H9;
        _li_LC *= _s2_LC;
        _li_LC += H1;
      }
      int LC = _li_LC << 2;
      float LD = _arr4_f32_[LC >> 2];
      float LE = Hx * Hk;
      float LF = LE * LB;
      float LG = LE * LD;
      float LI = L4 + LF;
      float LL = L7 + LG;
      float LN = LB * Ly;
      float LO = LB * HH;
      float LP = LD * Ly;
      float LQ = LD * HH;
      float LR = LE * I0;
      float LS = LR * LN;
      float LT = LR * LO;
      float LU = LR * LP;
      float LV = LR * LQ;
      float LW = LS * GZ;
      float LX = LT * GZ;
      float LY = LU * GZ;
      float LZ = LV * GZ;
      float M1 = Ln + LW;
      float M4 = Lq + LX;
      float M7 = Lt + LY;
      float Ma = Lw + LZ;
      int _li_Mc = 0;
      { // linear seek
        int _s0_Mc = _args_i32_[16 + 4 * 8 + 0];
        int _s1_Mc = _args_i32_[16 + 4 * 8 + 1];
        int _s2_Mc = _args_i32_[16 + 4 * 8 + 2];
        _li_Mc *= _s0_Mc;
        _li_Mc += Lz;
        _li_Mc *= _s1_Mc;
        _li_Mc += In;
        _li_Mc *= _s2_Mc;
        _li_Mc += GU;
      }
      int Mc = _li_Mc << 2;
      float Md = _arr4_f32_[Mc >> 2];
      int _li_Me = 0;
      { // linear seek
        int _s0_Me = _args_i32_[16 + 4 * 8 + 0];
        int _s1_Me = _args_i32_[16 + 4 * 8 + 1];
        int _s2_Me = _args_i32_[16 + 4 * 8 + 2];
        _li_Me *= _s0_Me;
        _li_Me += Lz;
        _li_Me *= _s1_Me;
        _li_Me += In;
        _li_Me *= _s2_Me;
        _li_Me += H1;
      }
      int Me = _li_Me << 2;
      float Mf = _arr4_f32_[Me >> 2];
      float Mg = Hx * Hs;
      float Mh = Mg * Md;
      float Mi = Mg * Mf;
      float Mk = LI + Mh;
      float Mn = LL + Mi;
      float Mp = Md * Ly;
      float Mq = Md * Im;
      float Mr = Mf * Ly;
      float Ms = Mf * Im;
      float Mt = Mg * I0;
      float Mu = Mt * Mp;
      float Mv = Mt * Mq;
      float Mw = Mt * Mr;
      float Mx = Mt * Ms;
      float My = Mu * GZ;
      float Mz = Mv * GZ;
      float MA = Mw * GZ;
      float MB = Mx * GZ;
      float MD = M1 + My;
      float MG = M4 + Mz;
      float MJ = M7 + MA;
      float MM = Ma + MB;
      int _li_MO = 0;
      { // linear seek
        int _s0_MO = _args_i32_[16 + 4 * 8 + 0];
        int _s1_MO = _args_i32_[16 + 4 * 8 + 1];
        int _s2_MO = _args_i32_[16 + 4 * 8 + 2];
        _li_MO *= _s0_MO;
        _li_MO += Lz;
        _li_MO *= _s1_MO;
        _li_MO += J3;
        _li_MO *= _s2_MO;
        _li_MO += GU;
      }
      int MO = _li_MO << 2;
      float MP = _arr4_f32_[MO >> 2];
      int _li_MQ = 0;
      { // linear seek
        int _s0_MQ = _args_i32_[16 + 4 * 8 + 0];
        int _s1_MQ = _args_i32_[16 + 4 * 8 + 1];
        int _s2_MQ = _args_i32_[16 + 4 * 8 + 2];
        _li_MQ *= _s0_MQ;
        _li_MQ += Lz;
        _li_MQ *= _s1_MQ;
        _li_MQ += J3;
        _li_MQ *= _s2_MQ;
        _li_MQ += H1;
      }
      int MQ = _li_MQ << 2;
      float MR = _arr4_f32_[MQ >> 2];
      float MS = Hx * Hy;
      float MT = MS * MP;
      float MU = MS * MR;
      float MW = Mk + MT;
      float MZ = Mn + MU;
      float N1 = MP * Ly;
      float N2 = MP * J1;
      float N3 = MR * Ly;
      float N4 = MR * J1;
      float N5 = MS * I0;
      float N6 = N5 * N1;
      float N7 = N5 * N2;
      float N8 = N5 * N3;
      float N9 = N5 * N4;
      float Na = N6 * GZ;
      float Nb = N7 * GZ;
      float Nc = N8 * GZ;
      float Nd = N9 * GZ;
      float Nf = MD + Na;
      float Ni = MG + Nb;
      float Nl = MJ + Nc;
      float No = MM + Nd;
      int _li_Ns = 0;
      { // linear seek
        int _s0_Ns = _args_i32_[16 + 1 * 8 + 0];
        int _s1_Ns = _args_i32_[16 + 1 * 8 + 1];
        _li_Ns *= _s0_Ns;
        _li_Ns += GS;
        _li_Ns *= _s1_Ns;
        _li_Ns += GU;
      }
      int Ns = _li_Ns << 2;
      _arr1_f32_[Ns >> 2] = MW;
      int _li_Nv = 0;
      { // linear seek
        int _s0_Nv = _args_i32_[16 + 1 * 8 + 0];
        int _s1_Nv = _args_i32_[16 + 1 * 8 + 1];
        _li_Nv *= _s0_Nv;
        _li_Nv += GS;
        _li_Nv *= _s1_Nv;
        _li_Nv += H1;
      }
      int Nv = _li_Nv << 2;
      _arr1_f32_[Nv >> 2] = MZ;
      int Nx = 20;
      float Ny = _gtmp_f32_[Nx >> 2];
      float Nz = Ny * MW;
      float NA = Ny * MZ;
      float NB;
      { // Begin Atomic Op
      NB = atomicAdd_arr0_f32(GV >> 2, Nz);
      } // End Atomic Op
      float NC;
      { // Begin Atomic Op
      NC = atomicAdd_arr0_f32(H2 >> 2, NA);
      } // End Atomic Op
      int _li_NE = 0;
      { // linear seek
        int _s0_NE = _args_i32_[16 + 2 * 8 + 0];
        _li_NE *= _s0_NE;
        _li_NE += GS;
      }
      int NE = _li_NE << 2;
      float NF = _arr2_f32_[NE >> 2];
      float NI = Nf + No;
      float NJ = Ny * NI;
      float NK = NJ + Hl;
      float NL = NF * NK;
      _arr2_f32_[NE >> 2] = NL;
      int _li_NO = 0;
      { // linear seek
        int _s0_NO = _args_i32_[16 + 3 * 8 + 0];
        int _s1_NO = _args_i32_[16 + 3 * 8 + 1];
        int _s2_NO = _args_i32_[16 + 3 * 8 + 2];
        _li_NO *= _s0_NO;
        _li_NO += GS;
        _li_NO *= _s1_NO;
        _li_NO += GU;
        _li_NO *= _s2_NO;
        _li_NO += GU;
      }
      int NO = _li_NO << 2;
      _arr3_f32_[NO >> 2] = Nf;
      int _li_NR = 0;
      { // linear seek
        int _s0_NR = _args_i32_[16 + 3 * 8 + 0];
        int _s1_NR = _args_i32_[16 + 3 * 8 + 1];
        int _s2_NR = _args_i32_[16 + 3 * 8 + 2];
        _li_NR *= _s0_NR;
        _li_NR += GS;
        _li_NR *= _s1_NR;
        _li_NR += GU;
        _li_NR *= _s2_NR;
        _li_NR += H1;
      }
      int NR = _li_NR << 2;
      _arr3_f32_[NR >> 2] = Ni;
      int _li_NU = 0;
      { // linear seek
        int _s0_NU = _args_i32_[16 + 3 * 8 + 0];
        int _s1_NU = _args_i32_[16 + 3 * 8 + 1];
        int _s2_NU = _args_i32_[16 + 3 * 8 + 2];
        _li_NU *= _s0_NU;
        _li_NU += GS;
        _li_NU *= _s1_NU;
        _li_NU += H1;
        _li_NU *= _s2_NU;
        _li_NU += GU;
      }
      int NU = _li_NU << 2;
      _arr3_f32_[NU >> 2] = Nl;
      int _li_NW = 0;
      { // linear seek
        int _s0_NW = _args_i32_[16 + 3 * 8 + 0];
        int _s1_NW = _args_i32_[16 + 3 * 8 + 1];
        int _s2_NW = _args_i32_[16 + 3 * 8 + 2];
        _li_NW *= _s0_NW;
        _li_NW += GS;
        _li_NW *= _s1_NW;
        _li_NW += H1;
        _li_NW *= _s2_NW;
        _li_NW += H1;
      }
      int NW = _li_NW << 2;
      _arr3_f32_[NW >> 2] = No;
  }
}

void main()
{
  substep_c44_07();
}
