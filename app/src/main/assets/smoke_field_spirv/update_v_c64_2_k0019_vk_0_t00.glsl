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
        int tmp12023_i32 = tmp35_i32 - (231 * (tmp35_i32 / 231));
        int tmp40_i32 = max(0, min(230, (tmp12_i32 + 1)));
        int tmp45_i32 = max(0, min(230, tmp12_i32));
        int tmp47_i32 = max(0, min(230, (tmp17_i32 + (-1))));
        int tmp12190_i32 = (tmp45_i32 - (231 * (tmp45_i32 / 231))) * 231;
        uint _126 = root_buffer_0_u32._m0[(213444u + (uint((tmp47_i32 - (231 * (tmp47_i32 / 231))) + tmp12190_i32) * 4u)) >> 2u];
        int tmp52_i32 = max(0, min(230, (tmp17_i32 + 1)));
        uint _141 = root_buffer_0_u32._m0[(213444u + (uint((tmp52_i32 - (231 * (tmp52_i32 / 231))) + tmp12190_i32) * 4u)) >> 2u];
        uint _153 = uint(tmp12023_i32 + tmp12190_i32) * 8u;
        float tmp62_f32 = uintBitsToFloat(root_buffer_0_u32._m0[(426888u + _153) >> 2u]) - ((uintBitsToFloat(root_buffer_0_u32._m0[(213444u + (uint(tmp12023_i32 + ((tmp40_i32 - (231 * (tmp40_i32 / 231))) * 231)) * 4u)) >> 2u]) - uintBitsToFloat(root_buffer_0_u32._m0[(213444u + (uint(tmp12023_i32 + ((tmp33_i32 - (231 * (tmp33_i32 / 231))) * 231)) * 4u)) >> 2u])) * 0.5);
        uint _164 = root_buffer_0_u32._m0[(_153 + 426892u) >> 2u];
        float tmp65_f32 = uintBitsToFloat(_164) - ((uintBitsToFloat(_141) - uintBitsToFloat(_126)) * 0.5);
        float tmp68_unknown = tmp62_f32;
        float tmp70_unknown = tmp65_f32;
        float tmp72_f32 = float(tmp12_i32);
        int tmp75_i32 = (-int(124.73999786376953125 < tmp72_f32)) & 1;
        int tmp77_i32 = -int(tmp72_f32 <= 173.25);
        float tmp79_f32 = float(tmp17_i32);
        bool _193 = ((tmp75_i32 & tmp77_i32) & (((-int(48.509998321533203125 < tmp79_f32)) & 1) & (-int(tmp79_f32 <= 99.3300018310546875)))) != 0;
        float _265;
        if (_193)
        {
            bool _206 = ((tmp75_i32 & (-int(tmp72_f32 <= 127.73999786376953125))) & ((-int(tmp62_f32 > 0.0)) & 1)) != 0;
            if (_206)
            {
                tmp68_unknown = 0.0;
            }
            else
            {
            }
            bool _220 = ((((-int(170.25 < tmp72_f32)) & 1) & tmp77_i32) & ((-int(tmp62_f32 < 0.0)) & 1)) != 0;
            if (_220)
            {
                tmp68_unknown = 0.0;
            }
            else
            {
            }
            bool _237 = ((((-int(96.3300018310546875 < tmp79_f32)) & 1) & (-int(tmp79_f32 < 99.3300018310546875))) & ((-int(tmp65_f32 < 0.0)) & 1)) != 0;
            if (_237)
            {
            }
            else
            {
                tmp68_unknown = 0.0;
            }
            tmp70_unknown = 0.0;
            _265 = _237 ? (_220 ? 0.0 : (_206 ? 0.0 : tmp62_f32)) : 0.0;
        }
        else
        {
            _265 = tmp62_f32;
        }
        uint _252 = uint((tmp17_i32 - (231 * (tmp17_i32 / 231))) + ((tmp12_i32 - (231 * (tmp12_i32 / 231))) * 231)) * 8u;
        root_buffer_0_u32._m0[(426888u + _252) >> 2u] = floatBitsToUint(_265);
        root_buffer_0_u32._m0[(_252 + 426892u) >> 2u] = floatBitsToUint(_193 ? 0.0 : tmp65_f32);
    }
}

