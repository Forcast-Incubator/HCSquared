// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:3,spmd:1,trmd:0,grmd:1,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:True,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:2865,x:35514,y:33799,varname:node_2865,prsc:2|diff-5035-OUT,spec-9429-OUT,gloss-7454-OUT,normal-2960-OUT,difocc-4576-OUT;n:type:ShaderForge.SFN_Multiply,id:6343,x:31259,y:32579,varname:node_6343,prsc:2|A-7736-RGB,B-6665-RGB;n:type:ShaderForge.SFN_Color,id:6665,x:31066,y:32676,ptovrint:False,ptlb:Start Color,ptin:_StartColor,varname:_StartColor,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Tex2d,id:7736,x:31066,y:32487,ptovrint:True,ptlb:Start Albedo,ptin:_MainTex,varname:_MainTex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:90ef472345078ee4baf107867d328e14,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:5964,x:31066,y:33042,ptovrint:True,ptlb:Start  Normal Map,ptin:_BumpMap,varname:_BumpMap,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:ff05e3313f373404b9a735c3151d74a2,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Slider,id:358,x:31238,y:32743,ptovrint:False,ptlb:Start Metallic,ptin:_StartMetallic,varname:_StartMetallic,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Tex2d,id:1726,x:31066,y:32847,ptovrint:False,ptlb:Start Roughness,ptin:_StartRoughness,varname:_StartRoughness,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:036cd497b8b9905479efd06dfb554913,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:6832,x:31066,y:33244,ptovrint:False,ptlb:Start AO,ptin:_StartAO,varname:_StartAO,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:15ac98ec8bd1ac542ae816baf78271bf,ntxv:0,isnm:False;n:type:ShaderForge.SFN_ValueProperty,id:5048,x:32270,y:32551,ptovrint:False,ptlb:Switch,ptin:_Switch,varname:_Switch,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Lerp,id:5035,x:34608,y:33654,varname:node_5035,prsc:2|A-6343-OUT,B-6912-OUT,T-4115-OUT;n:type:ShaderForge.SFN_Lerp,id:9429,x:34608,y:33763,varname:node_9429,prsc:2|A-358-OUT,B-4634-OUT,T-4115-OUT;n:type:ShaderForge.SFN_Lerp,id:7454,x:34600,y:33888,varname:node_7454,prsc:2|A-1726-R,B-9211-R,T-4115-OUT;n:type:ShaderForge.SFN_Multiply,id:6912,x:31280,y:34431,varname:node_6912,prsc:2|A-9866-RGB,B-578-RGB;n:type:ShaderForge.SFN_Color,id:578,x:31087,y:34514,ptovrint:False,ptlb:End Color,ptin:_EndColor,varname:_EndColor,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Tex2d,id:9866,x:31087,y:34280,ptovrint:True,ptlb:End Albedo,ptin:_EndMainTex,varname:_EndMainTex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:e0bf51e24d381854a99d4bae8d76192b,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:8443,x:31089,y:34967,ptovrint:True,ptlb:End Normal Map,ptin:_EndBumpMap,varname:_EndBumpMap,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:248c29971396ea5429c23c7530980dc1,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Slider,id:4634,x:31259,y:34595,ptovrint:False,ptlb:End Metallic,ptin:_EndMetallic,varname:_EndMetallic,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Tex2d,id:9211,x:31089,y:34723,ptovrint:False,ptlb:End Roughness,ptin:_EndRoughness,varname:_EndRoughness,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:4683c0c124c66044cbd9c4942f1f658f,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:1819,x:31089,y:35211,ptovrint:False,ptlb:End AO,ptin:_EndAO,varname:_EndAO,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:804bf535672c1fc488933943729a87a5,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Lerp,id:4576,x:34600,y:34226,varname:node_4576,prsc:2|A-1819-R,B-6832-R,T-4115-OUT;n:type:ShaderForge.SFN_Tex2d,id:3677,x:32194,y:31790,ptovrint:False,ptlb:FadeTex,ptin:_FadeTex,varname:node_3677,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:3348ee9eb48c25a4baf2ccafd576ee72,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Vector1,id:5892,x:30684,y:33932,varname:node_5892,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:5937,x:30684,y:34006,varname:node_5937,prsc:2,v1:1;n:type:ShaderForge.SFN_Relay,id:456,x:33595,y:33039,varname:node_456,prsc:2|IN-1272-OUT;n:type:ShaderForge.SFN_Slider,id:9478,x:32191,y:32637,ptovrint:False,ptlb:Switch Slider,ptin:_SwitchSlider,varname:node_9478,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Multiply,id:1076,x:32544,y:32561,varname:node_1076,prsc:2|A-5048-OUT,B-9478-OUT;n:type:ShaderForge.SFN_ValueProperty,id:3158,x:32801,y:32759,ptovrint:False,ptlb:FadePow,ptin:_FadePow,varname:node_3158,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Power,id:5354,x:33028,y:32681,varname:node_5354,prsc:2|VAL-889-OUT,EXP-3158-OUT;n:type:ShaderForge.SFN_Clamp01,id:1272,x:33261,y:32681,varname:node_1272,prsc:2|IN-5354-OUT;n:type:ShaderForge.SFN_Slider,id:2849,x:32110,y:32170,ptovrint:False,ptlb:TexRangeMin,ptin:_TexRangeMin,varname:node_2849,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-1,cur:0,max:2;n:type:ShaderForge.SFN_Slider,id:8903,x:32110,y:32261,ptovrint:False,ptlb:TexRangeMax,ptin:_TexRangeMax,varname:_texmin_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-1,cur:1,max:2;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:5344,x:32648,y:32235,varname:node_5344,prsc:2|IN-3677-R,IMIN-2849-OUT,IMAX-8903-OUT,OMIN-5892-OUT,OMAX-5937-OUT;n:type:ShaderForge.SFN_Clamp01,id:889,x:33202,y:32510,varname:node_889,prsc:2|IN-5590-OUT;n:type:ShaderForge.SFN_Add,id:5590,x:33028,y:32510,varname:node_5590,prsc:2|A-5344-OUT,B-4913-OUT;n:type:ShaderForge.SFN_OneMinus,id:4115,x:33851,y:33046,varname:node_4115,prsc:2|IN-456-OUT;n:type:ShaderForge.SFN_RemapRange,id:4913,x:32711,y:32561,varname:node_4913,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-1076-OUT;n:type:ShaderForge.SFN_Append,id:2542,x:31962,y:33736,varname:node_2542,prsc:2|A-5964-R,B-5964-G;n:type:ShaderForge.SFN_Append,id:312,x:31962,y:33864,varname:node_312,prsc:2|A-8443-R,B-8443-G;n:type:ShaderForge.SFN_Multiply,id:8325,x:32184,y:33996,varname:node_8325,prsc:2|A-7652-OUT,B-351-OUT;n:type:ShaderForge.SFN_Multiply,id:1398,x:32184,y:33736,varname:node_1398,prsc:2|A-2542-OUT,B-456-OUT;n:type:ShaderForge.SFN_Multiply,id:5205,x:32184,y:33864,varname:node_5205,prsc:2|A-312-OUT,B-4115-OUT;n:type:ShaderForge.SFN_Lerp,id:7652,x:31962,y:33996,varname:node_7652,prsc:2|A-5964-B,B-5937-OUT,T-4115-OUT;n:type:ShaderForge.SFN_Lerp,id:351,x:31962,y:34130,varname:node_351,prsc:2|A-5937-OUT,B-8443-B,T-4115-OUT;n:type:ShaderForge.SFN_Add,id:3404,x:32416,y:33797,varname:node_3404,prsc:2|A-1398-OUT,B-5205-OUT;n:type:ShaderForge.SFN_Append,id:3544,x:32712,y:33877,varname:node_3544,prsc:2|A-3404-OUT,B-8325-OUT;n:type:ShaderForge.SFN_Normalize,id:1130,x:32883,y:33877,varname:node_1130,prsc:2|IN-3544-OUT;n:type:ShaderForge.SFN_Lerp,id:2960,x:34956,y:34011,varname:node_2960,prsc:2|A-9637-OUT,B-1130-OUT,T-9321-OUT;n:type:ShaderForge.SFN_Vector3,id:9637,x:34747,y:33953,varname:node_9637,prsc:2,v1:0.5,v2:0.5,v3:1;n:type:ShaderForge.SFN_ValueProperty,id:1185,x:34235,y:34161,ptovrint:False,ptlb:EndNormalStrength,ptin:_EndNormalStrength,varname:node_1185,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.5;n:type:ShaderForge.SFN_Lerp,id:9321,x:34600,y:34083,varname:node_9321,prsc:2|A-4873-OUT,B-1185-OUT,T-4115-OUT;n:type:ShaderForge.SFN_ValueProperty,id:4873,x:34235,y:34082,ptovrint:False,ptlb:StartNormalStrength,ptin:_StartNormalStrength,varname:_EndNormalStrength_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.5;proporder:5048-9478-3158-2849-8903-3677-7736-6665-358-1726-5964-4873-6832-9866-578-4634-9211-8443-1185-1819;pass:END;sub:END;*/

Shader "Shader Forge/PBRfader" {
    Properties {
        _Switch ("Switch", Float ) = 1
        _SwitchSlider ("Switch Slider", Range(0, 1)) = 1
        _FadePow ("FadePow", Float ) = 1
        _TexRangeMin ("TexRangeMin", Range(-1, 2)) = 0
        _TexRangeMax ("TexRangeMax", Range(-1, 2)) = 1
        _FadeTex ("FadeTex", 2D) = "white" {}
        _MainTex ("Start Albedo", 2D) = "white" {}
        _StartColor ("Start Color", Color) = (1,1,1,1)
        _StartMetallic ("Start Metallic", Range(0, 1)) = 0
        _StartRoughness ("Start Roughness", 2D) = "white" {}
        _BumpMap ("Start  Normal Map", 2D) = "bump" {}
        _StartNormalStrength ("StartNormalStrength", Float ) = 0.5
        _StartAO ("Start AO", 2D) = "white" {}
        _EndMainTex ("End Albedo", 2D) = "white" {}
        _EndColor ("End Color", Color) = (1,1,1,1)
        _EndMetallic ("End Metallic", Range(0, 1)) = 0
        _EndRoughness ("End Roughness", 2D) = "white" {}
        _EndBumpMap ("End Normal Map", 2D) = "bump" {}
        _EndNormalStrength ("EndNormalStrength", Float ) = 0.5
        _EndAO ("End AO", 2D) = "white" {}
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma only_renderers d3d11 
            #pragma target 3.0
            uniform float4 _StartColor;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform sampler2D _BumpMap; uniform float4 _BumpMap_ST;
            uniform float _StartMetallic;
            uniform sampler2D _StartRoughness; uniform float4 _StartRoughness_ST;
            uniform sampler2D _StartAO; uniform float4 _StartAO_ST;
            uniform float _Switch;
            uniform float4 _EndColor;
            uniform sampler2D _EndMainTex; uniform float4 _EndMainTex_ST;
            uniform sampler2D _EndBumpMap; uniform float4 _EndBumpMap_ST;
            uniform float _EndMetallic;
            uniform sampler2D _EndRoughness; uniform float4 _EndRoughness_ST;
            uniform sampler2D _EndAO; uniform float4 _EndAO_ST;
            uniform sampler2D _FadeTex; uniform float4 _FadeTex_ST;
            uniform float _SwitchSlider;
            uniform float _FadePow;
            uniform float _TexRangeMin;
            uniform float _TexRangeMax;
            uniform float _EndNormalStrength;
            uniform float _StartNormalStrength;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
                float3 normalDir : TEXCOORD4;
                float3 tangentDir : TEXCOORD5;
                float3 bitangentDir : TEXCOORD6;
                LIGHTING_COORDS(7,8)
                UNITY_FOG_COORDS(9)
                #if defined(LIGHTMAP_ON) || defined(UNITY_SHOULD_SAMPLE_SH)
                    float4 ambientOrLightmapUV : TEXCOORD10;
                #endif
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                #ifdef LIGHTMAP_ON
                    o.ambientOrLightmapUV.xy = v.texcoord1.xy * unity_LightmapST.xy + unity_LightmapST.zw;
                    o.ambientOrLightmapUV.zw = 0;
                #elif UNITY_SHOULD_SAMPLE_SH
                #endif
                #ifdef DYNAMICLIGHTMAP_ON
                    o.ambientOrLightmapUV.zw = v.texcoord2.xy * unity_DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
                #endif
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 _BumpMap_var = UnpackNormal(tex2D(_BumpMap,TRANSFORM_TEX(i.uv0, _BumpMap)));
                float4 _FadeTex_var = tex2D(_FadeTex,TRANSFORM_TEX(i.uv0, _FadeTex));
                float node_5892 = 0.0;
                float node_5937 = 1.0;
                float node_1076 = (_Switch*_SwitchSlider);
                float node_456 = saturate(pow(saturate(((node_5892 + ( (_FadeTex_var.r - _TexRangeMin) * (node_5937 - node_5892) ) / (_TexRangeMax - _TexRangeMin))+(node_1076*2.0+-1.0))),_FadePow));
                float3 _EndBumpMap_var = UnpackNormal(tex2D(_EndBumpMap,TRANSFORM_TEX(i.uv0, _EndBumpMap)));
                float node_4115 = (1.0 - node_456);
                float3 normalLocal = lerp(float3(0.5,0.5,1),normalize(float3(((float2(_BumpMap_var.r,_BumpMap_var.g)*node_456)+(float2(_EndBumpMap_var.r,_EndBumpMap_var.g)*node_4115)),(lerp(_BumpMap_var.b,node_5937,node_4115)*lerp(node_5937,_EndBumpMap_var.b,node_4115)))),lerp(_StartNormalStrength,_EndNormalStrength,node_4115));
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float4 _StartRoughness_var = tex2D(_StartRoughness,TRANSFORM_TEX(i.uv0, _StartRoughness));
                float4 _EndRoughness_var = tex2D(_EndRoughness,TRANSFORM_TEX(i.uv0, _EndRoughness));
                float gloss = 1.0 - lerp(_StartRoughness_var.r,_EndRoughness_var.r,node_4115); // Convert roughness to gloss
                float perceptualRoughness = lerp(_StartRoughness_var.r,_EndRoughness_var.r,node_4115);
                float roughness = perceptualRoughness * perceptualRoughness;
                float specPow = exp2( gloss * 10.0 + 1.0 );
/////// GI Data:
                UnityLight light;
                #ifdef LIGHTMAP_OFF
                    light.color = lightColor;
                    light.dir = lightDirection;
                    light.ndotl = LambertTerm (normalDirection, light.dir);
                #else
                    light.color = half3(0.f, 0.f, 0.f);
                    light.ndotl = 0.0f;
                    light.dir = half3(0.f, 0.f, 0.f);
                #endif
                UnityGIInput d;
                d.light = light;
                d.worldPos = i.posWorld.xyz;
                d.worldViewDir = viewDirection;
                d.atten = attenuation;
                #if defined(LIGHTMAP_ON) || defined(DYNAMICLIGHTMAP_ON)
                    d.ambient = 0;
                    d.lightmapUV = i.ambientOrLightmapUV;
                #else
                    d.ambient = i.ambientOrLightmapUV;
                #endif
                #if UNITY_SPECCUBE_BLENDING || UNITY_SPECCUBE_BOX_PROJECTION
                    d.boxMin[0] = unity_SpecCube0_BoxMin;
                    d.boxMin[1] = unity_SpecCube1_BoxMin;
                #endif
                #if UNITY_SPECCUBE_BOX_PROJECTION
                    d.boxMax[0] = unity_SpecCube0_BoxMax;
                    d.boxMax[1] = unity_SpecCube1_BoxMax;
                    d.probePosition[0] = unity_SpecCube0_ProbePosition;
                    d.probePosition[1] = unity_SpecCube1_ProbePosition;
                #endif
                d.probeHDR[0] = unity_SpecCube0_HDR;
                d.probeHDR[1] = unity_SpecCube1_HDR;
                Unity_GlossyEnvironmentData ugls_en_data;
                ugls_en_data.roughness = 1.0 - gloss;
                ugls_en_data.reflUVW = viewReflectDirection;
                UnityGI gi = UnityGlobalIllumination(d, 1, normalDirection, ugls_en_data );
                lightDirection = gi.light.dir;
                lightColor = gi.light.color;
////// Specular:
                float NdotL = saturate(dot( normalDirection, lightDirection ));
                float LdotH = saturate(dot(lightDirection, halfDirection));
                float3 specularColor = lerp(_StartMetallic,_EndMetallic,node_4115);
                float specularMonochrome;
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float4 _EndMainTex_var = tex2D(_EndMainTex,TRANSFORM_TEX(i.uv0, _EndMainTex));
                float3 diffuseColor = lerp((_MainTex_var.rgb*_StartColor.rgb),(_EndMainTex_var.rgb*_EndColor.rgb),node_4115); // Need this for specular when using metallic
                diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, specularColor, specularColor, specularMonochrome );
                specularMonochrome = 1.0-specularMonochrome;
                float NdotV = abs(dot( normalDirection, viewDirection ));
                float NdotH = saturate(dot( normalDirection, halfDirection ));
                float VdotH = saturate(dot( viewDirection, halfDirection ));
                float visTerm = SmithJointGGXVisibilityTerm( NdotL, NdotV, roughness );
                float normTerm = GGXTerm(NdotH, roughness);
                float specularPBL = (visTerm*normTerm) * UNITY_PI;
                #ifdef UNITY_COLORSPACE_GAMMA
                    specularPBL = sqrt(max(1e-4h, specularPBL));
                #endif
                specularPBL = max(0, specularPBL * NdotL);
                #if defined(_SPECULARHIGHLIGHTS_OFF)
                    specularPBL = 0.0;
                #endif
                half surfaceReduction;
                #ifdef UNITY_COLORSPACE_GAMMA
                    surfaceReduction = 1.0-0.28*roughness*perceptualRoughness;
                #else
                    surfaceReduction = 1.0/(roughness*roughness + 1.0);
                #endif
                specularPBL *= any(specularColor) ? 1.0 : 0.0;
                float3 directSpecular = attenColor*specularPBL*FresnelTerm(specularColor, LdotH);
                half grazingTerm = saturate( gloss + specularMonochrome );
                float3 indirectSpecular = (gi.indirect.specular);
                indirectSpecular *= FresnelLerp (specularColor, grazingTerm, NdotV);
                indirectSpecular *= surfaceReduction;
                float3 specular = (directSpecular + indirectSpecular);
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                half fd90 = 0.5 + 2 * LdotH * LdotH * (1-gloss);
                float nlPow5 = Pow5(1-NdotL);
                float nvPow5 = Pow5(1-NdotV);
                float3 directDiffuse = ((1 +(fd90 - 1)*nlPow5) * (1 + (fd90 - 1)*nvPow5) * NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += gi.indirect.diffuse;
                float4 _EndAO_var = tex2D(_EndAO,TRANSFORM_TEX(i.uv0, _EndAO));
                float4 _StartAO_var = tex2D(_StartAO,TRANSFORM_TEX(i.uv0, _StartAO));
                indirectDiffuse *= lerp(_EndAO_var.r,_StartAO_var.r,node_4115); // Diffuse AO
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma only_renderers d3d11 
            #pragma target 3.0
            uniform float4 _StartColor;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform sampler2D _BumpMap; uniform float4 _BumpMap_ST;
            uniform float _StartMetallic;
            uniform sampler2D _StartRoughness; uniform float4 _StartRoughness_ST;
            uniform float _Switch;
            uniform float4 _EndColor;
            uniform sampler2D _EndMainTex; uniform float4 _EndMainTex_ST;
            uniform sampler2D _EndBumpMap; uniform float4 _EndBumpMap_ST;
            uniform float _EndMetallic;
            uniform sampler2D _EndRoughness; uniform float4 _EndRoughness_ST;
            uniform sampler2D _FadeTex; uniform float4 _FadeTex_ST;
            uniform float _SwitchSlider;
            uniform float _FadePow;
            uniform float _TexRangeMin;
            uniform float _TexRangeMax;
            uniform float _EndNormalStrength;
            uniform float _StartNormalStrength;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
                float3 normalDir : TEXCOORD4;
                float3 tangentDir : TEXCOORD5;
                float3 bitangentDir : TEXCOORD6;
                LIGHTING_COORDS(7,8)
                UNITY_FOG_COORDS(9)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 _BumpMap_var = UnpackNormal(tex2D(_BumpMap,TRANSFORM_TEX(i.uv0, _BumpMap)));
                float4 _FadeTex_var = tex2D(_FadeTex,TRANSFORM_TEX(i.uv0, _FadeTex));
                float node_5892 = 0.0;
                float node_5937 = 1.0;
                float node_1076 = (_Switch*_SwitchSlider);
                float node_456 = saturate(pow(saturate(((node_5892 + ( (_FadeTex_var.r - _TexRangeMin) * (node_5937 - node_5892) ) / (_TexRangeMax - _TexRangeMin))+(node_1076*2.0+-1.0))),_FadePow));
                float3 _EndBumpMap_var = UnpackNormal(tex2D(_EndBumpMap,TRANSFORM_TEX(i.uv0, _EndBumpMap)));
                float node_4115 = (1.0 - node_456);
                float3 normalLocal = lerp(float3(0.5,0.5,1),normalize(float3(((float2(_BumpMap_var.r,_BumpMap_var.g)*node_456)+(float2(_EndBumpMap_var.r,_EndBumpMap_var.g)*node_4115)),(lerp(_BumpMap_var.b,node_5937,node_4115)*lerp(node_5937,_EndBumpMap_var.b,node_4115)))),lerp(_StartNormalStrength,_EndNormalStrength,node_4115));
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float4 _StartRoughness_var = tex2D(_StartRoughness,TRANSFORM_TEX(i.uv0, _StartRoughness));
                float4 _EndRoughness_var = tex2D(_EndRoughness,TRANSFORM_TEX(i.uv0, _EndRoughness));
                float gloss = 1.0 - lerp(_StartRoughness_var.r,_EndRoughness_var.r,node_4115); // Convert roughness to gloss
                float perceptualRoughness = lerp(_StartRoughness_var.r,_EndRoughness_var.r,node_4115);
                float roughness = perceptualRoughness * perceptualRoughness;
                float specPow = exp2( gloss * 10.0 + 1.0 );
////// Specular:
                float NdotL = saturate(dot( normalDirection, lightDirection ));
                float LdotH = saturate(dot(lightDirection, halfDirection));
                float3 specularColor = lerp(_StartMetallic,_EndMetallic,node_4115);
                float specularMonochrome;
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float4 _EndMainTex_var = tex2D(_EndMainTex,TRANSFORM_TEX(i.uv0, _EndMainTex));
                float3 diffuseColor = lerp((_MainTex_var.rgb*_StartColor.rgb),(_EndMainTex_var.rgb*_EndColor.rgb),node_4115); // Need this for specular when using metallic
                diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, specularColor, specularColor, specularMonochrome );
                specularMonochrome = 1.0-specularMonochrome;
                float NdotV = abs(dot( normalDirection, viewDirection ));
                float NdotH = saturate(dot( normalDirection, halfDirection ));
                float VdotH = saturate(dot( viewDirection, halfDirection ));
                float visTerm = SmithJointGGXVisibilityTerm( NdotL, NdotV, roughness );
                float normTerm = GGXTerm(NdotH, roughness);
                float specularPBL = (visTerm*normTerm) * UNITY_PI;
                #ifdef UNITY_COLORSPACE_GAMMA
                    specularPBL = sqrt(max(1e-4h, specularPBL));
                #endif
                specularPBL = max(0, specularPBL * NdotL);
                #if defined(_SPECULARHIGHLIGHTS_OFF)
                    specularPBL = 0.0;
                #endif
                specularPBL *= any(specularColor) ? 1.0 : 0.0;
                float3 directSpecular = attenColor*specularPBL*FresnelTerm(specularColor, LdotH);
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                half fd90 = 0.5 + 2 * LdotH * LdotH * (1-gloss);
                float nlPow5 = Pow5(1-NdotL);
                float nvPow5 = Pow5(1-NdotV);
                float3 directDiffuse = ((1 +(fd90 - 1)*nlPow5) * (1 + (fd90 - 1)*nvPow5) * NdotL) * attenColor;
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                fixed4 finalRGBA = fixed4(finalColor * 1,0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "Meta"
            Tags {
                "LightMode"="Meta"
            }
            Cull Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_META 1
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #include "UnityMetaPass.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma only_renderers d3d11 
            #pragma target 3.0
            uniform float4 _StartColor;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float _StartMetallic;
            uniform sampler2D _StartRoughness; uniform float4 _StartRoughness_ST;
            uniform float _Switch;
            uniform float4 _EndColor;
            uniform sampler2D _EndMainTex; uniform float4 _EndMainTex_ST;
            uniform float _EndMetallic;
            uniform sampler2D _EndRoughness; uniform float4 _EndRoughness_ST;
            uniform sampler2D _FadeTex; uniform float4 _FadeTex_ST;
            uniform float _SwitchSlider;
            uniform float _FadePow;
            uniform float _TexRangeMin;
            uniform float _TexRangeMax;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityMetaVertexPosition(v.vertex, v.texcoord1.xy, v.texcoord2.xy, unity_LightmapST, unity_DynamicLightmapST );
                return o;
            }
            float4 frag(VertexOutput i) : SV_Target {
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                UnityMetaInput o;
                UNITY_INITIALIZE_OUTPUT( UnityMetaInput, o );
                
                o.Emission = 0;
                
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float4 _EndMainTex_var = tex2D(_EndMainTex,TRANSFORM_TEX(i.uv0, _EndMainTex));
                float4 _FadeTex_var = tex2D(_FadeTex,TRANSFORM_TEX(i.uv0, _FadeTex));
                float node_5892 = 0.0;
                float node_5937 = 1.0;
                float node_1076 = (_Switch*_SwitchSlider);
                float node_456 = saturate(pow(saturate(((node_5892 + ( (_FadeTex_var.r - _TexRangeMin) * (node_5937 - node_5892) ) / (_TexRangeMax - _TexRangeMin))+(node_1076*2.0+-1.0))),_FadePow));
                float node_4115 = (1.0 - node_456);
                float3 diffColor = lerp((_MainTex_var.rgb*_StartColor.rgb),(_EndMainTex_var.rgb*_EndColor.rgb),node_4115);
                float specularMonochrome;
                float3 specColor;
                diffColor = DiffuseAndSpecularFromMetallic( diffColor, lerp(_StartMetallic,_EndMetallic,node_4115), specColor, specularMonochrome );
                float4 _StartRoughness_var = tex2D(_StartRoughness,TRANSFORM_TEX(i.uv0, _StartRoughness));
                float4 _EndRoughness_var = tex2D(_EndRoughness,TRANSFORM_TEX(i.uv0, _EndRoughness));
                float roughness = lerp(_StartRoughness_var.r,_EndRoughness_var.r,node_4115);
                o.Albedo = diffColor + specColor * roughness * roughness * 0.5;
                
                return UnityMetaFragment( o );
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
