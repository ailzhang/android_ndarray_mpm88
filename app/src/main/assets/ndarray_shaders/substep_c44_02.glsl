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
void substep_c44_02()
{ // range for
  // range from args buffer
  int HI = _args_i32_[16 + 5 * 8 + 0];
  int HJ = _args_i32_[16 + 5 * 8 + 1];
  int Kl = HI * HJ;
  int _beg = 0, _end = Kl;
  int _sid0 = int(gl_GlobalInvocationID.x);
  for (int _sid = _sid0; _sid < (_end - _beg); _sid += int(gl_WorkGroupSize.x * gl_NumWorkGroups.x)) {
    int _itv = _beg + _sid;
      int HC = int(0);
      int HD = int(1);
      int HE = int(3);
      int HF = int(-50);
      float HG = float(10000.0);
      float HH = float(65536.0);
      int HI = _args_i32_[16 + 5 * 8 + 0];
      int HJ = _args_i32_[16 + 5 * 8 + 1];
      int HK = _itv;
      int HL = HK - HJ * int(HK / HJ);
      int HM = HK / HJ;
      int HN = HM - HI * int(HM / HI);
      int _li_HP = 0;
      int _s0_arr5 = _args_i32_[16 + 5 * 8 + 0];
      int _s1_arr5 = _args_i32_[16 + 5 * 8 + 1];
      { // linear seek
        _li_HP *= _s0_arr5;
        _li_HP += HN;
        _li_HP *= _s1_arr5;
        _li_HP += HL;
      }
      int HP = _li_HP << 2;
      int HQ = _arr5_i32_[HP >> 2];
      int HR = -int(HQ > HC);
      int HS = HR & HD;
      if (HS != 0) {
        int HU = _arr5_i32_[HP >> 2];
        float HV = float(HU);
        float HW = HH / HV;
        int _li_HY = 0;
        int _s0_arr4 = _args_i32_[16 + 4 * 8 + 0];
        int _s1_arr4 = _args_i32_[16 + 4 * 8 + 1];
        int _s2_arr4 = _args_i32_[16 + 4 * 8 + 2];
        { // linear seek
          _li_HY *= _s0_arr4;
          _li_HY += HN;
          _li_HY *= _s1_arr4;
          _li_HY += HL;
          _li_HY *= _s2_arr4;
          _li_HY += HC;
        }
        int HY = _li_HY << 2;
        int HZ = _arr4_i32_[HY >> 2];
        float I0 = float(HZ);
        float I1 = HW * I0;
        int _li_I2 = 0;
        { // linear seek
          _li_I2 *= _s0_arr4;
          _li_I2 += HN;
          _li_I2 *= _s1_arr4;
          _li_I2 += HL;
          _li_I2 *= _s2_arr4;
          _li_I2 += HD;
        }
        int I2 = _li_I2 << 2;
        int I3 = _arr4_i32_[I2 >> 2];
        float I4 = float(I3);
        float I5 = HW * I4;
        float I6 = I1 * HG;
        float I7 = I5 * HG;
        int I8 = int(I6);
        _arr4_i32_[HY >> 2] = I8;
        int Ia = int(I7);
        _arr4_i32_[I2 >> 2] = Ia;
        int Ic;
        { // Begin Atomic Op
        Ic = atomicAdd(_arr4_i32_[I2 >> 2], HF);
        } // End Atomic Op
        int Id = -int(HN < HE);
        int Ie = Id & HD;
        int If = -int(I8 < HC);
        int Ig = If & HD;
        int Ih = Ie & Ig;
        if (Ih != 0) {
          _arr4_i32_[HY >> 2] = HC;
        }
        int Ik = HI - HE;
        int Il = -int(HN > Ik);
        int Im = Il & HD;
        int In = _arr4_i32_[HY >> 2];
        int Io = -int(In > HC);
        int Ip = Io & HD;
        int Iq = Im & Ip;
        if (Iq != 0) {
          _arr4_i32_[HY >> 2] = HC;
        }
        int It = -int(HL < HE);
        int Iu = It & HD;
        int Iv = _arr4_i32_[I2 >> 2];
        int Iw = -int(Iv < HC);
        int Ix = Iw & HD;
        int Iy = Iu & Ix;
        if (Iy != 0) {
          _arr4_i32_[I2 >> 2] = HC;
        }
        int IB = -int(HL > Ik);
        int IC = IB & HD;
        int ID = _arr4_i32_[I2 >> 2];
        int IE = -int(ID > HC);
        int IF = IE & HD;
        int IG = IC & IF;
        if (IG != 0) {
          _arr4_i32_[I2 >> 2] = HC;
        }
      }
  }
}

void main()
{
  substep_c44_02();
}
