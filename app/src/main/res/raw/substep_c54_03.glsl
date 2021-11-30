#version 310 es
layout(local_size_x = 128, local_size_y = 1, local_size_z = 1) in;
precision highp float;
layout(std430, binding = 0) buffer data_i32 { int _data_i32_[];}; 
layout(std430, binding = 0) buffer data_f32 { float _data_f32_[];}; 
layout(std430, binding = 1) buffer gtmp_i32 { int _gtmp_i32_[];}; 
layout(std430, binding = 1) buffer gtmp_f32 { float _gtmp_f32_[];}; 
layout(std430, binding = 2) buffer args_i32 { int _args_i32_[];}; 
layout(std430, binding = 2) buffer args_f32 { float _args_f32_[];}; 
layout(std430, binding = 4) buffer arr0_i32 { int _arr0_i32_[];}; 
layout(std430, binding = 4) buffer arr0_f32 { float _arr0_f32_[];}; 
float atomicAdd_data_f32(int addr, float rhs) { int old, new, ret; do { old = _data_i32_[addr]; new = floatBitsToInt((intBitsToFloat(old) + rhs)); } while (old != atomicCompSwap(_data_i32_[addr], old, new)); return intBitsToFloat(old); } float atomicSub_data_f32(int addr, float rhs) { int old, new, ret; do { old = _data_i32_[addr]; new = floatBitsToInt((intBitsToFloat(old) - rhs)); } while (old != atomicCompSwap(_data_i32_[addr], old, new)); return intBitsToFloat(old); } float atomicMax_data_f32(int addr, float rhs) { int old, new, ret; do { old = _data_i32_[addr]; new = floatBitsToInt(max(intBitsToFloat(old), rhs)); } while (old != atomicCompSwap(_data_i32_[addr], old, new)); return intBitsToFloat(old); } float atomicMin_data_f32(int addr, float rhs) { int old, new, ret; do { old = _data_i32_[addr]; new = floatBitsToInt(min(intBitsToFloat(old), rhs)); } while (old != atomicCompSwap(_data_i32_[addr], old, new)); return intBitsToFloat(old); }float atomicAdd_gtmp_f32(int addr, float rhs) { int old, new, ret; do { old = _gtmp_i32_[addr]; new = floatBitsToInt((intBitsToFloat(old) + rhs)); } while (old != atomicCompSwap(_gtmp_i32_[addr], old, new)); return intBitsToFloat(old); } float atomicSub_gtmp_f32(int addr, float rhs) { int old, new, ret; do { old = _gtmp_i32_[addr]; new = floatBitsToInt((intBitsToFloat(old) - rhs)); } while (old != atomicCompSwap(_gtmp_i32_[addr], old, new)); return intBitsToFloat(old); } float atomicMax_gtmp_f32(int addr, float rhs) { int old, new, ret; do { old = _gtmp_i32_[addr]; new = floatBitsToInt(max(intBitsToFloat(old), rhs)); } while (old != atomicCompSwap(_gtmp_i32_[addr], old, new)); return intBitsToFloat(old); } float atomicMin_gtmp_f32(int addr, float rhs) { int old, new, ret; do { old = _gtmp_i32_[addr]; new = floatBitsToInt(min(intBitsToFloat(old), rhs)); } while (old != atomicCompSwap(_gtmp_i32_[addr], old, new)); return intBitsToFloat(old); }float atomicAdd_arr0_f32(int addr, float rhs) { int old, new, ret; do { old = _arr0_i32_[addr]; new = floatBitsToInt((intBitsToFloat(old) + rhs)); } while (old != atomicCompSwap(_arr0_i32_[addr], old, new)); return intBitsToFloat(old); } float atomicSub_arr0_f32(int addr, float rhs) { int old, new, ret; do { old = _arr0_i32_[addr]; new = floatBitsToInt((intBitsToFloat(old) - rhs)); } while (old != atomicCompSwap(_arr0_i32_[addr], old, new)); return intBitsToFloat(old); } float atomicMax_arr0_f32(int addr, float rhs) { int old, new, ret; do { old = _arr0_i32_[addr]; new = floatBitsToInt(max(intBitsToFloat(old), rhs)); } while (old != atomicCompSwap(_arr0_i32_[addr], old, new)); return intBitsToFloat(old); } float atomicMin_arr0_f32(int addr, float rhs) { int old, new, ret; do { old = _arr0_i32_[addr]; new = floatBitsToInt(min(intBitsToFloat(old), rhs)); } while (old != atomicCompSwap(_arr0_i32_[addr], old, new)); return intBitsToFloat(old); }
const float inf = 1.0f / 0.0f;
const float nan = 0.0f / 0.0f;
void substep_c54_03()
{ // range for
  // range known at compile time
  int _sid0 = int(gl_GlobalInvocationID.x);
  for (int _sid = _sid0; _sid < (16384); _sid += int(gl_WorkGroupSize.x * gl_NumWorkGroups.x)) {
    int _itv = 0 + _sid;
      int C1k = int(127);
      int E8 = _itv;
      int BZi = int(7);
      int BZj = E8 >> BZi;
      int BZl = BZj & C1k;
      int BZp = E8 & C1k;
      float Ei = float(0.0);
      int Ej = int(1);
      int Ek = int(125);
      int El = int(3);
      float Em = float(-0.00196);
      float En = float(1.0);
      int BNc = 0;
      int C8D = int(0);
      int BNe = BNc + 311296 * C8D; // S0
      int BNf = BNe + 114688; // S14
      int Ce4 = BZl << BZi;
      int C8K = BZp + Ce4;
      int BNj = BNf + 4 * C8K; // S14
      int BNk = BNj + 0; // S15
      float Ep = _data_f32_[BNk >> 2];
      int Eq = -int(Ep > Ei);
      int Er = Eq & Ej;
      if (Er != 0) {
        float Et = _data_f32_[BNk >> 2];
        float Eu = En / Et;
        int BND = BNe + 180224; // S11
        int BNH = BND + 8 * C8K; // S11
        int BNI = BNH + 0; // S12
        float Ew = _data_f32_[BNI >> 2];
        float Ex = Eu * Ew;
        int BNU = BNH + 4; // S13
        float Ez = _data_f32_[BNU >> 2];
        float EA = Eu * Ez;
        _data_f32_[BNI >> 2] = Ex;
        _data_f32_[BNU >> 2] = EA;
        float ED = _data_f32_[BNU >> 2];
        float EE = ED + Em;
        _data_f32_[BNU >> 2] = EE;
        int EG = -int(BZl < El);
        int EH = EG & Ej;
        int EI = -int(Ex < Ei);
        int EJ = EI & Ej;
        int EK = EH & EJ;
        if (EK != 0) {
          _data_f32_[BNI >> 2] = Ei;
        }
        int EN = -int(BZl > Ek);
        int EO = EN & Ej;
        float EP = _data_f32_[BNI >> 2];
        int EQ = -int(EP > Ei);
        int ER = EQ & Ej;
        int ES = EO & ER;
        if (ES != 0) {
          _data_f32_[BNI >> 2] = Ei;
        }
        int EV = -int(BZp < El);
        int EW = EV & Ej;
        float EX = _data_f32_[BNU >> 2];
        int EY = -int(EX < Ei);
        int EZ = EY & Ej;
        int F0 = EW & EZ;
        if (F0 != 0) {
          _data_f32_[BNU >> 2] = Ei;
        }
        int F3 = -int(BZp > Ek);
        int F4 = F3 & Ej;
        float F5 = _data_f32_[BNU >> 2];
        int F6 = -int(F5 > Ei);
        int F7 = F6 & Ej;
        int F8 = F4 & F7;
        if (F8 != 0) {
          _data_f32_[BNU >> 2] = Ei;
        }
      }
  }
}

void main()
{
  substep_c54_03();
}
