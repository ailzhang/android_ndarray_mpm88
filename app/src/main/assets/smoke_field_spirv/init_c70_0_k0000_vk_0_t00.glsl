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
        uint _64 = uint((tmp17_i32 - (231 * (tmp17_i32 / 231))) + ((tmp12_i32 - (231 * (tmp12_i32 / 231))) * 231));
        uint _66 = _64 * 8u;
        root_buffer_0_u32._m0[(426888u + _66) >> 2u] = 0u;
        root_buffer_0_u32._m0[(_66 + 426892u) >> 2u] = 0u;
        root_buffer_0_u32._m0[(853776u + _66) >> 2u] = 0u;
        root_buffer_0_u32._m0[(_66 + 853780u) >> 2u] = 0u;
        uint _98 = _64 * 4u;
        root_buffer_0_u32._m0[_98 >> 2u] = 0u;
        root_buffer_0_u32._m0[(213444u + _98) >> 2u] = 0u;
        uint _117 = _64 * 12u;
        root_buffer_0_u32._m0[(1494108u + _117) >> 2u] = 0u;
        root_buffer_0_u32._m0[(_117 + 1494112u) >> 2u] = 0u;
        root_buffer_0_u32._m0[(_117 + 1494116u) >> 2u] = 0u;
        root_buffer_0_u32._m0[(2134440u + _117) >> 2u] = 0u;
        root_buffer_0_u32._m0[(_117 + 2134444u) >> 2u] = 0u;
        root_buffer_0_u32._m0[(_117 + 2134448u) >> 2u] = 0u;
        root_buffer_0_u32._m0[(2774772u + _117) >> 2u] = floatBitsToUint(float(tmp12_i32));
        root_buffer_0_u32._m0[(_117 + 2774776u) >> 2u] = floatBitsToUint(float(tmp17_i32));
        root_buffer_0_u32._m0[(_117 + 2774780u) >> 2u] = 0u;
        tmp3_i32 += total_invocs;
        continue;
    }
}

