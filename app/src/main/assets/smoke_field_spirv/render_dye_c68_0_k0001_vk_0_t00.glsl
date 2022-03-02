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
        uint _68 = uint((tmp17_i32 - (462 * (tmp17_i32 / 462))) + ((tmp12_i32 - (462 * (tmp12_i32 / 462))) * 462)) * 12u;
        uint _85 = root_buffer_0_u32._m0[(_68 + 5976436u) >> 2u];
        uint _91 = root_buffer_0_u32._m0[(_68 + 5976440u) >> 2u];
        uint _99 = (11099088u + _68) >> 2u;
        root_buffer_0_u32._m0[_99] = floatBitsToUint(uintBitsToFloat(root_buffer_0_u32._m0[(5976432u + _68) >> 2u]));
        uint _103 = (_68 + 11099092u) >> 2u;
        root_buffer_0_u32._m0[_103] = floatBitsToUint(uintBitsToFloat(_85));
        uint _107 = (_68 + 11099096u) >> 2u;
        root_buffer_0_u32._m0[_107] = floatBitsToUint(uintBitsToFloat(_91));
        if (((((-int(tmp12_i32 > 250)) & 1) & (-int(tmp12_i32 < 350))) & (((-int(tmp17_i32 > 100)) & 1) & (-int(tmp17_i32 < 200)))) != 0)
        {
            root_buffer_0_u32._m0[_99] = 1065353216u;
            root_buffer_0_u32._m0[_103] = 0u;
            root_buffer_0_u32._m0[_107] = 0u;
        }
        else
        {
        }
    }
}

