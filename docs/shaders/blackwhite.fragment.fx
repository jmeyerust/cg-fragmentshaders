#version 300 es
precision mediump float;

// Input
in vec2 model_uv;

// Uniforms
uniform sampler2D image;

// Output
out vec4 FragColor;

void main() {
    // Color
    float r = texture(image, model_uv).rgb[0] * 0.299;
    float g = texture(image, model_uv).rgb[1] * 0.587;
    float b = texture(image, model_uv).rgb[2] * 0.114;
    float l = r + g + b;


    //vec4 bound = vec4(1.0);

    FragColor = vec4(l, l, l, 1.0);
}
