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
void substep_c44_04()
{ // range for
  // range from args buffer
  int Gg = _args_i32_[16 + 0 * 8 + 0];
  int _beg = 0, _end = Gg;
  int _sid0 = int(gl_GlobalInvocationID.x);
  for (int _sid = _sid0; _sid < (_end - _beg); _sid += int(gl_WorkGroupSize.x * gl_NumWorkGroups.x)) {
    int _itv = _beg + _sid;
      int Gg = _args_i32_[16 + 0 * 8 + 0];
      int Gh = _itv;
      int Gi = Gh - Gg * int(Gh / Gg);
      int Gk = int(0);
      int _li_Gl = 0;
      int _s0_arr0 = _args_i32_[16 + 0 * 8 + 0];
      int _s1_arr0 = _args_i32_[16 + 0 * 8 + 1];
      { // linear seek
        _li_Gl *= _s0_arr0;
        _li_Gl += Gi;
        _li_Gl *= _s1_arr0;
        _li_Gl += Gk;
      }
      int Gl = _li_Gl << 2;
      float Gm = _arr0_f32_[Gl >> 2];
      int Gn = 0;
      float Go = _gtmp_f32_[Gn >> 2];
      float Gp = Gm * Go;
      int Gq = int(1);
      int _li_Gr = 0;
      { // linear seek
        _li_Gr *= _s0_arr0;
        _li_Gr += Gi;
        _li_Gr *= _s1_arr0;
        _li_Gr += Gq;
      }
      int Gr = _li_Gr << 2;
      float Gs = _arr0_f32_[Gr >> 2];
      float Gt = Gs * Go;
      float Gu = float(0.5);
      float Gv = Gp - Gu;
      float Gw = Gt - Gu;
      int Gx = int(Gv);
      int Gy = int(Gw);
      float Gz = float(Gx);
      float GA = float(Gy);
      float GB = Gp - Gz;
      float GC = Gt - GA;
      float GD = float(1.5);
      float GE = GD - GB;
      float GF = GD - GC;
      float GG = GE * GE;
      float GH = GF * GF;
      float GI = GG * Gu;
      float GJ = GH * Gu;
      float GK = float(1.0);
      float GL = GB - GK;
      float GM = GC - GK;
      float GN = GL * GL;
      float GO = GM * GM;
      float GP = float(0.75);
      float GQ = GP - GN;
      float GR = GP - GO;
      float GS = GB - Gu;
      float GT = GC - Gu;
      float GU = GS * GS;
      float GV = GT * GT;
      float GW = GU * Gu;
      float GX = GV * Gu;
      float H4 = float(0.0);
      float H5 = H4 - GB;
      float H6 = H4 - GC;
      int _li_H8 = 0;
      int _s0_arr4 = _args_i32_[16 + 4 * 8 + 0];
      int _s1_arr4 = _args_i32_[16 + 4 * 8 + 1];
      int _s2_arr4 = _args_i32_[16 + 4 * 8 + 2];
      { // linear seek
        _li_H8 *= _s0_arr4;
        _li_H8 += Gx;
        _li_H8 *= _s1_arr4;
        _li_H8 += Gy;
        _li_H8 *= _s2_arr4;
        _li_H8 += Gk;
      }
      int H8 = _li_H8 << 2;
      float H9 = _arr4_f32_[H8 >> 2];
      int _li_Ha = 0;
      { // linear seek
        _li_Ha *= _s0_arr4;
        _li_Ha += Gx;
        _li_Ha *= _s1_arr4;
        _li_Ha += Gy;
        _li_Ha *= _s2_arr4;
        _li_Ha += Gq;
      }
      int Ha = _li_Ha << 2;
      float Hb = _arr4_f32_[Ha >> 2];
      float Hc = GI * GJ;
      float Hd = Hc * H9;
      float He = Hc * Hb;
      float Hl = H9 * H5;
      float Hm = H9 * H6;
      float Hn = Hb * H5;
      float Ho = Hb * H6;
      float Hp = float(4.0);
      float Hq = Hc * Hp;
      float Hr = Hq * Hl;
      float Hs = Hq * Hm;
      float Ht = Hq * Hn;
      float Hu = Hq * Ho;
      float Hv = Hr * Go;
      float Hw = Hs * Go;
      float Hx = Ht * Go;
      float Hy = Hu * Go;
      float HL = GK - GC;
      int HM = Gy + Gq;
      int _li_HN = 0;
      { // linear seek
        _li_HN *= _s0_arr4;
        _li_HN += Gx;
        _li_HN *= _s1_arr4;
        _li_HN += HM;
        _li_HN *= _s2_arr4;
        _li_HN += Gk;
      }
      int HN = _li_HN << 2;
      float HO = _arr4_f32_[HN >> 2];
      int _li_HP = 0;
      { // linear seek
        _li_HP *= _s0_arr4;
        _li_HP += Gx;
        _li_HP *= _s1_arr4;
        _li_HP += HM;
        _li_HP *= _s2_arr4;
        _li_HP += Gq;
      }
      int HP = _li_HP << 2;
      float HQ = _arr4_f32_[HP >> 2];
      float HR = GI * GR;
      float HS = HR * HO;
      float HT = HR * HQ;
      float HV = Hd + HS;
      float HY = He + HT;
      float I0 = HO * H5;
      float I1 = HO * HL;
      float I2 = HQ * H5;
      float I3 = HQ * HL;
      float I4 = HR * Hp;
      float I5 = I4 * I0;
      float I6 = I4 * I1;
      float I7 = I4 * I2;
      float I8 = I4 * I3;
      float I9 = I5 * Go;
      float Ia = I6 * Go;
      float Ib = I7 * Go;
      float Ic = I8 * Go;
      float Ie = Hv + I9;
      float Ih = Hw + Ia;
      float Ik = Hx + Ib;
      float In = Hy + Ic;
      float Ip = float(2.0);
      float Iq = Ip - GC;
      int Ir = int(2);
      int Is = Gy + Ir;
      int _li_It = 0;
      { // linear seek
        _li_It *= _s0_arr4;
        _li_It += Gx;
        _li_It *= _s1_arr4;
        _li_It += Is;
        _li_It *= _s2_arr4;
        _li_It += Gk;
      }
      int It = _li_It << 2;
      float Iu = _arr4_f32_[It >> 2];
      int _li_Iv = 0;
      { // linear seek
        _li_Iv *= _s0_arr4;
        _li_Iv += Gx;
        _li_Iv *= _s1_arr4;
        _li_Iv += Is;
        _li_Iv *= _s2_arr4;
        _li_Iv += Gq;
      }
      int Iv = _li_Iv << 2;
      float Iw = _arr4_f32_[Iv >> 2];
      float Ix = GI * GX;
      float Iy = Ix * Iu;
      float Iz = Ix * Iw;
      float IB = HV + Iy;
      float IE = HY + Iz;
      float IG = Iu * H5;
      float IH = Iu * Iq;
      float II = Iw * H5;
      float IJ = Iw * Iq;
      float IK = Ix * Hp;
      float IL = IK * IG;
      float IM = IK * IH;
      float IN = IK * II;
      float IO = IK * IJ;
      float IP = IL * Go;
      float IQ = IM * Go;
      float IR = IN * Go;
      float IS = IO * Go;
      float IU = Ie + IP;
      float IX = Ih + IQ;
      float J0 = Ik + IR;
      float J3 = In + IS;
      float J5 = GK - GB;
      int J6 = Gx + Gq;
      int _li_J7 = 0;
      { // linear seek
        _li_J7 *= _s0_arr4;
        _li_J7 += J6;
        _li_J7 *= _s1_arr4;
        _li_J7 += Gy;
        _li_J7 *= _s2_arr4;
        _li_J7 += Gk;
      }
      int J7 = _li_J7 << 2;
      float J8 = _arr4_f32_[J7 >> 2];
      int _li_J9 = 0;
      { // linear seek
        _li_J9 *= _s0_arr4;
        _li_J9 += J6;
        _li_J9 *= _s1_arr4;
        _li_J9 += Gy;
        _li_J9 *= _s2_arr4;
        _li_J9 += Gq;
      }
      int J9 = _li_J9 << 2;
      float Ja = _arr4_f32_[J9 >> 2];
      float Jb = GQ * GJ;
      float Jc = Jb * J8;
      float Jd = Jb * Ja;
      float Jf = IB + Jc;
      float Ji = IE + Jd;
      float Jk = J8 * J5;
      float Jl = J8 * H6;
      float Jm = Ja * J5;
      float Jn = Ja * H6;
      float Jo = Jb * Hp;
      float Jp = Jo * Jk;
      float Jq = Jo * Jl;
      float Jr = Jo * Jm;
      float Js = Jo * Jn;
      float Jt = Jp * Go;
      float Ju = Jq * Go;
      float Jv = Jr * Go;
      float Jw = Js * Go;
      float Jy = IU + Jt;
      float JB = IX + Ju;
      float JE = J0 + Jv;
      float JH = J3 + Jw;
      int _li_JJ = 0;
      { // linear seek
        _li_JJ *= _s0_arr4;
        _li_JJ += J6;
        _li_JJ *= _s1_arr4;
        _li_JJ += HM;
        _li_JJ *= _s2_arr4;
        _li_JJ += Gk;
      }
      int JJ = _li_JJ << 2;
      float JK = _arr4_f32_[JJ >> 2];
      int _li_JL = 0;
      { // linear seek
        _li_JL *= _s0_arr4;
        _li_JL += J6;
        _li_JL *= _s1_arr4;
        _li_JL += HM;
        _li_JL *= _s2_arr4;
        _li_JL += Gq;
      }
      int JL = _li_JL << 2;
      float JM = _arr4_f32_[JL >> 2];
      float JN = GQ * GR;
      float JO = JN * JK;
      float JP = JN * JM;
      float JR = Jf + JO;
      float JU = Ji + JP;
      float JW = JK * J5;
      float JX = JK * HL;
      float JY = JM * J5;
      float JZ = JM * HL;
      float K0 = JN * Hp;
      float K1 = K0 * JW;
      float K2 = K0 * JX;
      float K3 = K0 * JY;
      float K4 = K0 * JZ;
      float K5 = K1 * Go;
      float K6 = K2 * Go;
      float K7 = K3 * Go;
      float K8 = K4 * Go;
      float Ka = Jy + K5;
      float Kd = JB + K6;
      float Kg = JE + K7;
      float Kj = JH + K8;
      int _li_Kl = 0;
      { // linear seek
        _li_Kl *= _s0_arr4;
        _li_Kl += J6;
        _li_Kl *= _s1_arr4;
        _li_Kl += Is;
        _li_Kl *= _s2_arr4;
        _li_Kl += Gk;
      }
      int Kl = _li_Kl << 2;
      float Km = _arr4_f32_[Kl >> 2];
      int _li_Kn = 0;
      { // linear seek
        _li_Kn *= _s0_arr4;
        _li_Kn += J6;
        _li_Kn *= _s1_arr4;
        _li_Kn += Is;
        _li_Kn *= _s2_arr4;
        _li_Kn += Gq;
      }
      int Kn = _li_Kn << 2;
      float Ko = _arr4_f32_[Kn >> 2];
      float Kp = GQ * GX;
      float Kq = Kp * Km;
      float Kr = Kp * Ko;
      float Kt = JR + Kq;
      float Kw = JU + Kr;
      float Ky = Km * J5;
      float Kz = Km * Iq;
      float KA = Ko * J5;
      float KB = Ko * Iq;
      float KC = Kp * Hp;
      float KD = KC * Ky;
      float KE = KC * Kz;
      float KF = KC * KA;
      float KG = KC * KB;
      float KH = KD * Go;
      float KI = KE * Go;
      float KJ = KF * Go;
      float KK = KG * Go;
      float KM = Ka + KH;
      float KP = Kd + KI;
      float KS = Kg + KJ;
      float KV = Kj + KK;
      float KX = Ip - GB;
      int KY = Gx + Ir;
      int _li_KZ = 0;
      { // linear seek
        _li_KZ *= _s0_arr4;
        _li_KZ += KY;
        _li_KZ *= _s1_arr4;
        _li_KZ += Gy;
        _li_KZ *= _s2_arr4;
        _li_KZ += Gk;
      }
      int KZ = _li_KZ << 2;
      float L0 = _arr4_f32_[KZ >> 2];
      int _li_L1 = 0;
      { // linear seek
        _li_L1 *= _s0_arr4;
        _li_L1 += KY;
        _li_L1 *= _s1_arr4;
        _li_L1 += Gy;
        _li_L1 *= _s2_arr4;
        _li_L1 += Gq;
      }
      int L1 = _li_L1 << 2;
      float L2 = _arr4_f32_[L1 >> 2];
      float L3 = GW * GJ;
      float L4 = L3 * L0;
      float L5 = L3 * L2;
      float L7 = Kt + L4;
      float La = Kw + L5;
      float Lc = L0 * KX;
      float Ld = L0 * H6;
      float Le = L2 * KX;
      float Lf = L2 * H6;
      float Lg = L3 * Hp;
      float Lh = Lg * Lc;
      float Li = Lg * Ld;
      float Lj = Lg * Le;
      float Lk = Lg * Lf;
      float Ll = Lh * Go;
      float Lm = Li * Go;
      float Ln = Lj * Go;
      float Lo = Lk * Go;
      float Lq = KM + Ll;
      float Lt = KP + Lm;
      float Lw = KS + Ln;
      float Lz = KV + Lo;
      int _li_LB = 0;
      { // linear seek
        _li_LB *= _s0_arr4;
        _li_LB += KY;
        _li_LB *= _s1_arr4;
        _li_LB += HM;
        _li_LB *= _s2_arr4;
        _li_LB += Gk;
      }
      int LB = _li_LB << 2;
      float LC = _arr4_f32_[LB >> 2];
      int _li_LD = 0;
      { // linear seek
        _li_LD *= _s0_arr4;
        _li_LD += KY;
        _li_LD *= _s1_arr4;
        _li_LD += HM;
        _li_LD *= _s2_arr4;
        _li_LD += Gq;
      }
      int LD = _li_LD << 2;
      float LE = _arr4_f32_[LD >> 2];
      float LF = GW * GR;
      float LG = LF * LC;
      float LH = LF * LE;
      float LJ = L7 + LG;
      float LM = La + LH;
      float LO = LC * KX;
      float LP = LC * HL;
      float LQ = LE * KX;
      float LR = LE * HL;
      float LS = LF * Hp;
      float LT = LS * LO;
      float LU = LS * LP;
      float LV = LS * LQ;
      float LW = LS * LR;
      float LX = LT * Go;
      float LY = LU * Go;
      float LZ = LV * Go;
      float M0 = LW * Go;
      float M2 = Lq + LX;
      float M5 = Lt + LY;
      float M8 = Lw + LZ;
      float Mb = Lz + M0;
      int _li_Md = 0;
      { // linear seek
        _li_Md *= _s0_arr4;
        _li_Md += KY;
        _li_Md *= _s1_arr4;
        _li_Md += Is;
        _li_Md *= _s2_arr4;
        _li_Md += Gk;
      }
      int Md = _li_Md << 2;
      float Me = _arr4_f32_[Md >> 2];
      int _li_Mf = 0;
      { // linear seek
        _li_Mf *= _s0_arr4;
        _li_Mf += KY;
        _li_Mf *= _s1_arr4;
        _li_Mf += Is;
        _li_Mf *= _s2_arr4;
        _li_Mf += Gq;
      }
      int Mf = _li_Mf << 2;
      float Mg = _arr4_f32_[Mf >> 2];
      float Mh = GW * GX;
      float Mi = Mh * Me;
      float Mj = Mh * Mg;
      float Ml = LJ + Mi;
      float Mo = LM + Mj;
      float Mq = Me * KX;
      float Mr = Me * Iq;
      float Ms = Mg * KX;
      float Mt = Mg * Iq;
      float Mu = Mh * Hp;
      float Mv = Mu * Mq;
      float Mw = Mu * Mr;
      float Mx = Mu * Ms;
      float My = Mu * Mt;
      float Mz = Mv * Go;
      float MA = Mw * Go;
      float MB = Mx * Go;
      float MC = My * Go;
      float ME = M2 + Mz;
      float MH = M5 + MA;
      float MK = M8 + MB;
      float MN = Mb + MC;
      int _li_MR = 0;
      int _s0_arr1 = _args_i32_[16 + 1 * 8 + 0];
      int _s1_arr1 = _args_i32_[16 + 1 * 8 + 1];
      { // linear seek
        _li_MR *= _s0_arr1;
        _li_MR += Gi;
        _li_MR *= _s1_arr1;
        _li_MR += Gk;
      }
      int MR = _li_MR << 2;
      _arr1_f32_[MR >> 2] = Ml;
      int _li_MU = 0;
      { // linear seek
        _li_MU *= _s0_arr1;
        _li_MU += Gi;
        _li_MU *= _s1_arr1;
        _li_MU += Gq;
      }
      int MU = _li_MU << 2;
      _arr1_f32_[MU >> 2] = Mo;
      int MW = 4;
      float MX = _gtmp_f32_[MW >> 2];
      float MY = MX * Ml;
      float MZ = MX * Mo;
      float N0;
      { // Begin Atomic Op
      N0 = atomicAdd_arr0_f32(Gl >> 2, MY);
      } // End Atomic Op
      float N1;
      { // Begin Atomic Op
      N1 = atomicAdd_arr0_f32(Gr >> 2, MZ);
      } // End Atomic Op
      int _li_N3 = 0;
      int _s0_arr2 = _args_i32_[16 + 2 * 8 + 0];
      { // linear seek
        _li_N3 *= _s0_arr2;
        _li_N3 += Gi;
      }
      int N3 = _li_N3 << 2;
      float N4 = _arr2_f32_[N3 >> 2];
      float N7 = ME + MN;
      float N8 = MX * N7;
      float N9 = N8 + GK;
      float Na = N4 * N9;
      _arr2_f32_[N3 >> 2] = Na;
      int _li_Nd = 0;
      int _s0_arr3 = _args_i32_[16 + 3 * 8 + 0];
      int _s1_arr3 = _args_i32_[16 + 3 * 8 + 1];
      int _s2_arr3 = _args_i32_[16 + 3 * 8 + 2];
      { // linear seek
        _li_Nd *= _s0_arr3;
        _li_Nd += Gi;
        _li_Nd *= _s1_arr3;
        _li_Nd += Gk;
        _li_Nd *= _s2_arr3;
        _li_Nd += Gk;
      }
      int Nd = _li_Nd << 2;
      _arr3_f32_[Nd >> 2] = ME;
      int _li_Ng = 0;
      { // linear seek
        _li_Ng *= _s0_arr3;
        _li_Ng += Gi;
        _li_Ng *= _s1_arr3;
        _li_Ng += Gk;
        _li_Ng *= _s2_arr3;
        _li_Ng += Gq;
      }
      int Ng = _li_Ng << 2;
      _arr3_f32_[Ng >> 2] = MH;
      int _li_Nj = 0;
      { // linear seek
        _li_Nj *= _s0_arr3;
        _li_Nj += Gi;
        _li_Nj *= _s1_arr3;
        _li_Nj += Gq;
        _li_Nj *= _s2_arr3;
        _li_Nj += Gk;
      }
      int Nj = _li_Nj << 2;
      _arr3_f32_[Nj >> 2] = MK;
      int _li_Nl = 0;
      { // linear seek
        _li_Nl *= _s0_arr3;
        _li_Nl += Gi;
        _li_Nl *= _s1_arr3;
        _li_Nl += Gq;
        _li_Nl *= _s2_arr3;
        _li_Nl += Gq;
      }
      int Nl = _li_Nl << 2;
      _arr3_f32_[Nl >> 2] = MN;
  }
}

void main()
{
  substep_c44_04();
}
