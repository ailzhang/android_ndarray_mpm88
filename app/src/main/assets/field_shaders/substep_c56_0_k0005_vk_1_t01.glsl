#version 310 es
layout(local_size_x = 128, local_size_y = 1, local_size_z = 1) in;

layout(binding = 2, std430) buffer root_buffer_0_u32_ptr
{
    uint _m0[];
} root_buffer_0_u32;

layout(binding = 3, std430) buffer root_buffer_0_i32_ptr
{
    int _m0[];
} root_buffer_0_i32;

void main()
{
    int begin_ = int(gl_GlobalInvocationID.x) + 0;
    int end_ = 4096 + 0;
    int total_invocs = int(gl_NumWorkGroups.x * 128u);
    for (int tmp32_i32 = begin_; tmp32_i32 < end_; tmp32_i32 += total_invocs)
    {
        int _37 = tmp32_i32 / 4096;
        int tmp35_i32 = tmp32_i32 - (4096 * _37);
        int tmp39_i32 = tmp35_i32 - (4096 * (tmp35_i32 / 4096));
        uint tmp10010_u32 = 0u + (uint(0) * 262144u);
        int tmp10013_i32 = tmp39_i32 - (4096 * (tmp39_i32 / 4096));
        uint tmp10017_u32 = (tmp10010_u32 + 0u) + (uint(tmp10013_i32) * 8u);
        uint _69 = root_buffer_0_u32._m0[(tmp10017_u32 + 0u) >> 2u];
        float tmp52_f32 = uintBitsToFloat(_69) * 64.0;
        uint _77 = root_buffer_0_u32._m0[(tmp10017_u32 + 4u) >> 2u];
        float tmp55_f32 = uintBitsToFloat(_77) * 64.0;
        int tmp58_i32 = int(tmp52_f32 - 0.5);
        int tmp59_i32 = int(tmp55_f32 - 0.5);
        float tmp62_f32 = tmp52_f32 - float(tmp58_i32);
        float tmp63_f32 = tmp55_f32 - float(tmp59_i32);
        float tmp65_f32 = 1.5 - tmp62_f32;
        float tmp66_f32 = 1.5 - tmp63_f32;
        float tmp69_f32 = (tmp65_f32 * tmp65_f32) * 0.5;
        float tmp70_f32 = (tmp66_f32 * tmp66_f32) * 0.5;
        float tmp71_f32 = tmp62_f32 - 1.0;
        float tmp72_f32 = tmp63_f32 - 1.0;
        float tmp76_f32 = 0.75 - (tmp71_f32 * tmp71_f32);
        float tmp77_f32 = 0.75 - (tmp72_f32 * tmp72_f32);
        float tmp78_f32 = tmp62_f32 - 0.5;
        float tmp79_f32 = tmp63_f32 - 0.5;
        float tmp82_f32 = (tmp78_f32 * tmp78_f32) * 0.5;
        float tmp83_f32 = (tmp79_f32 * tmp79_f32) * 0.5;
        uint tmp10043_u32 = (tmp10010_u32 + 65536u) + (uint(tmp10013_i32) * 16u);
        uint _117 = root_buffer_0_u32._m0[(tmp10043_u32 + 0u) >> 2u];
        float tmp85_f32 = uintBitsToFloat(_117);
        uint _124 = root_buffer_0_u32._m0[(tmp10043_u32 + 4u) >> 2u];
        float tmp89_f32 = uintBitsToFloat(_124);
        float tmp90_f32 = tmp89_f32 * 9.9999997473787516355514526367188e-05;
        uint _130 = root_buffer_0_u32._m0[(tmp10043_u32 + 8u) >> 2u];
        float tmp92_f32 = uintBitsToFloat(_130);
        float tmp93_f32 = tmp92_f32 * 9.9999997473787516355514526367188e-05;
        uint _137 = root_buffer_0_u32._m0[(tmp10043_u32 + 12u) >> 2u];
        float tmp95_f32 = uintBitsToFloat(_137);
        float tmp97_f32 = (tmp85_f32 * 9.9999997473787516355514526367188e-05) + 1.0;
        float tmp98_f32 = (tmp95_f32 * 9.9999997473787516355514526367188e-05) + 1.0;
        uint tmp10095_u32 = (tmp10010_u32 + 131072u) + (uint(tmp10013_i32) * 16u);
        uint tmp10096_u32 = tmp10095_u32 + 0u;
        float tmp100_f32 = uintBitsToFloat(root_buffer_0_u32._m0[tmp10096_u32 >> 2u]);
        uint tmp10109_u32 = tmp10095_u32 + 8u;
        float tmp103_f32 = uintBitsToFloat(root_buffer_0_u32._m0[tmp10109_u32 >> 2u]);
        float tmp105_f32 = (tmp97_f32 * tmp100_f32) + (tmp90_f32 * tmp103_f32);
        uint tmp10122_u32 = tmp10095_u32 + 4u;
        float tmp107_f32 = uintBitsToFloat(root_buffer_0_u32._m0[tmp10122_u32 >> 2u]);
        uint tmp10135_u32 = tmp10095_u32 + 12u;
        float tmp110_f32 = uintBitsToFloat(root_buffer_0_u32._m0[tmp10135_u32 >> 2u]);
        float tmp112_f32 = (tmp97_f32 * tmp107_f32) + (tmp90_f32 * tmp110_f32);
        float tmp115_f32 = (tmp93_f32 * tmp100_f32) + (tmp98_f32 * tmp103_f32);
        float tmp118_f32 = (tmp93_f32 * tmp107_f32) + (tmp98_f32 * tmp110_f32);
        uint tmp10148_u32 = ((tmp10010_u32 + 196608u) + (uint(tmp10013_i32) * 4u)) + 0u;
        uint _187 = root_buffer_0_u32._m0[tmp10148_u32 >> 2u];
        float tmp120_f32 = uintBitsToFloat(_187);
        float tmp125_f32 = tmp105_f32 + tmp118_f32;
        float tmp126_f32 = tmp115_f32 - tmp112_f32;
        float tmp131_f32 = 1.0 / sqrt((tmp125_f32 * tmp125_f32) + (tmp126_f32 * tmp126_f32));
        float tmp132_f32 = tmp125_f32 * tmp131_f32;
        float tmp133_f32 = tmp126_f32 * tmp131_f32;
        float tmp137_f32 = (tmp132_f32 * tmp105_f32) + (tmp133_f32 * tmp115_f32);
        float tmp140_f32 = (tmp132_f32 * tmp112_f32) + (tmp133_f32 * tmp118_f32);
        float tmp143_f32 = ((-tmp133_f32) * tmp112_f32) + (tmp132_f32 * tmp118_f32);
        float tmp144_unknown = 0.0;
        float tmp145_unknown = 0.0;
        if (((-int(abs(tmp140_f32) < 9.9999997473787516355514526367188e-06)) & 1) != 0)
        {
            tmp144_unknown = tmp137_f32;
            tmp145_unknown = tmp143_f32;
        }
        else
        {
            float tmp154_f32 = (tmp137_f32 - tmp143_f32) * 0.5;
            float tmp158_f32 = sqrt((tmp154_f32 * tmp154_f32) + (tmp140_f32 * tmp140_f32));
            float tmp159_unknown = 0.0;
            if (((-int(tmp154_f32 > 0.0)) & 1) != 0)
            {
                tmp159_unknown = tmp140_f32 / (tmp154_f32 + tmp158_f32);
            }
            else
            {
                tmp159_unknown = tmp140_f32 / (tmp154_f32 - tmp158_f32);
            }
            float tmp173_f32 = 1.0 / sqrt((tmp159_unknown * tmp159_unknown) + 1.0);
            float tmp175_f32 = (-tmp159_unknown) * tmp173_f32;
            float tmp176_f32 = tmp173_f32 * tmp173_f32;
            float tmp180_f32 = ((tmp173_f32 + tmp173_f32) * tmp175_f32) * tmp140_f32;
            float tmp182_f32 = tmp175_f32 * tmp175_f32;
            tmp144_unknown = ((tmp176_f32 * tmp137_f32) - tmp180_f32) + (tmp182_f32 * tmp143_f32);
            tmp145_unknown = ((tmp182_f32 * tmp137_f32) + tmp180_f32) + (tmp176_f32 * tmp143_f32);
        }
        if (((-int(tmp144_unknown < tmp145_unknown)) & 1) != 0)
        {
            float tmp196_f32 = tmp144_unknown;
            tmp144_unknown = tmp145_unknown;
            tmp145_unknown = tmp196_f32;
        }
        else
        {
        }
        float tmp200_f32 = tmp144_unknown;
        float tmp201_f32 = tmp145_unknown;
        root_buffer_0_u32._m0[tmp10148_u32 >> 2u] = floatBitsToUint(tmp120_f32);
        float tmp203_f32 = tmp200_f32 * tmp201_f32;
        float tmp204_f32 = sqrt(tmp203_f32);
        root_buffer_0_u32._m0[tmp10096_u32 >> 2u] = floatBitsToUint(tmp204_f32);
        root_buffer_0_u32._m0[tmp10122_u32 >> 2u] = floatBitsToUint(0.0);
        root_buffer_0_u32._m0[tmp10109_u32 >> 2u] = floatBitsToUint(0.0);
        root_buffer_0_u32._m0[tmp10135_u32 >> 2u] = floatBitsToUint(tmp204_f32);
        float tmp215_f32 = (((exp((1.0 - tmp120_f32) * 10.0) * 277.77777099609375) * tmp203_f32) * (tmp203_f32 - 1.0)) * (-9.9999997473787516355514526367188e-05);
        float tmp218_f32 = tmp89_f32 * 6.103515625e-05;
        float tmp219_f32 = tmp92_f32 * 6.103515625e-05;
        float tmp221_f32 = tmp215_f32 + (tmp85_f32 * 6.103515625e-05);
        float tmp222_f32 = tmp215_f32 + (tmp95_f32 * 6.103515625e-05);
        float tmp226_f32 = (0.0 - tmp62_f32) * 0.015625;
        float tmp227_f32 = (0.0 - tmp63_f32) * 0.015625;
        float tmp228_f32 = tmp69_f32 * tmp70_f32;
        uint tmp10225_u32 = (tmp10010_u32 + 32768u) + (uint(tmp10013_i32) * 8u);
        uint _324 = root_buffer_0_u32._m0[(tmp10225_u32 + 0u) >> 2u];
        float tmp231_f32 = uintBitsToFloat(_324) * 6.103515625e-05;
        uint _330 = root_buffer_0_u32._m0[(tmp10225_u32 + 4u) >> 2u];
        float tmp234_f32 = uintBitsToFloat(_330) * 6.103515625e-05;
        float tmp235_f32 = tmp221_f32 * tmp226_f32;
        float tmp236_f32 = tmp218_f32 * tmp227_f32;
        float tmp238_f32 = tmp219_f32 * tmp226_f32;
        float tmp239_f32 = tmp222_f32 * tmp227_f32;
        uint tmp10246_u32 = tmp10010_u32 + 212992u;
        int tmp10252_i32 = tmp59_i32 - (64 * (tmp59_i32 / 64));
        int tmp12140_i32 = (tmp58_i32 - (64 * (tmp58_i32 / 64))) << 6;
        int tmp11598_i32 = tmp10252_i32 + tmp12140_i32;
        uint tmp10256_u32 = tmp10246_u32 + (uint(tmp11598_i32) * 8u);
        memoryBarrierBuffer();
        int tmp255_i32 = atomicAdd(root_buffer_0_i32._m0[(tmp10256_u32 + 0u) >> 2u], int(floor(((tmp228_f32 * (tmp231_f32 + (tmp235_f32 + tmp236_f32))) * 16777216.0) + 0.5)));
        memoryBarrierBuffer();
        int tmp257_i32 = atomicAdd(root_buffer_0_i32._m0[(tmp10256_u32 + 4u) >> 2u], int(floor(((tmp228_f32 * (tmp234_f32 + (tmp238_f32 + tmp239_f32))) * 16777216.0) + 0.5)));
        uint tmp10282_u32 = tmp10010_u32 + 245760u;
        memoryBarrierBuffer();
        int tmp264_i32 = atomicAdd(root_buffer_0_i32._m0[((tmp10282_u32 + (uint(tmp11598_i32) * 4u)) + 0u) >> 2u], int(floor((tmp228_f32 * 67108864.0) + 0.5)));
        float tmp266_f32 = (1.0 - tmp63_f32) * 0.015625;
        float tmp267_f32 = tmp69_f32 * tmp77_f32;
        int tmp268_i32 = tmp59_i32 + 1;
        float tmp269_f32 = tmp218_f32 * tmp266_f32;
        float tmp271_f32 = tmp222_f32 * tmp266_f32;
        int tmp10306_i32 = tmp268_i32 - (64 * (tmp268_i32 / 64));
        int tmp11622_i32 = tmp10306_i32 + tmp12140_i32;
        uint tmp10310_u32 = tmp10246_u32 + (uint(tmp11622_i32) * 8u);
        memoryBarrierBuffer();
        int tmp286_i32 = atomicAdd(root_buffer_0_i32._m0[(tmp10310_u32 + 0u) >> 2u], int(floor(((tmp267_f32 * (tmp231_f32 + (tmp235_f32 + tmp269_f32))) * 16777216.0) + 0.5)));
        memoryBarrierBuffer();
        int tmp288_i32 = atomicAdd(root_buffer_0_i32._m0[(tmp10310_u32 + 4u) >> 2u], int(floor(((tmp267_f32 * (tmp234_f32 + (tmp238_f32 + tmp271_f32))) * 16777216.0) + 0.5)));
        memoryBarrierBuffer();
        int tmp294_i32 = atomicAdd(root_buffer_0_i32._m0[((tmp10282_u32 + (uint(tmp11622_i32) * 4u)) + 0u) >> 2u], int(floor((tmp267_f32 * 67108864.0) + 0.5)));
        float tmp297_f32 = (2.0 - tmp63_f32) * 0.015625;
        float tmp298_f32 = tmp69_f32 * tmp83_f32;
        int tmp300_i32 = tmp59_i32 + 2;
        float tmp301_f32 = tmp218_f32 * tmp297_f32;
        float tmp303_f32 = tmp222_f32 * tmp297_f32;
        int tmp10360_i32 = tmp300_i32 - (64 * (tmp300_i32 / 64));
        int tmp11646_i32 = tmp10360_i32 + tmp12140_i32;
        uint tmp10364_u32 = tmp10246_u32 + (uint(tmp11646_i32) * 8u);
        memoryBarrierBuffer();
        int tmp318_i32 = atomicAdd(root_buffer_0_i32._m0[(tmp10364_u32 + 0u) >> 2u], int(floor(((tmp298_f32 * (tmp231_f32 + (tmp235_f32 + tmp301_f32))) * 16777216.0) + 0.5)));
        memoryBarrierBuffer();
        int tmp320_i32 = atomicAdd(root_buffer_0_i32._m0[(tmp10364_u32 + 4u) >> 2u], int(floor(((tmp298_f32 * (tmp234_f32 + (tmp238_f32 + tmp303_f32))) * 16777216.0) + 0.5)));
        memoryBarrierBuffer();
        int tmp326_i32 = atomicAdd(root_buffer_0_i32._m0[((tmp10282_u32 + (uint(tmp11646_i32) * 4u)) + 0u) >> 2u], int(floor((tmp298_f32 * 67108864.0) + 0.5)));
        float tmp328_f32 = (1.0 - tmp62_f32) * 0.015625;
        float tmp329_f32 = tmp76_f32 * tmp70_f32;
        int tmp330_i32 = tmp58_i32 + 1;
        float tmp331_f32 = tmp221_f32 * tmp328_f32;
        float tmp333_f32 = tmp219_f32 * tmp328_f32;
        int tmp12142_i32 = (tmp330_i32 - (64 * (tmp330_i32 / 64))) << 6;
        int tmp11670_i32 = tmp10252_i32 + tmp12142_i32;
        uint tmp10418_u32 = tmp10246_u32 + (uint(tmp11670_i32) * 8u);
        memoryBarrierBuffer();
        int tmp348_i32 = atomicAdd(root_buffer_0_i32._m0[(tmp10418_u32 + 0u) >> 2u], int(floor(((tmp329_f32 * (tmp231_f32 + (tmp331_f32 + tmp236_f32))) * 16777216.0) + 0.5)));
        memoryBarrierBuffer();
        int tmp350_i32 = atomicAdd(root_buffer_0_i32._m0[(tmp10418_u32 + 4u) >> 2u], int(floor(((tmp329_f32 * (tmp234_f32 + (tmp333_f32 + tmp239_f32))) * 16777216.0) + 0.5)));
        memoryBarrierBuffer();
        int tmp356_i32 = atomicAdd(root_buffer_0_i32._m0[((tmp10282_u32 + (uint(tmp11670_i32) * 4u)) + 0u) >> 2u], int(floor((tmp329_f32 * 67108864.0) + 0.5)));
        float tmp357_f32 = tmp76_f32 * tmp77_f32;
        int tmp11694_i32 = tmp10306_i32 + tmp12142_i32;
        uint tmp10472_u32 = tmp10246_u32 + (uint(tmp11694_i32) * 8u);
        memoryBarrierBuffer();
        int tmp373_i32 = atomicAdd(root_buffer_0_i32._m0[(tmp10472_u32 + 0u) >> 2u], int(floor(((tmp357_f32 * (tmp231_f32 + (tmp331_f32 + tmp269_f32))) * 16777216.0) + 0.5)));
        memoryBarrierBuffer();
        int tmp375_i32 = atomicAdd(root_buffer_0_i32._m0[(tmp10472_u32 + 4u) >> 2u], int(floor(((tmp357_f32 * (tmp234_f32 + (tmp333_f32 + tmp271_f32))) * 16777216.0) + 0.5)));
        memoryBarrierBuffer();
        int tmp381_i32 = atomicAdd(root_buffer_0_i32._m0[((tmp10282_u32 + (uint(tmp11694_i32) * 4u)) + 0u) >> 2u], int(floor((tmp357_f32 * 67108864.0) + 0.5)));
        float tmp382_f32 = tmp76_f32 * tmp83_f32;
        int tmp11718_i32 = tmp10360_i32 + tmp12142_i32;
        uint tmp10526_u32 = tmp10246_u32 + (uint(tmp11718_i32) * 8u);
        memoryBarrierBuffer();
        int tmp398_i32 = atomicAdd(root_buffer_0_i32._m0[(tmp10526_u32 + 0u) >> 2u], int(floor(((tmp382_f32 * (tmp231_f32 + (tmp331_f32 + tmp301_f32))) * 16777216.0) + 0.5)));
        memoryBarrierBuffer();
        int tmp400_i32 = atomicAdd(root_buffer_0_i32._m0[(tmp10526_u32 + 4u) >> 2u], int(floor(((tmp382_f32 * (tmp234_f32 + (tmp333_f32 + tmp303_f32))) * 16777216.0) + 0.5)));
        memoryBarrierBuffer();
        int tmp406_i32 = atomicAdd(root_buffer_0_i32._m0[((tmp10282_u32 + (uint(tmp11718_i32) * 4u)) + 0u) >> 2u], int(floor((tmp382_f32 * 67108864.0) + 0.5)));
        float tmp408_f32 = (2.0 - tmp62_f32) * 0.015625;
        float tmp409_f32 = tmp82_f32 * tmp70_f32;
        int tmp410_i32 = tmp58_i32 + 2;
        float tmp411_f32 = tmp221_f32 * tmp408_f32;
        float tmp413_f32 = tmp219_f32 * tmp408_f32;
        int tmp12144_i32 = (tmp410_i32 - (64 * (tmp410_i32 / 64))) << 6;
        int tmp11742_i32 = tmp10252_i32 + tmp12144_i32;
        uint tmp10580_u32 = tmp10246_u32 + (uint(tmp11742_i32) * 8u);
        memoryBarrierBuffer();
        int tmp428_i32 = atomicAdd(root_buffer_0_i32._m0[(tmp10580_u32 + 0u) >> 2u], int(floor(((tmp409_f32 * (tmp231_f32 + (tmp411_f32 + tmp236_f32))) * 16777216.0) + 0.5)));
        memoryBarrierBuffer();
        int tmp430_i32 = atomicAdd(root_buffer_0_i32._m0[(tmp10580_u32 + 4u) >> 2u], int(floor(((tmp409_f32 * (tmp234_f32 + (tmp413_f32 + tmp239_f32))) * 16777216.0) + 0.5)));
        memoryBarrierBuffer();
        int tmp436_i32 = atomicAdd(root_buffer_0_i32._m0[((tmp10282_u32 + (uint(tmp11742_i32) * 4u)) + 0u) >> 2u], int(floor((tmp409_f32 * 67108864.0) + 0.5)));
        float tmp437_f32 = tmp82_f32 * tmp77_f32;
        int tmp11766_i32 = tmp10306_i32 + tmp12144_i32;
        uint tmp10634_u32 = tmp10246_u32 + (uint(tmp11766_i32) * 8u);
        memoryBarrierBuffer();
        int tmp453_i32 = atomicAdd(root_buffer_0_i32._m0[(tmp10634_u32 + 0u) >> 2u], int(floor(((tmp437_f32 * (tmp231_f32 + (tmp411_f32 + tmp269_f32))) * 16777216.0) + 0.5)));
        memoryBarrierBuffer();
        int tmp455_i32 = atomicAdd(root_buffer_0_i32._m0[(tmp10634_u32 + 4u) >> 2u], int(floor(((tmp437_f32 * (tmp234_f32 + (tmp413_f32 + tmp271_f32))) * 16777216.0) + 0.5)));
        memoryBarrierBuffer();
        int tmp461_i32 = atomicAdd(root_buffer_0_i32._m0[((tmp10282_u32 + (uint(tmp11766_i32) * 4u)) + 0u) >> 2u], int(floor((tmp437_f32 * 67108864.0) + 0.5)));
        float tmp462_f32 = tmp82_f32 * tmp83_f32;
        int tmp11790_i32 = tmp10360_i32 + tmp12144_i32;
        uint tmp10688_u32 = tmp10246_u32 + (uint(tmp11790_i32) * 8u);
        memoryBarrierBuffer();
        int tmp478_i32 = atomicAdd(root_buffer_0_i32._m0[(tmp10688_u32 + 0u) >> 2u], int(floor(((tmp462_f32 * (tmp231_f32 + (tmp411_f32 + tmp301_f32))) * 16777216.0) + 0.5)));
        memoryBarrierBuffer();
        int tmp480_i32 = atomicAdd(root_buffer_0_i32._m0[(tmp10688_u32 + 4u) >> 2u], int(floor(((tmp462_f32 * (tmp234_f32 + (tmp413_f32 + tmp303_f32))) * 16777216.0) + 0.5)));
        memoryBarrierBuffer();
        int tmp486_i32 = atomicAdd(root_buffer_0_i32._m0[((tmp10282_u32 + (uint(tmp11790_i32) * 4u)) + 0u) >> 2u], int(floor((tmp462_f32 * 67108864.0) + 0.5)));
    }
}

