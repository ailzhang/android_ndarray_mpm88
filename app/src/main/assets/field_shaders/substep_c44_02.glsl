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
      int Cgb = int(127);
      int E5 = _itv;
      int Ce1 = int(7);
      int Ce2 = E5 >> Ce1;
      int Ce4 = Ce2 & Cgb;
      int Ce8 = E5 & Cgb;
      float Ef = float(0.0);
      int C0z = 0;
      int Co6 = int(0);
      int C0B = C0z + 491520 * Co6; // S0
      int C0C = C0B + 163840; // S17
      int Co8 = int(1);
      int Cuf = Ce4 << Ce1;
      int Cod = Ce8 + Cuf;
      int C0G = C0C + 4 * Cod; // S17
      int C0H = C0G + 0; // S18
      float Eh = _data_f32_[C0H >> 2];
      int Ei = -int(Eh > Ef);
      int Ek = Ei & Co8;
      if (Ek != 0) {
        float Em = _data_f32_[C0H >> 2];
        int C10 = C0B + 360448; // S14
        int C14 = C10 + 8 * Cod; // S14
        int C15 = C14 + 0; // S15
        float Eo = _data_f32_[C15 >> 2];
        float Ep = Eo / Em;
        int C1h = C14 + 4; // S16
        float Er = _data_f32_[C1h >> 2];
        float Es = Er / Em;
        _data_f32_[C15 >> 2] = Ep;
        _data_f32_[C1h >> 2] = Es;
      }
      float Ew = float(-0.00196);
      int C1M = C0B + 360448; // S14
      int C1Q = C1M + 8 * Cod; // S14
      int C1R = C1Q + 4; // S16
      float Ex = _data_f32_[C1R >> 2];
      float Ey = Ex + Ew;
      _data_f32_[C1R >> 2] = Ey;
      int EA = int(3);
      int EB = -int(Ce4 < EA);
      int EC = EB & Co8;
      int C2f = C1Q + 0; // S15
      float EE = _data_f32_[C2f >> 2];
      int EF = -int(EE < Ef);
      int EG = EF & Co8;
      int EH = EC & EG;
      if (EH != 0) {
        _data_f32_[C2f >> 2] = Ef;
      }
      int EK = int(125);
      int EL = -int(Ce4 > EK);
      int EM = EL & Co8;
      float EN = _data_f32_[C2f >> 2];
      int EO = -int(EN > Ef);
      int EP = EO & Co8;
      int EQ = EM & EP;
      if (EQ != 0) {
        _data_f32_[C2f >> 2] = Ef;
      }
      int ET = -int(Ce8 < EA);
      int EU = ET & Co8;
      float EV = _data_f32_[C1R >> 2];
      int EW = -int(EV < Ef);
      int EX = EW & Co8;
      int EY = EU & EX;
      if (EY != 0) {
        _data_f32_[C1R >> 2] = Ef;
      }
      int F1 = -int(Ce8 > EK);
      int F2 = F1 & Co8;
      float F3 = _data_f32_[C1R >> 2];
      int F4 = -int(F3 > Ef);
      int F5 = F4 & Co8;
      int F6 = F2 & F5;
      if (F6 != 0) {
        _data_f32_[C1R >> 2] = Ef;
      }
  }
}

void main()
{
  substep_c44_02();
}
