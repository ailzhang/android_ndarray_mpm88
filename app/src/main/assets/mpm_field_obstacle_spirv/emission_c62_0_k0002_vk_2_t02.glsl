#version 310 es
layout(local_size_x = 1, local_size_y = 1, local_size_z = 1) in;

layout(binding = 0, std430) buffer root_buffer_0_u32_ptr
{
    uint _m0[];
} root_buffer_0_u32;

void main()
{
    if (gl_GlobalInvocationID.x == 0u)
    {
        uint tmp10974_u32 = (((0u + (uint(0) * 401444u)) + 0u) + (uint(0) * 4u)) + 0u;
        root_buffer_0_u32._m0[tmp10974_u32 >> 2u] = uint(int(root_buffer_0_u32._m0[tmp10974_u32 >> 2u]) + 50);
    }
}

