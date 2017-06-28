#version 450

#extension GL_ARB_separate_shader_objects : enable
#extension GL_ARB_shading_language_420pack : enable

layout (location = 0) in vec3 inColor;

layout (location = 0) out vec4 outPosition;
layout (location = 1) out vec4 outTest;
layout (location = 2) out vec4 outTest2;
void main() 
{
	outPosition = vec4(inColor, 1.0);
	outTest = vec4(inColor, 1.0);
	outTest2 = vec4(inColor, 1.0);
}
