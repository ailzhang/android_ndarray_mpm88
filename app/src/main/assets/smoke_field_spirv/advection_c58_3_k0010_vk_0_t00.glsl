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
    for (int tmp3_i32 = _21; tmp3_i32 < 53361; )
    {
        int tmp6_i32 = tmp3_i32 - (53361 * (tmp3_i32 / 53361));
        int tmp12_i32 = (tmp6_i32 - (53361 * (tmp6_i32 / 53361))) / 231;
        int tmp17_i32 = tmp6_i32 - (231 * (tmp6_i32 / 231));
        float tmp25_f32 = float(tmp12_i32) + 0.5;
        float tmp27_f32 = float(tmp17_i32) + 0.5;
        uint _68 = uint((tmp17_i32 - (231 * (tmp17_i32 / 231))) + ((tmp12_i32 - (231 * (tmp12_i32 / 231))) * 231));
        uint _70 = _68 * 8u;
        uint _81 = root_buffer_0_u32._m0[(853776u + _70) >> 2u];
        float tmp33_f32 = uintBitsToFloat(_81);
        uint _87 = root_buffer_0_u32._m0[(_70 + 853780u) >> 2u];
        float tmp35_f32 = uintBitsToFloat(_87);
        int tmp45_i32 = max(0, min(230, int(tmp25_f32 - (tmp33_f32 * 0.014999999664723873138427734375))));
        int tmp48_i32 = max(0, min(230, int(tmp27_f32 - (tmp35_f32 * 0.014999999664723873138427734375))));
        uint _110 = uint((tmp48_i32 - (231 * (tmp48_i32 / 231))) + ((tmp45_i32 - (231 * (tmp45_i32 / 231))) * 231)) * 8u;
        uint _115 = root_buffer_0_u32._m0[(853776u + _110) >> 2u];
        uint _120 = root_buffer_0_u32._m0[(_110 + 853780u) >> 2u];
        int tmp60_i32 = max(0, min(230, int(tmp25_f32 - (tmp33_f32 * 0.02249999903142452239990234375))));
        int tmp63_i32 = max(0, min(230, int(tmp27_f32 - (tmp35_f32 * 0.02249999903142452239990234375))));
        uint _142 = uint((tmp63_i32 - (231 * (tmp63_i32 / 231))) + ((tmp60_i32 - (231 * (tmp60_i32 / 231))) * 231)) * 8u;
        uint _147 = root_buffer_0_u32._m0[(853776u + _142) >> 2u];
        uint _152 = root_buffer_0_u32._m0[(_142 + 853780u) >> 2u];
        float tmp79_f32 = ((tmp33_f32 * 0.22222222387790679931640625) + (uintBitsToFloat(_115) * 0.3333333432674407958984375)) + (uintBitsToFloat(_147) * 0.4444444477558135986328125);
        float tmp80_f32 = ((tmp35_f32 * 0.22222222387790679931640625) + (uintBitsToFloat(_120) * 0.3333333432674407958984375)) + (uintBitsToFloat(_152) * 0.4444444477558135986328125);
        float tmp94_f32 = (tmp25_f32 + (tmp79_f32 * (-0.02999999932944774627685546875))) - 0.5;
        float tmp95_f32 = (tmp27_f32 + (tmp80_f32 * (-0.02999999932944774627685546875))) - 0.5;
        float tmp98_f32 = float(int(tmp94_f32));
        float tmp99_f32 = tmp94_f32 - tmp98_f32;
        float tmp100_f32 = float(int(tmp95_f32));
        float tmp101_f32 = tmp95_f32 - tmp100_f32;
        int tmp106_i32 = max(0, min(230, int(tmp98_f32 + 0.5)));
        int tmp109_i32 = max(0, min(230, int(tmp100_f32 + 0.5)));
        int tmp7702_i32 = tmp109_i32 - (231 * (tmp109_i32 / 231));
        int tmp8015_i32 = (tmp106_i32 - (231 * (tmp106_i32 / 231))) * 231;
        uint _202 = uint(tmp7702_i32 + tmp8015_i32) * 12u;
        float tmp111_f32 = uintBitsToFloat(root_buffer_0_u32._m0[(2134440u + _202) >> 2u]);
        uint _212 = root_buffer_0_u32._m0[(_202 + 2134444u) >> 2u];
        float tmp113_f32 = uintBitsToFloat(_212);
        uint _217 = root_buffer_0_u32._m0[(_202 + 2134448u) >> 2u];
        float tmp115_f32 = uintBitsToFloat(_217);
        int tmp120_i32 = max(0, min(230, int(tmp98_f32 + 1.5)));
        int tmp8039_i32 = (tmp120_i32 - (231 * (tmp120_i32 / 231))) * 231;
        uint _230 = uint(tmp7702_i32 + tmp8039_i32) * 12u;
        uint _240 = root_buffer_0_u32._m0[(_230 + 2134444u) >> 2u];
        uint _245 = root_buffer_0_u32._m0[(_230 + 2134448u) >> 2u];
        int tmp130_i32 = max(0, min(230, int(tmp100_f32 + 1.5)));
        int tmp7810_i32 = tmp130_i32 - (231 * (tmp130_i32 / 231));
        uint _256 = uint(tmp7810_i32 + tmp8015_i32) * 12u;
        float tmp132_f32 = uintBitsToFloat(root_buffer_0_u32._m0[(2134440u + _256) >> 2u]);
        uint _266 = root_buffer_0_u32._m0[(_256 + 2134444u) >> 2u];
        float tmp134_f32 = uintBitsToFloat(_266);
        uint _271 = root_buffer_0_u32._m0[(_256 + 2134448u) >> 2u];
        float tmp136_f32 = uintBitsToFloat(_271);
        uint _275 = uint(tmp7810_i32 + tmp8039_i32) * 12u;
        uint _285 = root_buffer_0_u32._m0[(_275 + 2134444u) >> 2u];
        uint _290 = root_buffer_0_u32._m0[(_275 + 2134448u) >> 2u];
        float tmp149_f32 = tmp111_f32 + (tmp99_f32 * (uintBitsToFloat(root_buffer_0_u32._m0[(2134440u + _230) >> 2u]) - tmp111_f32));
        float tmp150_f32 = tmp113_f32 + (tmp99_f32 * (uintBitsToFloat(_240) - tmp113_f32));
        float tmp151_f32 = tmp115_f32 + (tmp99_f32 * (uintBitsToFloat(_245) - tmp115_f32));
        uint _322 = _68 * 12u;
        root_buffer_0_u32._m0[(1494108u + _322) >> 2u] = floatBitsToUint(tmp149_f32 + (tmp101_f32 * ((tmp132_f32 + (tmp99_f32 * (uintBitsToFloat(root_buffer_0_u32._m0[(2134440u + _275) >> 2u]) - tmp132_f32))) - tmp149_f32)));
        root_buffer_0_u32._m0[(_322 + 1494112u) >> 2u] = floatBitsToUint(tmp150_f32 + (tmp101_f32 * ((tmp134_f32 + (tmp99_f32 * (uintBitsToFloat(_285) - tmp134_f32))) - tmp150_f32)));
        root_buffer_0_u32._m0[(_322 + 1494116u) >> 2u] = floatBitsToUint(tmp151_f32 + (tmp101_f32 * ((tmp136_f32 + (tmp99_f32 * (uintBitsToFloat(_290) - tmp136_f32))) - tmp151_f32)));
        tmp3_i32 += total_invocs;
        continue;
    }
}

