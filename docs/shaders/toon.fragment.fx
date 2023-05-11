#version 300 es
precision mediump float;

// Input
in vec2 model_uv;

// Uniforms
uniform sampler2D image;

// Output
out vec4 FragColor;

void main() {

    float four_r = texture(image, model_uv).rgb[0] * 4.0;
    float four_g = texture(image, model_uv).rgb[1] * 4.0;
    float four_b = texture(image, model_uv).rgb[2] * 4.0;

    int r_rounded = int(round(four_r));
    int g_rounded = int(round(four_g));
    int b_rounded = int(round(four_b));


    float new_r = float(r_rounded) / 4.0;
    float new_g = float(g_rounded) / 4.0;
    float new_b = float(b_rounded) / 4.0;

    vec4 color = vec4(new_r, new_g, new_b, 1.0);
    
    // Color
    FragColor = color;
}
