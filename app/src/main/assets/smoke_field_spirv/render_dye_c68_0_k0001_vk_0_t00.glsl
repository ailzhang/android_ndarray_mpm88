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
    for (int tmp3_i32 = _21; tmp3_i32 < 53361; tmp3_i32 += total_invocs)
    {
        int tmp6_i32 = tmp3_i32 - (53361 * (tmp3_i32 / 53361));
        int tmp12_i32 = (tmp6_i32 - (53361 * (tmp6_i32 / 53361))) / 231;
        int tmp17_i32 = tmp6_i32 - (231 * (tmp6_i32 / 231));
        uint _68 = uint((tmp17_i32 - (231 * (tmp17_i32 / 231))) + ((tmp12_i32 - (231 * (tmp12_i32 / 231))) * 231)) * 12u;
        uint _85 = root_buffer_0_u32._m0[(_68 + 1494112u) >> 2u];
        uint _91 = root_buffer_0_u32._m0[(_68 + 1494116u) >> 2u];
        uint _99 = (2774772u + _68) >> 2u;
        root_buffer_0_u32._m0[_99] = floatBitsToUint(uintBitsToFloat(root_buffer_0_u32._m0[(1494108u + _68) >> 2u]));
        uint _103 = (_68 + 2774776u) >> 2u;
        root_buffer_0_u32._m0[_103] = floatBitsToUint(uintBitsToFloat(_85));
        uint _107 = (_68 + 2774780u) >> 2u;
        root_buffer_0_u32._m0[_107] = floatBitsToUint(uintBitsToFloat(_91));
        float tmp37_f32 = float(tmp12_i32);
        float tmp45_f32 = float(tmp17_i32);
        if (((((-int(tmp37_f32 > 124.73999786376953125)) & 1) & (-int(tmp37_f32 < 173.25))) & (((-int(tmp45_f32 > 48.509998321533203125)) & 1) & (-int(tmp45_f32 < 99.3300018310546875)))) != 0)
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

