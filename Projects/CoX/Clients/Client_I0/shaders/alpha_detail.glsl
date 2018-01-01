#version 110

uniform vec4 constColor1;
uniform vec4 constColor2;

uniform sampler2D myTextureMap;
uniform sampler2D myTextureMap2;
void main()
{
    vec4 texclr0 = texture2D( myTextureMap, gl_TexCoord[0].st );
    vec4 texclr1 = texture2D( myTextureMap2, gl_TexCoord[1].st );
    gl_FragColor.xyz = mix(texclr0,texclr1,texclr0.w).xyz*4.0*gl_Color.xyz;
    gl_FragColor.w = texclr1.w*constColor1.w;
}
