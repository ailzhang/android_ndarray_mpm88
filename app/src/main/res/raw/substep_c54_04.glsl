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
void substep_c54_04()
{ // serial
  int Fc = _args_i32_[16 + 0 * 8 + 0];
  int Fd = 4;
  _gtmp_i32_[Fd >> 2] = Fc;
}

void main()
{
  substep_c54_04();
}
