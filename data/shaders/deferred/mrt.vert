#version 450

#extension GL_ARB_separate_shader_objects : enable
#extension GL_ARB_shading_language_420pack : enable

layout (location = 0) in vec4 inPos;
layout (location = 1) in vec3 inColor;

layout (location = 0) out vec3 outColor;

out gl_PerVertex
{
	vec4 gl_Position;
};

void main() 
{
//	vec4 tmpPos = inPos + ubo.instancePos[0];

	gl_Position = inPos;//ubo.projection * ubo.view * ubo.model * tmpPos;
	outColor = inColor;
//	outUV = inUV;
//	outUV.t = 1.0 - outUV.t;

	// Vertex position in world space
//	outWorldPos = vec3(ubo.model * tmpPos);
	// GL to Vulkan coord space
//	outWorldPos.y = -outWorldPos.y;
	
	// Normal in world space
//	mat3 mNormal = transpose(inverse(mat3(ubo.model)));
//	outNormal = mNormal * normalize(inNormal);	
//	outTangent = mNormal * normalize(inTangent);
	
	// Currently just vertex color
	outColor = vec3(1.0, 1.0, 0.0);//inColor;
}
