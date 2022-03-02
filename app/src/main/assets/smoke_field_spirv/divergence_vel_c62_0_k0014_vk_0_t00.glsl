#version 310 es
layout(local_size_x = 128, local_size_y = 1, local_size_z = 1) in;

layout(binding = 2, std430) buffer root_buffer_0_u32_ptr
{
    uint _m0[];
} root_buffer_0_u32;

void main()
{
    int _21 = int(gl_GlobalInvocationID.x);
    int total_invocs = int(gl_NumWorkGroups.x * 128u);
    for (int tmp3_i32 = _21; tmp3_i32 < 213444; tmp3_i32 += total_invocs)
    {
        int tmp6_i32 = tmp3_i32 - (213444 * (tmp3_i32 / 213444));
        int tmp12_i32 = (tmp6_i32 - (213444 * (tmp6_i32 / 213444))) / 462;
        int tmp17_i32 = tmp6_i32 - (462 * (tmp6_i32 / 462));
        int tmp28_i32 = max(0, min(461, (tmp12_i32 + (-1))));
        int tmp30_i32 = max(0, min(461, tmp17_i32));
        int tmp9091_i32 = tmp30_i32 - (462 * (tmp30_i32 / 462));
        float tmp33_f32 = uintBitsToFloat(root_buffer_0_u32._m0[(1707552u + (uint(tmp9091_i32 + ((tmp28_i32 - (462 * (tmp28_i32 / 462))) * 462)) * 8u)) >> 2u]);
        float tmp31_unknown = tmp33_f32;
        int tmp37_i32 = max(0, min(461, (tmp12_i32 + 1)));
        float tmp40_f32 = uintBitsToFloat(root_buffer_0_u32._m0[(1707552u + (uint(tmp9091_i32 + ((tmp37_i32 - (462 * (tmp37_i32 / 462))) * 462)) * 8u)) >> 2u]);
        float tmp38_unknown = tmp40_f32;
        int tmp44_i32 = max(0, min(461, tmp12_i32));
        int tmp46_i32 = max(0, min(461, (tmp17_i32 + (-1))));
        int tmp9240_i32 = (tmp44_i32 - (462 * (tmp44_i32 / 462))) * 462;
        uint _121 = uint((tmp46_i32 - (462 * (tmp46_i32 / 462))) + tmp9240_i32) * 8u;
        float tmp49_f32 = uintBitsToFloat(root_buffer_0_u32._m0[(_121 + 1707556u) >> 2u]);
        float tmp47_unknown = tmp49_f32;
        int tmp53_i32 = max(0, min(461, (tmp17_i32 + 1)));
        uint _138 = uint((tmp53_i32 - (462 * (tmp53_i32 / 462))) + tmp9240_i32) * 8u;
        float tmp56_f32 = uintBitsToFloat(root_buffer_0_u32._m0[(_138 + 1707556u) >> 2u]);
        float tmp54_unknown = tmp56_f32;
        uint _147 = uint(tmp9091_i32 + tmp9240_i32) * 8u;
        float tmp59_f32 = uintBitsToFloat(root_buffer_0_u32._m0[(1707552u + _147) >> 2u]);
        float tmp61_f32 = uintBitsToFloat(root_buffer_0_u32._m0[(_147 + 1707556u) >> 2u]);
        float _225;
        float _229;
        if (((-int(tmp12_i32 == 0)) & 1) != 0)
        {
            float tmp65_f32 = -tmp59_f32;
            tmp31_unknown = tmp65_f32;
            _229 = tmp65_f32;
            _225 = tmp40_f32;
        }
        else
        {
            float _226;
            if (((-int(tmp12_i32 == 461)) & 1) != 0)
            {
                float tmp70_f32 = -tmp59_f32;
                tmp38_unknown = tmp70_f32;
                _226 = tmp70_f32;
            }
            else
            {
                _226 = tmp40_f32;
            }
            _229 = tmp33_f32;
            _225 = _226;
        }
        float _232;
        float _236;
        if (((-int(tmp17_i32 == 0)) & 1) != 0)
        {
            float tmp75_f32 = -tmp61_f32;
            tmp47_unknown = tmp75_f32;
            _236 = tmp75_f32;
            _232 = tmp56_f32;
        }
        else
        {
            float _235;
            if (((-int(tmp17_i32 == 461)) & 1) != 0)
            {
                float tmp80_f32 = -tmp61_f32;
                tmp54_unknown = tmp80_f32;
                _235 = tmp80_f32;
            }
            else
            {
                _235 = tmp56_f32;
            }
            _236 = tmp49_f32;
            _232 = _235;
        }
        root_buffer_0_u32._m0[(5122656u + (uint((tmp17_i32 - (462 * (tmp17_i32 / 462))) + ((tmp12_i32 - (462 * (tmp12_i32 / 462))) * 462)) * 4u)) >> 2u] = floatBitsToUint((((_225 - _229) + _232) - _236) * 0.5);
    }
}

