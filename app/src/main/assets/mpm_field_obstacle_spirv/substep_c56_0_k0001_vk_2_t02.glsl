#version 310 es
layout(local_size_x = 128, local_size_y = 1, local_size_z = 1) in;

layout(binding = 1, std430) buffer global_tmps_buffer_i32_ptr
{
    int _m0[];
} global_tmps_buffer_i32;

layout(binding = 0, std430) buffer root_buffer_0_u32_ptr
{
    uint _m0[];
} root_buffer_0_u32;

layout(binding = 0, std430) buffer root_buffer_0_i32_ptr
{
    int _m0[];
} root_buffer_0_i32;

void main()
{
    int begin_ = int(gl_GlobalInvocationID.x) + 0;
    int end_ = (global_tmps_buffer_i32._m0[0 >> 2] - 0) + 0;
    int total_invocs = int(gl_NumWorkGroups.x * 128u);
    for (int tmp43_i32 = begin_; tmp43_i32 < end_; tmp43_i32 += total_invocs)
    {
        uint tmp8423_u32 = 0u + (uint(0) * 401444u);
        int _53 = tmp43_i32 / 4096;
        int tmp8426_i32 = tmp43_i32 - (4096 * _53);
        uint tmp8430_u32 = (tmp8423_u32 + 32772u) + (uint(tmp8426_i32) * 8u);
        uint _70 = root_buffer_0_u32._m0[(tmp8430_u32 + 0u) >> 2u];
        float tmp47_f32 = uintBitsToFloat(_70) * 96.0;
        uint _78 = root_buffer_0_u32._m0[(tmp8430_u32 + 4u) >> 2u];
        float tmp50_f32 = uintBitsToFloat(_78) * 96.0;
        int tmp54_i32 = int(tmp47_f32 - 0.5);
        int tmp55_i32 = int(tmp50_f32 - 0.5);
        float tmp57_f32 = tmp47_f32 - float(tmp54_i32);
        float tmp59_f32 = tmp50_f32 - float(tmp55_i32);
        float tmp61_f32 = 1.5 - tmp57_f32;
        float tmp62_f32 = 1.5 - tmp59_f32;
        float tmp65_f32 = (tmp61_f32 * tmp61_f32) * 0.5;
        float tmp66_f32 = (tmp62_f32 * tmp62_f32) * 0.5;
        float tmp68_f32 = tmp57_f32 - 1.0;
        float tmp69_f32 = tmp59_f32 - 1.0;
        float tmp73_f32 = 0.75 - (tmp68_f32 * tmp68_f32);
        float tmp74_f32 = 0.75 - (tmp69_f32 * tmp69_f32);
        float tmp75_f32 = tmp57_f32 - 0.5;
        float tmp76_f32 = tmp59_f32 - 0.5;
        float tmp79_f32 = (tmp75_f32 * tmp75_f32) * 0.5;
        float tmp80_f32 = (tmp76_f32 * tmp76_f32) * 0.5;
        uint _118 = root_buffer_0_u32._m0[(((tmp8423_u32 + 4u) + (uint(tmp8426_i32) * 4u)) + 0u) >> 2u];
        uint _130 = root_buffer_0_u32._m0[(((tmp8423_u32 + 163844u) + (uint(tmp8426_i32) * 4u)) + 0u) >> 2u];
        float tmp90_f32 = ((uintBitsToFloat(_118) * (-0.4166666567325592041015625)) * (uintBitsToFloat(_130) - 1.0)) * 9216.0;
        uint _144 = root_buffer_0_u32._m0[(((tmp8423_u32 + 16388u) + (uint(tmp8426_i32) * 4u)) + 0u) >> 2u];
        float tmp92_f32 = uintBitsToFloat(_144);
        uint tmp8495_u32 = (tmp8423_u32 + 98308u) + (uint(tmp8426_i32) * 16u);
        uint _155 = root_buffer_0_u32._m0[(tmp8495_u32 + 0u) >> 2u];
        uint _161 = root_buffer_0_u32._m0[(tmp8495_u32 + 4u) >> 2u];
        float tmp98_f32 = tmp92_f32 * uintBitsToFloat(_161);
        uint _167 = root_buffer_0_u32._m0[(tmp8495_u32 + 8u) >> 2u];
        float tmp101_f32 = tmp92_f32 * uintBitsToFloat(_167);
        uint _174 = root_buffer_0_u32._m0[(tmp8495_u32 + 12u) >> 2u];
        float tmp105_f32 = tmp90_f32 + (tmp92_f32 * uintBitsToFloat(_155));
        float tmp106_f32 = tmp90_f32 + (tmp92_f32 * uintBitsToFloat(_174));
        float tmp111_f32 = (0.0 - tmp57_f32) * 0.010416666977107524871826171875;
        float tmp112_f32 = (0.0 - tmp59_f32) * 0.010416666977107524871826171875;
        float tmp113_f32 = tmp65_f32 * tmp66_f32;
        uint tmp8547_u32 = (tmp8423_u32 + 65540u) + (uint(tmp8426_i32) * 8u);
        uint _194 = root_buffer_0_u32._m0[(tmp8547_u32 + 0u) >> 2u];
        float tmp116_f32 = tmp92_f32 * uintBitsToFloat(_194);
        uint _200 = root_buffer_0_u32._m0[(tmp8547_u32 + 4u) >> 2u];
        float tmp119_f32 = tmp92_f32 * uintBitsToFloat(_200);
        float tmp120_f32 = tmp105_f32 * tmp111_f32;
        float tmp121_f32 = tmp98_f32 * tmp112_f32;
        float tmp123_f32 = tmp101_f32 * tmp111_f32;
        float tmp124_f32 = tmp106_f32 * tmp112_f32;
        uint tmp8568_u32 = tmp8423_u32 + 290820u;
        int tmp8574_i32 = tmp55_i32 - (96 * (tmp55_i32 / 96));
        int tmp10096_i32 = (tmp54_i32 - (96 * (tmp54_i32 / 96))) * 96;
        int tmp10097_i32 = tmp8574_i32 + tmp10096_i32;
        uint tmp8578_u32 = tmp8568_u32 + (uint(tmp10097_i32) * 8u);
        memoryBarrierBuffer();
        int tmp140_i32 = atomicAdd(root_buffer_0_i32._m0[(tmp8578_u32 + 0u) >> 2u], int(floor(((tmp113_f32 * (tmp116_f32 + (tmp120_f32 + tmp121_f32))) * 1099511627776.0) + 0.5)));
        memoryBarrierBuffer();
        int tmp142_i32 = atomicAdd(root_buffer_0_i32._m0[(tmp8578_u32 + 4u) >> 2u], int(floor(((tmp113_f32 * (tmp119_f32 + (tmp123_f32 + tmp124_f32))) * 1099511627776.0) + 0.5)));
        uint tmp8604_u32 = tmp8423_u32 + 364548u;
        memoryBarrierBuffer();
        int tmp149_i32 = atomicAdd(root_buffer_0_i32._m0[((tmp8604_u32 + (uint(tmp10097_i32) * 4u)) + 0u) >> 2u], int(floor(((tmp113_f32 * tmp92_f32) * 1099511627776.0) + 0.5)));
        float tmp151_f32 = (1.0 - tmp59_f32) * 0.010416666977107524871826171875;
        float tmp152_f32 = tmp65_f32 * tmp74_f32;
        int tmp154_i32 = tmp55_i32 + 1;
        float tmp155_f32 = tmp98_f32 * tmp151_f32;
        float tmp157_f32 = tmp106_f32 * tmp151_f32;
        int tmp8628_i32 = tmp154_i32 - (96 * (tmp154_i32 / 96));
        int tmp10121_i32 = tmp8628_i32 + tmp10096_i32;
        uint tmp8632_u32 = tmp8568_u32 + (uint(tmp10121_i32) * 8u);
        memoryBarrierBuffer();
        int tmp172_i32 = atomicAdd(root_buffer_0_i32._m0[(tmp8632_u32 + 0u) >> 2u], int(floor(((tmp152_f32 * (tmp116_f32 + (tmp120_f32 + tmp155_f32))) * 1099511627776.0) + 0.5)));
        memoryBarrierBuffer();
        int tmp174_i32 = atomicAdd(root_buffer_0_i32._m0[(tmp8632_u32 + 4u) >> 2u], int(floor(((tmp152_f32 * (tmp119_f32 + (tmp123_f32 + tmp157_f32))) * 1099511627776.0) + 0.5)));
        memoryBarrierBuffer();
        int tmp181_i32 = atomicAdd(root_buffer_0_i32._m0[((tmp8604_u32 + (uint(tmp10121_i32) * 4u)) + 0u) >> 2u], int(floor(((tmp152_f32 * tmp92_f32) * 1099511627776.0) + 0.5)));
        float tmp184_f32 = (2.0 - tmp59_f32) * 0.010416666977107524871826171875;
        float tmp185_f32 = tmp65_f32 * tmp80_f32;
        int tmp187_i32 = tmp55_i32 + 2;
        float tmp188_f32 = tmp98_f32 * tmp184_f32;
        float tmp190_f32 = tmp106_f32 * tmp184_f32;
        int tmp8682_i32 = tmp187_i32 - (96 * (tmp187_i32 / 96));
        int tmp10145_i32 = tmp8682_i32 + tmp10096_i32;
        uint tmp8686_u32 = tmp8568_u32 + (uint(tmp10145_i32) * 8u);
        memoryBarrierBuffer();
        int tmp205_i32 = atomicAdd(root_buffer_0_i32._m0[(tmp8686_u32 + 0u) >> 2u], int(floor(((tmp185_f32 * (tmp116_f32 + (tmp120_f32 + tmp188_f32))) * 1099511627776.0) + 0.5)));
        memoryBarrierBuffer();
        int tmp207_i32 = atomicAdd(root_buffer_0_i32._m0[(tmp8686_u32 + 4u) >> 2u], int(floor(((tmp185_f32 * (tmp119_f32 + (tmp123_f32 + tmp190_f32))) * 1099511627776.0) + 0.5)));
        memoryBarrierBuffer();
        int tmp214_i32 = atomicAdd(root_buffer_0_i32._m0[((tmp8604_u32 + (uint(tmp10145_i32) * 4u)) + 0u) >> 2u], int(floor(((tmp185_f32 * tmp92_f32) * 1099511627776.0) + 0.5)));
        float tmp216_f32 = (1.0 - tmp57_f32) * 0.010416666977107524871826171875;
        float tmp217_f32 = tmp73_f32 * tmp66_f32;
        int tmp218_i32 = tmp54_i32 + 1;
        float tmp219_f32 = tmp105_f32 * tmp216_f32;
        float tmp221_f32 = tmp101_f32 * tmp216_f32;
        int tmp10168_i32 = (tmp218_i32 - (96 * (tmp218_i32 / 96))) * 96;
        int tmp10169_i32 = tmp8574_i32 + tmp10168_i32;
        uint tmp8740_u32 = tmp8568_u32 + (uint(tmp10169_i32) * 8u);
        memoryBarrierBuffer();
        int tmp236_i32 = atomicAdd(root_buffer_0_i32._m0[(tmp8740_u32 + 0u) >> 2u], int(floor(((tmp217_f32 * (tmp116_f32 + (tmp219_f32 + tmp121_f32))) * 1099511627776.0) + 0.5)));
        memoryBarrierBuffer();
        int tmp238_i32 = atomicAdd(root_buffer_0_i32._m0[(tmp8740_u32 + 4u) >> 2u], int(floor(((tmp217_f32 * (tmp119_f32 + (tmp221_f32 + tmp124_f32))) * 1099511627776.0) + 0.5)));
        memoryBarrierBuffer();
        int tmp245_i32 = atomicAdd(root_buffer_0_i32._m0[((tmp8604_u32 + (uint(tmp10169_i32) * 4u)) + 0u) >> 2u], int(floor(((tmp217_f32 * tmp92_f32) * 1099511627776.0) + 0.5)));
        float tmp246_f32 = tmp73_f32 * tmp74_f32;
        int tmp10193_i32 = tmp8628_i32 + tmp10168_i32;
        uint tmp8794_u32 = tmp8568_u32 + (uint(tmp10193_i32) * 8u);
        memoryBarrierBuffer();
        int tmp262_i32 = atomicAdd(root_buffer_0_i32._m0[(tmp8794_u32 + 0u) >> 2u], int(floor(((tmp246_f32 * (tmp116_f32 + (tmp219_f32 + tmp155_f32))) * 1099511627776.0) + 0.5)));
        memoryBarrierBuffer();
        int tmp264_i32 = atomicAdd(root_buffer_0_i32._m0[(tmp8794_u32 + 4u) >> 2u], int(floor(((tmp246_f32 * (tmp119_f32 + (tmp221_f32 + tmp157_f32))) * 1099511627776.0) + 0.5)));
        memoryBarrierBuffer();
        int tmp271_i32 = atomicAdd(root_buffer_0_i32._m0[((tmp8604_u32 + (uint(tmp10193_i32) * 4u)) + 0u) >> 2u], int(floor(((tmp246_f32 * tmp92_f32) * 1099511627776.0) + 0.5)));
        float tmp272_f32 = tmp73_f32 * tmp80_f32;
        int tmp10217_i32 = tmp8682_i32 + tmp10168_i32;
        uint tmp8848_u32 = tmp8568_u32 + (uint(tmp10217_i32) * 8u);
        memoryBarrierBuffer();
        int tmp288_i32 = atomicAdd(root_buffer_0_i32._m0[(tmp8848_u32 + 0u) >> 2u], int(floor(((tmp272_f32 * (tmp116_f32 + (tmp219_f32 + tmp188_f32))) * 1099511627776.0) + 0.5)));
        memoryBarrierBuffer();
        int tmp290_i32 = atomicAdd(root_buffer_0_i32._m0[(tmp8848_u32 + 4u) >> 2u], int(floor(((tmp272_f32 * (tmp119_f32 + (tmp221_f32 + tmp190_f32))) * 1099511627776.0) + 0.5)));
        memoryBarrierBuffer();
        int tmp297_i32 = atomicAdd(root_buffer_0_i32._m0[((tmp8604_u32 + (uint(tmp10217_i32) * 4u)) + 0u) >> 2u], int(floor(((tmp272_f32 * tmp92_f32) * 1099511627776.0) + 0.5)));
        float tmp299_f32 = (2.0 - tmp57_f32) * 0.010416666977107524871826171875;
        float tmp300_f32 = tmp79_f32 * tmp66_f32;
        int tmp301_i32 = tmp54_i32 + 2;
        float tmp302_f32 = tmp105_f32 * tmp299_f32;
        float tmp304_f32 = tmp101_f32 * tmp299_f32;
        int tmp10240_i32 = (tmp301_i32 - (96 * (tmp301_i32 / 96))) * 96;
        int tmp10241_i32 = tmp8574_i32 + tmp10240_i32;
        uint tmp8902_u32 = tmp8568_u32 + (uint(tmp10241_i32) * 8u);
        memoryBarrierBuffer();
        int tmp319_i32 = atomicAdd(root_buffer_0_i32._m0[(tmp8902_u32 + 0u) >> 2u], int(floor(((tmp300_f32 * (tmp116_f32 + (tmp302_f32 + tmp121_f32))) * 1099511627776.0) + 0.5)));
        memoryBarrierBuffer();
        int tmp321_i32 = atomicAdd(root_buffer_0_i32._m0[(tmp8902_u32 + 4u) >> 2u], int(floor(((tmp300_f32 * (tmp119_f32 + (tmp304_f32 + tmp124_f32))) * 1099511627776.0) + 0.5)));
        memoryBarrierBuffer();
        int tmp328_i32 = atomicAdd(root_buffer_0_i32._m0[((tmp8604_u32 + (uint(tmp10241_i32) * 4u)) + 0u) >> 2u], int(floor(((tmp300_f32 * tmp92_f32) * 1099511627776.0) + 0.5)));
        float tmp329_f32 = tmp79_f32 * tmp74_f32;
        int tmp10265_i32 = tmp8628_i32 + tmp10240_i32;
        uint tmp8956_u32 = tmp8568_u32 + (uint(tmp10265_i32) * 8u);
        memoryBarrierBuffer();
        int tmp345_i32 = atomicAdd(root_buffer_0_i32._m0[(tmp8956_u32 + 0u) >> 2u], int(floor(((tmp329_f32 * (tmp116_f32 + (tmp302_f32 + tmp155_f32))) * 1099511627776.0) + 0.5)));
        memoryBarrierBuffer();
        int tmp347_i32 = atomicAdd(root_buffer_0_i32._m0[(tmp8956_u32 + 4u) >> 2u], int(floor(((tmp329_f32 * (tmp119_f32 + (tmp304_f32 + tmp157_f32))) * 1099511627776.0) + 0.5)));
        memoryBarrierBuffer();
        int tmp354_i32 = atomicAdd(root_buffer_0_i32._m0[((tmp8604_u32 + (uint(tmp10265_i32) * 4u)) + 0u) >> 2u], int(floor(((tmp329_f32 * tmp92_f32) * 1099511627776.0) + 0.5)));
        float tmp355_f32 = tmp79_f32 * tmp80_f32;
        int tmp10289_i32 = tmp8682_i32 + tmp10240_i32;
        uint tmp9010_u32 = tmp8568_u32 + (uint(tmp10289_i32) * 8u);
        memoryBarrierBuffer();
        int tmp371_i32 = atomicAdd(root_buffer_0_i32._m0[(tmp9010_u32 + 0u) >> 2u], int(floor(((tmp355_f32 * (tmp116_f32 + (tmp302_f32 + tmp188_f32))) * 1099511627776.0) + 0.5)));
        memoryBarrierBuffer();
        int tmp373_i32 = atomicAdd(root_buffer_0_i32._m0[(tmp9010_u32 + 4u) >> 2u], int(floor(((tmp355_f32 * (tmp119_f32 + (tmp304_f32 + tmp190_f32))) * 1099511627776.0) + 0.5)));
        memoryBarrierBuffer();
        int tmp380_i32 = atomicAdd(root_buffer_0_i32._m0[((tmp8604_u32 + (uint(tmp10289_i32) * 4u)) + 0u) >> 2u], int(floor(((tmp355_f32 * tmp92_f32) * 1099511627776.0) + 0.5)));
    }
}

