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
    for (int tmp3_i32 = _21; tmp3_i32 < 213444; )
    {
        int tmp6_i32 = tmp3_i32 - (213444 * (tmp3_i32 / 213444));
        int tmp12_i32 = (tmp6_i32 - (213444 * (tmp6_i32 / 213444))) / 462;
        int tmp17_i32 = tmp6_i32 - (462 * (tmp6_i32 / 462));
        uint _64 = uint((tmp17_i32 - (462 * (tmp17_i32 / 462))) + ((tmp12_i32 - (462 * (tmp12_i32 / 462))) * 462));
        uint _66 = _64 * 8u;
        root_buffer_0_u32._m0[(1707552u + _66) >> 2u] = 0u;
        root_buffer_0_u32._m0[(_66 + 1707556u) >> 2u] = 0u;
        root_buffer_0_u32._m0[(3415104u + _66) >> 2u] = 0u;
        root_buffer_0_u32._m0[(_66 + 3415108u) >> 2u] = 0u;
        uint _98 = _64 * 4u;
        root_buffer_0_u32._m0[_98 >> 2u] = 0u;
        root_buffer_0_u32._m0[(853776u + _98) >> 2u] = 0u;
        uint _117 = _64 * 12u;
        root_buffer_0_u32._m0[(5976432u + _117) >> 2u] = 0u;
        root_buffer_0_u32._m0[(_117 + 5976436u) >> 2u] = 0u;
        root_buffer_0_u32._m0[(_117 + 5976440u) >> 2u] = 0u;
        root_buffer_0_u32._m0[(8537760u + _117) >> 2u] = 0u;
        root_buffer_0_u32._m0[(_117 + 8537764u) >> 2u] = 0u;
        root_buffer_0_u32._m0[(_117 + 8537768u) >> 2u] = 0u;
        root_buffer_0_u32._m0[(11099088u + _117) >> 2u] = floatBitsToUint(float(tmp12_i32));
        root_buffer_0_u32._m0[(_117 + 11099092u) >> 2u] = floatBitsToUint(float(tmp17_i32));
        root_buffer_0_u32._m0[(_117 + 11099096u) >> 2u] = 0u;
        tmp3_i32 += total_invocs;
        continue;
    }
}

