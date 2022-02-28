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
void substep_c56_03()
{ // range for
  // range known at compile time
  int _sid0 = int(gl_GlobalInvocationID.x);
  for (int _sid = _sid0; _sid < (4096); _sid += int(gl_WorkGroupSize.x * gl_NumWorkGroups.x)) {
    int _itv = 0 + _sid;
      int CeC = int(64);
      int Cds = int(4);
      int Ek = _itv;
      int Em = int(4096);
      int En = Ek - Em * int(Ek / Em);
      int Er = En - Em * int(En / Em);
      int Et = Er / CeC;
      int Ey = En - CeC * int(En / CeC);
      float EE = float(0.0);
      int EF = int(1);
      float EG = float(3.0);
      float EH = float(64.0);
      int C88 = 0;
      int CrH = int(0);
      int C8a = C88 + 229424 * CrH; // S0
      int C8b = C8a + 49192; // S23
      int C8d = Et - CeC * int(Et / CeC);
      int C8h = Ey - CeC * int(Ey / CeC);
      int Cyh = int(6);
      int Cyi = C8d << Cyh;
      int CrO = C8h + Cyi;
      int C8l = C8b + 4 * CrO; // S23
      int C8m = C8l + 0; // S24
      float EJ = _data_f32_[C8m >> 2];
      int EK = -int(EJ > EE);
      int EL = EK & EF;
      if (EL != 0) {
        float EN = _data_f32_[C8m >> 2];
        int C8L = C8a + 131112; // S20
        int C8V = C8L + 8 * CrO; // S20
        int C8W = C8V + 0; // S21
        float EP = _data_f32_[C8W >> 2];
        float EQ = EP / EN;
        int C9e = C8V + 4; // S22
        float ES = _data_f32_[C9e >> 2];
        float ET = ES / EN;
        _data_f32_[C8W >> 2] = EQ;
        _data_f32_[C9e >> 2] = ET;
      }
      float EX = float(-0.003828125);
      int C9V = C8a + 131112; // S20
      int Ca5 = C9V + 8 * CrO; // S20
      int Ca6 = Ca5 + 4; // S22
      float EY = _data_f32_[Ca6 >> 2];
      float EZ = EY + EX;
      _data_f32_[Ca6 >> 2] = EZ;
      int F1 = int(3);
      int F2 = -int(Et < F1);
      int F3 = F2 & EF;
      int CaG = Ca5 + 0; // S21
      float F5 = _data_f32_[CaG >> 2];
      int F6 = -int(F5 < EE);
      int F7 = F6 & EF;
      int F8 = F3 & F7;
      if (F8 != 0) {
        _data_f32_[CaG >> 2] = EE;
      }
      int Fb = int(61);
      int Fc = -int(Et > Fb);
      int Fd = Fc & EF;
      float Fe = _data_f32_[CaG >> 2];
      int Ff = -int(Fe > EE);
      int Fg = Ff & EF;
      int Fh = Fd & Fg;
      if (Fh != 0) {
        _data_f32_[CaG >> 2] = EE;
      }
      int Fk = -int(Ey < F1);
      int Fl = Fk & EF;
      float Fm = _data_f32_[Ca6 >> 2];
      int Fn = -int(Fm < EE);
      int Fo = Fn & EF;
      int Fp = Fl & Fo;
      if (Fp != 0) {
        _data_f32_[Ca6 >> 2] = EE;
      }
      int Fs = -int(Ey > Fb);
      int Ft = Fs & EF;
      float Fu = _data_f32_[Ca6 >> 2];
      int Fv = -int(Fu > EE);
      int Fw = Fv & EF;
      int Fx = Ft & Fw;
      if (Fx != 0) {
        _data_f32_[Ca6 >> 2] = EE;
      }
      float FA = float(Et);
      float FB = float(Ey);
      int FD = int(2);
      for (int FE_ = CrH; FE_ < FD; FE_ += 1) {
        int FE = FE_;
        int FF = FE;
        int FG = FF << EF;
        int CcO = C8a + 8; // S25
        int CcQ = FG - Cds * int(FG / Cds);
        int CcU = CcO + 8 * CcQ; // S25
        int CcV = CcU + 0; // S26
        float FI = _data_f32_[CcV >> 2];
        float FJ = FI * EH;
        int Cd8 = CcU + 4; // S27
        float FL = _data_f32_[Cd8 >> 2];
        float FM = FL * EH;
        int FN = FG + EF;
        int Cdg = FN - Cds * int(FN / Cds);
        int Cdk = CcO + 8 * Cdg; // S25
        int Cdl = Cdk + 0; // S26
        float FP = _data_f32_[Cdl >> 2];
        float FQ = FP * EH;
        int Cdy = Cdk + 4; // S27
        float FS = _data_f32_[Cdy >> 2];
        float FT = FS * EH;
        float FU = _data_f32_[CaG >> 2];
        float FV = _data_f32_[Ca6 >> 2];
        float FW = float(0);
        FW = FU;
        float FY = float(0);
        FY = FV;
        int G0 = -int(FJ < FA);
        int G1 = G0 & EF;
        int G2 = -int(FA <= FQ);
        int G3 = G1 & G2;
        int G4 = -int(FT < FB);
        int G5 = G4 & EF;
        int G6 = -int(FB <= FM);
        int G7 = G5 & G6;
        int G8 = G3 & G7;
        if (G8 != 0) {
          float Ga = FJ + EG;
          int Gb = -int(FA <= Ga);
          int Gc = G1 & Gb;
          int Gd = -int(FU > EE);
          int Ge = Gd & EF;
          int Gf = Gc & Ge;
          if (Gf != 0) {
            FW = EE;
          }
          float Gi = FQ - EG;
          int Gj = -int(Gi < FA);
          int Gk = Gj & EF;
          int Gl = Gk & G2;
          int Gm = -int(FU < EE);
          int Gn = Gm & EF;
          int Go = Gl & Gn;
          if (Go != 0) {
            FW = EE;
          }
          float Gr = FM - EG;
          int Gs = -int(Gr < FB);
          int Gt = Gs & EF;
          int Gu = -int(FB < FM);
          int Gv = Gt & Gu;
          int Gw = -int(FV < EE);
          int Gx = Gw & EF;
          int Gy = Gv & Gx;
          if (Gy != 0) {
          } else {
            FW = EE;
          }
          FY = EE;
        }
        float GC = FW;
        float GD = FY;
        _data_f32_[CaG >> 2] = GC;
        _data_f32_[Ca6 >> 2] = GD;
      }
  }
}

void main()
{
  substep_c56_03();
}
