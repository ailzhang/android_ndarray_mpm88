#version 310 es
layout(local_size_x = 128, local_size_y = 1, local_size_z = 1) in;
precision highp float;
layout(std430, binding = 2) buffer args_i32 { int _args_i32_[];}; 
layout(std430, binding = 2) buffer args_f32 { float _args_f32_[];}; 
layout(std430, binding = 5) buffer arr1_i32 { int _arr1_i32_[];}; 
layout(std430, binding = 5) buffer arr1_f32 { float _arr1_f32_[];}; 
layout(std430, binding = 7) buffer arr3_i32 { int _arr3_i32_[];}; 
layout(std430, binding = 7) buffer arr3_f32 { float _arr3_f32_[];}; 
layout(std430, binding = 6) buffer arr2_i32 { int _arr2_i32_[];}; 
layout(std430, binding = 6) buffer arr2_f32 { float _arr2_f32_[];}; 
layout(std430, binding = 4) buffer arr0_i32 { int _arr0_i32_[];}; 
layout(std430, binding = 4) buffer arr0_f32 { float _arr0_f32_[];}; 
layout(std430, binding = 9) buffer arr5_i32 { int _arr5_i32_[];}; 
layout(std430, binding = 9) buffer arr5_f32 { float _arr5_f32_[];}; 
layout(std430, binding = 8) buffer arr4_i32 { int _arr4_i32_[];}; 
layout(std430, binding = 8) buffer arr4_f32 { float _arr4_f32_[];}; 
float atomicAdd_arr0_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr0_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) + rhs)); } while (old_val != atomicCompSwap(_arr0_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicSub_arr0_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr0_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) - rhs)); } while (old_val != atomicCompSwap(_arr0_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMax_arr0_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr0_i32_[addr]; new_val = floatBitsToInt(max(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_arr0_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMin_arr0_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr0_i32_[addr]; new_val = floatBitsToInt(min(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_arr0_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); }float atomicAdd_arr1_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr1_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) + rhs)); } while (old_val != atomicCompSwap(_arr1_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicSub_arr1_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr1_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) - rhs)); } while (old_val != atomicCompSwap(_arr1_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMax_arr1_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr1_i32_[addr]; new_val = floatBitsToInt(max(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_arr1_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMin_arr1_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr1_i32_[addr]; new_val = floatBitsToInt(min(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_arr1_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); }float atomicAdd_arr2_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr2_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) + rhs)); } while (old_val != atomicCompSwap(_arr2_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicSub_arr2_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr2_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) - rhs)); } while (old_val != atomicCompSwap(_arr2_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMax_arr2_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr2_i32_[addr]; new_val = floatBitsToInt(max(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_arr2_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMin_arr2_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr2_i32_[addr]; new_val = floatBitsToInt(min(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_arr2_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); }float atomicAdd_arr3_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr3_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) + rhs)); } while (old_val != atomicCompSwap(_arr3_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicSub_arr3_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr3_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) - rhs)); } while (old_val != atomicCompSwap(_arr3_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMax_arr3_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr3_i32_[addr]; new_val = floatBitsToInt(max(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_arr3_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMin_arr3_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr3_i32_[addr]; new_val = floatBitsToInt(min(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_arr3_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); }float atomicAdd_arr4_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr4_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) + rhs)); } while (old_val != atomicCompSwap(_arr4_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicSub_arr4_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr4_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) - rhs)); } while (old_val != atomicCompSwap(_arr4_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMax_arr4_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr4_i32_[addr]; new_val = floatBitsToInt(max(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_arr4_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMin_arr4_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr4_i32_[addr]; new_val = floatBitsToInt(min(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_arr4_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); }float atomicAdd_arr5_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr5_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) + rhs)); } while (old_val != atomicCompSwap(_arr5_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicSub_arr5_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr5_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) - rhs)); } while (old_val != atomicCompSwap(_arr5_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMax_arr5_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr5_i32_[addr]; new_val = floatBitsToInt(max(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_arr5_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMin_arr5_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr5_i32_[addr]; new_val = floatBitsToInt(min(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_arr5_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); }
const float inf = 1.0f / 0.0f;
const float nan = 0.0f / 0.0f;
void substep_c44_02()
{ // range for
  // range from args buffer
  int Er = _args_i32_[16 + 5 * 8 + 0];
  int Es = _args_i32_[16 + 5 * 8 + 1];
  int Et = Er * Es;
  int _beg = 0, _end = Et;
  int _sid0 = int(gl_GlobalInvocationID.x);
  for (int _sid = _sid0; _sid < (_end - _beg); _sid += int(gl_WorkGroupSize.x * gl_NumWorkGroups.x)) {
    int _itv = _beg + _sid;
      float Ej = float(0.0);
      int Ek = int(1);
      int El = int(3);
      float Em = float(9.8);
      float En = float(0.0002);
      float Eo = float(0.0078125);
      int Ep = int(0);
      float Eq = float(1.0);
      int Et = Er * Es;
      int Eu = _itv;
      int Ev = Eu - Es * int(Eu / Es);
      int Ew = Eu / Es;
      int Ex = Ew - Er * int(Ew / Er);
      int _s0_arr5 = _args_i32_[16 + 5 * 8 + 0];
      int _s1_arr5 = _args_i32_[16 + 5 * 8 + 1];
      int Ez = Ex;
      Ez *= _s1_arr5;
      Ez += Ev;
      float EA = _arr5_f32_[Ez];
      int EB = -int(EA > Ej);
      int EC = EB & Ek;
      if (EC != 0) {
        float EE = _arr5_f32_[Ez];
        float EF = Eq / EE;
        int _s0_arr4 = _args_i32_[16 + 4 * 8 + 0];
        int _s1_arr4 = _args_i32_[16 + 4 * 8 + 1];
        int _s2_arr4 = _args_i32_[16 + 4 * 8 + 2];
        int EH = Ex;
        EH *= _s1_arr4;
        EH += Ev;
        EH *= _s2_arr4;
        EH += Ep;
        float EI = _arr4_f32_[EH];
        float EJ = EF * EI;
        int EK = Ex;
        EK *= _s1_arr4;
        EK += Ev;
        EK *= _s2_arr4;
        EK += Ek;
        float EL = _arr4_f32_[EK];
        float EM = EF * EL;
        _arr4_f32_[EH] = EJ;
        _arr4_f32_[EK] = EM;
        int EP = _args_i32_[16 + 4 * 8 + 0];
        float EQ = float(EP);
        float ER = EQ * Eo;
        float ES = En / ER;
        float ET = float(min(ES, En));
        float EU = ET * Em;
        float EV = float(-EU);
        float EW;
        { // Begin Atomic Op
        EW = atomicAdd_arr4_f32(EK, EV);
        } // End Atomic Op
        int EX = -int(Ex < El);
        int EY = EX & Ek;
        int EZ = -int(EJ < Ej);
        int F0 = EZ & Ek;
        int F1 = EY & F0;
        if (F1 != 0) {
          _arr4_f32_[EH] = Ej;
        }
        int F4 = EP - El;
        int F5 = -int(Ex > F4);
        int F6 = F5 & Ek;
        float F7 = _arr4_f32_[EH];
        int F8 = -int(F7 > Ej);
        int F9 = F8 & Ek;
        int Fa = F6 & F9;
        if (Fa != 0) {
          _arr4_f32_[EH] = Ej;
        }
        int Fd = -int(Ev < El);
        int Fe = Fd & Ek;
        float Ff = _arr4_f32_[EK];
        int Fg = -int(Ff < Ej);
        int Fh = Fg & Ek;
        int Fi = Fe & Fh;
        if (Fi != 0) {
          _arr4_f32_[EK] = Ej;
        }
        int Fl = -int(Ev > F4);
        int Fm = Fl & Ek;
        float Fn = _arr4_f32_[EK];
        int Fo = -int(Fn > Ej);
        int Fp = Fo & Ek;
        int Fq = Fm & Fp;
        if (Fq != 0) {
          _arr4_f32_[EK] = Ej;
        }
      }
  }
}

void main()
{
  substep_c44_02();
}
