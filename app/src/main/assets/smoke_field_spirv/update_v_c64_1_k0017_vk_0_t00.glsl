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
        int tmp33_i32 = max(0, min(461, (tmp12_i32 + (-1))));
        int tmp35_i32 = max(0, min(461, tmp17_i32));
        int tmp11164_i32 = tmp35_i32 - (462 * (tmp35_i32 / 462));
        int tmp40_i32 = max(0, min(461, (tmp12_i32 + 1)));
        int tmp45_i32 = max(0, min(461, tmp12_i32));
        int tmp47_i32 = max(0, min(461, (tmp17_i32 + (-1))));
        int tmp11331_i32 = (tmp45_i32 - (462 * (tmp45_i32 / 462))) * 462;
        uint _126 = root_buffer_0_u32._m0[(853776u + (uint((tmp47_i32 - (462 * (tmp47_i32 / 462))) + tmp11331_i32) * 4u)) >> 2u];
        int tmp52_i32 = max(0, min(461, (tmp17_i32 + 1)));
        uint _141 = root_buffer_0_u32._m0[(853776u + (uint((tmp52_i32 - (462 * (tmp52_i32 / 462))) + tmp11331_i32) * 4u)) >> 2u];
        uint _153 = uint(tmp11164_i32 + tmp11331_i32) * 8u;
        float tmp62_f32 = uintBitsToFloat(root_buffer_0_u32._m0[(3415104u + _153) >> 2u]) - ((uintBitsToFloat(root_buffer_0_u32._m0[(853776u + (uint(tmp11164_i32 + ((tmp40_i32 - (462 * (tmp40_i32 / 462))) * 462)) * 4u)) >> 2u]) - uintBitsToFloat(root_buffer_0_u32._m0[(853776u + (uint(tmp11164_i32 + ((tmp33_i32 - (462 * (tmp33_i32 / 462))) * 462)) * 4u)) >> 2u])) * 0.5);
        uint _164 = root_buffer_0_u32._m0[(_153 + 3415108u) >> 2u];
        float tmp65_f32 = uintBitsToFloat(_164) - ((uintBitsToFloat(_141) - uintBitsToFloat(_126)) * 0.5);
        float tmp68_unknown = tmp62_f32;
        float tmp70_unknown = tmp65_f32;
        int tmp74_i32 = (-int(250 < tmp12_i32)) & 1;
        int tmp76_i32 = -int(tmp12_i32 <= 350);
        bool _191 = ((tmp74_i32 & tmp76_i32) & (((-int(100 < tmp17_i32)) & 1) & (-int(tmp17_i32 <= 200)))) != 0;
        float _263;
        if (_191)
        {
            bool _204 = ((tmp74_i32 & (-int(tmp12_i32 <= 253))) & ((-int(tmp62_f32 > 0.0)) & 1)) != 0;
            if (_204)
            {
                tmp68_unknown = 0.0;
            }
            else
            {
            }
            bool _218 = ((((-int(347 < tmp12_i32)) & 1) & tmp76_i32) & ((-int(tmp62_f32 < 0.0)) & 1)) != 0;
            if (_218)
            {
                tmp68_unknown = 0.0;
            }
            else
            {
            }
            bool _235 = ((((-int(197 < tmp17_i32)) & 1) & (-int(tmp17_i32 < 200))) & ((-int(tmp65_f32 < 0.0)) & 1)) != 0;
            if (_235)
            {
            }
            else
            {
                tmp68_unknown = 0.0;
            }
            tmp70_unknown = 0.0;
            _263 = _235 ? (_218 ? 0.0 : (_204 ? 0.0 : tmp62_f32)) : 0.0;
        }
        else
        {
            _263 = tmp62_f32;
        }
        uint _250 = uint((tmp17_i32 - (462 * (tmp17_i32 / 462))) + ((tmp12_i32 - (462 * (tmp12_i32 / 462))) * 462)) * 8u;
        root_buffer_0_u32._m0[(3415104u + _250) >> 2u] = floatBitsToUint(_263);
        root_buffer_0_u32._m0[(_250 + 3415108u) >> 2u] = floatBitsToUint(_191 ? 0.0 : tmp65_f32);
    }
}

