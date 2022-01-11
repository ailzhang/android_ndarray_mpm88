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

const float inf = 1.0f / 0.0f;
const float nan = 0.0f / 0.0f;
void substep_c44_01()
{ // range for
  // range from args buffer
  int W = _args_i32_[16 + 0 * 8 + 0];
  int _beg = 0, _end = W;
  int _sid0 = int(gl_GlobalInvocationID.x);
  for (int _sid = _sid0; _sid < (_end - _beg); _sid += int(gl_WorkGroupSize.x * gl_NumWorkGroups.x)) {
    int _itv = _beg + _sid;
      float S = float(1.0);
      int T = int(1);
      float U = float(0.0);
      float V = float(0.5);
      int W = _args_i32_[16 + 0 * 8 + 0];
      int X = _itv;
      int Y = X - W * int(X / W);
      int Aq = int(0);
      int _li_Ar = 0;
      int _s0_arr0 = _args_i32_[16 + 0 * 8 + 0];
      int _s1_arr0 = _args_i32_[16 + 0 * 8 + 1];
      { // linear seek
        _li_Ar *= _s0_arr0;
        _li_Ar += Y;
        _li_Ar *= _s1_arr0;
        _li_Ar += Aq;
      }
      int Ar = _li_Ar << 2;
      float As = _arr0_f32_[Ar >> 2];
      float At = float(64.0);
      float Au = As * At;
      int _li_Av = 0;
      { // linear seek
        _li_Av *= _s0_arr0;
        _li_Av += Y;
        _li_Av *= _s1_arr0;
        _li_Av += T;
      }
      int Av = _li_Av << 2;
      float Aw = _arr0_f32_[Av >> 2];
      float Ax = Aw * At;
      float Ay = Au - V;
      float Az = Ax - V;
      int AA = int(Ay);
      int AB = int(Az);
      float AC = float(AA);
      float AD = float(AB);
      float AE = Au - AC;
      float AF = Ax - AD;
      float AG = float(1.5);
      float AH = AG - AE;
      float AI = AG - AF;
      float AJ = AH * AH;
      float AK = AI * AI;
      float AL = AJ * V;
      float AM = AK * V;
      float AN = AE - S;
      float AO = AF - S;
      float AP = AN * AN;
      float AQ = AO * AO;
      float AR = float(0.75);
      float AS = AR - AP;
      float AT = AR - AQ;
      float AU = AE - V;
      float AV = AF - V;
      float AW = AU * AU;
      float AX = AV * AV;
      float AY = AW * V;
      float AZ = AX * V;
      int _li_B1 = 0;
      int _s0_arr6 = _args_i32_[16 + 6 * 8 + 0];
      int _s1_arr6 = _args_i32_[16 + 6 * 8 + 1];
      int _s2_arr6 = _args_i32_[16 + 6 * 8 + 2];
      { // linear seek
        _li_B1 *= _s0_arr6;
        _li_B1 += Y;
        _li_B1 *= _s1_arr6;
        _li_B1 += Aq;
        _li_B1 *= _s2_arr6;
        _li_B1 += Aq;
      }
      int B1 = _li_B1 << 2;
      float B2 = _arr6_f32_[B1 >> 2];
      float B3 = float(0.0001);
      float B4 = B2 * B3;
      int _li_B5 = 0;
      { // linear seek
        _li_B5 *= _s0_arr6;
        _li_B5 += Y;
        _li_B5 *= _s1_arr6;
        _li_B5 += Aq;
        _li_B5 *= _s2_arr6;
        _li_B5 += T;
      }
      int B5 = _li_B5 << 2;
      float B6 = _arr6_f32_[B5 >> 2];
      float B7 = B6 * B3;
      int _li_B8 = 0;
      { // linear seek
        _li_B8 *= _s0_arr6;
        _li_B8 += Y;
        _li_B8 *= _s1_arr6;
        _li_B8 += T;
        _li_B8 *= _s2_arr6;
        _li_B8 += Aq;
      }
      int B8 = _li_B8 << 2;
      float B9 = _arr6_f32_[B8 >> 2];
      float Ba = B9 * B3;
      int _li_Bb = 0;
      { // linear seek
        _li_Bb *= _s0_arr6;
        _li_Bb += Y;
        _li_Bb *= _s1_arr6;
        _li_Bb += T;
        _li_Bb *= _s2_arr6;
        _li_Bb += T;
      }
      int Bb = _li_Bb << 2;
      float Bc = _arr6_f32_[Bb >> 2];
      float Bd = Bc * B3;
      float Be = B4 + S;
      float Bf = Bd + S;
      int _li_Bh = 0;
      int _s0_arr3 = _args_i32_[16 + 3 * 8 + 0];
      int _s1_arr3 = _args_i32_[16 + 3 * 8 + 1];
      int _s2_arr3 = _args_i32_[16 + 3 * 8 + 2];
      { // linear seek
        _li_Bh *= _s0_arr3;
        _li_Bh += Y;
        _li_Bh *= _s1_arr3;
        _li_Bh += Aq;
        _li_Bh *= _s2_arr3;
        _li_Bh += Aq;
      }
      int Bh = _li_Bh << 2;
      float Bi = _arr3_f32_[Bh >> 2];
      float Bj = Be * Bi;
      int _li_Bk = 0;
      { // linear seek
        _li_Bk *= _s0_arr3;
        _li_Bk += Y;
        _li_Bk *= _s1_arr3;
        _li_Bk += T;
        _li_Bk *= _s2_arr3;
        _li_Bk += Aq;
      }
      int Bk = _li_Bk << 2;
      float Bl = _arr3_f32_[Bk >> 2];
      float Bm = B7 * Bl;
      float Bn = Bj + Bm;
      int _li_Bo = 0;
      { // linear seek
        _li_Bo *= _s0_arr3;
        _li_Bo += Y;
        _li_Bo *= _s1_arr3;
        _li_Bo += Aq;
        _li_Bo *= _s2_arr3;
        _li_Bo += T;
      }
      int Bo = _li_Bo << 2;
      float Bp = _arr3_f32_[Bo >> 2];
      float Bq = Be * Bp;
      int _li_Br = 0;
      { // linear seek
        _li_Br *= _s0_arr3;
        _li_Br += Y;
        _li_Br *= _s1_arr3;
        _li_Br += T;
        _li_Br *= _s2_arr3;
        _li_Br += T;
      }
      int Br = _li_Br << 2;
      float Bs = _arr3_f32_[Br >> 2];
      float Bt = B7 * Bs;
      float Bu = Bq + Bt;
      float Bv = Ba * Bi;
      float Bw = Bf * Bl;
      float Bx = Bv + Bw;
      float By = Ba * Bp;
      float Bz = Bf * Bs;
      float BA = By + Bz;
      int _li_BC = 0;
      int _s0_arr2 = _args_i32_[16 + 2 * 8 + 0];
      { // linear seek
        _li_BC *= _s0_arr2;
        _li_BC += Y;
      }
      int BC = _li_BC << 2;
      float BD = _arr2_f32_[BC >> 2];
      float BE = S - BD;
      float BF = float(10.0);
      float BG = BE * BF;
      float BH = float(exp(BG));
      float BI = Bn + BA;
      float BJ = Bx - Bu;
      float BK = BI * BI;
      float BL = BJ * BJ;
      float BM = BK + BL;
      float BN = float(sqrt(BM));
      float BO = S / BN;
      float BP = BI * BO;
      float BQ = BJ * BO;
      float BR = float(-BQ);
      float BS = BP * Bn;
      float BT = BQ * Bx;
      float BU = BS + BT;
      float BV = BP * Bu;
      float BW = BQ * BA;
      float BX = BV + BW;
      float BY = BR * Bu;
      float BZ = BP * BA;
      float C0 = BY + BZ;
      float C1 = float(0);
      float C2 = float(0);
      float C3 = float(abs(BX));
      float C4 = float(1e-05);
      int C5 = -int(C3 < C4);
      int C6 = C5 & T;
      if (C6 != 0) {
        C1 = BU;
        C2 = C0;
      } else {
        float Ca = BU - C0;
        float Cb = Ca * V;
        float Cc = Cb * Cb;
        float Cd = BX * BX;
        float Ce = Cc + Cd;
        float Cf = float(sqrt(Ce));
        float Cg = float(0);
        int Ch = -int(Cb > U);
        int Ci = Ch & T;
        if (Ci != 0) {
          float Ck = Cb + Cf;
          float Cl = BX / Ck;
          Cg = Cl;
        } else {
          float Cn = Cb - Cf;
          float Co = BX / Cn;
          Cg = Co;
        }
        float Cq = Cg;
        float Cr = Cq * Cq;
        float Cs = Cr + S;
        float Ct = float(sqrt(Cs));
        float Cu = S / Ct;
        float Cv = float(-Cq);
        float Cw = Cv * Cu;
        float Cx = Cu * Cu;
        float Cy = Cx * BU;
        float Cz = Cu + Cu;
        float CA = Cz * Cw;
        float CB = CA * BX;
        float CC = Cy - CB;
        float CD = Cw * Cw;
        float CE = CD * C0;
        float CF = CC + CE;
        C1 = CF;
        float CH = CD * BU;
        float CI = CH + CB;
        float CJ = Cx * C0;
        float CK = CI + CJ;
        C2 = CK;
      }
      float CM = C1;
      float CN = C2;
      int CO = -int(CM < CN);
      int CP = CO & T;
      if (CP != 0) {
        float CR = C1;
        float CS = C2;
        C1 = CS;
        C2 = CR;
      }
      float CV = C1;
      float CW = C2;
      _arr2_f32_[BC >> 2] = BD;
      float CY = CV * CW;
      float CZ = float(sqrt(CY));
      _arr3_f32_[Bh >> 2] = CZ;
      _arr3_f32_[Bo >> 2] = U;
      _arr3_f32_[Bk >> 2] = U;
      _arr3_f32_[Br >> 2] = CZ;
      float D4 = float(277.77777);
      float D5 = BH * D4;
      float D6 = D5 * CY;
      float D7 = CY - S;
      float D8 = D6 * D7;
      float D9 = float(-0.0001);
      float Da = D8 * D9;
      float Db = float(6.1035156e-05);
      float Dc = B2 * Db;
      float Dd = B6 * Db;
      float De = B9 * Db;
      float Df = Bc * Db;
      float Dg = Da + Dc;
      float Dh = Da + Df;
      float Di = U - AE;
      float Dj = U - AF;
      float Dk = float(0.015625);
      float Dl = Di * Dk;
      float Dm = Dj * Dk;
      float Dn = AL * AM;
      int _li_Dp = 0;
      int _s0_arr1 = _args_i32_[16 + 1 * 8 + 0];
      int _s1_arr1 = _args_i32_[16 + 1 * 8 + 1];
      { // linear seek
        _li_Dp *= _s0_arr1;
        _li_Dp += Y;
        _li_Dp *= _s1_arr1;
        _li_Dp += Aq;
      }
      int Dp = _li_Dp << 2;
      float Dq = _arr1_f32_[Dp >> 2];
      float Dr = Dq * Db;
      int _li_Ds = 0;
      { // linear seek
        _li_Ds *= _s0_arr1;
        _li_Ds += Y;
        _li_Ds *= _s1_arr1;
        _li_Ds += T;
      }
      int Ds = _li_Ds << 2;
      float Dt = _arr1_f32_[Ds >> 2];
      float Du = Dt * Db;
      float Dv = Dg * Dl;
      float Dw = Dd * Dm;
      float Dx = Dv + Dw;
      float Dy = De * Dl;
      float Dz = Dh * Dm;
      float DA = Dy + Dz;
      float DB = Dr + Dx;
      float DC = Du + DA;
      float DD = Dn * DB;
      float DE = Dn * DC;
      float DF = float(16777216.0);
      float DG = DD * DF;
      float DH = DE * DF;
      float DI = DG + V;
      float DJ = DH + V;
      float DK = float(floor(DI));
      float DL = float(floor(DJ));
      int DM = int(DK);
      int DN = int(DL);
      int _li_DP = 0;
      int _s0_arr4 = _args_i32_[16 + 4 * 8 + 0];
      int _s1_arr4 = _args_i32_[16 + 4 * 8 + 1];
      int _s2_arr4 = _args_i32_[16 + 4 * 8 + 2];
      { // linear seek
        _li_DP *= _s0_arr4;
        _li_DP += AA;
        _li_DP *= _s1_arr4;
        _li_DP += AB;
        _li_DP *= _s2_arr4;
        _li_DP += Aq;
      }
      int DP = _li_DP << 2;
      int DQ;
      { // Begin Atomic Op
      DQ = atomicAdd(_arr4_i32_[DP >> 2], DM);
      } // End Atomic Op
      int _li_DR = 0;
      { // linear seek
        _li_DR *= _s0_arr4;
        _li_DR += AA;
        _li_DR *= _s1_arr4;
        _li_DR += AB;
        _li_DR *= _s2_arr4;
        _li_DR += T;
      }
      int DR = _li_DR << 2;
      int DS;
      { // Begin Atomic Op
      DS = atomicAdd(_arr4_i32_[DR >> 2], DN);
      } // End Atomic Op
      float DT = float(67108864.0);
      float DU = Dn * DT;
      float DV = DU + V;
      float DW = float(floor(DV));
      int DX = int(DW);
      int _li_DZ = 0;
      int _s0_arr5 = _args_i32_[16 + 5 * 8 + 0];
      int _s1_arr5 = _args_i32_[16 + 5 * 8 + 1];
      { // linear seek
        _li_DZ *= _s0_arr5;
        _li_DZ += AA;
        _li_DZ *= _s1_arr5;
        _li_DZ += AB;
      }
      int DZ = _li_DZ << 2;
      int E0;
      { // Begin Atomic Op
      E0 = atomicAdd(_arr5_i32_[DZ >> 2], DX);
      } // End Atomic Op
      float E1 = S - AF;
      float E2 = E1 * Dk;
      float E3 = AL * AT;
      int E4 = AB + T;
      float E5 = Dd * E2;
      float E6 = Dv + E5;
      float E7 = Dh * E2;
      float E8 = Dy + E7;
      float E9 = Dr + E6;
      float Ea = Du + E8;
      float Eb = E3 * E9;
      float Ec = E3 * Ea;
      float Ed = Eb * DF;
      float Ee = Ec * DF;
      float Ef = Ed + V;
      float Eg = Ee + V;
      float Eh = float(floor(Ef));
      float Ei = float(floor(Eg));
      int Ej = int(Eh);
      int Ek = int(Ei);
      int _li_El = 0;
      { // linear seek
        _li_El *= _s0_arr4;
        _li_El += AA;
        _li_El *= _s1_arr4;
        _li_El += E4;
        _li_El *= _s2_arr4;
        _li_El += Aq;
      }
      int El = _li_El << 2;
      int Em;
      { // Begin Atomic Op
      Em = atomicAdd(_arr4_i32_[El >> 2], Ej);
      } // End Atomic Op
      int _li_En = 0;
      { // linear seek
        _li_En *= _s0_arr4;
        _li_En += AA;
        _li_En *= _s1_arr4;
        _li_En += E4;
        _li_En *= _s2_arr4;
        _li_En += T;
      }
      int En = _li_En << 2;
      int Eo;
      { // Begin Atomic Op
      Eo = atomicAdd(_arr4_i32_[En >> 2], Ek);
      } // End Atomic Op
      float Ep = E3 * DT;
      float Eq = Ep + V;
      float Er = float(floor(Eq));
      int Es = int(Er);
      int _li_Et = 0;
      { // linear seek
        _li_Et *= _s0_arr5;
        _li_Et += AA;
        _li_Et *= _s1_arr5;
        _li_Et += E4;
      }
      int Et = _li_Et << 2;
      int Eu;
      { // Begin Atomic Op
      Eu = atomicAdd(_arr5_i32_[Et >> 2], Es);
      } // End Atomic Op
      float Ev = float(2.0);
      float Ew = Ev - AF;
      float Ex = Ew * Dk;
      float Ey = AL * AZ;
      int Ez = int(2);
      int EA = AB + Ez;
      float EB = Dd * Ex;
      float EC = Dv + EB;
      float ED = Dh * Ex;
      float EE = Dy + ED;
      float EF = Dr + EC;
      float EG = Du + EE;
      float EH = Ey * EF;
      float EI = Ey * EG;
      float EJ = EH * DF;
      float EK = EI * DF;
      float EL = EJ + V;
      float EM = EK + V;
      float EN = float(floor(EL));
      float EO = float(floor(EM));
      int EP = int(EN);
      int EQ = int(EO);
      int _li_ER = 0;
      { // linear seek
        _li_ER *= _s0_arr4;
        _li_ER += AA;
        _li_ER *= _s1_arr4;
        _li_ER += EA;
        _li_ER *= _s2_arr4;
        _li_ER += Aq;
      }
      int ER = _li_ER << 2;
      int ES;
      { // Begin Atomic Op
      ES = atomicAdd(_arr4_i32_[ER >> 2], EP);
      } // End Atomic Op
      int _li_ET = 0;
      { // linear seek
        _li_ET *= _s0_arr4;
        _li_ET += AA;
        _li_ET *= _s1_arr4;
        _li_ET += EA;
        _li_ET *= _s2_arr4;
        _li_ET += T;
      }
      int ET = _li_ET << 2;
      int EU;
      { // Begin Atomic Op
      EU = atomicAdd(_arr4_i32_[ET >> 2], EQ);
      } // End Atomic Op
      float EV = Ey * DT;
      float EW = EV + V;
      float EX = float(floor(EW));
      int EY = int(EX);
      int _li_EZ = 0;
      { // linear seek
        _li_EZ *= _s0_arr5;
        _li_EZ += AA;
        _li_EZ *= _s1_arr5;
        _li_EZ += EA;
      }
      int EZ = _li_EZ << 2;
      int F0;
      { // Begin Atomic Op
      F0 = atomicAdd(_arr5_i32_[EZ >> 2], EY);
      } // End Atomic Op
      float F1 = S - AE;
      float F2 = F1 * Dk;
      float F3 = AS * AM;
      int F4 = AA + T;
      float F5 = Dg * F2;
      float F6 = F5 + Dw;
      float F7 = De * F2;
      float F8 = F7 + Dz;
      float F9 = Dr + F6;
      float Fa = Du + F8;
      float Fb = F3 * F9;
      float Fc = F3 * Fa;
      float Fd = Fb * DF;
      float Fe = Fc * DF;
      float Ff = Fd + V;
      float Fg = Fe + V;
      float Fh = float(floor(Ff));
      float Fi = float(floor(Fg));
      int Fj = int(Fh);
      int Fk = int(Fi);
      int _li_Fl = 0;
      { // linear seek
        _li_Fl *= _s0_arr4;
        _li_Fl += F4;
        _li_Fl *= _s1_arr4;
        _li_Fl += AB;
        _li_Fl *= _s2_arr4;
        _li_Fl += Aq;
      }
      int Fl = _li_Fl << 2;
      int Fm;
      { // Begin Atomic Op
      Fm = atomicAdd(_arr4_i32_[Fl >> 2], Fj);
      } // End Atomic Op
      int _li_Fn = 0;
      { // linear seek
        _li_Fn *= _s0_arr4;
        _li_Fn += F4;
        _li_Fn *= _s1_arr4;
        _li_Fn += AB;
        _li_Fn *= _s2_arr4;
        _li_Fn += T;
      }
      int Fn = _li_Fn << 2;
      int Fo;
      { // Begin Atomic Op
      Fo = atomicAdd(_arr4_i32_[Fn >> 2], Fk);
      } // End Atomic Op
      float Fp = F3 * DT;
      float Fq = Fp + V;
      float Fr = float(floor(Fq));
      int Fs = int(Fr);
      int _li_Ft = 0;
      { // linear seek
        _li_Ft *= _s0_arr5;
        _li_Ft += F4;
        _li_Ft *= _s1_arr5;
        _li_Ft += AB;
      }
      int Ft = _li_Ft << 2;
      int Fu;
      { // Begin Atomic Op
      Fu = atomicAdd(_arr5_i32_[Ft >> 2], Fs);
      } // End Atomic Op
      float Fv = AS * AT;
      float Fw = F5 + E5;
      float Fx = F7 + E7;
      float Fy = Dr + Fw;
      float Fz = Du + Fx;
      float FA = Fv * Fy;
      float FB = Fv * Fz;
      float FC = FA * DF;
      float FD = FB * DF;
      float FE = FC + V;
      float FF = FD + V;
      float FG = float(floor(FE));
      float FH = float(floor(FF));
      int FI = int(FG);
      int FJ = int(FH);
      int _li_FK = 0;
      { // linear seek
        _li_FK *= _s0_arr4;
        _li_FK += F4;
        _li_FK *= _s1_arr4;
        _li_FK += E4;
        _li_FK *= _s2_arr4;
        _li_FK += Aq;
      }
      int FK = _li_FK << 2;
      int FL;
      { // Begin Atomic Op
      FL = atomicAdd(_arr4_i32_[FK >> 2], FI);
      } // End Atomic Op
      int _li_FM = 0;
      { // linear seek
        _li_FM *= _s0_arr4;
        _li_FM += F4;
        _li_FM *= _s1_arr4;
        _li_FM += E4;
        _li_FM *= _s2_arr4;
        _li_FM += T;
      }
      int FM = _li_FM << 2;
      int FN;
      { // Begin Atomic Op
      FN = atomicAdd(_arr4_i32_[FM >> 2], FJ);
      } // End Atomic Op
      float FO = Fv * DT;
      float FP = FO + V;
      float FQ = float(floor(FP));
      int FR = int(FQ);
      int _li_FS = 0;
      { // linear seek
        _li_FS *= _s0_arr5;
        _li_FS += F4;
        _li_FS *= _s1_arr5;
        _li_FS += E4;
      }
      int FS = _li_FS << 2;
      int FT;
      { // Begin Atomic Op
      FT = atomicAdd(_arr5_i32_[FS >> 2], FR);
      } // End Atomic Op
      float FU = AS * AZ;
      float FV = F5 + EB;
      float FW = F7 + ED;
      float FX = Dr + FV;
      float FY = Du + FW;
      float FZ = FU * FX;
      float G0 = FU * FY;
      float G1 = FZ * DF;
      float G2 = G0 * DF;
      float G3 = G1 + V;
      float G4 = G2 + V;
      float G5 = float(floor(G3));
      float G6 = float(floor(G4));
      int G7 = int(G5);
      int G8 = int(G6);
      int _li_G9 = 0;
      { // linear seek
        _li_G9 *= _s0_arr4;
        _li_G9 += F4;
        _li_G9 *= _s1_arr4;
        _li_G9 += EA;
        _li_G9 *= _s2_arr4;
        _li_G9 += Aq;
      }
      int G9 = _li_G9 << 2;
      int Ga;
      { // Begin Atomic Op
      Ga = atomicAdd(_arr4_i32_[G9 >> 2], G7);
      } // End Atomic Op
      int _li_Gb = 0;
      { // linear seek
        _li_Gb *= _s0_arr4;
        _li_Gb += F4;
        _li_Gb *= _s1_arr4;
        _li_Gb += EA;
        _li_Gb *= _s2_arr4;
        _li_Gb += T;
      }
      int Gb = _li_Gb << 2;
      int Gc;
      { // Begin Atomic Op
      Gc = atomicAdd(_arr4_i32_[Gb >> 2], G8);
      } // End Atomic Op
      float Gd = FU * DT;
      float Ge = Gd + V;
      float Gf = float(floor(Ge));
      int Gg = int(Gf);
      int _li_Gh = 0;
      { // linear seek
        _li_Gh *= _s0_arr5;
        _li_Gh += F4;
        _li_Gh *= _s1_arr5;
        _li_Gh += EA;
      }
      int Gh = _li_Gh << 2;
      int Gi;
      { // Begin Atomic Op
      Gi = atomicAdd(_arr5_i32_[Gh >> 2], Gg);
      } // End Atomic Op
      float Gj = Ev - AE;
      float Gk = Gj * Dk;
      float Gl = AY * AM;
      int Gm = AA + Ez;
      float Gn = Dg * Gk;
      float Go = Gn + Dw;
      float Gp = De * Gk;
      float Gq = Gp + Dz;
      float Gr = Dr + Go;
      float Gs = Du + Gq;
      float Gt = Gl * Gr;
      float Gu = Gl * Gs;
      float Gv = Gt * DF;
      float Gw = Gu * DF;
      float Gx = Gv + V;
      float Gy = Gw + V;
      float Gz = float(floor(Gx));
      float GA = float(floor(Gy));
      int GB = int(Gz);
      int GC = int(GA);
      int _li_GD = 0;
      { // linear seek
        _li_GD *= _s0_arr4;
        _li_GD += Gm;
        _li_GD *= _s1_arr4;
        _li_GD += AB;
        _li_GD *= _s2_arr4;
        _li_GD += Aq;
      }
      int GD = _li_GD << 2;
      int GE;
      { // Begin Atomic Op
      GE = atomicAdd(_arr4_i32_[GD >> 2], GB);
      } // End Atomic Op
      int _li_GF = 0;
      { // linear seek
        _li_GF *= _s0_arr4;
        _li_GF += Gm;
        _li_GF *= _s1_arr4;
        _li_GF += AB;
        _li_GF *= _s2_arr4;
        _li_GF += T;
      }
      int GF = _li_GF << 2;
      int GG;
      { // Begin Atomic Op
      GG = atomicAdd(_arr4_i32_[GF >> 2], GC);
      } // End Atomic Op
      float GH = Gl * DT;
      float GI = GH + V;
      float GJ = float(floor(GI));
      int GK = int(GJ);
      int _li_GL = 0;
      { // linear seek
        _li_GL *= _s0_arr5;
        _li_GL += Gm;
        _li_GL *= _s1_arr5;
        _li_GL += AB;
      }
      int GL = _li_GL << 2;
      int GM;
      { // Begin Atomic Op
      GM = atomicAdd(_arr5_i32_[GL >> 2], GK);
      } // End Atomic Op
      float GN = AY * AT;
      float GO = Gn + E5;
      float GP = Gp + E7;
      float GQ = Dr + GO;
      float GR = Du + GP;
      float GS = GN * GQ;
      float GT = GN * GR;
      float GU = GS * DF;
      float GV = GT * DF;
      float GW = GU + V;
      float GX = GV + V;
      float GY = float(floor(GW));
      float GZ = float(floor(GX));
      int H0 = int(GY);
      int H1 = int(GZ);
      int _li_H2 = 0;
      { // linear seek
        _li_H2 *= _s0_arr4;
        _li_H2 += Gm;
        _li_H2 *= _s1_arr4;
        _li_H2 += E4;
        _li_H2 *= _s2_arr4;
        _li_H2 += Aq;
      }
      int H2 = _li_H2 << 2;
      int H3;
      { // Begin Atomic Op
      H3 = atomicAdd(_arr4_i32_[H2 >> 2], H0);
      } // End Atomic Op
      int _li_H4 = 0;
      { // linear seek
        _li_H4 *= _s0_arr4;
        _li_H4 += Gm;
        _li_H4 *= _s1_arr4;
        _li_H4 += E4;
        _li_H4 *= _s2_arr4;
        _li_H4 += T;
      }
      int H4 = _li_H4 << 2;
      int H5;
      { // Begin Atomic Op
      H5 = atomicAdd(_arr4_i32_[H4 >> 2], H1);
      } // End Atomic Op
      float H6 = GN * DT;
      float H7 = H6 + V;
      float H8 = float(floor(H7));
      int H9 = int(H8);
      int _li_Ha = 0;
      { // linear seek
        _li_Ha *= _s0_arr5;
        _li_Ha += Gm;
        _li_Ha *= _s1_arr5;
        _li_Ha += E4;
      }
      int Ha = _li_Ha << 2;
      int Hb;
      { // Begin Atomic Op
      Hb = atomicAdd(_arr5_i32_[Ha >> 2], H9);
      } // End Atomic Op
      float Hc = AY * AZ;
      float Hd = Gn + EB;
      float He = Gp + ED;
      float Hf = Dr + Hd;
      float Hg = Du + He;
      float Hh = Hc * Hf;
      float Hi = Hc * Hg;
      float Hj = Hh * DF;
      float Hk = Hi * DF;
      float Hl = Hj + V;
      float Hm = Hk + V;
      float Hn = float(floor(Hl));
      float Ho = float(floor(Hm));
      int Hp = int(Hn);
      int Hq = int(Ho);
      int _li_Hr = 0;
      { // linear seek
        _li_Hr *= _s0_arr4;
        _li_Hr += Gm;
        _li_Hr *= _s1_arr4;
        _li_Hr += EA;
        _li_Hr *= _s2_arr4;
        _li_Hr += Aq;
      }
      int Hr = _li_Hr << 2;
      int Hs;
      { // Begin Atomic Op
      Hs = atomicAdd(_arr4_i32_[Hr >> 2], Hp);
      } // End Atomic Op
      int _li_Ht = 0;
      { // linear seek
        _li_Ht *= _s0_arr4;
        _li_Ht += Gm;
        _li_Ht *= _s1_arr4;
        _li_Ht += EA;
        _li_Ht *= _s2_arr4;
        _li_Ht += T;
      }
      int Ht = _li_Ht << 2;
      int Hu;
      { // Begin Atomic Op
      Hu = atomicAdd(_arr4_i32_[Ht >> 2], Hq);
      } // End Atomic Op
      float Hv = Hc * DT;
      float Hw = Hv + V;
      float Hx = float(floor(Hw));
      int Hy = int(Hx);
      int _li_Hz = 0;
      { // linear seek
        _li_Hz *= _s0_arr5;
        _li_Hz += Gm;
        _li_Hz *= _s1_arr5;
        _li_Hz += EA;
      }
      int Hz = _li_Hz << 2;
      int HA;
      { // Begin Atomic Op
      HA = atomicAdd(_arr5_i32_[Hz >> 2], Hy);
      } // End Atomic Op
  }
}

void main()
{
  substep_c44_01();
}
