#version 310 es
layout(local_size_x = 128, local_size_y = 1, local_size_z = 1) in;

layout(binding = 0, std430) buffer root_buffer_0_u32_ptr
{
    uint _m0[];
} root_buffer_0_u32;

void main()
{
    int _21 = int(gl_GlobalInvocationID.x);
    int total_invocs = int(gl_NumWorkGroups.x * 128u);
    for (int tmp3_i32 = _21; tmp3_i32 < 213444; )
    {
        int tmp6_i32 = tmp3_i32 - (213444 * (tmp3_i32 / 213444));
        int tmp12_i32 = (tmp6_i32 - (213444 * (tmp6_i32 / 213444))) / 462;
        int tmp17_i32 = tmp6_i32 - (462 * (tmp6_i32 / 462));
        float tmp25_f32 = float(tmp12_i32) + (-230.5);
        float tmp28_f32 = float(tmp17_i32) + 0.5;
        float tmp31_f32 = (tmp25_f32 * tmp25_f32) + (tmp28_f32 * tmp28_f32);
        uint _82 = uint((tmp17_i32 - (462 * (tmp17_i32 / 462))) + ((tmp12_i32 - (462 * (tmp12_i32 / 462))) * 462)) * 8u;
        uint _90 = (1707552u + _82) >> 2u;
        uint _97 = (_82 + 1707556u) >> 2u;
        uint _99 = root_buffer_0_u32._m0[_97];
        root_buffer_0_u32._m0[_90] = floatBitsToUint(uintBitsToFloat(root_buffer_0_u32._m0[_90]) + (-0.2939999997615814208984375));
        root_buffer_0_u32._m0[_97] = floatBitsToUint(uintBitsToFloat(_99) + ((exp(tmp31_f32 * (-0.0064935064874589443206787109375)) * 120.0) - 0.2939999997615814208984375));
        tmp3_i32 += total_invocs;
        continue;
    }
}

