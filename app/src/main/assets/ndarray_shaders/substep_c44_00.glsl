#version 310 es
layout(local_size_x = 128, local_size_y = 1, local_size_z = 1) in;
precision highp float;
layout(std430, binding = 2) buffer args_i32 { int _args_i32_[];}; 
layout(std430, binding = 2) buffer args_f32 { float _args_f32_[];}; 
layout(std430, binding = 9) buffer arr5_i32 { int _arr5_i32_[];}; 
layout(std430, binding = 9) buffer arr5_f32 { float _arr5_f32_[];}; 
layout(std430, binding = 8) buffer arr4_i32 { int _arr4_i32_[];}; 
layout(std430, binding = 8) buffer arr4_f32 { float _arr4_f32_[];}; 

const float inf = 1.0f / 0.0f;
const float nan = 0.0f / 0.0f;
void substep_c44_00()
{ // range for
  // range from args buffer
  //int B = 128;
  //int C = 128;
  int B = _args_i32_[16 + 5 * 8 + 0];
  int C = _args_i32_[16 + 5 * 8 + 1];

  int D = B * C;
  int _beg = 0, _end = D;
  int _sid0 = int(gl_GlobalInvocationID.x);
  for (int _sid = _sid0; _sid < (_end - _beg); _sid += int(gl_WorkGroupSize.x * gl_NumWorkGroups.x)) {
    int _itv = _beg + _sid;
      int D = B * C;
      int E = _itv;
      int F = E - C * int(E / C);
      int G = E / C;
      int H = G - B * int(G / B);
      int J = int(0);
      int _s1_arr4 = _args_i32_[16 + 4 * 8 + 1];
      //int _s1_arr4 = 128;
      int _s2_arr4 = _args_i32_[16 + 4 * 8 + 2];
      //int _s2_arr4 = 2;
      int K = H;
      K *= _s1_arr4;
      K += F;
      K *= _s2_arr4;
      K += J;
      float L = float(0.0);
      _arr4_f32_[K] = L;
      int N = int(1);
      int O = H;
      O *= _s1_arr4;
      O += F;
      O *= _s2_arr4;
      O += N;
      _arr4_f32_[O] = L;
      int _s1_arr5 = _args_i32_[16 + 5 * 8 + 1];
      //int _s1_arr5 = 128;
      int R = H;
      R *= _s1_arr5;
      R += F;
      _arr5_f32_[R] = L;
  }
}

void main()
{
  substep_c44_00();
}
