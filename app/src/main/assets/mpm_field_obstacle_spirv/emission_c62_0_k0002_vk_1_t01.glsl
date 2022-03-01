#version 310 es
layout(local_size_x = 128, local_size_y = 1, local_size_z = 1) in;

layout(binding = 1, std430) buffer global_tmps_buffer_i32_ptr
{
    int _m0[];
} global_tmps_buffer_i32;

layout(binding = 1, std430) buffer global_tmps_buffer_u32_ptr
{
    uint _m0[];
} global_tmps_buffer_u32;

layout(binding = 0, std430) buffer root_buffer_0_u32_ptr
{
    uint _m0[];
} root_buffer_0_u32;

uint _rand_x;
uint _rand_y;
uint _rand_z;
uint _rand_w;

void main()
{
    _rand_x = 1000000007u * (123456789u * ((7654321u + gl_GlobalInvocationID.x) * (1234567u + (9723451u * (global_tmps_buffer_u32._m0[1024u])))));
    _rand_y = 362436069u;
    _rand_z = 521288629u;
    _rand_w = 88675123u;
    global_tmps_buffer_u32._m0[1024u]++;
    int _14 = 0 >> 2;
    int begin_ = int(gl_GlobalInvocationID.x) + global_tmps_buffer_i32._m0[_14];
    int end_ = (global_tmps_buffer_i32._m0[4 >> 2] - global_tmps_buffer_i32._m0[_14]) + global_tmps_buffer_i32._m0[_14];
    int total_invocs = int(gl_NumWorkGroups.x * 128u);
    for (int tmp10_i32 = begin_; tmp10_i32 < end_; tmp10_i32 += total_invocs)
    {
        uint _85 = _rand_x;
        uint _87 = _85 ^ (_85 << 11u);
        _rand_x = _rand_y;
        _rand_y = _rand_z;
        uint _90 = _rand_w;
        _rand_z = _90;
        uint _95 = (_90 ^ (_90 >> 19u)) ^ (_87 ^ (_87 >> 8u));
        _rand_w = _95;
        float tmp12_unknown = 0.0;
        float tmp16_f32 = ((float(_95 * 1000000007u) * 2.3283064365386962890625e-10) * 0.100000001490116119384765625) + 0.070000000298023223876953125;
        tmp12_unknown = tmp16_f32;
        uint _106 = _rand_x;
        uint _108 = _106 ^ (_106 << 11u);
        _rand_x = _rand_y;
        _rand_y = _rand_z;
        uint _111 = _rand_w;
        _rand_z = _111;
        uint _116 = (_111 ^ (_111 >> 19u)) ^ (_108 ^ (_108 >> 8u));
        _rand_w = _116;
        if (((-int((float(_116 * 1000000007u) * 2.3283064365386962890625e-10) > 0.5)) & 1) != 0)
        {
        }
        else
        {
            tmp12_unknown = -tmp16_f32;
        }
        uint _131 = _rand_x;
        uint _133 = _131 ^ (_131 << 11u);
        _rand_x = _rand_y;
        _rand_y = _rand_z;
        uint _136 = _rand_w;
        _rand_z = _136;
        uint _141 = (_136 ^ (_136 >> 19u)) ^ (_133 ^ (_133 >> 8u));
        _rand_w = _141;
        uint tmp10880_u32 = 0u + (uint(0) * 401444u);
        int tmp10883_i32 = tmp10_i32 - (4096 * (tmp10_i32 / 4096));
        uint tmp10887_u32 = (tmp10880_u32 + 32772u) + (uint(tmp10883_i32) * 8u);
        root_buffer_0_u32._m0[(tmp10887_u32 + 0u) >> 2u] = floatBitsToUint(tmp12_unknown + 0.5);
        root_buffer_0_u32._m0[(tmp10887_u32 + 4u) >> 2u] = floatBitsToUint(((float(_141 * 1000000007u) * 2.3283064365386962890625e-10) * 0.20000000298023223876953125) + 0.699999988079071044921875);
        uint tmp10913_u32 = (tmp10880_u32 + 65540u) + (uint(tmp10883_i32) * 8u);
        root_buffer_0_u32._m0[(tmp10913_u32 + 0u) >> 2u] = floatBitsToUint(0.0);
        root_buffer_0_u32._m0[(tmp10913_u32 + 4u) >> 2u] = floatBitsToUint(-1.0);
        root_buffer_0_u32._m0[(((tmp10880_u32 + 163844u) + (uint(tmp10883_i32) * 4u)) + 0u) >> 2u] = floatBitsToUint(1.0);
        root_buffer_0_u32._m0[(((tmp10880_u32 + 4u) + (uint(tmp10883_i32) * 4u)) + 0u) >> 2u] = floatBitsToUint(2.7126736313221044838428497314453e-05);
        root_buffer_0_u32._m0[(((tmp10880_u32 + 16388u) + (uint(tmp10883_i32) * 4u)) + 0u) >> 2u] = floatBitsToUint(2.7126736313221044838428497314453e-05);
    }
}

