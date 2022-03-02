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
        int tmp28_i32 = max(0, min(461, (tmp12_i32 + (-1))));
        int tmp30_i32 = max(0, min(461, tmp17_i32));
        int tmp1203_i32 = tmp30_i32 - (462 * (tmp30_i32 / 462));
        int tmp35_i32 = max(0, min(461, (tmp12_i32 + 1)));
        int tmp40_i32 = max(0, min(461, tmp12_i32));
        int tmp42_i32 = max(0, min(461, (tmp17_i32 + 1)));
        int tmp1346_i32 = (tmp40_i32 - (462 * (tmp40_i32 / 462))) * 462;
        int tmp47_i32 = max(0, min(461, (tmp17_i32 + (-1))));
        uint _151 = uint((tmp17_i32 - (462 * (tmp17_i32 / 462))) + ((tmp12_i32 - (462 * (tmp12_i32 / 462))) * 462)) * 4u;
        root_buffer_0_u32._m0[(853776u + _151) >> 2u] = floatBitsToUint(((((uintBitsToFloat(root_buffer_0_u32._m0[(uint(tmp1203_i32 + ((tmp28_i32 - (462 * (tmp28_i32 / 462))) * 462)) * 4u) >> 2u]) + uintBitsToFloat(root_buffer_0_u32._m0[(uint(tmp1203_i32 + ((tmp35_i32 - (462 * (tmp35_i32 / 462))) * 462)) * 4u) >> 2u])) + uintBitsToFloat(root_buffer_0_u32._m0[(uint((tmp42_i32 - (462 * (tmp42_i32 / 462))) + tmp1346_i32) * 4u) >> 2u])) + uintBitsToFloat(root_buffer_0_u32._m0[(uint((tmp47_i32 - (462 * (tmp47_i32 / 462))) + tmp1346_i32) * 4u) >> 2u])) - uintBitsToFloat(root_buffer_0_u32._m0[(5122656u + _151) >> 2u])) * 0.25);
        tmp3_i32 += total_invocs;
        continue;
    }
}

