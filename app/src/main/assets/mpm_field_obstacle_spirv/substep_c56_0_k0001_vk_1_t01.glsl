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
    for (int tmp8_i32 = begin_; tmp8_i32 < end_; tmp8_i32 += total_invocs)
    {
        int tmp11_i32 = tmp8_i32 - (9216 * (tmp8_i32 / 9216));
        int tmp17_i32 = (tmp11_i32 - (9216 * (tmp11_i32 / 9216))) / 96;
        int tmp22_i32 = tmp11_i32 - (96 * (tmp11_i32 / 96));
        uint tmp8316_u32 = 0u + (uint(0) * 401444u);
        int tmp9994_i32 = (tmp22_i32 - (96 * (tmp22_i32 / 96))) + ((tmp17_i32 - (96 * (tmp17_i32 / 96))) * 96);
        uint tmp8327_u32 = (tmp8316_u32 + 180228u) + (uint(tmp9994_i32) * 8u);
        root_buffer_0_u32._m0[(tmp8327_u32 + 0u) >> 2u] = floatBitsToUint(0.0);
        root_buffer_0_u32._m0[(tmp8327_u32 + 4u) >> 2u] = floatBitsToUint(0.0);
        root_buffer_0_u32._m0[(((tmp8316_u32 + 253956u) + (uint(tmp9994_i32) * 4u)) + 0u) >> 2u] = floatBitsToUint(0.0);
        uint tmp8381_u32 = (tmp8316_u32 + 290820u) + (uint(tmp9994_i32) * 8u);
        root_buffer_0_u32._m0[(tmp8381_u32 + 0u) >> 2u] = uint(0);
        root_buffer_0_u32._m0[(tmp8381_u32 + 4u) >> 2u] = uint(0);
        root_buffer_0_u32._m0[(((tmp8316_u32 + 364548u) + (uint(tmp9994_i32) * 4u)) + 0u) >> 2u] = uint(0);
    }
}

