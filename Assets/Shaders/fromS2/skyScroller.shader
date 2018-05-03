// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.27 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.27;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:8429,x:33196,y:32348,varname:node_8429,prsc:2|emission-4182-OUT;n:type:ShaderForge.SFN_TexCoord,id:9065,x:32046,y:32571,varname:node_9065,prsc:2,uv:0;n:type:ShaderForge.SFN_Panner,id:481,x:32450,y:32632,varname:node_481,prsc:2,spu:1,spv:1|UVIN-5939-OUT,DIST-2855-TSL;n:type:ShaderForge.SFN_Time,id:2855,x:32255,y:32763,varname:node_2855,prsc:2;n:type:ShaderForge.SFN_ComponentMask,id:2724,x:32636,y:32632,varname:node_2724,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-481-UVOUT;n:type:ShaderForge.SFN_Lerp,id:4182,x:33019,y:32525,varname:node_4182,prsc:2|A-8103-RGB,B-130-RGB,T-4856-OUT;n:type:ShaderForge.SFN_Color,id:8103,x:32753,y:32297,ptovrint:False,ptlb:color 1,ptin:_color1,varname:node_8103,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Color,id:130,x:32753,y:32465,ptovrint:False,ptlb:color 2,ptin:_color2,varname:_color2,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Sin,id:4856,x:33019,y:32677,varname:node_4856,prsc:2|IN-2724-G;n:type:ShaderForge.SFN_Multiply,id:5939,x:32255,y:32632,varname:node_5939,prsc:2|A-9065-UVOUT,B-6033-OUT;n:type:ShaderForge.SFN_ValueProperty,id:6033,x:32046,y:32763,ptovrint:False,ptlb:tiler,ptin:_tiler,varname:node_6033,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:4;proporder:8103-130-6033;pass:END;sub:END;*/

Shader "Custom/skyScroller" {
    Properties {
        _color1 ("color 1", Color) = (0.5,0.5,0.5,1)
        _color2 ("color 2", Color) = (0.5,0.5,0.5,1)
        _tiler ("tiler", Float ) = 4
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        LOD 200
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform float4 _color1;
            uniform float4 _color2;
            uniform float _tiler;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                UNITY_FOG_COORDS(1)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = UnityObjectToClipPos(v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
////// Lighting:
////// Emissive:
                float4 node_2855 = _Time + _TimeEditor;
                float3 emissive = lerp(_color1.rgb,_color2.rgb,sin(((i.uv0*_tiler)+node_2855.r*float2(1,1)).rg.g));
                float3 finalColor = emissive;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
