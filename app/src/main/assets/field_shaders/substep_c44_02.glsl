#version 310 es
layout(local_size_x = 128, local_size_y = 1, local_size_z = 1) in;
precision highp float;
layout(std430, binding = 0) buffer data_i32 { int _data_i32_[];}; 
layout(std430, binding = 0) buffer data_f32 { float _data_f32_[];}; 
float atomicAdd_data_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _data_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) + rhs)); } while (old_val != atomicCompSwap(_data_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicSub_data_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _data_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) - rhs)); } while (old_val != atomicCompSwap(_data_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMax_data_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _data_i32_[addr]; new_val = floatBitsToInt(max(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_data_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMin_data_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _data_i32_[addr]; new_val = floatBitsToInt(min(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_data_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); }
const float inf = 1.0f / 0.0f;
const float nan = 0.0f / 0.0f;
void substep_c44_02()
{ // range for
  // range known at compile time
  int _sid0 = int(gl_GlobalInvocationID.x);
  for (int _sid = _sid0; _sid < (16384); _sid += int(gl_WorkGroupSize.x * gl_NumWorkGroups.x)) {
    int _itv = 0 + _sid;
      int Cok = int(0);
      int Cgp = int(127);
      int EY = int(93);
      int EO = int(3);
      float EK = float(-0.00196);
      int Ex = int(1);
      float Et = float(0.0);
      int Ec = _itv;
      int Cef = int(7);
      int Ceg = Ec >> Cef;
      int Cei = Ceg & Cgp;
      int Cem = Ec & Cgp;
      int Em = int(96);
      int En = -int(Cei < Em);
      int Eq = -int(Cem < Em);
      int Er = En & Eq;
      if (Er != 0) {
        int C0N = 0;
        int C0P = C0N + 344064 * Cok; // S0
        int C0Q = C0P + 147456; // S17
        int Cut = Cei << Cef;
        int Cor = Cem + Cut;
        int C0U = C0Q + 4 * Cor; // S17
        int C0V = C0U + 0; // S18
        float Ev = _data_f32_[C0V >> 2];
        int Ew = -int(Ev > Et);
        int Ey = Ew & Ex;
        if (Ey != 0) {
          float EA = _data_f32_[C0V >> 2];
          int C1e = C0P + 212992; // S14
          int C1i = C1e + 8 * Cor; // S14
          int C1j = C1i + 0; // S15
          float EC = _data_f32_[C1j >> 2];
          float ED = EC / EA;
          int C1v = C1i + 4; // S16
          float EF = _data_f32_[C1v >> 2];
          float EG = EF / EA;
          _data_f32_[C1j >> 2] = ED;
          _data_f32_[C1v >> 2] = EG;
        }
        int C20 = C0P + 212992; // S14
        int C24 = C20 + 8 * Cor; // S14
        int C25 = C24 + 4; // S16
        float EL = _data_f32_[C25 >> 2];
        float EM = EL + EK;
        _data_f32_[C25 >> 2] = EM;
        int EP = -int(Cei < EO);
        int EQ = EP & Ex;
        int C2t = C24 + 0; // S15
        float ES = _data_f32_[C2t >> 2];
        int ET = -int(ES < Et);
        int EU = ET & Ex;
        int EV = EQ & EU;
        if (EV != 0) {
          _data_f32_[C2t >> 2] = Et;
        }
        int EZ = -int(Cei > EY);
        int F0 = EZ & Ex;
        float F1 = _data_f32_[C2t >> 2];
        int F2 = -int(F1 > Et);
        int F3 = F2 & Ex;
        int F4 = F0 & F3;
        if (F4 != 0) {
          _data_f32_[C2t >> 2] = Et;
        }
        int F7 = -int(Cem < EO);
        int F8 = F7 & Ex;
        float F9 = _data_f32_[C25 >> 2];
        int Fa = -int(F9 < Et);
        int Fb = Fa & Ex;
        int Fc = F8 & Fb;
        if (Fc != 0) {
          _data_f32_[C25 >> 2] = Et;
        }
        int Ff = -int(Cem > EY);
        int Fg = Ff & Ex;
        float Fh = _data_f32_[C25 >> 2];
        int Fi = -int(Fh > Et);
        int Fj = Fi & Ex;
        int Fk = Fg & Fj;
        if (Fk != 0) {
          _data_f32_[C25 >> 2] = Et;
        }
      }
  }
}

void main()
{
  substep_c44_02();
}
