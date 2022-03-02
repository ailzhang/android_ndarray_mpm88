#version 320 es

precision highp float;
layout(location = 0) in vec2 viPos;

out vec2 voTexCoord;
void main() {
    gl_Position = vec4(viPos.xy, 0, 1);
    voTexCoord = 0.5 * viPos.yx + vec2(0.5, 0.5);
}
//in vec4 a_position;
//in vec2 a_texcoords;
//out vec2 v_texcoords;
//
//void main() {
//    gl_Position = a_position;
//    v_texcoords = a_texcoords;
//}