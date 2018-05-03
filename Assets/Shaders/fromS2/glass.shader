// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'
// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.06 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.06;sub:START;pass:START;ps:flbk:,lico:1,lgpr:1,nrmq:1,limd:0,uamb:True,mssp:True,lmpd:False,lprd:False,rprd:False,enco:False,frtr:True,vitr:True,dbil:False,rmgx:True,rpth:0,hqsc:False,hqlp:False,tesm:0,blpr:1,bsrc:3,bdst:7,culm:0,dpts:2,wrdp:False,dith:0,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:3209,x:33496,y:32788,varname:node_3209,prsc:2|normal-4263-RGB,custl-6865-OUT,alpha-7343-OUT;n:type:ShaderForge.SFN_LightVector,id:9270,x:32131,y:33301,varname:node_9270,prsc:2;n:type:ShaderForge.SFN_Dot,id:5443,x:32338,y:33253,varname:node_5443,prsc:2,dt:4|A-1438-OUT,B-9270-OUT;n:type:ShaderForge.SFN_NormalVector,id:1438,x:32131,y:33162,prsc:2,pt:True;n:type:ShaderForge.SFN_Color,id:4730,x:32976,y:32933,ptovrint:False,ptlb:Light,ptin:_Light,varname:node_8037,prsc:2,glob:False,c1:0.9852941,c2:0.9061508,c3:0.268058,c4:1;n:type:ShaderForge.SFN_Clamp01,id:9524,x:32789,y:33241,varname:node_9524,prsc:2|IN-3891-OUT;n:type:ShaderForge.SFN_Power,id:3891,x:32578,y:33253,varname:node_3891,prsc:2|VAL-5443-OUT,EXP-5807-OUT;n:type:ShaderForge.SFN_LightAttenuation,id:9348,x:32688,y:32930,varname:node_9348,prsc:2;n:type:ShaderForge.SFN_LightColor,id:1713,x:32688,y:33066,varname:node_1713,prsc:2;n:type:ShaderForge.SFN_Round,id:7343,x:32989,y:33241,varname:node_7343,prsc:2|IN-9524-OUT;n:type:ShaderForge.SFN_Multiply,id:6080,x:32976,y:33093,varname:node_6080,prsc:2|A-9348-OUT,B-1713-RGB;n:type:ShaderForge.SFN_Fresnel,id:5807,x:32338,y:33114,varname:node_5807,prsc:2|NRM-1438-OUT,EXP-874-OUT;n:type:ShaderForge.SFN_ValueProperty,id:874,x:32115,y:33032,ptovrint:False,ptlb:freznelExp,ptin:_freznelExp,varname:node_874,prsc:2,glob:False,v1:-2;n:type:ShaderForge.SFN_Tex2d,id:4263,x:33245,y:32765,ptovrint:False,ptlb:normalMap,ptin:_normalMap,varname:node_4263,prsc:2,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Multiply,id:6865,x:33245,y:32973,varname:node_6865,prsc:2|A-4730-RGB,B-6080-OUT;proporder:4730-874-4263;pass:END;sub:END;*/

Shader "Carpathia/glass" {
    Properties {
        _Light ("Light", Color) = (0.9852941,0.9061508,0.268058,1)
        _freznelExp ("freznelExp", Float ) = -2
        _normalMap ("normalMap", 2D) = "bump" {}
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        Pass {
            Name "ForwardBase"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            ZWrite Off
            
            Fog {Mode Off}
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma multi_compile_fwdbase
            #pragma exclude_renderers xbox360 ps3 flash d3d11_9x 
            #pragma target 3.0
            uniform float4 _Light;
            uniform float _freznelExp;
            uniform sampler2D _normalMap; uniform float4 _normalMap_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 binormalDir : TEXCOORD4;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = mul(unity_ObjectToWorld, float4(v.normal,0)).xyz;
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.binormalDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos(v.vertex);
                return o;
            }
            fixed4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.binormalDir, i.normalDir);
/////// Vectors:
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 _normalMap_var = UnpackNormal(tex2D(_normalMap,TRANSFORM_TEX(i.uv0, _normalMap)));
                float3 normalLocal = _normalMap_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = 1;
                float3 finalColor = (_Light.rgb*(attenuation*_LightColor0.rgb));
                return fixed4(finalColor,round(saturate(pow(0.5*dot(normalDirection,lightDirection)+0.5,pow(1.0-max(0,dot(normalDirection, viewDirection)),_freznelExp)))));
            }
            ENDCG
        }
        Pass {
            Name "ForwardAdd"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            ZWrite Off
            
            Fog { Color (0,0,0,0) }
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #pragma multi_compile_fwdadd
            #pragma exclude_renderers xbox360 ps3 flash d3d11_9x 
            #pragma target 3.0
            uniform float4 _Light;
            uniform float _freznelExp;
            uniform sampler2D _normalMap; uniform float4 _normalMap_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 binormalDir : TEXCOORD4;
                LIGHTING_COORDS(5,6)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = mul(unity_ObjectToWorld, float4(v.normal,0)).xyz;
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.binormalDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos(v.vertex);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            fixed4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.binormalDir, i.normalDir);
/////// Vectors:
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 _normalMap_var = UnpackNormal(tex2D(_normalMap,TRANSFORM_TEX(i.uv0, _normalMap)));
                float3 normalLocal = _normalMap_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 finalColor = (_Light.rgb*(attenuation*_LightColor0.rgb));
                return fixed4(finalColor * round(saturate(pow(0.5*dot(normalDirection,lightDirection)+0.5,pow(1.0-max(0,dot(normalDirection, viewDirection)),_freznelExp)))),0);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
