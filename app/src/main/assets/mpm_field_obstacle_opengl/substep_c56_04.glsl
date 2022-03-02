#version 310 es
layout(local_size_x = 128, local_size_y = 1, local_size_z = 1) in;
precision highp float;
layout(std430, binding = 0) buffer data_i32 { int _data_i32_[];}; 
layout(std430, binding = 0) buffer data_f32 { float _data_f32_[];}; 
layout(std430, binding = 1) buffer gtmp_i32 { int _gtmp_i32_[];}; 
layout(std430, binding = 1) buffer gtmp_f32 { float _gtmp_f32_[];}; 
float atomicAdd_data_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _data_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) + rhs)); } while (old_val != atomicCompSwap(_data_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicSub_data_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _data_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) - rhs)); } while (old_val != atomicCompSwap(_data_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMax_data_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _data_i32_[addr]; new_val = floatBitsToInt(max(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_data_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMin_data_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _data_i32_[addr]; new_val = floatBitsToInt(min(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_data_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); }float atomicAdd_gtmp_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _gtmp_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) + rhs)); } while (old_val != atomicCompSwap(_gtmp_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicSub_gtmp_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _gtmp_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) - rhs)); } while (old_val != atomicCompSwap(_gtmp_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMax_gtmp_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _gtmp_i32_[addr]; new_val = floatBitsToInt(max(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_gtmp_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMin_gtmp_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _gtmp_i32_[addr]; new_val = floatBitsToInt(min(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_gtmp_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); }
const float inf = 1.0f / 0.0f;
const float nan = 0.0f / 0.0f;
void substep_c56_04()
{ // range for
  // range known at runtime
  int _beg = 0, _end = _gtmp_i32_[0 >> 2];
  int _sid0 = int(gl_GlobalInvocationID.x);
  for (int _sid = _sid0; _sid < (_end - _beg); _sid += int(gl_WorkGroupSize.x * gl_NumWorkGroups.x)) {
    int _itv = _beg + _sid;
      int GH = _itv;
      int CeL = 0;
      int CuB = int(0);
      int CeN = CeL + 229424 * CuB; // S0
      int CeO = CeN + 65576; // S7
      int CeP = int(4096);
      int CeQ = GH - CeP * int(GH / CeP);
      int CuD = int(1);
      int CeU = CeO + 8 * CeQ; // S7
      int CeV = CeU + 0; // S8
      float GJ = _data_f32_[CeV >> 2];
      float GK = float(64.0);
      float GL = GJ * GK;
      int Cf8 = CeU + 4; // S9
      float GN = _data_f32_[Cf8 >> 2];
      float GO = GN * GK;
      float GP = float(0.5);
      float GQ = GL - GP;
      float GR = GO - GP;
      int GS = int(GQ);
      int GT = int(GR);
      float GU = float(GS);
      float GV = GL - GU;
      float GW = float(GT);
      float GX = GO - GW;
      float GY = float(1.5);
      float GZ = GY - GV;
      float H0 = GY - GX;
      float H1 = GZ * GZ;
      float H2 = H0 * H0;
      float H3 = H1 * GP;
      float H4 = H2 * GP;
      float H5 = float(1.0);
      float H6 = GV - H5;
      float H7 = GX - H5;
      float H8 = H6 * H6;
      float H9 = H7 * H7;
      float Ha = float(0.75);
      float Hb = Ha - H8;
      float Hc = Ha - H9;
      float Hd = GV - GP;
      float He = GX - GP;
      float Hf = Hd * Hd;
      float Hg = He * He;
      float Hh = Hf * GP;
      float Hi = Hg * GP;
      float Hp = float(0.0);
      float Hq = Hp - GV;
      float Hr = Hp - GX;
      float Hs = float(0.015625);
      float Ht = Hq * Hs;
      float Hu = Hr * Hs;
      float Hv = H3 * H4;
      int Cff = CeN + 131112; // S20
      int Cfg = int(64);
      int Cfh = GS - Cfg * int(GS / Cfg);
      int Cfl = GT - Cfg * int(GT / Cfg);
      int Cyj = int(6);
      int Cyk = Cfh << Cyj;
      int CuS = Cfl + Cyk;
      int Cfp = Cff + 8 * CuS; // S20
      int Cfq = Cfp + 0; // S21
      float Hx = _data_f32_[Cfq >> 2];
      int CfI = Cfp + 4; // S22
      float Hz = _data_f32_[CfI >> 2];
      float HA = Hv * Hx;
      float HB = Hv * Hz;
      float HI = Hx * Ht;
      float HJ = Hx * Hu;
      float HK = Hz * Ht;
      float HL = Hz * Hu;
      float HM = float(4.0);
      float HN = Hv * HM;
      float HO = HN * HI;
      float HP = HN * HJ;
      float HQ = HN * HK;
      float HR = HN * HL;
      float HS = float(4096.0);
      float HT = HO * HS;
      float HU = HP * HS;
      float HV = HQ * HS;
      float HW = HR * HS;
      float I9 = H5 - GX;
      float Ia = I9 * Hs;
      float Ib = H3 * Hc;
      int Id = GT + CuD;
      int CfV = Id - Cfg * int(Id / Cfg);
      int Cv8 = CfV + Cyk;
      int CfZ = Cff + 8 * Cv8; // S20
      int Cg0 = CfZ + 0; // S21
      float If = _data_f32_[Cg0 >> 2];
      int Cgi = CfZ + 4; // S22
      float Ih = _data_f32_[Cgi >> 2];
      float Ii = Ib * If;
      float Ij = Ib * Ih;
      float Il = HA + Ii;
      float Io = HB + Ij;
      float Iq = If * Ht;
      float Ir = If * Ia;
      float Is = Ih * Ht;
      float It = Ih * Ia;
      float Iu = Ib * HM;
      float Iv = Iu * Iq;
      float Iw = Iu * Ir;
      float Ix = Iu * Is;
      float Iy = Iu * It;
      float Iz = Iv * HS;
      float IA = Iw * HS;
      float IB = Ix * HS;
      float IC = Iy * HS;
      float IE = HT + Iz;
      float IH = HU + IA;
      float IK = HV + IB;
      float IN = HW + IC;
      float IP = float(2.0);
      float IQ = IP - GX;
      float IR = IQ * Hs;
      float IS = H3 * Hi;
      int IT = int(2);
      int IU = GT + IT;
      int Cgv = IU - Cfg * int(IU / Cfg);
      int Cvo = Cgv + Cyk;
      int Cgz = Cff + 8 * Cvo; // S20
      int CgA = Cgz + 0; // S21
      float IW = _data_f32_[CgA >> 2];
      int CgS = Cgz + 4; // S22
      float IY = _data_f32_[CgS >> 2];
      float IZ = IS * IW;
      float J0 = IS * IY;
      float J2 = Il + IZ;
      float J5 = Io + J0;
      float J7 = IW * Ht;
      float J8 = IW * IR;
      float J9 = IY * Ht;
      float Ja = IY * IR;
      float Jb = IS * HM;
      float Jc = Jb * J7;
      float Jd = Jb * J8;
      float Je = Jb * J9;
      float Jf = Jb * Ja;
      float Jg = Jc * HS;
      float Jh = Jd * HS;
      float Ji = Je * HS;
      float Jj = Jf * HS;
      float Jl = IE + Jg;
      float Jo = IH + Jh;
      float Jr = IK + Ji;
      float Ju = IN + Jj;
      float Jw = H5 - GV;
      float Jx = Jw * Hs;
      float Jy = Hb * H4;
      int Jz = GS + CuD;
      int Ch1 = Jz - Cfg * int(Jz / Cfg);
      int Cym = Ch1 << Cyj;
      int CvE = Cfl + Cym;
      int Ch9 = Cff + 8 * CvE; // S20
      int Cha = Ch9 + 0; // S21
      float JB = _data_f32_[Cha >> 2];
      int Chs = Ch9 + 4; // S22
      float JD = _data_f32_[Chs >> 2];
      float JE = Jy * JB;
      float JF = Jy * JD;
      float JH = J2 + JE;
      float JK = J5 + JF;
      float JM = JB * Jx;
      float JN = JB * Hu;
      float JO = JD * Jx;
      float JP = JD * Hu;
      float JQ = Jy * HM;
      float JR = JQ * JM;
      float JS = JQ * JN;
      float JT = JQ * JO;
      float JU = JQ * JP;
      float JV = JR * HS;
      float JW = JS * HS;
      float JX = JT * HS;
      float JY = JU * HS;
      float K0 = Jl + JV;
      float K3 = Jo + JW;
      float K6 = Jr + JX;
      float K9 = Ju + JY;
      float Kb = Hb * Hc;
      int CvU = CfV + Cym;
      int ChJ = Cff + 8 * CvU; // S20
      int ChK = ChJ + 0; // S21
      float Kd = _data_f32_[ChK >> 2];
      int Ci2 = ChJ + 4; // S22
      float Kf = _data_f32_[Ci2 >> 2];
      float Kg = Kb * Kd;
      float Kh = Kb * Kf;
      float Kj = JH + Kg;
      float Km = JK + Kh;
      float Ko = Kd * Jx;
      float Kp = Kd * Ia;
      float Kq = Kf * Jx;
      float Kr = Kf * Ia;
      float Ks = Kb * HM;
      float Kt = Ks * Ko;
      float Ku = Ks * Kp;
      float Kv = Ks * Kq;
      float Kw = Ks * Kr;
      float Kx = Kt * HS;
      float Ky = Ku * HS;
      float Kz = Kv * HS;
      float KA = Kw * HS;
      float KC = K0 + Kx;
      float KF = K3 + Ky;
      float KI = K6 + Kz;
      float KL = K9 + KA;
      float KN = Hb * Hi;
      int Cwa = Cgv + Cym;
      int Cij = Cff + 8 * Cwa; // S20
      int Cik = Cij + 0; // S21
      float KP = _data_f32_[Cik >> 2];
      int CiC = Cij + 4; // S22
      float KR = _data_f32_[CiC >> 2];
      float KS = KN * KP;
      float KT = KN * KR;
      float KV = Kj + KS;
      float KY = Km + KT;
      float L0 = KP * Jx;
      float L1 = KP * IR;
      float L2 = KR * Jx;
      float L3 = KR * IR;
      float L4 = KN * HM;
      float L5 = L4 * L0;
      float L6 = L4 * L1;
      float L7 = L4 * L2;
      float L8 = L4 * L3;
      float L9 = L5 * HS;
      float La = L6 * HS;
      float Lb = L7 * HS;
      float Lc = L8 * HS;
      float Le = KC + L9;
      float Lh = KF + La;
      float Lk = KI + Lb;
      float Ln = KL + Lc;
      float Lp = IP - GV;
      float Lq = Lp * Hs;
      float Lr = Hh * H4;
      int Ls = GS + IT;
      int CiL = Ls - Cfg * int(Ls / Cfg);
      int Cyo = CiL << Cyj;
      int Cwq = Cfl + Cyo;
      int CiT = Cff + 8 * Cwq; // S20
      int CiU = CiT + 0; // S21
      float Lu = _data_f32_[CiU >> 2];
      int Cjc = CiT + 4; // S22
      float Lw = _data_f32_[Cjc >> 2];
      float Lx = Lr * Lu;
      float Ly = Lr * Lw;
      float LA = KV + Lx;
      float LD = KY + Ly;
      float LF = Lu * Lq;
      float LG = Lu * Hu;
      float LH = Lw * Lq;
      float LI = Lw * Hu;
      float LJ = Lr * HM;
      float LK = LJ * LF;
      float LL = LJ * LG;
      float LM = LJ * LH;
      float LN = LJ * LI;
      float LO = LK * HS;
      float LP = LL * HS;
      float LQ = LM * HS;
      float LR = LN * HS;
      float LT = Le + LO;
      float LW = Lh + LP;
      float LZ = Lk + LQ;
      float M2 = Ln + LR;
      float M4 = Hh * Hc;
      int CwG = CfV + Cyo;
      int Cjt = Cff + 8 * CwG; // S20
      int Cju = Cjt + 0; // S21
      float M6 = _data_f32_[Cju >> 2];
      int CjM = Cjt + 4; // S22
      float M8 = _data_f32_[CjM >> 2];
      float M9 = M4 * M6;
      float Ma = M4 * M8;
      float Mc = LA + M9;
      float Mf = LD + Ma;
      float Mh = M6 * Lq;
      float Mi = M6 * Ia;
      float Mj = M8 * Lq;
      float Mk = M8 * Ia;
      float Ml = M4 * HM;
      float Mm = Ml * Mh;
      float Mn = Ml * Mi;
      float Mo = Ml * Mj;
      float Mp = Ml * Mk;
      float Mq = Mm * HS;
      float Mr = Mn * HS;
      float Ms = Mo * HS;
      float Mt = Mp * HS;
      float Mv = LT + Mq;
      float My = LW + Mr;
      float MB = LZ + Ms;
      float ME = M2 + Mt;
      float MG = Hh * Hi;
      int CwW = Cgv + Cyo;
      int Ck3 = Cff + 8 * CwW; // S20
      int Ck4 = Ck3 + 0; // S21
      float MI = _data_f32_[Ck4 >> 2];
      int Ckm = Ck3 + 4; // S22
      float MK = _data_f32_[Ckm >> 2];
      float ML = MG * MI;
      float MM = MG * MK;
      float MO = Mc + ML;
      float MR = Mf + MM;
      float MT = MI * Lq;
      float MU = MI * IR;
      float MV = MK * Lq;
      float MW = MK * IR;
      float MX = MG * HM;
      float MY = MX * MT;
      float MZ = MX * MU;
      float N0 = MX * MV;
      float N1 = MX * MW;
      float N2 = MY * HS;
      float N3 = MZ * HS;
      float N4 = N0 * HS;
      float N5 = N1 * HS;
      float N7 = Mv + N2;
      float Na = My + N3;
      float Nd = MB + N4;
      float Ng = ME + N5;
      int Cks = CeN + 98344; // S10
      int Cky = Cks + 8 * CeQ; // S10
      int Ckz = Cky + 0; // S11
      _data_f32_[Ckz >> 2] = MO;
      int CkM = Cky + 4; // S12
      _data_f32_[CkM >> 2] = MR;
      float No = float(0.000390625);
      float Np = MO * No;
      float Nq = MR * No;
      float Ns = GJ + Np;
      _data_f32_[CeV >> 2] = Ns;
      float Nv = GN + Nq;
      _data_f32_[Cf8 >> 2] = Nv;
      int ClI = CeN + 32808; // S18
      int ClO = ClI + 4 * CeQ; // S18
      int ClP = ClO + 0; // S19
      float Ny = _data_f32_[ClP >> 2];
      float NB = N7 + Ng;
      float NC = NB * No;
      float ND = NC + H5;
      float NE = Ny * ND;
      _data_f32_[ClP >> 2] = NE;
      int Cm8 = CeN + 163888; // S13
      int Cme = Cm8 + 16 * CeQ; // S13
      int Cmf = Cme + 0; // S14
      _data_f32_[Cmf >> 2] = N7;
      int Cms = Cme + 4; // S15
      _data_f32_[Cms >> 2] = Na;
      int CmF = Cme + 8; // S16
      _data_f32_[CmF >> 2] = Nd;
      int CmS = Cme + 12; // S17
      _data_f32_[CmS >> 2] = Ng;
  }
}

void main()
{
  substep_c56_04();
}