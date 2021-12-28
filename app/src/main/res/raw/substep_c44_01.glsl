#version 310 es
layout(local_size_x = 128, local_size_y = 1, local_size_z = 1) in;
precision highp float;
layout(std430, binding = 1) buffer gtmp_i32 { int _gtmp_i32_[];}; 
layout(std430, binding = 1) buffer gtmp_f32 { float _gtmp_f32_[];}; 
layout(std430, binding = 2) buffer args_i32 { int _args_i32_[];}; 
layout(std430, binding = 2) buffer args_f32 { float _args_f32_[];}; 
layout(std430, binding = 5) buffer arr5_i32 { int _arr5_i32_[];}; 
layout(std430, binding = 5) buffer arr5_f32 { float _arr5_f32_[];}; 
layout(std430, binding = 4) buffer arr4_i32 { int _arr4_i32_[];}; 
layout(std430, binding = 4) buffer arr4_f32 { float _arr4_f32_[];}; 

const float inf = 1.0f / 0.0f;
const float nan = 0.0f / 0.0f;
void substep_c44_01()
{ // range for
  // range known at runtime
  int _beg = 0, _end = _gtmp_i32_[0 >> 2];
  int _sid0 = int(gl_GlobalInvocationID.x);
  for (int _sid = _sid0; _sid < (_end - _beg); _sid += int(gl_WorkGroupSize.x * gl_NumWorkGroups.x)) {
    int _itv = _beg + _sid;
      int Ay = _itv;
      int Az = 4;
      int AA = _gtmp_i32_[Az >> 2];
      int AB = Ay - AA * int(Ay / AA);
      int AC = Ay / AA;
      int AD = 8;
      int AE = _gtmp_i32_[AD >> 2];
      int AF = AC - AE * int(AC / AE);
      int AH = int(0);
      int _li_AI = 0;
      { // linear seek
        int _s0_AI = _args_i32_[16 + 4 * 8 + 0];
        int _s1_AI = _args_i32_[16 + 4 * 8 + 1];
        int _s2_AI = _args_i32_[16 + 4 * 8 + 2];
        _li_AI *= _s0_AI;
        _li_AI += AF;
        _li_AI *= _s1_AI;
        _li_AI += AB;
        _li_AI *= _s2_AI;
        _li_AI += AH;
      }
      int AI = _li_AI << 2;
      float AJ = float(0.0);
      _arr4_f32_[AI >> 2] = AJ;
      int AL = int(1);
      int _li_AM = 0;
      { // linear seek
        int _s0_AM = _args_i32_[16 + 4 * 8 + 0];
        int _s1_AM = _args_i32_[16 + 4 * 8 + 1];
        int _s2_AM = _args_i32_[16 + 4 * 8 + 2];
        _li_AM *= _s0_AM;
        _li_AM += AF;
        _li_AM *= _s1_AM;
        _li_AM += AB;
        _li_AM *= _s2_AM;
        _li_AM += AL;
      }
      int AM = _li_AM << 2;
      _arr4_f32_[AM >> 2] = AJ;
      int _li_AP = 0;
      { // linear seek
        int _s0_AP = _args_i32_[16 + 5 * 8 + 0];
        int _s1_AP = _args_i32_[16 + 5 * 8 + 1];
        _li_AP *= _s0_AP;
        _li_AP += AF;
        _li_AP *= _s1_AP;
        _li_AP += AB;
      }
      int AP = _li_AP << 2;
      _arr5_f32_[AP >> 2] = AJ;
  }
}

void main()
{
  substep_c44_01();
}
