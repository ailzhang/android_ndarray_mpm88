#version 310 es
layout(local_size_x = 128, local_size_y = 1, local_size_z = 1) in;
precision highp float;
layout(std430, binding = 0) buffer data_i32 { int _data_i32_[];}; 
layout(std430, binding = 0) buffer data_f32 { float _data_f32_[];}; 
layout(std430, binding = 1) buffer gtmp_i32 { int _gtmp_i32_[];}; 
layout(std430, binding = 1) buffer gtmp_f32 { float _gtmp_f32_[];}; 
layout(std430, binding = 2) buffer args_i32 { int _args_i32_[];}; 
layout(std430, binding = 2) buffer args_f32 { float _args_f32_[];}; 
layout(std430, binding = 7) buffer arr1_i32 { int _arr1_i32_[];}; 
layout(std430, binding = 7) buffer arr1_f32 { float _arr1_f32_[];}; 
layout(std430, binding = 6) buffer arr3_i32 { int _arr3_i32_[];}; 
layout(std430, binding = 6) buffer arr3_f32 { float _arr3_f32_[];}; 
layout(std430, binding = 5) buffer arr2_i32 { int _arr2_i32_[];}; 
layout(std430, binding = 5) buffer arr2_f32 { float _arr2_f32_[];}; 
layout(std430, binding = 4) buffer arr0_i32 { int _arr0_i32_[];}; 
layout(std430, binding = 4) buffer arr0_f32 { float _arr0_f32_[];}; 
float atomicAdd_data_f32(int addr, float rhs) { int old, new, ret; do { old = _data_i32_[addr]; new = floatBitsToInt((intBitsToFloat(old) + rhs)); } while (old != atomicCompSwap(_data_i32_[addr], old, new)); return intBitsToFloat(old); } float atomicSub_data_f32(int addr, float rhs) { int old, new, ret; do { old = _data_i32_[addr]; new = floatBitsToInt((intBitsToFloat(old) - rhs)); } while (old != atomicCompSwap(_data_i32_[addr], old, new)); return intBitsToFloat(old); } float atomicMax_data_f32(int addr, float rhs) { int old, new, ret; do { old = _data_i32_[addr]; new = floatBitsToInt(max(intBitsToFloat(old), rhs)); } while (old != atomicCompSwap(_data_i32_[addr], old, new)); return intBitsToFloat(old); } float atomicMin_data_f32(int addr, float rhs) { int old, new, ret; do { old = _data_i32_[addr]; new = floatBitsToInt(min(intBitsToFloat(old), rhs)); } while (old != atomicCompSwap(_data_i32_[addr], old, new)); return intBitsToFloat(old); }float atomicAdd_gtmp_f32(int addr, float rhs) { int old, new, ret; do { old = _gtmp_i32_[addr]; new = floatBitsToInt((intBitsToFloat(old) + rhs)); } while (old != atomicCompSwap(_gtmp_i32_[addr], old, new)); return intBitsToFloat(old); } float atomicSub_gtmp_f32(int addr, float rhs) { int old, new, ret; do { old = _gtmp_i32_[addr]; new = floatBitsToInt((intBitsToFloat(old) - rhs)); } while (old != atomicCompSwap(_gtmp_i32_[addr], old, new)); return intBitsToFloat(old); } float atomicMax_gtmp_f32(int addr, float rhs) { int old, new, ret; do { old = _gtmp_i32_[addr]; new = floatBitsToInt(max(intBitsToFloat(old), rhs)); } while (old != atomicCompSwap(_gtmp_i32_[addr], old, new)); return intBitsToFloat(old); } float atomicMin_gtmp_f32(int addr, float rhs) { int old, new, ret; do { old = _gtmp_i32_[addr]; new = floatBitsToInt(min(intBitsToFloat(old), rhs)); } while (old != atomicCompSwap(_gtmp_i32_[addr], old, new)); return intBitsToFloat(old); }float atomicAdd_arr0_f32(int addr, float rhs) { int old, new, ret; do { old = _arr0_i32_[addr]; new = floatBitsToInt((intBitsToFloat(old) + rhs)); } while (old != atomicCompSwap(_arr0_i32_[addr], old, new)); return intBitsToFloat(old); } float atomicSub_arr0_f32(int addr, float rhs) { int old, new, ret; do { old = _arr0_i32_[addr]; new = floatBitsToInt((intBitsToFloat(old) - rhs)); } while (old != atomicCompSwap(_arr0_i32_[addr], old, new)); return intBitsToFloat(old); } float atomicMax_arr0_f32(int addr, float rhs) { int old, new, ret; do { old = _arr0_i32_[addr]; new = floatBitsToInt(max(intBitsToFloat(old), rhs)); } while (old != atomicCompSwap(_arr0_i32_[addr], old, new)); return intBitsToFloat(old); } float atomicMin_arr0_f32(int addr, float rhs) { int old, new, ret; do { old = _arr0_i32_[addr]; new = floatBitsToInt(min(intBitsToFloat(old), rhs)); } while (old != atomicCompSwap(_arr0_i32_[addr], old, new)); return intBitsToFloat(old); }float atomicAdd_arr1_f32(int addr, float rhs) { int old, new, ret; do { old = _arr1_i32_[addr]; new = floatBitsToInt((intBitsToFloat(old) + rhs)); } while (old != atomicCompSwap(_arr1_i32_[addr], old, new)); return intBitsToFloat(old); } float atomicSub_arr1_f32(int addr, float rhs) { int old, new, ret; do { old = _arr1_i32_[addr]; new = floatBitsToInt((intBitsToFloat(old) - rhs)); } while (old != atomicCompSwap(_arr1_i32_[addr], old, new)); return intBitsToFloat(old); } float atomicMax_arr1_f32(int addr, float rhs) { int old, new, ret; do { old = _arr1_i32_[addr]; new = floatBitsToInt(max(intBitsToFloat(old), rhs)); } while (old != atomicCompSwap(_arr1_i32_[addr], old, new)); return intBitsToFloat(old); } float atomicMin_arr1_f32(int addr, float rhs) { int old, new, ret; do { old = _arr1_i32_[addr]; new = floatBitsToInt(min(intBitsToFloat(old), rhs)); } while (old != atomicCompSwap(_arr1_i32_[addr], old, new)); return intBitsToFloat(old); }float atomicAdd_arr2_f32(int addr, float rhs) { int old, new, ret; do { old = _arr2_i32_[addr]; new = floatBitsToInt((intBitsToFloat(old) + rhs)); } while (old != atomicCompSwap(_arr2_i32_[addr], old, new)); return intBitsToFloat(old); } float atomicSub_arr2_f32(int addr, float rhs) { int old, new, ret; do { old = _arr2_i32_[addr]; new = floatBitsToInt((intBitsToFloat(old) - rhs)); } while (old != atomicCompSwap(_arr2_i32_[addr], old, new)); return intBitsToFloat(old); } float atomicMax_arr2_f32(int addr, float rhs) { int old, new, ret; do { old = _arr2_i32_[addr]; new = floatBitsToInt(max(intBitsToFloat(old), rhs)); } while (old != atomicCompSwap(_arr2_i32_[addr], old, new)); return intBitsToFloat(old); } float atomicMin_arr2_f32(int addr, float rhs) { int old, new, ret; do { old = _arr2_i32_[addr]; new = floatBitsToInt(min(intBitsToFloat(old), rhs)); } while (old != atomicCompSwap(_arr2_i32_[addr], old, new)); return intBitsToFloat(old); }float atomicAdd_arr3_f32(int addr, float rhs) { int old, new, ret; do { old = _arr3_i32_[addr]; new = floatBitsToInt((intBitsToFloat(old) + rhs)); } while (old != atomicCompSwap(_arr3_i32_[addr], old, new)); return intBitsToFloat(old); } float atomicSub_arr3_f32(int addr, float rhs) { int old, new, ret; do { old = _arr3_i32_[addr]; new = floatBitsToInt((intBitsToFloat(old) - rhs)); } while (old != atomicCompSwap(_arr3_i32_[addr], old, new)); return intBitsToFloat(old); } float atomicMax_arr3_f32(int addr, float rhs) { int old, new, ret; do { old = _arr3_i32_[addr]; new = floatBitsToInt(max(intBitsToFloat(old), rhs)); } while (old != atomicCompSwap(_arr3_i32_[addr], old, new)); return intBitsToFloat(old); } float atomicMin_arr3_f32(int addr, float rhs) { int old, new, ret; do { old = _arr3_i32_[addr]; new = floatBitsToInt(min(intBitsToFloat(old), rhs)); } while (old != atomicCompSwap(_arr3_i32_[addr], old, new)); return intBitsToFloat(old); }
const float inf = 1.0f / 0.0f;
const float nan = 0.0f / 0.0f;
void substep_c54_03()
{ // range for
  // range known at compile time
  int _sid0 = int(gl_GlobalInvocationID.x);
  for (int _sid = _sid0; _sid < (16384); _sid += int(gl_WorkGroupSize.x * gl_NumWorkGroups.x)) {
    int _itv = 0 + _sid;
      int BZ7 = int(127);
      int Eb = _itv;
      int BX5 = int(7);
      int BX6 = Eb >> BX5;
      int BX8 = BX6 & BZ7;
      int BXc = Eb & BZ7;
      float El = float(0.0);
      int Em = int(1);
      int En = int(125);
      int Eo = int(3);
      float Ep = float(-0.00196);
      float Eq = float(1.0);
      int BMJ = 0;
      int C5l = int(0);
      int BML = BMJ + 196608 * C5l; // S0
      int BMM = BML + 0; // S4
      int Ca8 = BX8 << BX5;
      int C5s = BXc + Ca8;
      int BMQ = BMM + 4 * C5s; // S4
      int BMR = BMQ + 0; // S5
      float Es = _data_f32_[BMR >> 2];
      int Et = -int(Es > El);
      int Eu = Et & Em;
      if (Eu != 0) {
        float Ew = _data_f32_[BMR >> 2];
        float Ex = Eq / Ew;
        int BNa = BML + 65536; // S1
        int BNe = BNa + 8 * C5s; // S1
        int BNf = BNe + 0; // S2
        float Ez = _data_f32_[BNf >> 2];
        float EA = Ex * Ez;
        int BNr = BNe + 4; // S3
        float EC = _data_f32_[BNr >> 2];
        float ED = Ex * EC;
        _data_f32_[BNf >> 2] = EA;
        _data_f32_[BNr >> 2] = ED;
        float EG = _data_f32_[BNr >> 2];
        float EH = EG + Ep;
        _data_f32_[BNr >> 2] = EH;
        int EJ = -int(BX8 < Eo);
        int EK = EJ & Em;
        int EL = -int(EA < El);
        int EM = EL & Em;
        int EN = EK & EM;
        if (EN != 0) {
          _data_f32_[BNf >> 2] = El;
        }
        int EQ = -int(BX8 > En);
        int ER = EQ & Em;
        float ES = _data_f32_[BNf >> 2];
        int ET = -int(ES > El);
        int EU = ET & Em;
        int EV = ER & EU;
        if (EV != 0) {
          _data_f32_[BNf >> 2] = El;
        }
        int EY = -int(BXc < Eo);
        int EZ = EY & Em;
        float F0 = _data_f32_[BNr >> 2];
        int F1 = -int(F0 < El);
        int F2 = F1 & Em;
        int F3 = EZ & F2;
        if (F3 != 0) {
          _data_f32_[BNr >> 2] = El;
        }
        int F6 = -int(BXc > En);
        int F7 = F6 & Em;
        float F8 = _data_f32_[BNr >> 2];
        int F9 = -int(F8 > El);
        int Fa = F9 & Em;
        int Fb = F7 & Fa;
        if (Fb != 0) {
          _data_f32_[BNr >> 2] = El;
        }
      }
  }
}

void main()
{
  substep_c54_03();
}
