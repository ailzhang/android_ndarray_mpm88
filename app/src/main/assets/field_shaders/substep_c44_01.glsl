#version 310 es
layout(local_size_x = 128, local_size_y = 1, local_size_z = 1) in;
precision highp float;
layout(std430, binding = 0) buffer data_i32 { int _data_i32_[];}; 
layout(std430, binding = 0) buffer data_f32 { float _data_f32_[];}; 

const float inf = 1.0f / 0.0f;
const float nan = 0.0f / 0.0f;
void substep_c44_01()
{ // range for
  // range known at compile time
  int _sid0 = int(gl_GlobalInvocationID.x);
  for (int _sid = _sid0; _sid < (4096); _sid += int(gl_WorkGroupSize.x * gl_NumWorkGroups.x)) {
    int _itv = 0 + _sid;
      int W = _itv;
      float As = float(1.0);
      int At = int(1);
      float Au = float(0.0);
      float Av = float(0.5);
      int CAP = 0;
      int D26 = int(0);
      int CAR = CAP + 262144 * D26; // S0
      int CAS = CAR + 32768; // S1
      int DcA = int(4095);
      int Dcr = W & DcA;
      int CAV = CAS + 8 * Dcr; // S1
      int CAW = CAV + 0; // S2
      float Ax = _data_f32_[CAW >> 2];
      float Ay = float(64.0);
      float Az = Ax * Ay;
      int CB6 = CAV + 4; // S3
      float AB = _data_f32_[CB6 >> 2];
      float AC = AB * Ay;
      float AD = Az - Av;
      float AE = AC - Av;
      int AF = int(AD);
      int AG = int(AE);
      float AH = float(AF);
      float AI = float(AG);
      float AJ = Az - AH;
      float AK = AC - AI;
      float AL = float(1.5);
      float AM = AL - AJ;
      float AN = AL - AK;
      float AO = AM * AM;
      float AP = AN * AN;
      float AQ = AO * Av;
      float AR = AP * Av;
      float AS = AJ - As;
      float AT = AK - As;
      float AU = AS * AS;
      float AV = AT * AT;
      float AW = float(0.75);
      float AX = AW - AU;
      float AY = AW - AV;
      float AZ = AJ - Av;
      float B0 = AK - Av;
      float B1 = AZ * AZ;
      float B2 = B0 * B0;
      float B3 = B1 * Av;
      float B4 = B2 * Av;
      int CBc = CAR + 131072; // S7
      int CBf = CBc + 16 * Dcr; // S7
      int CBg = CBf + 0; // S8
      float B6 = _data_f32_[CBg >> 2];
      float B7 = float(0.0001);
      float B8 = B6 * B7;
      int CBq = CBf + 4; // S9
      float Ba = _data_f32_[CBq >> 2];
      float Bb = Ba * B7;
      int CBA = CBf + 8; // S10
      float Bd = _data_f32_[CBA >> 2];
      float Be = Bd * B7;
      int CBK = CBf + 12; // S11
      float Bg = _data_f32_[CBK >> 2];
      float Bh = Bg * B7;
      float Bi = B8 + As;
      float Bj = Bh + As;
      int CBQ = CAR + 196608; // S12
      int CBT = CBQ + 16 * Dcr; // S12
      int CBU = CBT + 0; // S13
      float Bl = _data_f32_[CBU >> 2];
      float Bm = Bi * Bl;
      int CC4 = CBT + 8; // S15
      float Bo = _data_f32_[CC4 >> 2];
      float Bp = Bb * Bo;
      float Bq = Bm + Bp;
      int CCe = CBT + 4; // S14
      float Bs = _data_f32_[CCe >> 2];
      float Bt = Bi * Bs;
      int CCo = CBT + 12; // S16
      float Bv = _data_f32_[CCo >> 2];
      float Bw = Bb * Bv;
      float Bx = Bt + Bw;
      float By = Be * Bl;
      float Bz = Bj * Bo;
      float BA = By + Bz;
      float BB = Be * Bs;
      float BC = Bj * Bv;
      float BD = BB + BC;
      int CCu = CAR + 0; // S17
      int CCx = CCu + 4 * Dcr; // S17
      int CCy = CCx + 0; // S18
      float BF = _data_f32_[CCy >> 2];
      float BG = As - BF;
      float BH = float(10.0);
      float BI = BG * BH;
      float BJ = float(exp(BI));
      float BK = Bq + BD;
      float BL = BA - Bx;
      float BM = BK * BK;
      float BN = BL * BL;
      float BO = BM + BN;
      float BP = float(sqrt(BO));
      float BQ = As / BP;
      float BR = BK * BQ;
      float BS = BL * BQ;
      float BT = float(-BS);
      float BU = BR * Bq;
      float BV = BS * BA;
      float BW = BU + BV;
      float BX = BR * Bx;
      float BY = BS * BD;
      float BZ = BX + BY;
      float C0 = BT * Bx;
      float C1 = BR * BD;
      float C2 = C0 + C1;
      float C3 = float(0);
      float C4 = float(0);
      float C5 = float(abs(BZ));
      float C6 = float(1e-05);
      int C7 = -int(C5 < C6);
      int C8 = C7 & At;
      if (C8 != 0) {
        C3 = BW;
        C4 = C2;
      } else {
        float Cc = BW - C2;
        float Cd = Cc * Av;
        float Ce = Cd * Cd;
        float Cf = BZ * BZ;
        float Cg = Ce + Cf;
        float Ch = float(sqrt(Cg));
        float Ci = float(0);
        int Cj = -int(Cd > Au);
        int Ck = Cj & At;
        if (Ck != 0) {
          float Cm = Cd + Ch;
          float Cn = BZ / Cm;
          Ci = Cn;
        } else {
          float Cp = Cd - Ch;
          float Cq = BZ / Cp;
          Ci = Cq;
        }
        float Cs = Ci;
        float Ct = Cs * Cs;
        float Cu = Ct + As;
        float Cv = float(sqrt(Cu));
        float Cw = As / Cv;
        float Cx = float(-Cs);
        float Cy = Cx * Cw;
        float Cz = Cw * Cw;
        float CA = Cz * BW;
        float CB = Cw + Cw;
        float CC = CB * Cy;
        float CD = CC * BZ;
        float CE = CA - CD;
        float CF = Cy * Cy;
        float CG = CF * C2;
        float CH = CE + CG;
        C3 = CH;
        float CJ = CF * BW;
        float CK = CJ + CD;
        float CL = Cz * C2;
        float CM = CK + CL;
        C4 = CM;
      }
      float CO = C3;
      float CP = C4;
      int CQ = -int(CO < CP);
      int CR = CQ & At;
      if (CR != 0) {
        float CT = C3;
        float CU = C4;
        C3 = CU;
        C4 = CT;
      }
      float CX = C3;
      float CY = C4;
      _data_f32_[CCy >> 2] = BF;
      float D0 = CX * CY;
      float D1 = float(sqrt(D0));
      _data_f32_[CBU >> 2] = D1;
      _data_f32_[CCe >> 2] = Au;
      _data_f32_[CC4 >> 2] = Au;
      _data_f32_[CCo >> 2] = D1;
      float D6 = float(277.77777);
      float D7 = BJ * D6;
      float D8 = D7 * D0;
      float D9 = D0 - As;
      float Da = D8 * D9;
      float Db = float(-0.0001);
      float Dc = Da * Db;
      float Dd = float(6.1035156e-05);
      float De = B6 * Dd;
      float Df = Ba * Dd;
      float Dg = Bd * Dd;
      float Dh = Bg * Dd;
      float Di = Dc + De;
      float Dj = Dc + Dh;
      float Dk = Au - AJ;
      float Dl = Au - AK;
      float Dm = float(0.015625);
      float Dn = Dk * Dm;
      float Do = Dl * Dm;
      float Dp = AQ * AR;
      int CDs = CAR + 65536; // S4
      int CDv = CDs + 8 * Dcr; // S4
      int CDw = CDv + 0; // S5
      float Dr = _data_f32_[CDw >> 2];
      float Ds = Dr * Dd;
      int CDG = CDv + 4; // S6
      float Du = _data_f32_[CDG >> 2];
      float Dv = Du * Dd;
      float Dw = Di * Dn;
      float Dx = Df * Do;
      float Dy = Dw + Dx;
      float Dz = Dg * Dn;
      float DA = Dj * Do;
      float DB = Dz + DA;
      float DC = Ds + Dy;
      float DD = Dv + DB;
      float DE = Dp * DC;
      float DF = Dp * DD;
      float DG = float(16777216.0);
      float DH = DE * DG;
      float DI = DF * DG;
      float DJ = DH + Av;
      float DK = DI + Av;
      float DL = float(floor(DJ));
      float DM = float(floor(DK));
      int DN = int(DL);
      int DO = int(DM);
      int CDN = CAR + 98304; // S19
      int CT2 = int(63);
      int CT3 = AF & CT2;
      int CT7 = AG & CT2;
      int DcG = int(6);
      int DcH = CT3 << DcG;
      int D3F = CT7 + DcH;
      int CDR = CDN + 8 * D3F; // S19
      int CDS = CDR + 0; // S20
      int DQ;
      { // Begin Atomic Op
      DQ = atomicAdd(_data_i32_[CDS >> 2], DN);
      } // End Atomic Op
      int CE4 = CDR + 4; // S21
      int DS;
      { // Begin Atomic Op
      DS = atomicAdd(_data_i32_[CE4 >> 2], DO);
      } // End Atomic Op
      float DT = float(67108864.0);
      float DU = Dp * DT;
      float DV = DU + Av;
      float DW = float(floor(DV));
      int DX = int(DW);
      int CEb = CAR + 16384; // S22
      int CEf = CEb + 4 * D3F; // S22
      int CEg = CEf + 0; // S23
      int DZ;
      { // Begin Atomic Op
      DZ = atomicAdd(_data_i32_[CEg >> 2], DX);
      } // End Atomic Op
      float E0 = As - AK;
      float E1 = E0 * Dm;
      float E2 = AQ * AY;
      int E3 = AG + At;
      float E4 = Df * E1;
      float E5 = Dw + E4;
      float E6 = Dj * E1;
      float E7 = Dz + E6;
      float E8 = Ds + E5;
      float E9 = Dv + E7;
      float Ea = E2 * E8;
      float Eb = E2 * E9;
      float Ec = Ea * DG;
      float Ed = Eb * DG;
      float Ee = Ec + Av;
      float Ef = Ed + Av;
      float Eg = float(floor(Ee));
      float Eh = float(floor(Ef));
      int Ei = int(Eg);
      int Ej = int(Eh);
      int CTv = E3 & CT2;
      int D43 = CTv + DcH;
      int CEr = CDN + 8 * D43; // S19
      int CEs = CEr + 0; // S20
      int El;
      { // Begin Atomic Op
      El = atomicAdd(_data_i32_[CEs >> 2], Ei);
      } // End Atomic Op
      int CEE = CEr + 4; // S21
      int En;
      { // Begin Atomic Op
      En = atomicAdd(_data_i32_[CEE >> 2], Ej);
      } // End Atomic Op
      float Eo = E2 * DT;
      float Ep = Eo + Av;
      float Eq = float(floor(Ep));
      int Er = int(Eq);
      int CEP = CEb + 4 * D43; // S22
      int CEQ = CEP + 0; // S23
      int Et;
      { // Begin Atomic Op
      Et = atomicAdd(_data_i32_[CEQ >> 2], Er);
      } // End Atomic Op
      float Eu = float(2.0);
      float Ev = Eu - AK;
      float Ew = Ev * Dm;
      float Ex = AQ * B4;
      int Ey = int(2);
      int Ez = AG + Ey;
      float EA = Df * Ew;
      float EB = Dw + EA;
      float EC = Dj * Ew;
      float ED = Dz + EC;
      float EE = Ds + EB;
      float EF = Dv + ED;
      float EG = Ex * EE;
      float EH = Ex * EF;
      float EI = EG * DG;
      float EJ = EH * DG;
      float EK = EI + Av;
      float EL = EJ + Av;
      float EM = float(floor(EK));
      float EN = float(floor(EL));
      int EO = int(EM);
      int EP = int(EN);
      int CTT = Ez & CT2;
      int D4r = CTT + DcH;
      int CF1 = CDN + 8 * D4r; // S19
      int CF2 = CF1 + 0; // S20
      int ER;
      { // Begin Atomic Op
      ER = atomicAdd(_data_i32_[CF2 >> 2], EO);
      } // End Atomic Op
      int CFe = CF1 + 4; // S21
      int ET;
      { // Begin Atomic Op
      ET = atomicAdd(_data_i32_[CFe >> 2], EP);
      } // End Atomic Op
      float EU = Ex * DT;
      float EV = EU + Av;
      float EW = float(floor(EV));
      int EX = int(EW);
      int CFp = CEb + 4 * D4r; // S22
      int CFq = CFp + 0; // S23
      int EZ;
      { // Begin Atomic Op
      EZ = atomicAdd(_data_i32_[CFq >> 2], EX);
      } // End Atomic Op
      float F0 = As - AJ;
      float F1 = F0 * Dm;
      float F2 = AX * AR;
      int F3 = AF + At;
      float F4 = Di * F1;
      float F5 = F4 + Dx;
      float F6 = Dg * F1;
      float F7 = F6 + DA;
      float F8 = Ds + F5;
      float F9 = Dv + F7;
      float Fa = F2 * F8;
      float Fb = F2 * F9;
      float Fc = Fa * DG;
      float Fd = Fb * DG;
      float Fe = Fc + Av;
      float Ff = Fd + Av;
      float Fg = float(floor(Fe));
      float Fh = float(floor(Ff));
      int Fi = int(Fg);
      int Fj = int(Fh);
      int CUd = F3 & CT2;
      int DcJ = CUd << DcG;
      int D4P = CT7 + DcJ;
      int CFB = CDN + 8 * D4P; // S19
      int CFC = CFB + 0; // S20
      int Fl;
      { // Begin Atomic Op
      Fl = atomicAdd(_data_i32_[CFC >> 2], Fi);
      } // End Atomic Op
      int CFO = CFB + 4; // S21
      int Fn;
      { // Begin Atomic Op
      Fn = atomicAdd(_data_i32_[CFO >> 2], Fj);
      } // End Atomic Op
      float Fo = F2 * DT;
      float Fp = Fo + Av;
      float Fq = float(floor(Fp));
      int Fr = int(Fq);
      int CFZ = CEb + 4 * D4P; // S22
      int CG0 = CFZ + 0; // S23
      int Ft;
      { // Begin Atomic Op
      Ft = atomicAdd(_data_i32_[CG0 >> 2], Fr);
      } // End Atomic Op
      float Fu = AX * AY;
      float Fv = F4 + E4;
      float Fw = F6 + E6;
      float Fx = Ds + Fv;
      float Fy = Dv + Fw;
      float Fz = Fu * Fx;
      float FA = Fu * Fy;
      float FB = Fz * DG;
      float FC = FA * DG;
      float FD = FB + Av;
      float FE = FC + Av;
      float FF = float(floor(FD));
      float FG = float(floor(FE));
      int FH = int(FF);
      int FI = int(FG);
      int D5d = CTv + DcJ;
      int CGb = CDN + 8 * D5d; // S19
      int CGc = CGb + 0; // S20
      int FK;
      { // Begin Atomic Op
      FK = atomicAdd(_data_i32_[CGc >> 2], FH);
      } // End Atomic Op
      int CGo = CGb + 4; // S21
      int FM;
      { // Begin Atomic Op
      FM = atomicAdd(_data_i32_[CGo >> 2], FI);
      } // End Atomic Op
      float FN = Fu * DT;
      float FO = FN + Av;
      float FP = float(floor(FO));
      int FQ = int(FP);
      int CGz = CEb + 4 * D5d; // S22
      int CGA = CGz + 0; // S23
      int FS;
      { // Begin Atomic Op
      FS = atomicAdd(_data_i32_[CGA >> 2], FQ);
      } // End Atomic Op
      float FT = AX * B4;
      float FU = F4 + EA;
      float FV = F6 + EC;
      float FW = Ds + FU;
      float FX = Dv + FV;
      float FY = FT * FW;
      float FZ = FT * FX;
      float G0 = FY * DG;
      float G1 = FZ * DG;
      float G2 = G0 + Av;
      float G3 = G1 + Av;
      float G4 = float(floor(G2));
      float G5 = float(floor(G3));
      int G6 = int(G4);
      int G7 = int(G5);
      int D5B = CTT + DcJ;
      int CGL = CDN + 8 * D5B; // S19
      int CGM = CGL + 0; // S20
      int G9;
      { // Begin Atomic Op
      G9 = atomicAdd(_data_i32_[CGM >> 2], G6);
      } // End Atomic Op
      int CGY = CGL + 4; // S21
      int Gb;
      { // Begin Atomic Op
      Gb = atomicAdd(_data_i32_[CGY >> 2], G7);
      } // End Atomic Op
      float Gc = FT * DT;
      float Gd = Gc + Av;
      float Ge = float(floor(Gd));
      int Gf = int(Ge);
      int CH9 = CEb + 4 * D5B; // S22
      int CHa = CH9 + 0; // S23
      int Gh;
      { // Begin Atomic Op
      Gh = atomicAdd(_data_i32_[CHa >> 2], Gf);
      } // End Atomic Op
      float Gi = Eu - AJ;
      float Gj = Gi * Dm;
      float Gk = B3 * AR;
      int Gl = AF + Ey;
      float Gm = Di * Gj;
      float Gn = Gm + Dx;
      float Go = Dg * Gj;
      float Gp = Go + DA;
      float Gq = Ds + Gn;
      float Gr = Dv + Gp;
      float Gs = Gk * Gq;
      float Gt = Gk * Gr;
      float Gu = Gs * DG;
      float Gv = Gt * DG;
      float Gw = Gu + Av;
      float Gx = Gv + Av;
      float Gy = float(floor(Gw));
      float Gz = float(floor(Gx));
      int GA = int(Gy);
      int GB = int(Gz);
      int CVn = Gl & CT2;
      int DcL = CVn << DcG;
      int D5Z = CT7 + DcL;
      int CHl = CDN + 8 * D5Z; // S19
      int CHm = CHl + 0; // S20
      int GD;
      { // Begin Atomic Op
      GD = atomicAdd(_data_i32_[CHm >> 2], GA);
      } // End Atomic Op
      int CHy = CHl + 4; // S21
      int GF;
      { // Begin Atomic Op
      GF = atomicAdd(_data_i32_[CHy >> 2], GB);
      } // End Atomic Op
      float GG = Gk * DT;
      float GH = GG + Av;
      float GI = float(floor(GH));
      int GJ = int(GI);
      int CHJ = CEb + 4 * D5Z; // S22
      int CHK = CHJ + 0; // S23
      int GL;
      { // Begin Atomic Op
      GL = atomicAdd(_data_i32_[CHK >> 2], GJ);
      } // End Atomic Op
      float GM = B3 * AY;
      float GN = Gm + E4;
      float GO = Go + E6;
      float GP = Ds + GN;
      float GQ = Dv + GO;
      float GR = GM * GP;
      float GS = GM * GQ;
      float GT = GR * DG;
      float GU = GS * DG;
      float GV = GT + Av;
      float GW = GU + Av;
      float GX = float(floor(GV));
      float GY = float(floor(GW));
      int GZ = int(GX);
      int H0 = int(GY);
      int D6n = CTv + DcL;
      int CHV = CDN + 8 * D6n; // S19
      int CHW = CHV + 0; // S20
      int H2;
      { // Begin Atomic Op
      H2 = atomicAdd(_data_i32_[CHW >> 2], GZ);
      } // End Atomic Op
      int CI8 = CHV + 4; // S21
      int H4;
      { // Begin Atomic Op
      H4 = atomicAdd(_data_i32_[CI8 >> 2], H0);
      } // End Atomic Op
      float H5 = GM * DT;
      float H6 = H5 + Av;
      float H7 = float(floor(H6));
      int H8 = int(H7);
      int CIj = CEb + 4 * D6n; // S22
      int CIk = CIj + 0; // S23
      int Ha;
      { // Begin Atomic Op
      Ha = atomicAdd(_data_i32_[CIk >> 2], H8);
      } // End Atomic Op
      float Hb = B3 * B4;
      float Hc = Gm + EA;
      float Hd = Go + EC;
      float He = Ds + Hc;
      float Hf = Dv + Hd;
      float Hg = Hb * He;
      float Hh = Hb * Hf;
      float Hi = Hg * DG;
      float Hj = Hh * DG;
      float Hk = Hi + Av;
      float Hl = Hj + Av;
      float Hm = float(floor(Hk));
      float Hn = float(floor(Hl));
      int Ho = int(Hm);
      int Hp = int(Hn);
      int D6L = CTT + DcL;
      int CIv = CDN + 8 * D6L; // S19
      int CIw = CIv + 0; // S20
      int Hr;
      { // Begin Atomic Op
      Hr = atomicAdd(_data_i32_[CIw >> 2], Ho);
      } // End Atomic Op
      int CII = CIv + 4; // S21
      int Ht;
      { // Begin Atomic Op
      Ht = atomicAdd(_data_i32_[CII >> 2], Hp);
      } // End Atomic Op
      float Hu = Hb * DT;
      float Hv = Hu + Av;
      float Hw = float(floor(Hv));
      int Hx = int(Hw);
      int CIT = CEb + 4 * D6L; // S22
      int CIU = CIT + 0; // S23
      int Hz;
      { // Begin Atomic Op
      Hz = atomicAdd(_data_i32_[CIU >> 2], Hx);
      } // End Atomic Op
  }
}

void main()
{
  substep_c44_01();
}
