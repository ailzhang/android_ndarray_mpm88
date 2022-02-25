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
    for (int tmp3_i32 = _21; tmp3_i32 < 4096; )
    {
        int tmp6_i32 = tmp3_i32 - (4096 * (tmp3_i32 / 4096));
        int tmp12_i32 = (tmp6_i32 - (4096 * (tmp6_i32 / 4096))) / 64;
        int tmp17_i32 = tmp6_i32 - (64 * (tmp6_i32 / 64));
        uint _64 = uint((tmp17_i32 - (64 * (tmp17_i32 / 64))) + ((tmp12_i32 - (64 * (tmp12_i32 / 64))) << 6));
        uint _66 = _64 * 8u;
        root_buffer_0_u32._m0[(212992u + _66) >> 2u] = 0u;
        root_buffer_0_u32._m0[(_66 + 212996u) >> 2u] = 0u;
        root_buffer_0_u32._m0[(245760u + (_64 * 4u)) >> 2u] = 0u;
        tmp3_i32 += total_invocs;
        continue;
    }
}

