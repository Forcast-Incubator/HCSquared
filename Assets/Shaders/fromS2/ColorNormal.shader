// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'
// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.06 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.06;sub:START;pass:START;ps:flbk:,lico:1,lgpr:1,nrmq:1,limd:0,uamb:True,mssp:True,lmpd:False,lprd:False,rprd:False,enco:False,frtr:True,vitr:True,dbil:False,rmgx:True,rpth:0,hqsc:False,hqlp:False,tesm:0,blpr:0,bsrc:0,bdst:1,culm:0,dpts:2,wrdp:True,dith:0,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:3209,x:34167,y:32368,varname:node_3209,prsc:2|normal-1651-OUT,custl-4029-OUT;n:type:ShaderForge.SFN_LightVector,id:8277,x:32241,y:33020,varname:node_8277,prsc:2;n:type:ShaderForge.SFN_Dot,id:9278,x:32477,y:32924,varname:node_9278,prsc:2,dt:4|A-42-OUT,B-8277-OUT;n:type:ShaderForge.SFN_NormalVector,id:42,x:32241,y:32862,prsc:2,pt:True;n:type:ShaderForge.SFN_Color,id:8037,x:33201,y:32673,ptovrint:False,ptlb:Light,ptin:_Light,varname:node_8037,prsc:2,glob:False,c1:0.9852941,c2:0.9061508,c3:0.268058,c4:1;n:type:ShaderForge.SFN_Clamp01,id:7250,x:32843,y:33000,varname:node_7250,prsc:2|IN-2942-OUT;n:type:ShaderForge.SFN_Power,id:2942,x:32680,y:33000,varname:node_2942,prsc:2|VAL-9278-OUT,EXP-4128-OUT;n:type:ShaderForge.SFN_ValueProperty,id:4518,x:32241,y:33251,ptovrint:False,ptlb:Light Power Normal,ptin:_LightPowerNormal,varname:node_4518,prsc:2,glob:False,v1:1.22;n:type:ShaderForge.SFN_LightAttenuation,id:7863,x:32512,y:32646,varname:node_7863,prsc:2;n:type:ShaderForge.SFN_LightColor,id:4909,x:33492,y:32859,varname:node_4909,prsc:2;n:type:ShaderForge.SFN_Round,id:1745,x:32999,y:33000,varname:node_1745,prsc:2|IN-7250-OUT;n:type:ShaderForge.SFN_Multiply,id:4029,x:33889,y:32604,varname:node_4029,prsc:2|A-3637-OUT,B-5446-OUT,C-4909-RGB;n:type:ShaderForge.SFN_AmbientLight,id:2122,x:33201,y:32523,varname:node_2122,prsc:2;n:type:ShaderForge.SFN_Add,id:3637,x:33492,y:32596,varname:node_3637,prsc:2|A-2122-RGB,B-8037-RGB;n:type:ShaderForge.SFN_Multiply,id:5446,x:33188,y:32853,varname:node_5446,prsc:2|A-1216-OUT,B-1745-OUT;n:type:ShaderForge.SFN_Tex2d,id:9779,x:33509,y:32064,ptovrint:False,ptlb:Normal Map,ptin:_NormalMap,varname:node_9779,prsc:2,tex:8e624259447f2894b9603fdfabe69f9d,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Power,id:1216,x:32908,y:32770,varname:node_1216,prsc:2|VAL-7863-OUT,EXP-9610-OUT;n:type:ShaderForge.SFN_ValueProperty,id:9610,x:32690,y:32836,ptovrint:False,ptlb:Attem Powah,ptin:_AttemPowah,varname:node_9610,prsc:2,glob:False,v1:0.61;n:type:ShaderForge.SFN_Panner,id:49,x:33909,y:31567,varname:node_49,prsc:2,spu:0.65,spv:0|DIST-9770-TSL;n:type:ShaderForge.SFN_Time,id:9770,x:33684,y:31577,varname:node_9770,prsc:2;n:type:ShaderForge.SFN_ScreenPos,id:97,x:33508,y:31378,varname:node_97,prsc:2,sctp:0;n:type:ShaderForge.SFN_Tex2d,id:7247,x:34119,y:31596,ptovrint:False,ptlb:Normal,ptin:_Normal,varname:node_2289,prsc:2,ntxv:3,isnm:True|UVIN-49-UVOUT;n:type:ShaderForge.SFN_Vector1,id:2647,x:33508,y:31536,varname:node_2647,prsc:2,v1:5;n:type:ShaderForge.SFN_Divide,id:6947,x:33684,y:31461,varname:node_6947,prsc:2|A-97-UVOUT,B-2647-OUT;n:type:ShaderForge.SFN_Lerp,id:1651,x:33816,y:32273,varname:node_1651,prsc:2|A-9779-RGB,B-9832-OUT,T-4606-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:4606,x:32161,y:32621,ptovrint:False,ptlb:Vertex Alpha Data,ptin:_VertexAlphaData,varname:node_4606,prsc:2,on:False|A-3067-OUT,B-5748-A;n:type:ShaderForge.SFN_VertexColor,id:5748,x:31916,y:32621,varname:node_5748,prsc:2;n:type:ShaderForge.SFN_Vector1,id:3067,x:31916,y:32558,varname:node_3067,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector3,id:9832,x:33509,y:32224,varname:node_9832,prsc:2,v1:0.5019608,v2:0.5019608,v3:1;n:type:ShaderForge.SFN_Lerp,id:4128,x:32504,y:33171,varname:node_4128,prsc:2|A-4518-OUT,B-6516-OUT,T-4606-OUT;n:type:ShaderForge.SFN_ValueProperty,id:6516,x:32241,y:33330,ptovrint:False,ptlb:Light Power,ptin:_LightPower,varname:_Power_copy,prsc:2,glob:False,v1:1.22;proporder:8037-9610-9779-4606-6516-4518;pass:END;sub:END;*/

Shader "Carpathia/ColorNormal" {
    Properties {
        _Light ("Light", Color) = (0.9852941,0.9061508,0.268058,1)
        _AttemPowah ("Attem Powah", Float ) = 0.61
        _NormalMap ("Normal Map", 2D) = "bump" {}
        [MaterialToggle] _VertexAlphaData ("Vertex Alpha Data", Float ) = 0
        _LightPower ("Light Power", Float ) = 1.22
        _LightPowerNormal ("Light Power Normal", Float ) = 1.22
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
            #pragma exclude_renderers xbox360 ps3 flash d3d11_9x 
            #pragma target 3.0
            uniform float4 _Light;
            uniform float _LightPowerNormal;
            uniform sampler2D _NormalMap; uniform float4 _NormalMap_ST;
            uniform float _AttemPowah;
            uniform fixed _VertexAlphaData;
            uniform float _LightPower;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 binormalDir : TEXCOORD4;
                float4 vertexColor : COLOR;
                LIGHTING_COORDS(5,6)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
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
                float3 _NormalMap_var = UnpackNormal(tex2D(_NormalMap,TRANSFORM_TEX(i.uv0, _NormalMap)));
                float _VertexAlphaData_var = lerp( 0.0, i.vertexColor.a, _VertexAlphaData );
                float3 normalLocal = lerp(_NormalMap_var.rgb,float3(0.5019608,0.5019608,1),_VertexAlphaData_var);
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 finalColor = ((UNITY_LIGHTMODEL_AMBIENT.rgb+_Light.rgb)*(pow(attenuation,_AttemPowah)*round(saturate(pow(0.5*dot(normalDirection,lightDirection)+0.5,lerp(_LightPowerNormal,_LightPower,_VertexAlphaData_var)))))*_LightColor0.rgb);
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
            #pragma exclude_renderers xbox360 ps3 flash d3d11_9x 
            #pragma target 3.0
            uniform float4 _Light;
            uniform float _LightPowerNormal;
            uniform sampler2D _NormalMap; uniform float4 _NormalMap_ST;
            uniform float _AttemPowah;
            uniform fixed _VertexAlphaData;
            uniform float _LightPower;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 binormalDir : TEXCOORD4;
                float4 vertexColor : COLOR;
                LIGHTING_COORDS(5,6)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
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
                float3 _NormalMap_var = UnpackNormal(tex2D(_NormalMap,TRANSFORM_TEX(i.uv0, _NormalMap)));
                float _VertexAlphaData_var = lerp( 0.0, i.vertexColor.a, _VertexAlphaData );
                float3 normalLocal = lerp(_NormalMap_var.rgb,float3(0.5019608,0.5019608,1),_VertexAlphaData_var);
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 finalColor = ((UNITY_LIGHTMODEL_AMBIENT.rgb+_Light.rgb)*(pow(attenuation,_AttemPowah)*round(saturate(pow(0.5*dot(normalDirection,lightDirection)+0.5,lerp(_LightPowerNormal,_LightPower,_VertexAlphaData_var)))))*_LightColor0.rgb);
                return fixed4(finalColor * 1,0);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
