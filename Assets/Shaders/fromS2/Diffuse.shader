// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'
// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.06 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.06;sub:START;pass:START;ps:flbk:,lico:1,lgpr:1,nrmq:0,limd:0,uamb:True,mssp:True,lmpd:False,lprd:False,rprd:False,enco:False,frtr:True,vitr:True,dbil:False,rmgx:True,rpth:0,hqsc:False,hqlp:False,tesm:0,blpr:0,bsrc:0,bdst:1,culm:0,dpts:2,wrdp:True,dith:0,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:3209,x:34084,y:32350,varname:node_3209,prsc:2|custl-4029-OUT;n:type:ShaderForge.SFN_LightVector,id:8277,x:32241,y:33020,varname:node_8277,prsc:2;n:type:ShaderForge.SFN_Dot,id:9278,x:32477,y:32924,varname:node_9278,prsc:2,dt:4|A-42-OUT,B-8277-OUT;n:type:ShaderForge.SFN_NormalVector,id:42,x:32241,y:32862,prsc:2,pt:False;n:type:ShaderForge.SFN_Clamp01,id:7250,x:32843,y:33000,varname:node_7250,prsc:2|IN-2942-OUT;n:type:ShaderForge.SFN_Power,id:2942,x:32680,y:33000,varname:node_2942,prsc:2|VAL-9278-OUT,EXP-4518-OUT;n:type:ShaderForge.SFN_ValueProperty,id:4518,x:32477,y:33090,ptovrint:False,ptlb:Powah,ptin:_Powah,varname:node_4518,prsc:2,glob:False,v1:1.22;n:type:ShaderForge.SFN_LightAttenuation,id:7863,x:32550,y:32704,varname:node_7863,prsc:2;n:type:ShaderForge.SFN_LightColor,id:4909,x:33574,y:32784,varname:node_4909,prsc:2;n:type:ShaderForge.SFN_Round,id:1745,x:32999,y:33000,varname:node_1745,prsc:2|IN-7250-OUT;n:type:ShaderForge.SFN_Multiply,id:4029,x:33904,y:32600,varname:node_4029,prsc:2|A-8652-RGB,B-5446-OUT,C-7874-OUT;n:type:ShaderForge.SFN_AmbientLight,id:2122,x:33574,y:32946,varname:node_2122,prsc:2;n:type:ShaderForge.SFN_Multiply,id:5446,x:33188,y:32853,varname:node_5446,prsc:2|A-7870-OUT,B-1745-OUT;n:type:ShaderForge.SFN_Power,id:7870,x:32884,y:32631,varname:node_7870,prsc:2|VAL-7863-OUT,EXP-6914-OUT;n:type:ShaderForge.SFN_ValueProperty,id:6914,x:32563,y:32566,ptovrint:False,ptlb:Atten Powah,ptin:_AttenPowah,varname:node_6914,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_Add,id:7874,x:33786,y:32828,varname:node_7874,prsc:2|A-2122-RGB,B-4909-RGB;n:type:ShaderForge.SFN_Tex2d,id:8652,x:33401,y:32499,ptovrint:False,ptlb:Diffuse,ptin:_Diffuse,varname:node_8652,prsc:2,ntxv:0,isnm:False;proporder:4518-6914-8652;pass:END;sub:END;*/

Shader "Carpathia/Diffuse" {
    Properties {
        _Powah ("Powah", Float ) = 1.22
        _AttenPowah ("Atten Powah", Float ) = 1
        _Diffuse ("Diffuse", 2D) = "white" {}
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        Pass {
            Name "ForwardBase"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma exclude_renderers gles xbox360 ps3 flash d3d11_9x 
            #pragma target 3.0
            uniform float _Powah;
            uniform float _AttenPowah;
            uniform sampler2D _Diffuse; uniform float4 _Diffuse_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                LIGHTING_COORDS(3,4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = mul(unity_ObjectToWorld, float4(v.normal,0)).xyz;
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos(v.vertex);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            fixed4 frag(VertexOutput i) : COLOR {
/////// Vectors:
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float4 _Diffuse_var = tex2D(_Diffuse,TRANSFORM_TEX(i.uv0, _Diffuse));
                float3 finalColor = (_Diffuse_var.rgb*(pow(attenuation,_AttenPowah)*round(saturate(pow(0.5*dot(i.normalDir,lightDirection)+0.5,_Powah))))*(UNITY_LIGHTMODEL_AMBIENT.rgb+_LightColor0.rgb));
                return fixed4(finalColor,1);
            }
            ENDCG
        }
        Pass {
            Name "ForwardAdd"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            
            
            Fog { Color (0,0,0,0) }
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma exclude_renderers gles xbox360 ps3 flash d3d11_9x 
            #pragma target 3.0
            uniform float _Powah;
            uniform float _AttenPowah;
            uniform sampler2D _Diffuse; uniform float4 _Diffuse_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                LIGHTING_COORDS(3,4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = mul(unity_ObjectToWorld, float4(v.normal,0)).xyz;
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos(v.vertex);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            fixed4 frag(VertexOutput i) : COLOR {
/////// Vectors:
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float4 _Diffuse_var = tex2D(_Diffuse,TRANSFORM_TEX(i.uv0, _Diffuse));
                float3 finalColor = (_Diffuse_var.rgb*(pow(attenuation,_AttenPowah)*round(saturate(pow(0.5*dot(i.normalDir,lightDirection)+0.5,_Powah))))*(UNITY_LIGHTMODEL_AMBIENT.rgb+_LightColor0.rgb));
                return fixed4(finalColor * 1,0);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
