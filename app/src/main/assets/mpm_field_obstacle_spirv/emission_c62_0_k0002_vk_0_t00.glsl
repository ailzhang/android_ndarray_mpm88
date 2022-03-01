#version 310 es
layout(local_size_x = 1, local_size_y = 1, local_size_z = 1) in;

layout(binding = 0, std430) buffer root_buffer_0_u32_ptr
{
    uint _m0[];
} root_buffer_0_u32;

layout(binding = 1, std430) buffer global_tmps_buffer_u32_ptr
{
    uint _m0[];
} global_tmps_buffer_u32;

void main()
{
    if (gl_GlobalInvocationID.x == 0u)
    {
        uint _41 = root_buffer_0_u32._m0[0u];
        int tmp2_i32 = int(_41);
        global_tmps_buffer_u32._m0[0] = uint(tmp2_i32);
        global_tmps_buffer_u32._m0[1] = uint(tmp2_i32 + 50);
    }
}

