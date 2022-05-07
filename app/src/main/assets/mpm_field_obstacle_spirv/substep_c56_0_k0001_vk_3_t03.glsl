#version 310 es
layout(local_size_x = 128, local_size_y = 1, local_size_z = 1) in;

layout(binding = 0, std430) buffer root_buffer_0_u32_ptr
{
    uint _m0[];
} root_buffer_0_u32;

void main()
{
    int begin_ = int(gl_GlobalInvocationID.x) + 0;
    int end_ = 9216 + 0;
    int total_invocs = int(gl_NumWorkGroups.x * 128u);
    for (int tmp384_i32 = begin_; tmp384_i32 < end_; tmp384_i32 += total_invocs)
    {
        int tmp387_i32 = tmp384_i32 - (9216 * (tmp384_i32 / 9216));
        int tmp393_i32 = (tmp387_i32 - (9216 * (tmp387_i32 / 9216))) / 96;
        int tmp398_i32 = tmp387_i32 - (96 * (tmp387_i32 / 96));
        uint tmp9053_u32 = 0u + (uint(0) * 401444u);
        int tmp10313_i32 = (tmp398_i32 - (96 * (tmp398_i32 / 96))) + ((tmp393_i32 - (96 * (tmp393_i32 / 96))) * 96);
        uint tmp9065_u32 = ((tmp9053_u32 + 364548u) + (uint(tmp10313_i32) * 4u)) + 0u;
        if (((-int(int(root_buffer_0_u32._m0[tmp9065_u32 >> 2u]) > 0)) & 1) != 0)
        {
            uint _96 = root_buffer_0_u32._m0[tmp9065_u32 >> 2u];
            float tmp418_f32 = float(int(_96));
            float tmp419_f32 = 1.0 / tmp418_f32;
            uint tmp9100_u32 = (tmp9053_u32 + 290820u) + (uint(tmp10313_i32) * 8u);
            uint _116 = root_buffer_0_u32._m0[(tmp9100_u32 + 4u) >> 2u];
            uint tmp9136_u32 = (tmp9053_u32 + 180228u) + (uint(tmp10313_i32) * 8u);
            root_buffer_0_u32._m0[(tmp9136_u32 + 0u) >> 2u] = floatBitsToUint(tmp419_f32 * float(int(root_buffer_0_u32._m0[(tmp9100_u32 + 0u) >> 2u])));
            uint tmp9155_u32 = tmp9136_u32 + 4u;
            root_buffer_0_u32._m0[tmp9155_u32 >> 2u] = floatBitsToUint(tmp419_f32 * float(int(_116)));
            root_buffer_0_u32._m0[tmp9155_u32 >> 2u] = floatBitsToUint(uintBitsToFloat(root_buffer_0_u32._m0[tmp9155_u32 >> 2u]) + (-0.0025520832277834415435791015625));
            root_buffer_0_u32._m0[(((tmp9053_u32 + 253956u) + (uint(tmp10313_i32) * 4u)) + 0u) >> 2u] = floatBitsToUint(tmp418_f32 * 9.094947017729282379150390625e-13);
        }
        else
        {
        }
        uint tmp9226_u32 = (tmp9053_u32 + 180228u) + (uint(tmp10313_i32) * 8u);
        uint tmp9227_u32 = tmp9226_u32 + 0u;
        if ((((-int(tmp393_i32 < 3)) & 1) & ((-int(uintBitsToFloat(root_buffer_0_u32._m0[tmp9227_u32 >> 2u]) < 0.0)) & 1)) != 0)
        {
            root_buffer_0_u32._m0[tmp9227_u32 >> 2u] = floatBitsToUint(0.0);
        }
        else
        {
        }
        if ((((-int(tmp393_i32 > 93)) & 1) & ((-int(uintBitsToFloat(root_buffer_0_u32._m0[tmp9227_u32 >> 2u]) > 0.0)) & 1)) != 0)
        {
            root_buffer_0_u32._m0[tmp9227_u32 >> 2u] = floatBitsToUint(0.0);
        }
        else
        {
        }
        uint tmp9299_u32 = tmp9226_u32 + 4u;
        if ((((-int(tmp398_i32 < 3)) & 1) & ((-int(uintBitsToFloat(root_buffer_0_u32._m0[tmp9299_u32 >> 2u]) < 0.0)) & 1)) != 0)
        {
            root_buffer_0_u32._m0[tmp9299_u32 >> 2u] = floatBitsToUint(0.0);
        }
        else
        {
        }
        if ((((-int(tmp398_i32 > 93)) & 1) & ((-int(uintBitsToFloat(root_buffer_0_u32._m0[tmp9299_u32 >> 2u]) > 0.0)) & 1)) != 0)
        {
            root_buffer_0_u32._m0[tmp9299_u32 >> 2u] = floatBitsToUint(0.0);
        }
        else
        {
        }
        float tmp474_f32 = float(tmp393_i32);
        float tmp475_f32 = float(tmp398_i32);
        for (int tmp477_i32 = 0; tmp477_i32 < 2; tmp477_i32++)
        {
            int tmp479_i32 = (tmp477_i32 + 0) << 1;
            uint tmp9359_u32 = tmp9053_u32 + 401412u;
            uint tmp9365_u32 = tmp9359_u32 + (uint(tmp479_i32 - (4 * (tmp479_i32 / 4))) * 8u);
            float tmp482_f32 = uintBitsToFloat(root_buffer_0_u32._m0[(tmp9365_u32 + 0u) >> 2u]) * 96.0;
            float tmp485_f32 = uintBitsToFloat(root_buffer_0_u32._m0[(tmp9365_u32 + 4u) >> 2u]) * 96.0;
            int tmp486_i32 = tmp479_i32 + 1;
            uint tmp9391_u32 = tmp9359_u32 + (uint(tmp486_i32 - (4 * (tmp486_i32 / 4))) * 8u);
            float tmp489_f32 = uintBitsToFloat(root_buffer_0_u32._m0[(tmp9391_u32 + 0u) >> 2u]) * 96.0;
            float tmp493_f32 = uintBitsToFloat(root_buffer_0_u32._m0[tmp9227_u32 >> 2u]);
            float tmp494_f32 = uintBitsToFloat(root_buffer_0_u32._m0[tmp9299_u32 >> 2u]);
            float tmp495_unknown = 0.0;
            tmp495_unknown = tmp493_f32;
            float tmp497_unknown = 0.0;
            tmp497_unknown = tmp494_f32;
            int tmp500_i32 = (-int(tmp482_f32 < tmp474_f32)) & 1;
            int tmp501_i32 = -int(tmp474_f32 <= tmp489_f32);
            if (((tmp500_i32 & tmp501_i32) & (((-int((uintBitsToFloat(root_buffer_0_u32._m0[(tmp9391_u32 + 4u) >> 2u]) * 96.0) < tmp475_f32)) & 1) & (-int(tmp475_f32 <= tmp485_f32)))) != 0)
            {
                if (((tmp500_i32 & (-int(tmp474_f32 <= (tmp482_f32 + 3.0)))) & ((-int(tmp493_f32 > 0.0)) & 1)) != 0)
                {
                    tmp495_unknown = 0.0;
                }
                else
                {
                }
                if (((((-int((tmp489_f32 - 3.0) < tmp474_f32)) & 1) & tmp501_i32) & ((-int(tmp493_f32 < 0.0)) & 1)) != 0)
                {
                    tmp495_unknown = 0.0;
                }
                else
                {
                }
                if (((((-int((tmp485_f32 - 3.0) < tmp475_f32)) & 1) & (-int(tmp475_f32 < tmp485_f32))) & ((-int(tmp494_f32 < 0.0)) & 1)) != 0)
                {
                }
                else
                {
                    tmp495_unknown = 0.0;
                }
                tmp497_unknown = 0.0;
            }
            else
            {
            }
            root_buffer_0_u32._m0[tmp9227_u32 >> 2u] = floatBitsToUint(tmp495_unknown);
            root_buffer_0_u32._m0[tmp9299_u32 >> 2u] = floatBitsToUint(tmp497_unknown);
        }
    }
}

