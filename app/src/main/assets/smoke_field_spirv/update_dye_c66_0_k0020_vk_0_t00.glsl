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
        uint _74 = uint((tmp17_i32 - (462 * (tmp17_i32 / 462))) + ((tmp12_i32 - (462 * (tmp12_i32 / 462))) * 462)) * 12u;
        uint _82 = (5976432u + _74) >> 2u;
        uint _89 = (_74 + 5976436u) >> 2u;
        uint _91 = root_buffer_0_u32._m0[_89];
        uint _95 = (_74 + 5976440u) >> 2u;
        uint _97 = root_buffer_0_u32._m0[_95];
        float tmp47_f32 = exp(tmp31_f32 * (-0.0074961115606129169464111328125));
        root_buffer_0_u32._m0[_82] = floatBitsToUint(min((uintBitsToFloat(root_buffer_0_u32._m0[_82]) + tmp47_f32) * 0.980000019073486328125, 1.0));
        root_buffer_0_u32._m0[_89] = floatBitsToUint(min((uintBitsToFloat(_91) + tmp47_f32) * 0.980000019073486328125, 1.0));
        root_buffer_0_u32._m0[_95] = floatBitsToUint(min((uintBitsToFloat(_97) + tmp47_f32) * 0.980000019073486328125, 1.0));
        tmp3_i32 += total_invocs;
        continue;
    }
}

