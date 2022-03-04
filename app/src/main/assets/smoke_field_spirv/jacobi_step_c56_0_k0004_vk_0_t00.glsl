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
    for (int tmp3_i32 = _21; tmp3_i32 < 53361; )
    {
        int tmp6_i32 = tmp3_i32 - (53361 * (tmp3_i32 / 53361));
        int tmp12_i32 = (tmp6_i32 - (53361 * (tmp6_i32 / 53361))) / 231;
        int tmp17_i32 = tmp6_i32 - (231 * (tmp6_i32 / 231));
        int tmp28_i32 = max(0, min(230, (tmp12_i32 + (-1))));
        int tmp30_i32 = max(0, min(230, tmp17_i32));
        int tmp1207_i32 = tmp30_i32 - (231 * (tmp30_i32 / 231));
        int tmp35_i32 = max(0, min(230, (tmp12_i32 + 1)));
        int tmp40_i32 = max(0, min(230, tmp12_i32));
        int tmp42_i32 = max(0, min(230, (tmp17_i32 + 1)));
        int tmp1350_i32 = (tmp40_i32 - (231 * (tmp40_i32 / 231))) * 231;
        int tmp47_i32 = max(0, min(230, (tmp17_i32 + (-1))));
        uint _151 = uint((tmp17_i32 - (231 * (tmp17_i32 / 231))) + ((tmp12_i32 - (231 * (tmp12_i32 / 231))) * 231)) * 4u;
        root_buffer_0_u32._m0[(213444u + _151) >> 2u] = floatBitsToUint(((((uintBitsToFloat(root_buffer_0_u32._m0[(uint(tmp1207_i32 + ((tmp28_i32 - (231 * (tmp28_i32 / 231))) * 231)) * 4u) >> 2u]) + uintBitsToFloat(root_buffer_0_u32._m0[(uint(tmp1207_i32 + ((tmp35_i32 - (231 * (tmp35_i32 / 231))) * 231)) * 4u) >> 2u])) + uintBitsToFloat(root_buffer_0_u32._m0[(uint((tmp42_i32 - (231 * (tmp42_i32 / 231))) + tmp1350_i32) * 4u) >> 2u])) + uintBitsToFloat(root_buffer_0_u32._m0[(uint((tmp47_i32 - (231 * (tmp47_i32 / 231))) + tmp1350_i32) * 4u) >> 2u])) - uintBitsToFloat(root_buffer_0_u32._m0[(1280664u + _151) >> 2u])) * 0.25);
        tmp3_i32 += total_invocs;
        continue;
    }
}

