#version 150

in vec4 vertexColor;

uniform vec4 ColorModulator;
uniform mat4 ProjMat;

out vec4 fragColor;


//                   R   G   B   A
vec4 Setcolor = vec4(255, 255, 255, 40) / 255;

void main() {
    vec4 color = vertexColor;

    fragColor = color * ColorModulator;

     if (ProjMat[3][0] == -1.0 && color.g*255.0 == 16.0 && color.b*255.0 == 16.0 && color.r*255.0 == 16.0){
        color = Setcolor;
        fragColor = color;
    }
}