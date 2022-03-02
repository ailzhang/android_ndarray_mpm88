#version 320 es

precision highp float;
uniform sampler2D tex;
layout(location = 0) out vec4 fragColor;
in highp vec2 voTexCoord;
void main()
{
    vec4 color = vec4(1.0, 0.0, 0.0, 1.0);
    color.xyz = texture(tex, voTexCoord).xyz * 10000.0;
    fragColor = color;
}

//uniform sampler2D u_sampler;
//in vec2 v_texcoords;
//
//void main() {
//    fragColor = vec4(texture(u_sampler, v_texcoords).xy, 1 ,1);
//}