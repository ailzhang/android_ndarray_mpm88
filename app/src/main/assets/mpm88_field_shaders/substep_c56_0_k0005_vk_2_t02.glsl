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
    for (int tmp490_i32 = begin_; tmp490_i32 < end_; tmp490_i32 += total_invocs)
    {
        int tmp493_i32 = tmp490_i32 - (4096 * (tmp490_i32 / 4096));
        int tmp499_i32 = (tmp493_i32 - (4096 * (tmp493_i32 / 4096))) / 64;
        int tmp504_i32 = tmp493_i32 - (64 * (tmp493_i32 / 64));
        uint tmp10731_u32 = 0u + (uint(0) * 262144u);
        int tmp11814_i32 = (tmp504_i32 - (64 * (tmp504_i32 / 64))) + ((tmp499_i32 - (64 * (tmp499_i32 / 64))) << 6);
        uint tmp10743_u32 = ((tmp10731_u32 + 245760u) + (uint(tmp11814_i32) * 4u)) + 0u;
        if (((-int(int(root_buffer_0_u32._m0[tmp10743_u32 >> 2u]) > 0)) & 1) != 0)
        {
            uint _95 = root_buffer_0_u32._m0[tmp10743_u32 >> 2u];
            float tmp524_f32 = 65536.0 / float(int(_95));
            uint tmp10778_u32 = (tmp10731_u32 + 212992u) + (uint(tmp11814_i32) * 8u);
            uint tmp10779_u32 = tmp10778_u32 + 0u;
            uint _108 = root_buffer_0_u32._m0[tmp10779_u32 >> 2u];
            uint tmp10797_u32 = tmp10778_u32 + 4u;
            uint _115 = root_buffer_0_u32._m0[tmp10797_u32 >> 2u];
            int tmp535_i32 = int((tmp524_f32 * float(int(_108))) * 10000.0);
            root_buffer_0_u32._m0[tmp10779_u32 >> 2u] = uint(tmp535_i32);
            root_buffer_0_u32._m0[tmp10797_u32 >> 2u] = uint(int((tmp524_f32 * float(int(_115))) * 10000.0));
            root_buffer_0_u32._m0[tmp10797_u32 >> 2u] = uint(int(root_buffer_0_u32._m0[tmp10797_u32 >> 2u]) + (-50));
            if ((((-int(tmp499_i32 < 3)) & 1) & ((-int(tmp535_i32 < 0)) & 1)) != 0)
            {
                root_buffer_0_u32._m0[tmp10779_u32 >> 2u] = uint(0);
            }
            else
            {
            }
            if ((((-int(tmp499_i32 > 61)) & 1) & ((-int(int(root_buffer_0_u32._m0[tmp10779_u32 >> 2u]) > 0)) & 1)) != 0)
            {
                root_buffer_0_u32._m0[tmp10779_u32 >> 2u] = uint(0);
            }
            else
            {
            }
            if ((((-int(tmp504_i32 < 3)) & 1) & ((-int(int(root_buffer_0_u32._m0[tmp10797_u32 >> 2u]) < 0)) & 1)) != 0)
            {
                root_buffer_0_u32._m0[tmp10797_u32 >> 2u] = uint(0);
            }
            else
            {
            }
            if ((((-int(tmp504_i32 > 61)) & 1) & ((-int(int(root_buffer_0_u32._m0[tmp10797_u32 >> 2u]) > 0)) & 1)) != 0)
            {
                root_buffer_0_u32._m0[tmp10797_u32 >> 2u] = uint(0);
            }
            else
            {
            }
        }
        else
        {
        }
    }
}

