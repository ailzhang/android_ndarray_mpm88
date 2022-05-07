#version 320 es

precision highp float;
layout(location = 0) in vec2 viPos;

out vec2 voTexCoord;
void main() {
    gl_Position = vec4(viPos.xy, 0, 1);
    voTexCoord = 0.5 * viPos.yx + vec2(0.5, 0.5);
}
