#version 310 es
layout(local_size_x = 128, local_size_y = 1, local_size_z = 1) in;
precision highp float;
layout(std430, binding = 0) buffer data_i32 { int _data_i32_[];}; 

const float inf = 1.0f / 0.0f;
const float nan = 0.0f / 0.0f;
void substep_c44_00()
{ // range for
  // range known at compile time
  int _sid0 = int(gl_GlobalInvocationID.x);
  for (int _sid = _sid0; _sid < (4096); _sid += int(gl_WorkGroupSize.x * gl_NumWorkGroups.x)) {
    int _itv = 0 + _sid;
      int D = _itv;
      int CRg = int(6);
      int CRh = D >> CRg;
      int O = int(0);
      int CAg = 0;
      int CAi = CAg + 262144 * O; // S0
      int CAj = CAi + 98304; // S19
      int Dcy = int(63);
      int Dcn = CRh & Dcy;
      int Dcp = D & Dcy;
      int DcF = Dcn << CRg;
      int D1P = Dcp + DcF;
      int CAn = CAj + 8 * D1P; // S19
      int CAo = CAn + 0; // S20
      _data_i32_[CAo >> 2] = O;
      int CAA = CAn + 4; // S21
      _data_i32_[CAA >> 2] = O;
      int CAH = CAi + 16384; // S22
      int CAL = CAH + 4 * D1P; // S22
      int CAM = CAL + 0; // S23
      _data_i32_[CAM >> 2] = O;
  }
}

void main()
{
  substep_c44_00();
}
