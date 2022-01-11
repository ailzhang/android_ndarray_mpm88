#version 310 es
layout(local_size_x = 128, local_size_y = 1, local_size_z = 1) in;
precision highp float;
layout(std430, binding = 0) buffer data_i32 { int _data_i32_[];}; 
layout(std430, binding = 0) buffer data_f32 { float _data_f32_[];}; 

const float inf = 1.0f / 0.0f;
const float nan = 0.0f / 0.0f;
void substep_c44_02()
{ // range for
  // range known at compile time
  int _sid0 = int(gl_GlobalInvocationID.x);
  for (int _sid = _sid0; _sid < (4096); _sid += int(gl_WorkGroupSize.x * gl_NumWorkGroups.x)) {
    int _itv = 0 + _sid;
      int CYw = int(63);
      int HD = _itv;
      int CWu = int(6);
      int CWv = HD >> CWu;
      int CWx = CWv & CYw;
      int CWB = HD & CYw;
      int HN = int(0);
      int HO = int(1);
      int HP = int(61);
      int HQ = int(3);
      int HR = int(-50);
      float HS = float(10000.0);
      float HT = float(65536.0);
      int CIY = 0;
      int CJ0 = CIY + 262144 * HN; // S0
      int CJ1 = CJ0 + 16384; // S22
      int DcN = CWx << CWu;
      int D79 = CWB + DcN;
      int CJ5 = CJ1 + 4 * D79; // S22
      int CJ6 = CJ5 + 0; // S23
      int HV = _data_i32_[CJ6 >> 2];
      int HW = -int(HV > HN);
      int HX = HW & HO;
      if (HX != 0) {
        int HZ = _data_i32_[CJ6 >> 2];
        float I0 = float(HZ);
        float I1 = HT / I0;
        int CJp = CJ0 + 98304; // S19
        int CJt = CJp + 8 * D79; // S19
        int CJu = CJt + 0; // S20
        int I3 = _data_i32_[CJu >> 2];
        float I4 = float(I3);
        float I5 = I1 * I4;
        int CJG = CJt + 4; // S21
        int I7 = _data_i32_[CJG >> 2];
        float I8 = float(I7);
        float I9 = I1 * I8;
        float Ia = I5 * HS;
        float Ib = I9 * HS;
        int Ic = int(Ia);
        _data_i32_[CJu >> 2] = Ic;
        int Ie = int(Ib);
        _data_i32_[CJG >> 2] = Ie;
        int Ig = _data_i32_[CJG >> 2];
        int Ih = Ig + HR;
        _data_i32_[CJG >> 2] = Ih;
        int Ij = -int(CWx < HQ);
        int Ik = Ij & HO;
        int Il = -int(Ic < HN);
        int Im = Il & HO;
        int In = Ik & Im;
        if (In != 0) {
          _data_i32_[CJu >> 2] = HN;
        }
        int Iq = -int(CWx > HP);
        int Ir = Iq & HO;
        int Is = _data_i32_[CJu >> 2];
        int It = -int(Is > HN);
        int Iu = It & HO;
        int Iv = Ir & Iu;
        if (Iv != 0) {
          _data_i32_[CJu >> 2] = HN;
        }
        int Iy = -int(CWB < HQ);
        int Iz = Iy & HO;
        int IA = _data_i32_[CJG >> 2];
        int IB = -int(IA < HN);
        int IC = IB & HO;
        int ID = Iz & IC;
        if (ID != 0) {
          _data_i32_[CJG >> 2] = HN;
        }
        int IG = -int(CWB > HP);
        int IH = IG & HO;
        int II = _data_i32_[CJG >> 2];
        int IJ = -int(II > HN);
        int IK = IJ & HO;
        int IL = IH & IK;
        if (IL != 0) {
          _data_i32_[CJG >> 2] = HN;
        }
      }
  }
}

void main()
{
  substep_c44_02();
}
