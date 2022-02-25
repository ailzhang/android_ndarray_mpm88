#version 310 es
layout(local_size_x = 128, local_size_y = 1, local_size_z = 1) in;

layout(binding = 0, std430) buffer root_buffer_0_u32_ptr
{
    uint _m0[];
} root_buffer_0_u32;

void main()
{
    int begin_ = int(gl_GlobalInvocationID.x) + 0;
    int end_ = 4096 + 0;
    int total_invocs = int(gl_NumWorkGroups.x * 128u);
    for (int tmp575_i32 = begin_; tmp575_i32 < end_; tmp575_i32 += total_invocs)
    {
        int tmp578_i32 = tmp575_i32 - (4096 * (tmp575_i32 / 4096));
        int tmp582_i32 = tmp578_i32 - (4096 * (tmp578_i32 / 4096));
        uint tmp11000_u32 = 0u + (uint(0) * 262144u);
        int tmp11003_i32 = tmp582_i32 - (4096 * (tmp582_i32 / 4096));
        uint tmp11007_u32 = (tmp11000_u32 + 0u) + (uint(tmp11003_i32) * 8u);
        uint tmp11008_u32 = tmp11007_u32 + 0u;
        uint _66 = root_buffer_0_u32._m0[tmp11008_u32 >> 2u];
        float tmp589_f32 = uintBitsToFloat(_66);
        float tmp591_f32 = tmp589_f32 * 64.0;
        uint tmp11021_u32 = tmp11007_u32 + 4u;
        uint _74 = root_buffer_0_u32._m0[tmp11021_u32 >> 2u];
        float tmp593_f32 = uintBitsToFloat(_74);
        float tmp594_f32 = tmp593_f32 * 64.0;
        int tmp598_i32 = int(tmp591_f32 - 0.5);
        int tmp599_i32 = int(tmp594_f32 - 0.5);
        float tmp602_f32 = tmp591_f32 - float(tmp598_i32);
        float tmp603_f32 = tmp594_f32 - float(tmp599_i32);
        float tmp605_f32 = 1.5 - tmp602_f32;
        float tmp606_f32 = 1.5 - tmp603_f32;
        float tmp609_f32 = (tmp605_f32 * tmp605_f32) * 0.5;
        float tmp610_f32 = (tmp606_f32 * tmp606_f32) * 0.5;
        float tmp612_f32 = tmp602_f32 - 1.0;
        float tmp613_f32 = tmp603_f32 - 1.0;
        float tmp617_f32 = 0.75 - (tmp612_f32 * tmp612_f32);
        float tmp618_f32 = 0.75 - (tmp613_f32 * tmp613_f32);
        float tmp619_f32 = tmp602_f32 - 0.5;
        float tmp620_f32 = tmp603_f32 - 0.5;
        float tmp623_f32 = (tmp619_f32 * tmp619_f32) * 0.5;
        float tmp624_f32 = (tmp620_f32 * tmp620_f32) * 0.5;
        float tmp632_f32 = 0.0 - tmp602_f32;
        float tmp633_f32 = 0.0 - tmp603_f32;
        uint tmp11028_u32 = tmp11000_u32 + 212992u;
        int tmp11034_i32 = tmp599_i32 - (64 * (tmp599_i32 / 64));
        int tmp12148_i32 = (tmp598_i32 - (64 * (tmp598_i32 / 64))) << 6;
        uint tmp11038_u32 = tmp11028_u32 + (uint(tmp11034_i32 + tmp12148_i32) * 8u);
        uint _128 = root_buffer_0_u32._m0[(tmp11038_u32 + 0u) >> 2u];
        float tmp638_f32 = float(int(_128)) * 9.9999997473787516355514526367188e-05;
        uint _136 = root_buffer_0_u32._m0[(tmp11038_u32 + 4u) >> 2u];
        float tmp642_f32 = float(int(_136)) * 9.9999997473787516355514526367188e-05;
        float tmp643_f32 = tmp609_f32 * tmp610_f32;
        float tmp657_f32 = tmp643_f32 * 256.0;
        float tmp674_f32 = 1.0 - tmp603_f32;
        int tmp676_i32 = tmp599_i32 + 1;
        int tmp11070_i32 = tmp676_i32 - (64 * (tmp676_i32 / 64));
        uint tmp11074_u32 = tmp11028_u32 + (uint(tmp11070_i32 + tmp12148_i32) * 8u);
        uint _165 = root_buffer_0_u32._m0[(tmp11074_u32 + 0u) >> 2u];
        float tmp680_f32 = float(int(_165)) * 9.9999997473787516355514526367188e-05;
        uint _172 = root_buffer_0_u32._m0[(tmp11074_u32 + 4u) >> 2u];
        float tmp684_f32 = float(int(_172)) * 9.9999997473787516355514526367188e-05;
        float tmp685_f32 = tmp609_f32 * tmp618_f32;
        float tmp698_f32 = tmp685_f32 * 256.0;
        float tmp716_f32 = 2.0 - tmp603_f32;
        int tmp718_i32 = tmp599_i32 + 2;
        int tmp11106_i32 = tmp718_i32 - (64 * (tmp718_i32 / 64));
        uint tmp11110_u32 = tmp11028_u32 + (uint(tmp11106_i32 + tmp12148_i32) * 8u);
        uint _208 = root_buffer_0_u32._m0[(tmp11110_u32 + 0u) >> 2u];
        float tmp722_f32 = float(int(_208)) * 9.9999997473787516355514526367188e-05;
        uint _215 = root_buffer_0_u32._m0[(tmp11110_u32 + 4u) >> 2u];
        float tmp726_f32 = float(int(_215)) * 9.9999997473787516355514526367188e-05;
        float tmp727_f32 = tmp609_f32 * tmp624_f32;
        float tmp740_f32 = tmp727_f32 * 256.0;
        float tmp757_f32 = 1.0 - tmp602_f32;
        int tmp758_i32 = tmp598_i32 + 1;
        int tmp12150_i32 = (tmp758_i32 - (64 * (tmp758_i32 / 64))) << 6;
        uint tmp11146_u32 = tmp11028_u32 + (uint(tmp11034_i32 + tmp12150_i32) * 8u);
        uint _250 = root_buffer_0_u32._m0[(tmp11146_u32 + 0u) >> 2u];
        float tmp762_f32 = float(int(_250)) * 9.9999997473787516355514526367188e-05;
        uint _257 = root_buffer_0_u32._m0[(tmp11146_u32 + 4u) >> 2u];
        float tmp766_f32 = float(int(_257)) * 9.9999997473787516355514526367188e-05;
        float tmp767_f32 = tmp617_f32 * tmp610_f32;
        float tmp780_f32 = tmp767_f32 * 256.0;
        uint tmp11182_u32 = tmp11028_u32 + (uint(tmp11070_i32 + tmp12150_i32) * 8u);
        uint _286 = root_buffer_0_u32._m0[(tmp11182_u32 + 0u) >> 2u];
        float tmp800_f32 = float(int(_286)) * 9.9999997473787516355514526367188e-05;
        uint _293 = root_buffer_0_u32._m0[(tmp11182_u32 + 4u) >> 2u];
        float tmp804_f32 = float(int(_293)) * 9.9999997473787516355514526367188e-05;
        float tmp805_f32 = tmp617_f32 * tmp618_f32;
        float tmp818_f32 = tmp805_f32 * 256.0;
        uint tmp11218_u32 = tmp11028_u32 + (uint(tmp11106_i32 + tmp12150_i32) * 8u);
        uint _322 = root_buffer_0_u32._m0[(tmp11218_u32 + 0u) >> 2u];
        float tmp838_f32 = float(int(_322)) * 9.9999997473787516355514526367188e-05;
        uint _329 = root_buffer_0_u32._m0[(tmp11218_u32 + 4u) >> 2u];
        float tmp842_f32 = float(int(_329)) * 9.9999997473787516355514526367188e-05;
        float tmp843_f32 = tmp617_f32 * tmp624_f32;
        float tmp856_f32 = tmp843_f32 * 256.0;
        float tmp873_f32 = 2.0 - tmp602_f32;
        int tmp874_i32 = tmp598_i32 + 2;
        int tmp12152_i32 = (tmp874_i32 - (64 * (tmp874_i32 / 64))) << 6;
        uint tmp11254_u32 = tmp11028_u32 + (uint(tmp11034_i32 + tmp12152_i32) * 8u);
        uint _364 = root_buffer_0_u32._m0[(tmp11254_u32 + 0u) >> 2u];
        float tmp878_f32 = float(int(_364)) * 9.9999997473787516355514526367188e-05;
        uint _371 = root_buffer_0_u32._m0[(tmp11254_u32 + 4u) >> 2u];
        float tmp882_f32 = float(int(_371)) * 9.9999997473787516355514526367188e-05;
        float tmp883_f32 = tmp623_f32 * tmp610_f32;
        float tmp896_f32 = tmp883_f32 * 256.0;
        uint tmp11290_u32 = tmp11028_u32 + (uint(tmp11070_i32 + tmp12152_i32) * 8u);
        uint _400 = root_buffer_0_u32._m0[(tmp11290_u32 + 0u) >> 2u];
        float tmp916_f32 = float(int(_400)) * 9.9999997473787516355514526367188e-05;
        uint _407 = root_buffer_0_u32._m0[(tmp11290_u32 + 4u) >> 2u];
        float tmp920_f32 = float(int(_407)) * 9.9999997473787516355514526367188e-05;
        float tmp921_f32 = tmp623_f32 * tmp618_f32;
        float tmp934_f32 = tmp921_f32 * 256.0;
        uint tmp11326_u32 = tmp11028_u32 + (uint(tmp11106_i32 + tmp12152_i32) * 8u);
        uint _436 = root_buffer_0_u32._m0[(tmp11326_u32 + 0u) >> 2u];
        float tmp954_f32 = float(int(_436)) * 9.9999997473787516355514526367188e-05;
        uint _443 = root_buffer_0_u32._m0[(tmp11326_u32 + 4u) >> 2u];
        float tmp958_f32 = float(int(_443)) * 9.9999997473787516355514526367188e-05;
        float tmp959_f32 = tmp623_f32 * tmp624_f32;
        float tmp963_f32 = ((((((((tmp643_f32 * tmp638_f32) + (tmp685_f32 * tmp680_f32)) + (tmp727_f32 * tmp722_f32)) + (tmp767_f32 * tmp762_f32)) + (tmp805_f32 * tmp800_f32)) + (tmp843_f32 * tmp838_f32)) + (tmp883_f32 * tmp878_f32)) + (tmp921_f32 * tmp916_f32)) + (tmp959_f32 * tmp954_f32);
        float tmp966_f32 = ((((((((tmp643_f32 * tmp642_f32) + (tmp685_f32 * tmp684_f32)) + (tmp727_f32 * tmp726_f32)) + (tmp767_f32 * tmp766_f32)) + (tmp805_f32 * tmp804_f32)) + (tmp843_f32 * tmp842_f32)) + (tmp883_f32 * tmp882_f32)) + (tmp921_f32 * tmp920_f32)) + (tmp959_f32 * tmp958_f32);
        float tmp972_f32 = tmp959_f32 * 256.0;
        uint tmp11357_u32 = (tmp11000_u32 + 32768u) + (uint(tmp11003_i32) * 8u);
        root_buffer_0_u32._m0[(tmp11357_u32 + 0u) >> 2u] = floatBitsToUint(tmp963_f32);
        root_buffer_0_u32._m0[(tmp11357_u32 + 4u) >> 2u] = floatBitsToUint(tmp966_f32);
        uint tmp11383_u32 = (tmp11000_u32 + 65536u) + (uint(tmp11003_i32) * 16u);
        root_buffer_0_u32._m0[(tmp11383_u32 + 0u) >> 2u] = floatBitsToUint(((((((((tmp657_f32 * (tmp638_f32 * tmp632_f32)) + (tmp698_f32 * (tmp680_f32 * tmp632_f32))) + (tmp740_f32 * (tmp722_f32 * tmp632_f32))) + (tmp780_f32 * (tmp762_f32 * tmp757_f32))) + (tmp818_f32 * (tmp800_f32 * tmp757_f32))) + (tmp856_f32 * (tmp838_f32 * tmp757_f32))) + (tmp896_f32 * (tmp878_f32 * tmp873_f32))) + (tmp934_f32 * (tmp916_f32 * tmp873_f32))) + (tmp972_f32 * (tmp954_f32 * tmp873_f32)));
        root_buffer_0_u32._m0[(tmp11383_u32 + 4u) >> 2u] = floatBitsToUint(((((((((tmp657_f32 * (tmp638_f32 * tmp633_f32)) + (tmp698_f32 * (tmp680_f32 * tmp674_f32))) + (tmp740_f32 * (tmp722_f32 * tmp716_f32))) + (tmp780_f32 * (tmp762_f32 * tmp633_f32))) + (tmp818_f32 * (tmp800_f32 * tmp674_f32))) + (tmp856_f32 * (tmp838_f32 * tmp716_f32))) + (tmp896_f32 * (tmp878_f32 * tmp633_f32))) + (tmp934_f32 * (tmp916_f32 * tmp674_f32))) + (tmp972_f32 * (tmp954_f32 * tmp716_f32)));
        root_buffer_0_u32._m0[(tmp11383_u32 + 8u) >> 2u] = floatBitsToUint(((((((((tmp657_f32 * (tmp642_f32 * tmp632_f32)) + (tmp698_f32 * (tmp684_f32 * tmp632_f32))) + (tmp740_f32 * (tmp726_f32 * tmp632_f32))) + (tmp780_f32 * (tmp766_f32 * tmp757_f32))) + (tmp818_f32 * (tmp804_f32 * tmp757_f32))) + (tmp856_f32 * (tmp842_f32 * tmp757_f32))) + (tmp896_f32 * (tmp882_f32 * tmp873_f32))) + (tmp934_f32 * (tmp920_f32 * tmp873_f32))) + (tmp972_f32 * (tmp958_f32 * tmp873_f32)));
        root_buffer_0_u32._m0[(tmp11383_u32 + 12u) >> 2u] = floatBitsToUint(((((((((tmp657_f32 * (tmp642_f32 * tmp633_f32)) + (tmp698_f32 * (tmp684_f32 * tmp674_f32))) + (tmp740_f32 * (tmp726_f32 * tmp716_f32))) + (tmp780_f32 * (tmp766_f32 * tmp633_f32))) + (tmp818_f32 * (tmp804_f32 * tmp674_f32))) + (tmp856_f32 * (tmp842_f32 * tmp716_f32))) + (tmp896_f32 * (tmp882_f32 * tmp633_f32))) + (tmp934_f32 * (tmp920_f32 * tmp674_f32))) + (tmp972_f32 * (tmp958_f32 * tmp716_f32)));
        root_buffer_0_u32._m0[tmp11008_u32 >> 2u] = floatBitsToUint(tmp589_f32 + (tmp963_f32 * 9.9999997473787516355514526367188e-05));
        root_buffer_0_u32._m0[tmp11021_u32 >> 2u] = floatBitsToUint(tmp593_f32 + (tmp966_f32 * 9.9999997473787516355514526367188e-05));
    }
}

