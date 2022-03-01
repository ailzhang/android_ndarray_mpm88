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

void main()
{
    int begin_ = int(gl_GlobalInvocationID.x) + 0;
    int end_ = (global_tmps_buffer_i32._m0[0 >> 2] - 0) + 0;
    int total_invocs = int(gl_NumWorkGroups.x * 128u);
    for (int tmp542_i32 = begin_; tmp542_i32 < end_; tmp542_i32 += total_invocs)
    {
        uint tmp9482_u32 = 0u + (uint(0) * 401444u);
        int tmp9485_i32 = tmp542_i32 - (4096 * (tmp542_i32 / 4096));
        uint tmp9489_u32 = (tmp9482_u32 + 32772u) + (uint(tmp9485_i32) * 8u);
        uint tmp9490_u32 = tmp9489_u32 + 0u;
        uint _70 = root_buffer_0_u32._m0[tmp9490_u32 >> 2u];
        float tmp544_f32 = uintBitsToFloat(_70);
        float tmp546_f32 = tmp544_f32 * 96.0;
        uint tmp9503_u32 = tmp9489_u32 + 4u;
        uint _78 = root_buffer_0_u32._m0[tmp9503_u32 >> 2u];
        float tmp548_f32 = uintBitsToFloat(_78);
        float tmp549_f32 = tmp548_f32 * 96.0;
        int tmp553_i32 = int(tmp546_f32 - 0.5);
        int tmp554_i32 = int(tmp549_f32 - 0.5);
        float tmp556_f32 = tmp546_f32 - float(tmp553_i32);
        float tmp558_f32 = tmp549_f32 - float(tmp554_i32);
        float tmp560_f32 = 1.5 - tmp556_f32;
        float tmp561_f32 = 1.5 - tmp558_f32;
        float tmp564_f32 = (tmp560_f32 * tmp560_f32) * 0.5;
        float tmp565_f32 = (tmp561_f32 * tmp561_f32) * 0.5;
        float tmp567_f32 = tmp556_f32 - 1.0;
        float tmp568_f32 = tmp558_f32 - 1.0;
        float tmp572_f32 = 0.75 - (tmp567_f32 * tmp567_f32);
        float tmp573_f32 = 0.75 - (tmp568_f32 * tmp568_f32);
        float tmp574_f32 = tmp556_f32 - 0.5;
        float tmp575_f32 = tmp558_f32 - 0.5;
        float tmp578_f32 = (tmp574_f32 * tmp574_f32) * 0.5;
        float tmp579_f32 = (tmp575_f32 * tmp575_f32) * 0.5;
        float tmp590_f32 = (0.0 - tmp556_f32) * 0.010416666977107524871826171875;
        float tmp591_f32 = (0.0 - tmp558_f32) * 0.010416666977107524871826171875;
        float tmp592_f32 = tmp564_f32 * tmp565_f32;
        uint tmp9510_u32 = tmp9482_u32 + 180228u;
        int tmp9516_i32 = tmp554_i32 - (96 * (tmp554_i32 / 96));
        int tmp10510_i32 = (tmp553_i32 - (96 * (tmp553_i32 / 96))) * 96;
        uint tmp9520_u32 = tmp9510_u32 + (uint(tmp9516_i32 + tmp10510_i32) * 8u);
        uint _135 = root_buffer_0_u32._m0[(tmp9520_u32 + 0u) >> 2u];
        float tmp594_f32 = uintBitsToFloat(_135);
        uint _140 = root_buffer_0_u32._m0[(tmp9520_u32 + 4u) >> 2u];
        float tmp596_f32 = uintBitsToFloat(_140);
        float tmp610_f32 = tmp592_f32 * 4.0;
        float tmp633_f32 = (1.0 - tmp558_f32) * 0.010416666977107524871826171875;
        float tmp634_f32 = tmp564_f32 * tmp573_f32;
        int tmp636_i32 = tmp554_i32 + 1;
        int tmp9552_i32 = tmp636_i32 - (96 * (tmp636_i32 / 96));
        uint tmp9556_u32 = tmp9510_u32 + (uint(tmp9552_i32 + tmp10510_i32) * 8u);
        uint _173 = root_buffer_0_u32._m0[(tmp9556_u32 + 0u) >> 2u];
        float tmp638_f32 = uintBitsToFloat(_173);
        uint _178 = root_buffer_0_u32._m0[(tmp9556_u32 + 4u) >> 2u];
        float tmp640_f32 = uintBitsToFloat(_178);
        float tmp653_f32 = tmp634_f32 * 4.0;
        float tmp676_f32 = (2.0 - tmp558_f32) * 0.010416666977107524871826171875;
        float tmp677_f32 = tmp564_f32 * tmp579_f32;
        int tmp679_i32 = tmp554_i32 + 2;
        int tmp9588_i32 = tmp679_i32 - (96 * (tmp679_i32 / 96));
        uint tmp9592_u32 = tmp9510_u32 + (uint(tmp9588_i32 + tmp10510_i32) * 8u);
        uint _217 = root_buffer_0_u32._m0[(tmp9592_u32 + 0u) >> 2u];
        float tmp681_f32 = uintBitsToFloat(_217);
        uint _222 = root_buffer_0_u32._m0[(tmp9592_u32 + 4u) >> 2u];
        float tmp683_f32 = uintBitsToFloat(_222);
        float tmp696_f32 = tmp677_f32 * 4.0;
        float tmp718_f32 = (1.0 - tmp556_f32) * 0.010416666977107524871826171875;
        float tmp719_f32 = tmp572_f32 * tmp565_f32;
        int tmp720_i32 = tmp553_i32 + 1;
        int tmp10558_i32 = (tmp720_i32 - (96 * (tmp720_i32 / 96))) * 96;
        uint tmp9628_u32 = tmp9510_u32 + (uint(tmp9516_i32 + tmp10558_i32) * 8u);
        uint _260 = root_buffer_0_u32._m0[(tmp9628_u32 + 0u) >> 2u];
        float tmp722_f32 = uintBitsToFloat(_260);
        uint _265 = root_buffer_0_u32._m0[(tmp9628_u32 + 4u) >> 2u];
        float tmp724_f32 = uintBitsToFloat(_265);
        float tmp737_f32 = tmp719_f32 * 4.0;
        float tmp758_f32 = tmp572_f32 * tmp573_f32;
        uint tmp9664_u32 = tmp9510_u32 + (uint(tmp9552_i32 + tmp10558_i32) * 8u);
        uint _296 = root_buffer_0_u32._m0[(tmp9664_u32 + 0u) >> 2u];
        float tmp760_f32 = uintBitsToFloat(_296);
        uint _301 = root_buffer_0_u32._m0[(tmp9664_u32 + 4u) >> 2u];
        float tmp762_f32 = uintBitsToFloat(_301);
        float tmp775_f32 = tmp758_f32 * 4.0;
        float tmp796_f32 = tmp572_f32 * tmp579_f32;
        uint tmp9700_u32 = tmp9510_u32 + (uint(tmp9588_i32 + tmp10558_i32) * 8u);
        uint _332 = root_buffer_0_u32._m0[(tmp9700_u32 + 0u) >> 2u];
        float tmp798_f32 = uintBitsToFloat(_332);
        uint _337 = root_buffer_0_u32._m0[(tmp9700_u32 + 4u) >> 2u];
        float tmp800_f32 = uintBitsToFloat(_337);
        float tmp813_f32 = tmp796_f32 * 4.0;
        float tmp835_f32 = (2.0 - tmp556_f32) * 0.010416666977107524871826171875;
        float tmp836_f32 = tmp578_f32 * tmp565_f32;
        int tmp837_i32 = tmp553_i32 + 2;
        int tmp10606_i32 = (tmp837_i32 - (96 * (tmp837_i32 / 96))) * 96;
        uint tmp9736_u32 = tmp9510_u32 + (uint(tmp9516_i32 + tmp10606_i32) * 8u);
        uint _375 = root_buffer_0_u32._m0[(tmp9736_u32 + 0u) >> 2u];
        float tmp839_f32 = uintBitsToFloat(_375);
        uint _380 = root_buffer_0_u32._m0[(tmp9736_u32 + 4u) >> 2u];
        float tmp841_f32 = uintBitsToFloat(_380);
        float tmp854_f32 = tmp836_f32 * 4.0;
        float tmp875_f32 = tmp578_f32 * tmp573_f32;
        uint tmp9772_u32 = tmp9510_u32 + (uint(tmp9552_i32 + tmp10606_i32) * 8u);
        uint _411 = root_buffer_0_u32._m0[(tmp9772_u32 + 0u) >> 2u];
        float tmp877_f32 = uintBitsToFloat(_411);
        uint _416 = root_buffer_0_u32._m0[(tmp9772_u32 + 4u) >> 2u];
        float tmp879_f32 = uintBitsToFloat(_416);
        float tmp892_f32 = tmp875_f32 * 4.0;
        float tmp913_f32 = tmp578_f32 * tmp579_f32;
        uint tmp9808_u32 = tmp9510_u32 + (uint(tmp9588_i32 + tmp10606_i32) * 8u);
        uint _447 = root_buffer_0_u32._m0[(tmp9808_u32 + 0u) >> 2u];
        float tmp915_f32 = uintBitsToFloat(_447);
        uint _452 = root_buffer_0_u32._m0[(tmp9808_u32 + 4u) >> 2u];
        float tmp917_f32 = uintBitsToFloat(_452);
        float tmp921_f32 = ((((((((tmp592_f32 * tmp594_f32) + (tmp634_f32 * tmp638_f32)) + (tmp677_f32 * tmp681_f32)) + (tmp719_f32 * tmp722_f32)) + (tmp758_f32 * tmp760_f32)) + (tmp796_f32 * tmp798_f32)) + (tmp836_f32 * tmp839_f32)) + (tmp875_f32 * tmp877_f32)) + (tmp913_f32 * tmp915_f32);
        float tmp924_f32 = ((((((((tmp592_f32 * tmp596_f32) + (tmp634_f32 * tmp640_f32)) + (tmp677_f32 * tmp683_f32)) + (tmp719_f32 * tmp724_f32)) + (tmp758_f32 * tmp762_f32)) + (tmp796_f32 * tmp800_f32)) + (tmp836_f32 * tmp841_f32)) + (tmp875_f32 * tmp879_f32)) + (tmp913_f32 * tmp917_f32);
        float tmp930_f32 = tmp913_f32 * 4.0;
        float tmp940_f32 = (((((((((tmp610_f32 * (tmp594_f32 * tmp590_f32)) * 9216.0) + ((tmp653_f32 * (tmp638_f32 * tmp590_f32)) * 9216.0)) + ((tmp696_f32 * (tmp681_f32 * tmp590_f32)) * 9216.0)) + ((tmp737_f32 * (tmp722_f32 * tmp718_f32)) * 9216.0)) + ((tmp775_f32 * (tmp760_f32 * tmp718_f32)) * 9216.0)) + ((tmp813_f32 * (tmp798_f32 * tmp718_f32)) * 9216.0)) + ((tmp854_f32 * (tmp839_f32 * tmp835_f32)) * 9216.0)) + ((tmp892_f32 * (tmp877_f32 * tmp835_f32)) * 9216.0)) + ((tmp930_f32 * (tmp915_f32 * tmp835_f32)) * 9216.0);
        float tmp949_f32 = (((((((((tmp610_f32 * (tmp596_f32 * tmp591_f32)) * 9216.0) + ((tmp653_f32 * (tmp640_f32 * tmp633_f32)) * 9216.0)) + ((tmp696_f32 * (tmp683_f32 * tmp676_f32)) * 9216.0)) + ((tmp737_f32 * (tmp724_f32 * tmp591_f32)) * 9216.0)) + ((tmp775_f32 * (tmp762_f32 * tmp633_f32)) * 9216.0)) + ((tmp813_f32 * (tmp800_f32 * tmp676_f32)) * 9216.0)) + ((tmp854_f32 * (tmp841_f32 * tmp591_f32)) * 9216.0)) + ((tmp892_f32 * (tmp879_f32 * tmp633_f32)) * 9216.0)) + ((tmp930_f32 * (tmp917_f32 * tmp676_f32)) * 9216.0);
        uint tmp9839_u32 = (tmp9482_u32 + 65540u) + (uint(tmp9485_i32) * 8u);
        root_buffer_0_u32._m0[(tmp9839_u32 + 0u) >> 2u] = floatBitsToUint(tmp921_f32);
        root_buffer_0_u32._m0[(tmp9839_u32 + 4u) >> 2u] = floatBitsToUint(tmp924_f32);
        root_buffer_0_u32._m0[tmp9490_u32 >> 2u] = floatBitsToUint(tmp544_f32 + (tmp921_f32 * 0.00026041668024845421314239501953125));
        root_buffer_0_u32._m0[tmp9503_u32 >> 2u] = floatBitsToUint(tmp548_f32 + (tmp924_f32 * 0.00026041668024845421314239501953125));
        uint tmp9918_u32 = ((tmp9482_u32 + 163844u) + (uint(tmp9485_i32) * 4u)) + 0u;
        root_buffer_0_u32._m0[tmp9918_u32 >> 2u] = floatBitsToUint(uintBitsToFloat(root_buffer_0_u32._m0[tmp9918_u32 >> 2u]) * (((tmp940_f32 + tmp949_f32) * 0.00026041668024845421314239501953125) + 1.0));
        uint tmp9943_u32 = (tmp9482_u32 + 98308u) + (uint(tmp9485_i32) * 16u);
        root_buffer_0_u32._m0[(tmp9943_u32 + 0u) >> 2u] = floatBitsToUint(tmp940_f32);
        root_buffer_0_u32._m0[(tmp9943_u32 + 4u) >> 2u] = floatBitsToUint((((((((((tmp610_f32 * (tmp594_f32 * tmp591_f32)) * 9216.0) + ((tmp653_f32 * (tmp638_f32 * tmp633_f32)) * 9216.0)) + ((tmp696_f32 * (tmp681_f32 * tmp676_f32)) * 9216.0)) + ((tmp737_f32 * (tmp722_f32 * tmp591_f32)) * 9216.0)) + ((tmp775_f32 * (tmp760_f32 * tmp633_f32)) * 9216.0)) + ((tmp813_f32 * (tmp798_f32 * tmp676_f32)) * 9216.0)) + ((tmp854_f32 * (tmp839_f32 * tmp591_f32)) * 9216.0)) + ((tmp892_f32 * (tmp877_f32 * tmp633_f32)) * 9216.0)) + ((tmp930_f32 * (tmp915_f32 * tmp676_f32)) * 9216.0));
        root_buffer_0_u32._m0[(tmp9943_u32 + 8u) >> 2u] = floatBitsToUint((((((((((tmp610_f32 * (tmp596_f32 * tmp590_f32)) * 9216.0) + ((tmp653_f32 * (tmp640_f32 * tmp590_f32)) * 9216.0)) + ((tmp696_f32 * (tmp683_f32 * tmp590_f32)) * 9216.0)) + ((tmp737_f32 * (tmp724_f32 * tmp718_f32)) * 9216.0)) + ((tmp775_f32 * (tmp762_f32 * tmp718_f32)) * 9216.0)) + ((tmp813_f32 * (tmp800_f32 * tmp718_f32)) * 9216.0)) + ((tmp854_f32 * (tmp841_f32 * tmp835_f32)) * 9216.0)) + ((tmp892_f32 * (tmp879_f32 * tmp835_f32)) * 9216.0)) + ((tmp930_f32 * (tmp917_f32 * tmp835_f32)) * 9216.0));
        root_buffer_0_u32._m0[(tmp9943_u32 + 12u) >> 2u] = floatBitsToUint(tmp949_f32);
    }
}

