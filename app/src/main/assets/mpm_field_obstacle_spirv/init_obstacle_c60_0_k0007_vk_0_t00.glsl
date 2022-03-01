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
        root_buffer_0_u32._m0[100353u] = 0u;
        root_buffer_0_u32._m0[100354u] = 1047233823u;
        root_buffer_0_u32._m0[100355u] = 1065353216u;
        root_buffer_0_u32._m0[100356u] = 0u;
        root_buffer_0_u32._m0[100357u] = 1041865114u;
        root_buffer_0_u32._m0[100358u] = 1053944709u;
        root_buffer_0_u32._m0[100359u] = 1062836634u;
        root_buffer_0_u32._m0[100360u] = 1048576000u;
    }
}

