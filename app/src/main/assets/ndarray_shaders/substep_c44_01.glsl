#version 310 es
layout(local_size_x = 128, local_size_y = 1, local_size_z = 1) in;
precision highp float;
layout(std430, binding = 2) buffer args_i32 { int _args_i32_[];}; 
layout(std430, binding = 2) buffer args_f32 { float _args_f32_[];}; 
layout(std430, binding = 5) buffer arr1_i32 { int _arr1_i32_[];}; 
layout(std430, binding = 5) buffer arr1_f32 { float _arr1_f32_[];}; 
layout(std430, binding = 9) buffer arr5_i32 { int _arr5_i32_[];}; 
layout(std430, binding = 9) buffer arr5_f32 { float _arr5_f32_[];}; 
layout(std430, binding = 4) buffer arr0_i32 { int _arr0_i32_[];}; 
layout(std430, binding = 4) buffer arr0_f32 { float _arr0_f32_[];}; 
layout(std430, binding = 8) buffer arr4_i32 { int _arr4_i32_[];}; 
layout(std430, binding = 8) buffer arr4_f32 { float _arr4_f32_[];}; 
layout(std430, binding = 6) buffer arr2_i32 { int _arr2_i32_[];}; 
layout(std430, binding = 6) buffer arr2_f32 { float _arr2_f32_[];}; 
layout(std430, binding = 7) buffer arr3_i32 { int _arr3_i32_[];}; 
layout(std430, binding = 7) buffer arr3_f32 { float _arr3_f32_[];}; 
float atomicAdd_arr0_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr0_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) + rhs)); } while (old_val != atomicCompSwap(_arr0_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicSub_arr0_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr0_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) - rhs)); } while (old_val != atomicCompSwap(_arr0_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMax_arr0_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr0_i32_[addr]; new_val = floatBitsToInt(max(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_arr0_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMin_arr0_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr0_i32_[addr]; new_val = floatBitsToInt(min(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_arr0_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); }float atomicAdd_arr1_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr1_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) + rhs)); } while (old_val != atomicCompSwap(_arr1_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicSub_arr1_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr1_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) - rhs)); } while (old_val != atomicCompSwap(_arr1_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMax_arr1_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr1_i32_[addr]; new_val = floatBitsToInt(max(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_arr1_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMin_arr1_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr1_i32_[addr]; new_val = floatBitsToInt(min(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_arr1_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); }float atomicAdd_arr2_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr2_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) + rhs)); } while (old_val != atomicCompSwap(_arr2_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicSub_arr2_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr2_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) - rhs)); } while (old_val != atomicCompSwap(_arr2_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMax_arr2_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr2_i32_[addr]; new_val = floatBitsToInt(max(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_arr2_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMin_arr2_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr2_i32_[addr]; new_val = floatBitsToInt(min(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_arr2_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); }float atomicAdd_arr3_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr3_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) + rhs)); } while (old_val != atomicCompSwap(_arr3_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicSub_arr3_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr3_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) - rhs)); } while (old_val != atomicCompSwap(_arr3_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMax_arr3_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr3_i32_[addr]; new_val = floatBitsToInt(max(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_arr3_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMin_arr3_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr3_i32_[addr]; new_val = floatBitsToInt(min(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_arr3_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); }float atomicAdd_arr4_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr4_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) + rhs)); } while (old_val != atomicCompSwap(_arr4_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicSub_arr4_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr4_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) - rhs)); } while (old_val != atomicCompSwap(_arr4_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMax_arr4_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr4_i32_[addr]; new_val = floatBitsToInt(max(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_arr4_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMin_arr4_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr4_i32_[addr]; new_val = floatBitsToInt(min(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_arr4_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); }float atomicAdd_arr5_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr5_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) + rhs)); } while (old_val != atomicCompSwap(_arr5_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicSub_arr5_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr5_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) - rhs)); } while (old_val != atomicCompSwap(_arr5_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMax_arr5_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr5_i32_[addr]; new_val = floatBitsToInt(max(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_arr5_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMin_arr5_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr5_i32_[addr]; new_val = floatBitsToInt(min(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_arr5_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); }
const float inf = 1.0f / 0.0f;
const float nan = 0.0f / 0.0f;
void substep_c44_01()
{ // range for
  // range from args buffer
  int _s1_arr0 = 2;
  int _s1_arr1 = 2;
  int _s1_arr3 = 2;
  int _s2_arr3 = 2;
  int _s2_arr4 = 2;
  //int U = _args_i32_[16 + 0 * 8 + 0];
  int U = 8192;
  int _beg = 0, _end = U;
  int _sid0 = int(gl_GlobalInvocationID.x);
  for (int _sid = _sid0; _sid < (_end - _beg); _sid += int(gl_WorkGroupSize.x * gl_NumWorkGroups.x)) {
    int _itv = _beg + _sid;
      int V = _itv;
      //int W = V - U * int(V / U);
      int W = V & 8191;
      int Y = int(0);
      int Z = W;
      Z *= _s1_arr0;
      Z += Y;
      float Aq = _arr0_f32_[Z];
      //int Ar = _args_i32_[16 + 4 * 8 + 0];
      float As = float(128);
      float At = Aq * As;
      int Au = int(1);
      int Av = Z + Au;
      float Aw = _arr0_f32_[Av];
      float Ax = Aw * As;
      float Ay = float(0.5);
      float Az = At - Ay;
      float AA = Ax - Ay;
      int AB = int(Az);
      int AC = int(AA);
      float AD = float(AB);
      float AE = float(AC);
      float AF = At - AD;
      float AG = Ax - AE;
      float AH = float(1.5);
      float AI = AH - AF;
      float AJ = AH - AG;
      float AK = AI * AI;
      float AL = AJ * AJ;
      float AM = AK * Ay;
      float AN = AL * Ay;
      float AO = float(1.0);
      float AP = AF - AO;
      float AQ = AG - AO;
      float AR = AP * AP;
      float AS = AQ * AQ;
      float AT = float(0.75);
      float AU = AT - AR;
      float AV = AT - AS;
      float AW = AF - Ay;
      float AX = AG - Ay;
      float AY = AW * AW;
      float AZ = AX * AX;
      float B0 = AY * Ay;
      float B1 = AZ * Ay;
      float B2 = float(0.0002);
      float B3 = float(0.0078125);
      float B4 = As * B3;
      float B5 = B2 / B4;
      float B6 = float(min(B5, B2));
      float B7 = float(-B6);
      float B8 = AO / As;
      float B9 = B8 * Ay;
      float Ba = B9 * B9;
      float Bb = B7 * Ba;
      int Bd = W;
      float Be = _arr2_f32_[Bd];
      float Bf = Be - AO;
      float Bg = Bb * Bf;
      float Bh = float(4.0);
      float Bi = Bg * Bh;
      float Bj = Bi * As;
      float Bk = Bj * As;
      float Bl = float(400.0);
      float Bm = Bk * Bl;
      int Bo = W;
      int Boo = Bo * _s1_arr3;
      Bo = Boo + Y;
      Bo *= _s2_arr3;
      Bo += Y;
      float Bp = _arr3_f32_[Bo];
      Ba = float(1.5258789e-05);
      float Bq = Ba * Bp;
      int Br = Bo + Au;
      float Bs = _arr3_f32_[Br];
      float Bt = Ba * Bs;
      int Bu = Boo;
      Bu += Au;
      Bu *= _s2_arr3;
      Bu += Y;
      float Bv = _arr3_f32_[Bu];
      float Bw = Ba * Bv;
      int Bx = Bu + Au;
      float By = _arr3_f32_[Bx];
      float Bz = Ba * By;
      float BA = Bm + Bq;
      float BB = Bm + Bz;
      float BC = float(0.0);
      float BD = BC - AF;
      float BE = BC - AG;
      float BF = BD * B8;
      float BG = BE * B8;
      float BH = AM * AN;
      int BJ = W;
      BJ *= _s1_arr1;
      BJ += Y;
      float BK = _arr1_f32_[BJ];
      float BL = Ba * BK;
      int BM = BJ + Au;
      float BN = _arr1_f32_[BM];
      float BO = Ba * BN;
      float BP = BA * BF;
      float BQ = Bt * BG;
      float BR = BP + BQ;
      float BS = Bw * BF;
      float BT = BB * BG;
      float BU = BS + BT;
      float BV = BL + BR;
      float BW = BO + BU;
      float BX = BH * BV;
      float BY = BH * BW;
      //int _s1_arr4 = _args_i32_[16 + 4 * 8 + 1];
      int _s1_arr4 =  128;
      int C0 = AB;
      int CAB = C0 * _s1_arr4;
      C0 = CAB + AC;
      C0 *= _s2_arr4;
      C0 += Y;
      float C1;
      { // Begin Atomic Op
      C1 = atomicAdd_arr4_f32(C0, BX);
      } // End Atomic Op
      int C2 = C0 + Au;
      float C3;
      { // Begin Atomic Op
      C3 = atomicAdd_arr4_f32(C2, BY);
      } // End Atomic Op
      float C4 = BH * Ba;
      //int _s1_arr5 = _args_i32_[16 + 5 * 8 + 1];
      int _s1_arr5 = 128;
      int C6 = AB;
      C6 *= _s1_arr5;
      C6 += AC;
      float C7;
      { // Begin Atomic Op
      C7 = atomicAdd_arr5_f32(C6, C4);
      } // End Atomic Op
  }
}

void main()
{
  substep_c44_01();
}
