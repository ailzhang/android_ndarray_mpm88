#version 310 es
layout(local_size_x = 128, local_size_y = 1, local_size_z = 1) in;
precision highp float;
layout(std430, binding = 1) buffer gtmp_i32 { int _gtmp_i32_[];}; 
layout(std430, binding = 1) buffer gtmp_f32 { float _gtmp_f32_[];}; 
layout(std430, binding = 2) buffer args_i32 { int _args_i32_[];}; 
layout(std430, binding = 2) buffer args_f32 { float _args_f32_[];}; 
layout(std430, binding = 9) buffer arr1_i32 { int _arr1_i32_[];}; 
layout(std430, binding = 9) buffer arr1_f32 { float _arr1_f32_[];}; 
layout(std430, binding = 5) buffer arr5_i32 { int _arr5_i32_[];}; 
layout(std430, binding = 5) buffer arr5_f32 { float _arr5_f32_[];}; 
layout(std430, binding = 6) buffer arr0_i32 { int _arr0_i32_[];}; 
layout(std430, binding = 6) buffer arr0_f32 { float _arr0_f32_[];}; 
layout(std430, binding = 4) buffer arr4_i32 { int _arr4_i32_[];}; 
layout(std430, binding = 4) buffer arr4_f32 { float _arr4_f32_[];}; 
layout(std430, binding = 7) buffer arr2_i32 { int _arr2_i32_[];}; 
layout(std430, binding = 7) buffer arr2_f32 { float _arr2_f32_[];}; 
layout(std430, binding = 8) buffer arr3_i32 { int _arr3_i32_[];}; 
layout(std430, binding = 8) buffer arr3_f32 { float _arr3_f32_[];}; 
float atomicAdd_gtmp_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _gtmp_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) + rhs)); } while (old_val != atomicCompSwap(_gtmp_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicSub_gtmp_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _gtmp_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) - rhs)); } while (old_val != atomicCompSwap(_gtmp_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMax_gtmp_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _gtmp_i32_[addr]; new_val = floatBitsToInt(max(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_gtmp_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMin_gtmp_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _gtmp_i32_[addr]; new_val = floatBitsToInt(min(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_gtmp_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); }float atomicAdd_arr0_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr0_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) + rhs)); } while (old_val != atomicCompSwap(_arr0_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicSub_arr0_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr0_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) - rhs)); } while (old_val != atomicCompSwap(_arr0_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMax_arr0_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr0_i32_[addr]; new_val = floatBitsToInt(max(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_arr0_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMin_arr0_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr0_i32_[addr]; new_val = floatBitsToInt(min(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_arr0_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); }float atomicAdd_arr1_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr1_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) + rhs)); } while (old_val != atomicCompSwap(_arr1_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicSub_arr1_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr1_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) - rhs)); } while (old_val != atomicCompSwap(_arr1_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMax_arr1_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr1_i32_[addr]; new_val = floatBitsToInt(max(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_arr1_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMin_arr1_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr1_i32_[addr]; new_val = floatBitsToInt(min(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_arr1_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); }float atomicAdd_arr2_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr2_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) + rhs)); } while (old_val != atomicCompSwap(_arr2_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicSub_arr2_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr2_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) - rhs)); } while (old_val != atomicCompSwap(_arr2_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMax_arr2_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr2_i32_[addr]; new_val = floatBitsToInt(max(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_arr2_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMin_arr2_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr2_i32_[addr]; new_val = floatBitsToInt(min(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_arr2_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); }float atomicAdd_arr3_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr3_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) + rhs)); } while (old_val != atomicCompSwap(_arr3_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicSub_arr3_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr3_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) - rhs)); } while (old_val != atomicCompSwap(_arr3_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMax_arr3_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr3_i32_[addr]; new_val = floatBitsToInt(max(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_arr3_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMin_arr3_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr3_i32_[addr]; new_val = floatBitsToInt(min(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_arr3_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); }float atomicAdd_arr4_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr4_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) + rhs)); } while (old_val != atomicCompSwap(_arr4_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicSub_arr4_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr4_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) - rhs)); } while (old_val != atomicCompSwap(_arr4_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMax_arr4_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr4_i32_[addr]; new_val = floatBitsToInt(max(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_arr4_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMin_arr4_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr4_i32_[addr]; new_val = floatBitsToInt(min(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_arr4_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); }float atomicAdd_arr5_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr5_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) + rhs)); } while (old_val != atomicCompSwap(_arr5_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicSub_arr5_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr5_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) - rhs)); } while (old_val != atomicCompSwap(_arr5_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMax_arr5_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr5_i32_[addr]; new_val = floatBitsToInt(max(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_arr5_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMin_arr5_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _arr5_i32_[addr]; new_val = floatBitsToInt(min(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_arr5_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); }
const float inf = 1.0f / 0.0f;
const float nan = 0.0f / 0.0f;
void substep_c44_02()
{ // range for
  // range from args buffer
  int AE = _args_i32_[16 + 0 * 8 + 0];
  int _beg = 0, _end = AE;
  int _sid0 = int(gl_GlobalInvocationID.x);
  for (int _sid = _sid0; _sid < (_end - _beg); _sid += int(gl_WorkGroupSize.x * gl_NumWorkGroups.x)) {
    int _itv = _beg + _sid;
      int AE = _args_i32_[16 + 0 * 8 + 0];
      int AF = _itv;
      int AG = AF - AE * int(AF / AE);
      int AI = int(0);
      int _li_AJ = 0;
      int _s0_arr0 = _args_i32_[16 + 0 * 8 + 0];
      int _s1_arr0 = _args_i32_[16 + 0 * 8 + 1];
      { // linear seek
        _li_AJ *= _s0_arr0;
        _li_AJ += AG;
        _li_AJ *= _s1_arr0;
        _li_AJ += AI;
      }
      int AJ = _li_AJ << 2;
      float AK = _arr0_f32_[AJ >> 2];
      int AL = 0;
float AM = float(128);
      //float AM = _gtmp_f32_[AL >> 2];
      float AN = AK * AM;
      int AO = int(1);
      int _li_AP = 0;
      { // linear seek
        _li_AP *= _s0_arr0;
        _li_AP += AG;
        _li_AP *= _s1_arr0;
        _li_AP += AO;
      }
      int AP = _li_AP << 2;
      float AQ = _arr0_f32_[AP >> 2];
      float AR = AQ * AM;
      float AS = float(0.5);
      float AT = AN - AS;
      float AU = AR - AS;
      int AV = int(AT);
      int AW = int(AU);
      float AX = float(AV);
      float AY = float(AW);
      float AZ = AN - AX;
      float B0 = AR - AY;
      float B1 = float(1.5);
      float B2 = B1 - AZ;
      float B3 = B1 - B0;
      float B4 = B2 * B2;
      float B5 = B3 * B3;
      float B6 = B4 * AS;
      float B7 = B5 * AS;
      int B8 = 4;
      float B9 = float(0.0002);
      //float B9 = _gtmp_f32_[B8 >> 2];
      float Ba = float(-B9);
      int Bb = 8;
float Bc = 1.0 / 256.0 / 256.0;
      //float Bc = _gtmp_f32_[Bb >> 2];
      float Bd = Ba * Bc;
      int _li_Bf = 0;
      int _s0_arr2 = _args_i32_[16 + 2 * 8 + 0];
      { // linear seek
        _li_Bf *= _s0_arr2;
        _li_Bf += AG;
      }
      int Bf = _li_Bf << 2;
      float Bg = _arr2_f32_[Bf >> 2];
      float Bh = float(1.0);
      float Bi = Bg - Bh;
      float Bj = Bd * Bi;
      float Bk = float(4.0);
      float Bl = Bj * Bk;
      float Bm = Bl * AM;
      float Bn = Bm * AM;
      float Bo = float(400.0);
      float Bp = Bn * Bo;
      int _li_Br = 0;
      int _s0_arr3 = _args_i32_[16 + 3 * 8 + 0];
      int _s1_arr3 = _args_i32_[16 + 3 * 8 + 1];
      int _s2_arr3 = _args_i32_[16 + 3 * 8 + 2];
      { // linear seek
        _li_Br *= _s0_arr3;
        _li_Br += AG;
        _li_Br *= _s1_arr3;
        _li_Br += AI;
        _li_Br *= _s2_arr3;
        _li_Br += AI;
      }
      int Br = _li_Br << 2;
      float Bs = _arr3_f32_[Br >> 2];
      float Bt = Bc * Bs;
      int _li_Bu = 0;
      { // linear seek
        _li_Bu *= _s0_arr3;
        _li_Bu += AG;
        _li_Bu *= _s1_arr3;
        _li_Bu += AI;
        _li_Bu *= _s2_arr3;
        _li_Bu += AO;
      }
      int Bu = _li_Bu << 2;
      float Bv = _arr3_f32_[Bu >> 2];
      float Bw = Bc * Bv;
      int _li_Bx = 0;
      { // linear seek
        _li_Bx *= _s0_arr3;
        _li_Bx += AG;
        _li_Bx *= _s1_arr3;
        _li_Bx += AO;
        _li_Bx *= _s2_arr3;
        _li_Bx += AI;
      }
      int Bx = _li_Bx << 2;
      float By = _arr3_f32_[Bx >> 2];
      float Bz = Bc * By;
      int _li_BA = 0;
      { // linear seek
        _li_BA *= _s0_arr3;
        _li_BA += AG;
        _li_BA *= _s1_arr3;
        _li_BA += AO;
        _li_BA *= _s2_arr3;
        _li_BA += AO;
      }
      int BA = _li_BA << 2;
      float BB = _arr3_f32_[BA >> 2];
      float BC = Bc * BB;
      float BD = Bp + Bt;
      float BE = Bp + BC;
      float BF = float(0.0);
      float BG = BF - AZ;
      float BH = BF - B0;
      int BI = 12;
      float BJ = float(1.0 / 128.0);
      //float BJ = _gtmp_f32_[BI >> 2];
      float BK = BG * BJ;
      float BL = BH * BJ;
      float BM = B6 * B7;
      int _li_BO = 0;
      int _s0_arr1 = _args_i32_[16 + 1 * 8 + 0];
      int _s1_arr1 = _args_i32_[16 + 1 * 8 + 1];
      { // linear seek
        _li_BO *= _s0_arr1;
        _li_BO += AG;
        _li_BO *= _s1_arr1;
        _li_BO += AI;
      }
      int BO = _li_BO << 2;
      float BP = _arr1_f32_[BO >> 2];
      float BQ = Bc * BP;
      int _li_BR = 0;
      { // linear seek
        _li_BR *= _s0_arr1;
        _li_BR += AG;
        _li_BR *= _s1_arr1;
        _li_BR += AO;
      }
      int BR = _li_BR << 2;
      float BS = _arr1_f32_[BR >> 2];
      float BT = Bc * BS;
      float BU = BD * BK;
      float BV = Bw * BL;
      float BW = BU + BV;
      float BX = Bz * BK;
      float BY = BE * BL;
      float BZ = BX + BY;
      float C0 = BQ + BW;
      float C1 = BT + BZ;
      float C2 = BM * C0;
      float C3 = BM * C1;
      int _li_C5 = 0;
      int _s0_arr4 = _args_i32_[16 + 4 * 8 + 0];
      int _s1_arr4 = _args_i32_[16 + 4 * 8 + 1];
      int _s2_arr4 = _args_i32_[16 + 4 * 8 + 2];
      { // linear seek
        _li_C5 *= _s0_arr4;
        _li_C5 += AV;
        _li_C5 *= _s1_arr4;
        _li_C5 += AW;
        _li_C5 *= _s2_arr4;
        _li_C5 += AI;
      }
      int C5 = _li_C5 << 2;
      float C6;
      { // Begin Atomic Op
      C6 = atomicAdd_arr4_f32(C5 >> 2, C2);
      } // End Atomic Op

  }
}

void main()
{
  substep_c44_02();
}
