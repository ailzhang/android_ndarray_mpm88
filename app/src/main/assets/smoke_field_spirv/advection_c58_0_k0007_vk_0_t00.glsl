#version 310 es
layout(local_size_x = 128, local_size_y = 1, local_size_z = 1) in;

layout(binding = 2, std430) buffer root_buffer_0_u32_ptr
{
    uint _m0[];
} root_buffer_0_u32;

void main()
{
    int _21 = int(gl_GlobalInvocationID.x);
    int total_invocs = int(gl_NumWorkGroups.x * 128u);
    for (int tmp3_i32 = _21; tmp3_i32 < 213444; )
    {
        int tmp6_i32 = tmp3_i32 - (213444 * (tmp3_i32 / 213444));
        int tmp12_i32 = (tmp6_i32 - (213444 * (tmp6_i32 / 213444))) / 462;
        int tmp17_i32 = tmp6_i32 - (462 * (tmp6_i32 / 462));
        float tmp25_f32 = float(tmp12_i32) + 0.5;
        float tmp27_f32 = float(tmp17_i32) + 0.5;
        uint _70 = uint((tmp17_i32 - (462 * (tmp17_i32 / 462))) + ((tmp12_i32 - (462 * (tmp12_i32 / 462))) * 462)) * 8u;
        uint _81 = root_buffer_0_u32._m0[(1707552u + _70) >> 2u];
        float tmp33_f32 = uintBitsToFloat(_81);
        uint _87 = root_buffer_0_u32._m0[(_70 + 1707556u) >> 2u];
        float tmp35_f32 = uintBitsToFloat(_87);
        int tmp45_i32 = max(0, min(461, int(tmp25_f32 - (tmp33_f32 * 0.014999999664723873138427734375))));
        int tmp48_i32 = max(0, min(461, int(tmp27_f32 - (tmp35_f32 * 0.014999999664723873138427734375))));
        uint _110 = uint((tmp48_i32 - (462 * (tmp48_i32 / 462))) + ((tmp45_i32 - (462 * (tmp45_i32 / 462))) * 462)) * 8u;
        uint _115 = root_buffer_0_u32._m0[(1707552u + _110) >> 2u];
        uint _120 = root_buffer_0_u32._m0[(_110 + 1707556u) >> 2u];
        int tmp60_i32 = max(0, min(461, int(tmp25_f32 - (tmp33_f32 * 0.02249999903142452239990234375))));
        int tmp63_i32 = max(0, min(461, int(tmp27_f32 - (tmp35_f32 * 0.02249999903142452239990234375))));
        uint _142 = uint((tmp63_i32 - (462 * (tmp63_i32 / 462))) + ((tmp60_i32 - (462 * (tmp60_i32 / 462))) * 462)) * 8u;
        uint _147 = root_buffer_0_u32._m0[(1707552u + _142) >> 2u];
        uint _152 = root_buffer_0_u32._m0[(_142 + 1707556u) >> 2u];
        float tmp79_f32 = ((tmp33_f32 * 0.22222222387790679931640625) + (uintBitsToFloat(_115) * 0.3333333432674407958984375)) + (uintBitsToFloat(_147) * 0.4444444477558135986328125);
        float tmp80_f32 = ((tmp35_f32 * 0.22222222387790679931640625) + (uintBitsToFloat(_120) * 0.3333333432674407958984375)) + (uintBitsToFloat(_152) * 0.4444444477558135986328125);
        float tmp94_f32 = (tmp25_f32 + (tmp79_f32 * (-0.02999999932944774627685546875))) - 0.5;
        float tmp95_f32 = (tmp27_f32 + (tmp80_f32 * (-0.02999999932944774627685546875))) - 0.5;
        float tmp98_f32 = float(int(tmp94_f32));
        float tmp99_f32 = tmp94_f32 - tmp98_f32;
        float tmp100_f32 = float(int(tmp95_f32));
        float tmp101_f32 = tmp95_f32 - tmp100_f32;
        int tmp106_i32 = max(0, min(461, int(tmp98_f32 + 0.5)));
        int tmp109_i32 = max(0, min(461, int(tmp100_f32 + 0.5)));
        int tmp2918_i32 = tmp109_i32 - (462 * (tmp109_i32 / 462));
        int tmp3141_i32 = (tmp106_i32 - (462 * (tmp106_i32 / 462))) * 462;
        uint _199 = uint(tmp2918_i32 + tmp3141_i32) * 8u;
        float tmp111_f32 = uintBitsToFloat(root_buffer_0_u32._m0[(1707552u + _199) >> 2u]);
        uint _209 = root_buffer_0_u32._m0[(_199 + 1707556u) >> 2u];
        float tmp113_f32 = uintBitsToFloat(_209);
        int tmp118_i32 = max(0, min(461, int(tmp98_f32 + 1.5)));
        int tmp3157_i32 = (tmp118_i32 - (462 * (tmp118_i32 / 462))) * 462;
        uint _222 = uint(tmp2918_i32 + tmp3157_i32) * 8u;
        uint _232 = root_buffer_0_u32._m0[(_222 + 1707556u) >> 2u];
        int tmp126_i32 = max(0, min(461, int(tmp100_f32 + 1.5)));
        int tmp2990_i32 = tmp126_i32 - (462 * (tmp126_i32 / 462));
        uint _243 = uint(tmp2990_i32 + tmp3141_i32) * 8u;
        float tmp128_f32 = uintBitsToFloat(root_buffer_0_u32._m0[(1707552u + _243) >> 2u]);
        uint _253 = root_buffer_0_u32._m0[(_243 + 1707556u) >> 2u];
        float tmp130_f32 = uintBitsToFloat(_253);
        uint _257 = uint(tmp2990_i32 + tmp3157_i32) * 8u;
        uint _267 = root_buffer_0_u32._m0[(_257 + 1707556u) >> 2u];
        float tmp139_f32 = tmp111_f32 + (tmp99_f32 * (uintBitsToFloat(root_buffer_0_u32._m0[(1707552u + _222) >> 2u]) - tmp111_f32));
        float tmp140_f32 = tmp113_f32 + (tmp99_f32 * (uintBitsToFloat(_232) - tmp113_f32));
        root_buffer_0_u32._m0[(3415104u + _70) >> 2u] = floatBitsToUint(tmp139_f32 + (tmp101_f32 * ((tmp128_f32 + (tmp99_f32 * (uintBitsToFloat(root_buffer_0_u32._m0[(1707552u + _257) >> 2u]) - tmp128_f32))) - tmp139_f32)));
        root_buffer_0_u32._m0[(_70 + 3415108u) >> 2u] = floatBitsToUint(tmp140_f32 + (tmp101_f32 * ((tmp130_f32 + (tmp99_f32 * (uintBitsToFloat(_267) - tmp130_f32))) - tmp140_f32)));
        tmp3_i32 += total_invocs;
        continue;
    }
}
