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
    for (int tmp3_i32 = _21; tmp3_i32 < 53361; tmp3_i32 += total_invocs)
    {
        int tmp6_i32 = tmp3_i32 - (53361 * (tmp3_i32 / 53361));
        int tmp12_i32 = (tmp6_i32 - (53361 * (tmp6_i32 / 53361))) / 231;
        int tmp17_i32 = tmp6_i32 - (231 * (tmp6_i32 / 231));
        int tmp33_i32 = max(0, min(230, (tmp12_i32 + (-1))));
        int tmp35_i32 = max(0, min(230, tmp17_i32));
        int tmp10405_i32 = tmp35_i32 - (231 * (tmp35_i32 / 231));
        int tmp40_i32 = max(0, min(230, (tmp12_i32 + 1)));
        int tmp45_i32 = max(0, min(230, tmp12_i32));
        int tmp47_i32 = max(0, min(230, (tmp17_i32 + (-1))));
        int tmp10572_i32 = (tmp45_i32 - (231 * (tmp45_i32 / 231))) * 231;
        uint _125 = root_buffer_0_u32._m0[(uint((tmp47_i32 - (231 * (tmp47_i32 / 231))) + tmp10572_i32) * 4u) >> 2u];
        int tmp52_i32 = max(0, min(230, (tmp17_i32 + 1)));
        uint _140 = root_buffer_0_u32._m0[(uint((tmp52_i32 - (231 * (tmp52_i32 / 231))) + tmp10572_i32) * 4u) >> 2u];
        uint _152 = uint(tmp10405_i32 + tmp10572_i32) * 8u;
        float tmp62_f32 = uintBitsToFloat(root_buffer_0_u32._m0[(426888u + _152) >> 2u]) - ((uintBitsToFloat(root_buffer_0_u32._m0[(uint(tmp10405_i32 + ((tmp40_i32 - (231 * (tmp40_i32 / 231))) * 231)) * 4u) >> 2u]) - uintBitsToFloat(root_buffer_0_u32._m0[(uint(tmp10405_i32 + ((tmp33_i32 - (231 * (tmp33_i32 / 231))) * 231)) * 4u) >> 2u])) * 0.5);
        uint _163 = root_buffer_0_u32._m0[(_152 + 426892u) >> 2u];
        float tmp65_f32 = uintBitsToFloat(_163) - ((uintBitsToFloat(_140) - uintBitsToFloat(_125)) * 0.5);
        float tmp68_unknown = tmp62_f32;
        float tmp70_unknown = tmp65_f32;
        float tmp72_f32 = float(tmp12_i32);
        int tmp75_i32 = (-int(124.73999786376953125 < tmp72_f32)) & 1;
        int tmp77_i32 = -int(tmp72_f32 <= 173.25);
        float tmp79_f32 = float(tmp17_i32);
        bool _192 = ((tmp75_i32 & tmp77_i32) & (((-int(48.509998321533203125 < tmp79_f32)) & 1) & (-int(tmp79_f32 <= 99.3300018310546875)))) != 0;
        float _264;
        if (_192)
        {
            bool _205 = ((tmp75_i32 & (-int(tmp72_f32 <= 127.73999786376953125))) & ((-int(tmp62_f32 > 0.0)) & 1)) != 0;
            if (_205)
            {
                tmp68_unknown = 0.0;
            }
            else
            {
            }
            bool _219 = ((((-int(170.25 < tmp72_f32)) & 1) & tmp77_i32) & ((-int(tmp62_f32 < 0.0)) & 1)) != 0;
            if (_219)
            {
                tmp68_unknown = 0.0;
            }
            else
            {
            }
            bool _236 = ((((-int(96.3300018310546875 < tmp79_f32)) & 1) & (-int(tmp79_f32 < 99.3300018310546875))) & ((-int(tmp65_f32 < 0.0)) & 1)) != 0;
            if (_236)
            {
            }
            else
            {
                tmp68_unknown = 0.0;
            }
            tmp70_unknown = 0.0;
            _264 = _236 ? (_219 ? 0.0 : (_205 ? 0.0 : tmp62_f32)) : 0.0;
        }
        else
        {
            _264 = tmp62_f32;
        }
        uint _251 = uint((tmp17_i32 - (231 * (tmp17_i32 / 231))) + ((tmp12_i32 - (231 * (tmp12_i32 / 231))) * 231)) * 8u;
        root_buffer_0_u32._m0[(426888u + _251) >> 2u] = floatBitsToUint(_264);
        root_buffer_0_u32._m0[(_251 + 426892u) >> 2u] = floatBitsToUint(_192 ? 0.0 : tmp65_f32);
    }
}

