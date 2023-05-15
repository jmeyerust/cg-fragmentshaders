#version 300 es
precision mediump float;

// Input
in vec2 model_uv;

// Uniforms
uniform sampler2D image;

// Output
out vec4 FragColor;

void main() {
    
    vec2 scaled_coord = (model_uv * vec2(2.0, 2.0)) -  vec2(1.0, 1.0);
    float theta = atan(scaled_coord.y, scaled_coord.x);
    float radius = pow(length(scaled_coord), 1.5);
    vec2 fish_eye = vec2(radius * cos(theta), radius * sin(theta));
    vec2 final_coord = vec2(0.5, 0.5) * (fish_eye + vec2(1.0, 1.0));
    
    // Color
    FragColor = texture(image, final_coord);
}
