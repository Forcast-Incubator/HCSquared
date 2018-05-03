// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'
// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.06 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.06;sub:START;pass:START;ps:flbk:,lico:0,lgpr:1,nrmq:1,limd:0,uamb:True,mssp:True,lmpd:False,lprd:False,rprd:False,enco:False,frtr:True,vitr:True,dbil:False,rmgx:True,rpth:0,hqsc:True,hqlp:False,tesm:0,blpr:0,bsrc:0,bdst:1,culm:0,dpts:2,wrdp:True,dith:2,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.09979719,fgcg:0,fgcb:0.3529412,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:1,x:34385,y:32651,varname:node_1,prsc:2|emission-2210-OUT,voffset-3193-OUT;n:type:ShaderForge.SFN_Tex2d,id:661,x:33370,y:32947,varname:node_1673,prsc:2,tex:0c3d4b3bfa4695d4d867d70f075df9f4,ntxv:0,isnm:False|UVIN-7821-UVOUT,TEX-7131-TEX;n:type:ShaderForge.SFN_VertexColor,id:903,x:33480,y:33485,varname:node_903,prsc:2;n:type:ShaderForge.SFN_Vector4Property,id:3327,x:33480,y:33329,ptovrint:False,ptlb:Wave Height,ptin:_WaveHeight,varname:node_3964,prsc:2,glob:False,v1:0,v2:0,v3:2,v4:0;n:type:ShaderForge.SFN_Clamp01,id:564,x:33719,y:33485,varname:node_564,prsc:2|IN-903-A;n:type:ShaderForge.SFN_Panner,id:7821,x:30677,y:32588,varname:node_7821,prsc:2,spu:0.5,spv:1|UVIN-6408-UVOUT,DIST-5785-OUT;n:type:ShaderForge.SFN_ValueProperty,id:2062,x:30290,y:32677,ptovrint:False,ptlb:Wave Speed 1,ptin:_WaveSpeed1,varname:node_3049,prsc:2,glob:False,v1:0;n:type:ShaderForge.SFN_Multiply,id:5785,x:30479,y:32633,varname:node_5785,prsc:2|A-2062-OUT,B-1738-T;n:type:ShaderForge.SFN_RemapRange,id:9490,x:33559,y:32947,varname:node_9490,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-661-RGB;n:type:ShaderForge.SFN_TexCoord,id:6408,x:30099,y:32613,varname:node_6408,prsc:2,uv:0;n:type:ShaderForge.SFN_Time,id:1738,x:30099,y:32760,varname:node_1738,prsc:2;n:type:ShaderForge.SFN_Panner,id:2092,x:30677,y:32762,varname:node_2092,prsc:2,spu:1,spv:0.5|UVIN-6408-UVOUT,DIST-7527-OUT;n:type:ShaderForge.SFN_ValueProperty,id:2874,x:30290,y:32813,ptovrint:False,ptlb:Wave Speed 2,ptin:_WaveSpeed2,varname:_WaveSpeed2,prsc:2,glob:False,v1:0;n:type:ShaderForge.SFN_Multiply,id:7527,x:30479,y:32777,varname:node_7527,prsc:2|A-2874-OUT,B-1738-T;n:type:ShaderForge.SFN_Tex2dAsset,id:7131,x:33117,y:33037,ptovrint:False,ptlb:Wave Texture,ptin:_WaveTexture,varname:node_7131,tex:0c3d4b3bfa4695d4d867d70f075df9f4,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:7656,x:33370,y:33106,varname:node_7656,prsc:2,tex:0c3d4b3bfa4695d4d867d70f075df9f4,ntxv:0,isnm:False|UVIN-2092-UVOUT,TEX-7131-TEX;n:type:ShaderForge.SFN_RemapRange,id:9326,x:33539,y:33106,varname:node_9326,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-7656-RGB;n:type:ShaderForge.SFN_Sin,id:60,x:33731,y:33068,varname:node_60,prsc:2|IN-9326-OUT;n:type:ShaderForge.SFN_Multiply,id:3193,x:34073,y:33035,varname:node_3193,prsc:2|A-9490-OUT,B-60-OUT,C-3327-XYZ,D-564-OUT;n:type:ShaderForge.SFN_Fresnel,id:7791,x:33144,y:32507,varname:node_7791,prsc:2|EXP-1942-OUT;n:type:ShaderForge.SFN_Slider,id:1942,x:32757,y:32514,ptovrint:False,ptlb:Fresnel Angle,ptin:_FresnelAngle,varname:node_908,prsc:2,min:0,cur:0,max:10;n:type:ShaderForge.SFN_Tex2dAsset,id:923,x:32371,y:32366,ptovrint:False,ptlb:ReflectionTex,ptin:_ReflectionTex,varname:node_7054,ntxv:2,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:1232,x:32616,y:32264,varname:node_5482,prsc:2,ntxv:0,isnm:False|UVIN-556-OUT,TEX-923-TEX;n:type:ShaderForge.SFN_Slider,id:4804,x:32757,y:32660,ptovrint:False,ptlb:Fresnel Strength,ptin:_FresnelStrength,varname:node_5277,prsc:2,min:0,cur:1,max:2;n:type:ShaderForge.SFN_Multiply,id:2210,x:33446,y:32505,varname:node_2210,prsc:2|A-1232-RGB,B-7791-OUT,C-5212-OUT;n:type:ShaderForge.SFN_NormalBlend,id:9828,x:31595,y:32401,varname:node_9828,prsc:2|BSE-4931-RGB,DTL-7875-RGB;n:type:ShaderForge.SFN_Tex2dAsset,id:9031,x:31219,y:32413,ptovrint:False,ptlb:Normal,ptin:_Normal,varname:node_9031,tex:24ad33c6788f8df4fb0d59ab54120235,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Tex2d,id:4931,x:31396,y:32326,varname:node_4931,prsc:2,tex:24ad33c6788f8df4fb0d59ab54120235,ntxv:0,isnm:False|UVIN-7821-UVOUT,TEX-9031-TEX;n:type:ShaderForge.SFN_Tex2d,id:7875,x:31396,y:32474,varname:node_7875,prsc:2,tex:24ad33c6788f8df4fb0d59ab54120235,ntxv:0,isnm:False|UVIN-2092-UVOUT,TEX-9031-TEX;n:type:ShaderForge.SFN_Multiply,id:7165,x:32048,y:32164,varname:node_7165,prsc:2|A-298-UVOUT,B-2341-OUT;n:type:ShaderForge.SFN_ScreenPos,id:298,x:31817,y:32075,varname:node_298,prsc:2,sctp:0;n:type:ShaderForge.SFN_Vector1,id:2341,x:31837,y:32267,varname:node_2341,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Add,id:556,x:32371,y:32215,varname:node_556,prsc:2|A-7165-OUT,B-2341-OUT,C-6758-OUT;n:type:ShaderForge.SFN_Multiply,id:4640,x:31973,y:32397,varname:node_4640,prsc:2|A-5661-OUT,B-3253-OUT;n:type:ShaderForge.SFN_Slider,id:3253,x:31502,y:32691,ptovrint:False,ptlb:Distortion,ptin:_Distortion,varname:node_3253,prsc:2,min:0,cur:0,max:0.05;n:type:ShaderForge.SFN_Dot,id:5084,x:32524,y:32827,varname:node_5084,prsc:2,dt:0|A-5661-OUT,B-9133-OUT;n:type:ShaderForge.SFN_NormalVector,id:9133,x:32254,y:32879,prsc:2,pt:True;n:type:ShaderForge.SFN_Negate,id:863,x:32756,y:32766,varname:node_863,prsc:2|IN-5084-OUT;n:type:ShaderForge.SFN_Clamp01,id:9363,x:32940,y:32766,varname:node_9363,prsc:2|IN-863-OUT;n:type:ShaderForge.SFN_ComponentMask,id:6758,x:32148,y:32366,varname:node_6758,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-4640-OUT;n:type:ShaderForge.SFN_Tex2d,id:1916,x:31208,y:32012,varname:node_1916,prsc:2,tex:f1398ca6a927ccd4d83e39010d25781a,ntxv:3,isnm:True|UVIN-6384-UVOUT,TEX-1325-TEX;n:type:ShaderForge.SFN_NormalBlend,id:5661,x:31796,y:32338,varname:node_5661,prsc:2|BSE-4340-OUT,DTL-9828-OUT;n:type:ShaderForge.SFN_Tex2dAsset,id:1325,x:30988,y:32100,ptovrint:False,ptlb:Normal Noise,ptin:_NormalNoise,varname:node_1325,tex:f1398ca6a927ccd4d83e39010d25781a,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Tex2d,id:1881,x:31208,y:32139,varname:node_1881,prsc:2,tex:f1398ca6a927ccd4d83e39010d25781a,ntxv:0,isnm:False|UVIN-6636-UVOUT,TEX-1325-TEX;n:type:ShaderForge.SFN_NormalBlend,id:1115,x:31396,y:32086,varname:node_1115,prsc:2|BSE-1916-RGB,DTL-1881-RGB;n:type:ShaderForge.SFN_Vector3,id:7500,x:31396,y:32216,varname:node_7500,prsc:2,v1:0.5019608,v2:0.5019608,v3:1;n:type:ShaderForge.SFN_Lerp,id:4340,x:31608,y:32145,varname:node_4340,prsc:2|A-1115-OUT,B-7500-OUT,T-7933-OUT;n:type:ShaderForge.SFN_Slider,id:7933,x:31062,y:32289,ptovrint:False,ptlb:Noise Strength,ptin:_NoiseStrength,varname:node_7933,prsc:2,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Multiply,id:5212,x:33171,y:32656,varname:node_5212,prsc:2|A-4804-OUT,B-9363-OUT;n:type:ShaderForge.SFN_Slider,id:9726,x:30097,y:32372,ptovrint:False,ptlb:Noise Speed,ptin:_NoiseSpeed,varname:node_9726,prsc:2,min:0,cur:0,max:0.01;n:type:ShaderForge.SFN_Panner,id:6384,x:30702,y:32287,varname:node_6384,prsc:2,spu:1,spv:0.1|DIST-8577-OUT;n:type:ShaderForge.SFN_Multiply,id:8577,x:30502,y:32392,varname:node_8577,prsc:2|A-9726-OUT,B-1738-T;n:type:ShaderForge.SFN_Panner,id:6636,x:30702,y:32429,varname:node_6636,prsc:2,spu:1,spv:-0.15|DIST-8577-OUT;proporder:3327-2062-2874-7131-1942-4804-9031-3253-1325-7933-9726;pass:END;sub:END;*/

Shader "Carpathia/Water" {
    Properties {
        _WaveHeight ("Wave Height", Vector) = (0,0,2,0)
        _WaveSpeed1 ("Wave Speed 1", Float ) = 0
        _WaveSpeed2 ("Wave Speed 2", Float ) = 0
        _WaveTexture ("Wave Texture", 2D) = "white" {}
        _FresnelAngle ("Fresnel Angle", Range(0, 10)) = 0
        _FresnelStrength ("Fresnel Strength", Range(0, 2)) = 1
        _Normal ("Normal", 2D) = "bump" {}
        _Distortion ("Distortion", Range(0, 0.05)) = 0
        _NormalNoise ("Normal Noise", 2D) = "bump" {}
        _NoiseStrength ("Noise Strength", Range(0, 1)) = 0
        _NoiseSpeed ("Noise Speed", Range(0, 0.01)) = 0
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        LOD 200
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
            #pragma multi_compile_fwdbase_fullshadows
            #pragma exclude_renderers xbox360 ps3 flash d3d11_9x 
            #pragma target 3.0
            #pragma glsl
            uniform float4 _TimeEditor;
            uniform float4 _WaveHeight;
            uniform float _WaveSpeed1;
            uniform float _WaveSpeed2;
            uniform sampler2D _WaveTexture; uniform float4 _WaveTexture_ST;
            uniform float _FresnelAngle;
            uniform sampler2D _ReflectionTex; uniform float4 _ReflectionTex_ST;
            uniform float _FresnelStrength;
            uniform sampler2D _Normal; uniform float4 _Normal_ST;
            uniform float _Distortion;
            uniform sampler2D _NormalNoise; uniform float4 _NormalNoise_ST;
            uniform float _NoiseStrength;
            uniform float _NoiseSpeed;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float4 screenPos : TEXCOORD3;
                float4 vertexColor : COLOR;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.normalDir = mul(unity_ObjectToWorld, float4(v.normal,0)).xyz;
                float4 node_1738 = _Time + _TimeEditor;
                float2 node_7821 = (o.uv0+(_WaveSpeed1*node_1738.g)*float2(0.5,1));
                float4 node_1673 = tex2Dlod(_WaveTexture,float4(TRANSFORM_TEX(node_7821, _WaveTexture),0.0,0));
                float2 node_2092 = (o.uv0+(_WaveSpeed2*node_1738.g)*float2(1,0.5));
                float4 node_7656 = tex2Dlod(_WaveTexture,float4(TRANSFORM_TEX(node_2092, _WaveTexture),0.0,0));
                v.vertex.xyz += ((node_1673.rgb*2.0+-1.0)*sin((node_7656.rgb*2.0+-1.0))*_WaveHeight.rgb*saturate(o.vertexColor.a));
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos(v.vertex);
                o.screenPos = o.pos;
                return o;
            }
            fixed4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                i.screenPos = float4( i.screenPos.xy / i.screenPos.w, 0, 0 );
                i.screenPos.y *= _ProjectionParams.x;
/////// Vectors:
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
////// Lighting:
////// Emissive:
                float node_2341 = 0.5;
                float4 node_1738 = _Time + _TimeEditor;
                float node_8577 = (_NoiseSpeed*node_1738.g);
                float2 node_6384 = (i.uv0+node_8577*float2(1,0.1));
                float3 node_1916 = UnpackNormal(tex2D(_NormalNoise,TRANSFORM_TEX(node_6384, _NormalNoise)));
                float2 node_6636 = (i.uv0+node_8577*float2(1,-0.15));
                float3 node_1881 = UnpackNormal(tex2D(_NormalNoise,TRANSFORM_TEX(node_6636, _NormalNoise)));
                float3 node_1115_nrm_base = node_1916.rgb + float3(0,0,1);
                float3 node_1115_nrm_detail = node_1881.rgb * float3(-1,-1,1);
                float3 node_1115_nrm_combined = node_1115_nrm_base*dot(node_1115_nrm_base, node_1115_nrm_detail)/node_1115_nrm_base.z - node_1115_nrm_detail;
                float3 node_1115 = node_1115_nrm_combined;
                float2 node_7821 = (i.uv0+(_WaveSpeed1*node_1738.g)*float2(0.5,1));
                float3 node_4931 = UnpackNormal(tex2D(_Normal,TRANSFORM_TEX(node_7821, _Normal)));
                float2 node_2092 = (i.uv0+(_WaveSpeed2*node_1738.g)*float2(1,0.5));
                float3 node_7875 = UnpackNormal(tex2D(_Normal,TRANSFORM_TEX(node_2092, _Normal)));
                float3 node_9828_nrm_base = node_4931.rgb + float3(0,0,1);
                float3 node_9828_nrm_detail = node_7875.rgb * float3(-1,-1,1);
                float3 node_9828_nrm_combined = node_9828_nrm_base*dot(node_9828_nrm_base, node_9828_nrm_detail)/node_9828_nrm_base.z - node_9828_nrm_detail;
                float3 node_9828 = node_9828_nrm_combined;
                float3 node_5661_nrm_base = lerp(node_1115,float3(0.5019608,0.5019608,1),_NoiseStrength) + float3(0,0,1);
                float3 node_5661_nrm_detail = node_9828 * float3(-1,-1,1);
                float3 node_5661_nrm_combined = node_5661_nrm_base*dot(node_5661_nrm_base, node_5661_nrm_detail)/node_5661_nrm_base.z - node_5661_nrm_detail;
                float3 node_5661 = node_5661_nrm_combined;
                float2 node_556 = ((i.screenPos.rg*node_2341)+node_2341+(node_5661*_Distortion).rg);
                float4 node_5482 = tex2D(_ReflectionTex,TRANSFORM_TEX(node_556, _ReflectionTex));
                float3 node_2210 = (node_5482.rgb*pow(1.0-max(0,dot(normalDirection, viewDirection)),_FresnelAngle)*(_FresnelStrength*saturate((-1*dot(node_5661,normalDirection)))));
                float3 emissive = node_2210;
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
        Pass {
            Name "ShadowCollector"
            Tags {
                "LightMode"="ShadowCollector"
            }
            
            Fog {Mode Off}
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCOLLECTOR
            #define SHADOW_COLLECTOR_PASS
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcollector
            #pragma exclude_renderers xbox360 ps3 flash d3d11_9x 
            #pragma target 3.0
            #pragma glsl
            uniform float4 _TimeEditor;
            uniform float4 _WaveHeight;
            uniform float _WaveSpeed1;
            uniform float _WaveSpeed2;
            uniform sampler2D _WaveTexture; uniform float4 _WaveTexture_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                V2F_SHADOW_COLLECTOR;
                float2 uv0 : TEXCOORD5;
                float4 vertexColor : COLOR;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                float4 node_1738 = _Time + _TimeEditor;
                float2 node_7821 = (o.uv0+(_WaveSpeed1*node_1738.g)*float2(0.5,1));
                float4 node_1673 = tex2Dlod(_WaveTexture,float4(TRANSFORM_TEX(node_7821, _WaveTexture),0.0,0));
                float2 node_2092 = (o.uv0+(_WaveSpeed2*node_1738.g)*float2(1,0.5));
                float4 node_7656 = tex2Dlod(_WaveTexture,float4(TRANSFORM_TEX(node_2092, _WaveTexture),0.0,0));
                v.vertex.xyz += ((node_1673.rgb*2.0+-1.0)*sin((node_7656.rgb*2.0+-1.0))*_WaveHeight.rgb*saturate(o.vertexColor.a));
                o.pos = UnityObjectToClipPos(v.vertex);
                TRANSFER_SHADOW_COLLECTOR(o)
                return o;
            }
            fixed4 frag(VertexOutput i) : COLOR {
/////// Vectors:
                SHADOW_COLLECTOR_FRAGMENT(i)
            }
            ENDCG
        }
        Pass {
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Cull Off
            Offset 1, 1
            
            Fog {Mode Off}
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma exclude_renderers xbox360 ps3 flash d3d11_9x 
            #pragma target 3.0
            #pragma glsl
            uniform float4 _TimeEditor;
            uniform float4 _WaveHeight;
            uniform float _WaveSpeed1;
            uniform float _WaveSpeed2;
            uniform sampler2D _WaveTexture; uniform float4 _WaveTexture_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
                float4 vertexColor : COLOR;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                float4 node_1738 = _Time + _TimeEditor;
                float2 node_7821 = (o.uv0+(_WaveSpeed1*node_1738.g)*float2(0.5,1));
                float4 node_1673 = tex2Dlod(_WaveTexture,float4(TRANSFORM_TEX(node_7821, _WaveTexture),0.0,0));
                float2 node_2092 = (o.uv0+(_WaveSpeed2*node_1738.g)*float2(1,0.5));
                float4 node_7656 = tex2Dlod(_WaveTexture,float4(TRANSFORM_TEX(node_2092, _WaveTexture),0.0,0));
                v.vertex.xyz += ((node_1673.rgb*2.0+-1.0)*sin((node_7656.rgb*2.0+-1.0))*_WaveHeight.rgb*saturate(o.vertexColor.a));
                o.pos = UnityObjectToClipPos(v.vertex);
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            fixed4 frag(VertexOutput i) : COLOR {
/////// Vectors:
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
