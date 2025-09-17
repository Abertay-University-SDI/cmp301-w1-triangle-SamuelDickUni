// Colour pixel/fragment shader
// Basic fragment shader outputting a colour

struct InputType
{
    float4 position : SV_POSITION;
    float2 uv : TEXCOORD;
};


float4 main(InputType input) : SV_TARGET
{
    
    float len = length(input.uv * 2. - 1.);
    float val = 1. - step(0.5, len);
    return float4(val,val, val, 1.);
}