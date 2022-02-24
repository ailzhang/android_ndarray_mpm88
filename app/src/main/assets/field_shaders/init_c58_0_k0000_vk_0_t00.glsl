#version 310 es
layout(local_size_x = 128, local_size_y = 1, local_size_z = 1) in;

layout(binding = 2, std430) buffer global_tmps_buffer_u32_ptr
{
    uint _m0[];
} global_tmps_buffer_u32;

layout(binding = 3, std430) buffer root_buffer_0_u32_ptr
{
    uint _m0[];
} root_buffer_0_u32;

void main()
{
    uint _66 = global_tmps_buffer_u32._m0[1024u];
    uint _71 = (7654321u + gl_GlobalInvocationID.x) * (1234567u + (9723451u * (_66)));
    uint _73 = _71 * 3640077715u;
    global_tmps_buffer_u32._m0[1024u]++;
    int _21 = int(gl_GlobalInvocationID.x);
    int total_invocs = int(gl_NumWorkGroups.x * 128u);
    uint _192_copy;
    uint _193_copy;
    int tmp2_i32 = _21;
    uint _rand_x = _73;
    uint _rand_y = 362436069u;
    uint _rand_z = 521288629u;
    uint _rand_w = 88675123u;
    uint _190 = _73;
    uint _191 = 362436069u;
    uint _192 = 521288629u;
    uint _193 = 88675123u;
    for (; tmp2_i32 < 4096; )
    {
        int tmp5_i32 = tmp2_i32 - (4096 * (tmp2_i32 / 4096));
        int tmp9_i32 = tmp5_i32 - (4096 * (tmp5_i32 / 4096));
        uint _82 = _190 ^ (_190 << 11u);
        uint _86 = _193 >> 19u;
        uint _87 = _193 ^ _86;
        uint _90 = _87 ^ (_82 ^ (_82 >> 8u));
        float _92 = float(_90 * 1000000007u);
        uint _96 = _191 ^ (_191 << 11u);
        _rand_x = _192;
        _rand_y = _193;
        _rand_z = _90;
        uint _104 = (_90 ^ (_90 >> 19u)) ^ (_96 ^ (_96 >> 8u));
        _rand_w = _104;
        float _106 = float(_104 * 1000000007u);
        uint _123 = uint(tmp9_i32 - (4096 * (tmp9_i32 / 4096)));
        uint _124 = _123 * 8u;
        root_buffer_0_u32._m0[_124 >> 2u] = floatBitsToUint((_92 * 9.313225884932663234394567552954e-11) + 0.20000000298023223876953125);
        root_buffer_0_u32._m0[(_124 + 4u) >> 2u] = floatBitsToUint((_106 * 9.313225884932663234394567552954e-11) + 0.20000000298023223876953125);
        root_buffer_0_u32._m0[(32768u + _124) >> 2u] = 0u;
        root_buffer_0_u32._m0[(_124 + 32772u) >> 2u] = 0u;
        uint _159 = _123 * 16u;
        root_buffer_0_u32._m0[(131072u + _159) >> 2u] = 1065353216u;
        root_buffer_0_u32._m0[(_159 + 131076u) >> 2u] = 0u;
        root_buffer_0_u32._m0[(_159 + 131080u) >> 2u] = 0u;
        root_buffer_0_u32._m0[(_159 + 131084u) >> 2u] = 1065353216u;
        root_buffer_0_u32._m0[(196608u + (_123 * 4u)) >> 2u] = 1065353216u;
        _193_copy = _193;
        _193 = _104;
        _192_copy = _192;
        _192 = _90;
        _191 = _193_copy;
        _190 = _192_copy;
        tmp2_i32 += total_invocs;
        continue;
    }
}

