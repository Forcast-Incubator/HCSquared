// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'
// Upgrade NOTE: replaced '_World2Object' with 'unity_WorldToObject'
// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.06 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.06;sub:START;pass:START;ps:flbk:,lico:1,lgpr:1,nrmq:0,limd:0,uamb:True,mssp:True,lmpd:False,lprd:False,rprd:False,enco:False,frtr:True,vitr:True,dbil:False,rmgx:True,rpth:0,hqsc:False,hqlp:False,tesm:0,blpr:0,bsrc:0,bdst:1,culm:0,dpts:2,wrdp:True,dith:2,ufog:True,aust:False,igpj:True,qofs:0,qpre:2,rntp:3,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:3209,x:34394,y:31877,varname:node_3209,prsc:2|normal-8845-RGB,custl-8699-OUT,clip-3405-OUT;n:type:ShaderForge.SFN_LightVector,id:8277,x:30749,y:31782,varname:node_8277,prsc:2;n:type:ShaderForge.SFN_Dot,id:9278,x:32520,y:31750,varname:node_9278,prsc:2,dt:4|A-4095-OUT,B-4291-OUT;n:type:ShaderForge.SFN_Clamp01,id:7250,x:33061,y:31750,varname:node_7250,prsc:2|IN-3368-OUT;n:type:ShaderForge.SFN_Power,id:2942,x:32719,y:31750,varname:node_2942,prsc:2|VAL-9278-OUT,EXP-4518-OUT;n:type:ShaderForge.SFN_ValueProperty,id:4518,x:32520,y:31903,ptovrint:False,ptlb:Powah,ptin:_Powah,varname:node_4518,prsc:2,glob:False,v1:0.83;n:type:ShaderForge.SFN_LightColor,id:4909,x:32893,y:31431,varname:node_4909,prsc:2;n:type:ShaderForge.SFN_Multiply,id:4029,x:33929,y:31880,varname:node_4029,prsc:2|A-3637-OUT,B-4030-OUT,C-7250-OUT,D-8958-OUT;n:type:ShaderForge.SFN_AmbientLight,id:2122,x:32893,y:31554,varname:node_2122,prsc:2;n:type:ShaderForge.SFN_Add,id:3637,x:33109,y:31569,varname:node_3637,prsc:2|A-4909-RGB,B-2122-RGB;n:type:ShaderForge.SFN_Tex2d,id:4399,x:33305,y:31853,ptovrint:False,ptlb:Texture,ptin:_Texture,varname:node_4399,prsc:2,ntxv:0,isnm:False;n:type:ShaderForge.SFN_RemapRange,id:3368,x:32882,y:31750,varname:node_3368,prsc:2,frmn:0,frmx:1,tomn:-32,tomx:9|IN-2942-OUT;n:type:ShaderForge.SFN_Clamp01,id:5345,x:33064,y:31965,varname:node_5345,prsc:2|IN-9669-OUT;n:type:ShaderForge.SFN_Power,id:2809,x:32719,y:31965,varname:node_2809,prsc:2|VAL-7914-OUT,EXP-6320-OUT;n:type:ShaderForge.SFN_ValueProperty,id:6320,x:32520,y:32138,ptovrint:False,ptlb:hilijt powa,ptin:_hilijtpowa,varname:_Powah_copy,prsc:2,glob:False,v1:28;n:type:ShaderForge.SFN_LightAttenuation,id:4030,x:33600,y:31612,varname:node_4030,prsc:2;n:type:ShaderForge.SFN_RemapRange,id:9669,x:32882,y:31965,varname:node_9669,prsc:2,frmn:0,frmx:1,tomn:-20,tomx:20|IN-2809-OUT;n:type:ShaderForge.SFN_Multiply,id:658,x:33929,y:32014,varname:node_658,prsc:2|A-3637-OUT,B-4030-OUT,C-5345-OUT,D-5532-OUT;n:type:ShaderForge.SFN_Add,id:8699,x:34134,y:31981,varname:node_8699,prsc:2|A-4029-OUT,B-658-OUT;n:type:ShaderForge.SFN_Dot,id:7914,x:32520,y:31965,varname:node_7914,prsc:2,dt:4|A-4095-OUT,B-5269-OUT;n:type:ShaderForge.SFN_NormalVector,id:4291,x:32106,y:32114,prsc:2,pt:True;n:type:ShaderForge.SFN_Lerp,id:5269,x:32331,y:32071,varname:node_5269,prsc:2|A-4095-OUT,B-4291-OUT,T-8483-OUT;n:type:ShaderForge.SFN_Vector1,id:8483,x:32106,y:32272,varname:node_8483,prsc:2,v1:0.25;n:type:ShaderForge.SFN_ViewVector,id:7716,x:30560,y:31915,varname:node_7716,prsc:2;n:type:ShaderForge.SFN_Negate,id:1264,x:30735,y:31961,varname:node_1264,prsc:2|IN-7716-OUT;n:type:ShaderForge.SFN_ComponentMask,id:2466,x:30936,y:31840,varname:node_2466,prsc:2,cc1:0,cc2:1,cc3:2,cc4:-1|IN-8277-OUT;n:type:ShaderForge.SFN_Rotator,id:2085,x:31747,y:31971,varname:node_2085,prsc:2|UVIN-7659-OUT,ANG-7372-OUT;n:type:ShaderForge.SFN_Append,id:7659,x:31126,y:31906,varname:node_7659,prsc:2|A-2466-R,B-2466-B;n:type:ShaderForge.SFN_Multiply,id:7372,x:31550,y:32074,varname:node_7372,prsc:2|A-3421-OUT,B-4767-OUT,C-8189-OUT;n:type:ShaderForge.SFN_Pi,id:4767,x:31319,y:32186,varname:node_4767,prsc:2;n:type:ShaderForge.SFN_Append,id:4095,x:32106,y:31971,varname:node_4095,prsc:2|A-512-R,B-2455-OUT,C-512-G;n:type:ShaderForge.SFN_ComponentMask,id:512,x:31907,y:31971,varname:node_512,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-2085-UVOUT;n:type:ShaderForge.SFN_Dot,id:3421,x:31303,y:32042,varname:node_3421,prsc:2,dt:0|A-7659-OUT,B-7261-OUT;n:type:ShaderForge.SFN_ComponentMask,id:8837,x:30936,y:32017,varname:node_8837,prsc:2,cc1:0,cc2:1,cc3:2,cc4:-1|IN-1264-OUT;n:type:ShaderForge.SFN_Append,id:7261,x:31126,y:32074,varname:node_7261,prsc:2|A-8837-R,B-8837-B;n:type:ShaderForge.SFN_Lerp,id:2455,x:31852,y:31834,varname:node_2455,prsc:2|A-2466-G,B-8837-G,T-8189-OUT;n:type:ShaderForge.SFN_RemapRange,id:977,x:30876,y:32206,varname:node_977,prsc:2,frmn:0,frmx:1,tomn:0,tomx:2|IN-8040-OUT;n:type:ShaderForge.SFN_Tex2d,id:8438,x:33192,y:32529,ptovrint:False,ptlb:Mask1,ptin:_Mask1,varname:node_8438,prsc:2,tex:e950636c300acaa45a3365cbe5b186ab,ntxv:0,isnm:False|UVIN-6205-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:8698,x:31809,y:32484,varname:node_8698,prsc:2;n:type:ShaderForge.SFN_Tex2d,id:3617,x:33363,y:32737,ptovrint:False,ptlb:Mask2,ptin:_Mask2,varname:node_3617,prsc:2,tex:98d35e2295781ca478cd8f67b75955ab,ntxv:0,isnm:False|UVIN-6205-OUT;n:type:ShaderForge.SFN_ComponentMask,id:5760,x:32375,y:32558,varname:node_5760,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-5738-XYZ;n:type:ShaderForge.SFN_Transform,id:5738,x:32170,y:32551,varname:node_5738,prsc:2,tffrom:0,tfto:1|IN-1976-OUT;n:type:ShaderForge.SFN_ObjectPosition,id:1263,x:31809,y:32615,varname:node_1263,prsc:2;n:type:ShaderForge.SFN_Subtract,id:1976,x:32010,y:32551,varname:node_1976,prsc:2|A-8698-XYZ,B-1263-XYZ;n:type:ShaderForge.SFN_Add,id:2339,x:32556,y:32628,varname:node_2339,prsc:2|A-5760-G,B-2402-OUT;n:type:ShaderForge.SFN_Append,id:6205,x:32938,y:32622,varname:node_6205,prsc:2|A-5760-R,B-5173-OUT;n:type:ShaderForge.SFN_Divide,id:5173,x:32755,y:32681,varname:node_5173,prsc:2|A-2339-OUT,B-6459-OUT;n:type:ShaderForge.SFN_Step,id:7544,x:33893,y:32817,varname:node_7544,prsc:2|A-2766-OUT,B-3454-OUT;n:type:ShaderForge.SFN_OneMinus,id:3405,x:34077,y:32781,varname:node_3405,prsc:2|IN-7544-OUT;n:type:ShaderForge.SFN_RemapRange,id:6498,x:33507,y:32873,varname:node_6498,prsc:2,frmn:0.3,frmx:1,tomn:0,tomx:1|IN-8040-OUT;n:type:ShaderForge.SFN_Clamp01,id:3454,x:33699,y:32873,varname:node_3454,prsc:2|IN-6498-OUT;n:type:ShaderForge.SFN_Vector1,id:2402,x:32375,y:32714,varname:node_2402,prsc:2,v1:-1;n:type:ShaderForge.SFN_Vector1,id:6459,x:32556,y:32763,varname:node_6459,prsc:2,v1:2.2;n:type:ShaderForge.SFN_ConstantClamp,id:8189,x:31104,y:32206,varname:node_8189,prsc:2,min:0,max:0.95|IN-977-OUT;n:type:ShaderForge.SFN_Multiply,id:2766,x:33699,y:32674,varname:node_2766,prsc:2|A-6598-OUT,B-3617-B;n:type:ShaderForge.SFN_RemapRange,id:9273,x:33363,y:32556,varname:node_9273,prsc:2,frmn:0,frmx:1,tomn:0.2,tomx:1|IN-8438-B;n:type:ShaderForge.SFN_Clamp01,id:6598,x:33530,y:32573,varname:node_6598,prsc:2|IN-9273-OUT;n:type:ShaderForge.SFN_ValueProperty,id:8040,x:30624,y:32580,ptovrint:False,ptlb:fade,ptin:_fade,varname:node_8040,prsc:2,glob:False,v1:0.8;n:type:ShaderForge.SFN_Vector1,id:2299,x:33269,y:32104,varname:node_2299,prsc:2,v1:0;n:type:ShaderForge.SFN_Lerp,id:8958,x:33539,y:31902,varname:node_8958,prsc:2|A-4399-RGB,B-2299-OUT,T-462-OUT;n:type:ShaderForge.SFN_Lerp,id:5532,x:33539,y:32098,varname:node_5532,prsc:2|A-4399-A,B-2299-OUT,T-462-OUT;n:type:ShaderForge.SFN_RemapRange,id:3033,x:33064,y:32190,varname:node_3033,prsc:2,frmn:0,frmx:0.3,tomn:0,tomx:1|IN-8040-OUT;n:type:ShaderForge.SFN_Clamp01,id:462,x:33269,y:32163,varname:node_462,prsc:2|IN-3033-OUT;n:type:ShaderForge.SFN_Panner,id:5656,x:33717,y:31375,varname:node_5656,prsc:2,spu:0.65,spv:0|UVIN-5760-OUT,DIST-4613-TSL;n:type:ShaderForge.SFN_Time,id:4613,x:33492,y:31385,varname:node_4613,prsc:2;n:type:ShaderForge.SFN_Tex2d,id:8845,x:33927,y:31404,ptovrint:False,ptlb:Normal,ptin:_Normal,varname:node_2289,prsc:2,ntxv:3,isnm:True|UVIN-5656-UVOUT;proporder:4518-4399-6320-8438-3617-8040-8845;pass:END;sub:END;*/

Shader "Carpathia/Character" {
    Properties {
        _Powah ("Powah", Float ) = 0.83
        _Texture ("Texture", 2D) = "white" {}
        _hilijtpowa ("hilijt powa", Float ) = 28
        _Mask1 ("Mask1", 2D) = "white" {}
        _Mask2 ("Mask2", 2D) = "white" {}
        _fade ("fade", Float ) = 0.8
        _Normal ("Normal", 2D) = "bump" {}
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="AlphaTest"
            "RenderType"="TransparentCutout"
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
            #include "Lighting.cginc"
            #pragma multi_compile_fwdbase
            #pragma exclude_renderers xbox360 ps3 flash d3d11_9x 
            #pragma target 3.0
            // Dithering function, to use with scene UVs (screen pixel coords)
            // 3x3 Bayer matrix, based on https://en.wikipedia.org/wiki/Ordered_dithering
            float BinaryDither3x3( float value, float2 sceneUVs ) {
                float3x3 mtx = float3x3(
                    float3( 3,  7,  4 )/10.0,
                    float3( 6,  1,  9 )/10.0,
                    float3( 2,  8,  5 )/10.0
                );
                float2 px = floor(_ScreenParams.xy * sceneUVs);
                int xSmp = fmod(px.x,3);
                int ySmp = fmod(px.y,3);
                float3 xVec = 1-saturate(abs(float3(0,1,2) - xSmp));
                float3 yVec = 1-saturate(abs(float3(0,1,2) - ySmp));
                float3 pxMult = float3( dot(mtx[0],yVec), dot(mtx[1],yVec), dot(mtx[2],yVec) );
                return round(value + dot(pxMult, xVec));
            }
            uniform float4 _TimeEditor;
            uniform float _Powah;
            uniform sampler2D _Texture; uniform float4 _Texture_ST;
            uniform float _hilijtpowa;
            uniform sampler2D _Mask1; uniform float4 _Mask1_ST;
            uniform sampler2D _Mask2; uniform float4 _Mask2_ST;
            uniform float _fade;
            uniform sampler2D _Normal; uniform float4 _Normal_ST;
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
                float4 screenPos : TEXCOORD5;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = mul(unity_ObjectToWorld, float4(v.normal,0)).xyz;
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.binormalDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos(v.vertex);
                o.screenPos = float4( o.pos.xy / o.pos.w, 0, 0 );
                o.screenPos.y *= _ProjectionParams.x;
                return o;
            }
            fixed4 frag(VertexOutput i) : COLOR {
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                #if UNITY_UV_STARTS_AT_TOP
                    float grabSign = -_ProjectionParams.x;
                #else
                    float grabSign = _ProjectionParams.x;
                #endif
                float2 sceneUVs = float2(1,grabSign)*i.screenPos.xy*0.5+0.5;
                float3x3 tangentTransform = float3x3( i.tangentDir, i.binormalDir, i.normalDir);
/////// Vectors:
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float4 node_4613 = _Time + _TimeEditor;
                float2 node_5760 = mul( unity_WorldToObject, float4((i.posWorld.rgb-objPos.rgb),0) ).xyz.rgb.rg;
                float2 node_5656 = (node_5760+node_4613.r*float2(0.65,0));
                float3 _Normal_var = UnpackNormal(tex2D(_Normal,TRANSFORM_TEX(node_5656, _Normal)));
                float3 normalLocal = _Normal_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float2 node_6205 = float2(node_5760.r,((node_5760.g+(-1.0))/2.2));
                float4 _Mask1_var = tex2D(_Mask1,TRANSFORM_TEX(node_6205, _Mask1));
                float4 _Mask2_var = tex2D(_Mask2,TRANSFORM_TEX(node_6205, _Mask2));
                clip( BinaryDither3x3((1.0 - step((saturate((_Mask1_var.b*0.8+0.2))*_Mask2_var.b),saturate((_fade*1.428571+-0.4285715)))) - 1.5, sceneUVs) );
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = 1;
                float3 node_3637 = (_LightColor0.rgb+UNITY_LIGHTMODEL_AMBIENT.rgb);
                float3 node_2466 = lightDirection.rgb;
                float2 node_7659 = float2(node_2466.r,node_2466.b);
                float3 node_8837 = (-1*viewDirection).rgb;
                float node_8189 = clamp((_fade*2.0+0.0),0,0.95);
                float node_2085_ang = (dot(node_7659,float2(node_8837.r,node_8837.b))*3.141592654*node_8189);
                float node_2085_spd = 1.0;
                float node_2085_cos = cos(node_2085_spd*node_2085_ang);
                float node_2085_sin = sin(node_2085_spd*node_2085_ang);
                float2 node_2085_piv = float2(0.5,0.5);
                float2 node_2085 = (mul(node_7659-node_2085_piv,float2x2( node_2085_cos, -node_2085_sin, node_2085_sin, node_2085_cos))+node_2085_piv);
                float2 node_512 = node_2085.rg;
                float3 node_4095 = float3(node_512.r,lerp(node_2466.g,node_8837.g,node_8189),node_512.g);
                float4 _Texture_var = tex2D(_Texture,TRANSFORM_TEX(i.uv0, _Texture));
                float node_2299 = 0.0;
                float node_462 = saturate((_fade*3.333333+0.0));
                float3 finalColor = ((node_3637*attenuation*saturate((pow(0.5*dot(node_4095,normalDirection)+0.5,_Powah)*41.0+-32.0))*lerp(_Texture_var.rgb,float3(node_2299,node_2299,node_2299),node_462))+(node_3637*attenuation*saturate((pow(0.5*dot(node_4095,lerp(node_4095,normalDirection,0.25))+0.5,_hilijtpowa)*40.0+-20.0))*lerp(_Texture_var.a,node_2299,node_462)));
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
            #pragma multi_compile_fwdadd
            #pragma exclude_renderers xbox360 ps3 flash d3d11_9x 
            #pragma target 3.0
            // Dithering function, to use with scene UVs (screen pixel coords)
            // 3x3 Bayer matrix, based on https://en.wikipedia.org/wiki/Ordered_dithering
            float BinaryDither3x3( float value, float2 sceneUVs ) {
                float3x3 mtx = float3x3(
                    float3( 3,  7,  4 )/10.0,
                    float3( 6,  1,  9 )/10.0,
                    float3( 2,  8,  5 )/10.0
                );
                float2 px = floor(_ScreenParams.xy * sceneUVs);
                int xSmp = fmod(px.x,3);
                int ySmp = fmod(px.y,3);
                float3 xVec = 1-saturate(abs(float3(0,1,2) - xSmp));
                float3 yVec = 1-saturate(abs(float3(0,1,2) - ySmp));
                float3 pxMult = float3( dot(mtx[0],yVec), dot(mtx[1],yVec), dot(mtx[2],yVec) );
                return round(value + dot(pxMult, xVec));
            }
            uniform float4 _TimeEditor;
            uniform float _Powah;
            uniform sampler2D _Texture; uniform float4 _Texture_ST;
            uniform float _hilijtpowa;
            uniform sampler2D _Mask1; uniform float4 _Mask1_ST;
            uniform sampler2D _Mask2; uniform float4 _Mask2_ST;
            uniform float _fade;
            uniform sampler2D _Normal; uniform float4 _Normal_ST;
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
                float4 screenPos : TEXCOORD5;
                LIGHTING_COORDS(6,7)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = mul(unity_ObjectToWorld, float4(v.normal,0)).xyz;
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.binormalDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos(v.vertex);
                o.screenPos = float4( o.pos.xy / o.pos.w, 0, 0 );
                o.screenPos.y *= _ProjectionParams.x;
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            fixed4 frag(VertexOutput i) : COLOR {
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                #if UNITY_UV_STARTS_AT_TOP
                    float grabSign = -_ProjectionParams.x;
                #else
                    float grabSign = _ProjectionParams.x;
                #endif
                float2 sceneUVs = float2(1,grabSign)*i.screenPos.xy*0.5+0.5;
                float3x3 tangentTransform = float3x3( i.tangentDir, i.binormalDir, i.normalDir);
/////// Vectors:
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float4 node_4613 = _Time + _TimeEditor;
                float2 node_5760 = mul( unity_WorldToObject, float4((i.posWorld.rgb-objPos.rgb),0) ).xyz.rgb.rg;
                float2 node_5656 = (node_5760+node_4613.r*float2(0.65,0));
                float3 _Normal_var = UnpackNormal(tex2D(_Normal,TRANSFORM_TEX(node_5656, _Normal)));
                float3 normalLocal = _Normal_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float2 node_6205 = float2(node_5760.r,((node_5760.g+(-1.0))/2.2));
                float4 _Mask1_var = tex2D(_Mask1,TRANSFORM_TEX(node_6205, _Mask1));
                float4 _Mask2_var = tex2D(_Mask2,TRANSFORM_TEX(node_6205, _Mask2));
                clip( BinaryDither3x3((1.0 - step((saturate((_Mask1_var.b*0.8+0.2))*_Mask2_var.b),saturate((_fade*1.428571+-0.4285715)))) - 1.5, sceneUVs) );
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 node_3637 = (_LightColor0.rgb+UNITY_LIGHTMODEL_AMBIENT.rgb);
                float3 node_2466 = lightDirection.rgb;
                float2 node_7659 = float2(node_2466.r,node_2466.b);
                float3 node_8837 = (-1*viewDirection).rgb;
                float node_8189 = clamp((_fade*2.0+0.0),0,0.95);
                float node_2085_ang = (dot(node_7659,float2(node_8837.r,node_8837.b))*3.141592654*node_8189);
                float node_2085_spd = 1.0;
                float node_2085_cos = cos(node_2085_spd*node_2085_ang);
                float node_2085_sin = sin(node_2085_spd*node_2085_ang);
                float2 node_2085_piv = float2(0.5,0.5);
                float2 node_2085 = (mul(node_7659-node_2085_piv,float2x2( node_2085_cos, -node_2085_sin, node_2085_sin, node_2085_cos))+node_2085_piv);
                float2 node_512 = node_2085.rg;
                float3 node_4095 = float3(node_512.r,lerp(node_2466.g,node_8837.g,node_8189),node_512.g);
                float4 _Texture_var = tex2D(_Texture,TRANSFORM_TEX(i.uv0, _Texture));
                float node_2299 = 0.0;
                float node_462 = saturate((_fade*3.333333+0.0));
                float3 finalColor = ((node_3637*attenuation*saturate((pow(0.5*dot(node_4095,normalDirection)+0.5,_Powah)*41.0+-32.0))*lerp(_Texture_var.rgb,float3(node_2299,node_2299,node_2299),node_462))+(node_3637*attenuation*saturate((pow(0.5*dot(node_4095,lerp(node_4095,normalDirection,0.25))+0.5,_hilijtpowa)*40.0+-20.0))*lerp(_Texture_var.a,node_2299,node_462)));
                return fixed4(finalColor * 1,0);
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
            // Dithering function, to use with scene UVs (screen pixel coords)
            // 3x3 Bayer matrix, based on https://en.wikipedia.org/wiki/Ordered_dithering
            float BinaryDither3x3( float value, float2 sceneUVs ) {
                float3x3 mtx = float3x3(
                    float3( 3,  7,  4 )/10.0,
                    float3( 6,  1,  9 )/10.0,
                    float3( 2,  8,  5 )/10.0
                );
                float2 px = floor(_ScreenParams.xy * sceneUVs);
                int xSmp = fmod(px.x,3);
                int ySmp = fmod(px.y,3);
                float3 xVec = 1-saturate(abs(float3(0,1,2) - xSmp));
                float3 yVec = 1-saturate(abs(float3(0,1,2) - ySmp));
                float3 pxMult = float3( dot(mtx[0],yVec), dot(mtx[1],yVec), dot(mtx[2],yVec) );
                return round(value + dot(pxMult, xVec));
            }
            uniform sampler2D _Mask1; uniform float4 _Mask1_ST;
            uniform sampler2D _Mask2; uniform float4 _Mask2_ST;
            uniform float _fade;
            struct VertexInput {
                float4 vertex : POSITION;
            };
            struct VertexOutput {
                V2F_SHADOW_COLLECTOR;
                float4 posWorld : TEXCOORD5;
                float4 screenPos : TEXCOORD6;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos(v.vertex);
                o.screenPos = float4( o.pos.xy / o.pos.w, 0, 0 );
                o.screenPos.y *= _ProjectionParams.x;
                TRANSFER_SHADOW_COLLECTOR(o)
                return o;
            }
            fixed4 frag(VertexOutput i) : COLOR {
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                #if UNITY_UV_STARTS_AT_TOP
                    float grabSign = -_ProjectionParams.x;
                #else
                    float grabSign = _ProjectionParams.x;
                #endif
                float2 sceneUVs = float2(1,grabSign)*i.screenPos.xy*0.5+0.5;
/////// Vectors:
                float2 node_5760 = mul( unity_WorldToObject, float4((i.posWorld.rgb-objPos.rgb),0) ).xyz.rgb.rg;
                float2 node_6205 = float2(node_5760.r,((node_5760.g+(-1.0))/2.2));
                float4 _Mask1_var = tex2D(_Mask1,TRANSFORM_TEX(node_6205, _Mask1));
                float4 _Mask2_var = tex2D(_Mask2,TRANSFORM_TEX(node_6205, _Mask2));
                clip( BinaryDither3x3((1.0 - step((saturate((_Mask1_var.b*0.8+0.2))*_Mask2_var.b),saturate((_fade*1.428571+-0.4285715)))) - 1.5, sceneUVs) );
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
            // Dithering function, to use with scene UVs (screen pixel coords)
            // 3x3 Bayer matrix, based on https://en.wikipedia.org/wiki/Ordered_dithering
            float BinaryDither3x3( float value, float2 sceneUVs ) {
                float3x3 mtx = float3x3(
                    float3( 3,  7,  4 )/10.0,
                    float3( 6,  1,  9 )/10.0,
                    float3( 2,  8,  5 )/10.0
                );
                float2 px = floor(_ScreenParams.xy * sceneUVs);
                int xSmp = fmod(px.x,3);
                int ySmp = fmod(px.y,3);
                float3 xVec = 1-saturate(abs(float3(0,1,2) - xSmp));
                float3 yVec = 1-saturate(abs(float3(0,1,2) - ySmp));
                float3 pxMult = float3( dot(mtx[0],yVec), dot(mtx[1],yVec), dot(mtx[2],yVec) );
                return round(value + dot(pxMult, xVec));
            }
            uniform sampler2D _Mask1; uniform float4 _Mask1_ST;
            uniform sampler2D _Mask2; uniform float4 _Mask2_ST;
            uniform float _fade;
            struct VertexInput {
                float4 vertex : POSITION;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float4 posWorld : TEXCOORD1;
                float4 screenPos : TEXCOORD2;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos(v.vertex);
                o.screenPos = float4( o.pos.xy / o.pos.w, 0, 0 );
                o.screenPos.y *= _ProjectionParams.x;
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            fixed4 frag(VertexOutput i) : COLOR {
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                #if UNITY_UV_STARTS_AT_TOP
                    float grabSign = -_ProjectionParams.x;
                #else
                    float grabSign = _ProjectionParams.x;
                #endif
                float2 sceneUVs = float2(1,grabSign)*i.screenPos.xy*0.5+0.5;
/////// Vectors:
                float2 node_5760 = mul( unity_WorldToObject, float4((i.posWorld.rgb-objPos.rgb),0) ).xyz.rgb.rg;
                float2 node_6205 = float2(node_5760.r,((node_5760.g+(-1.0))/2.2));
                float4 _Mask1_var = tex2D(_Mask1,TRANSFORM_TEX(node_6205, _Mask1));
                float4 _Mask2_var = tex2D(_Mask2,TRANSFORM_TEX(node_6205, _Mask2));
                clip( BinaryDither3x3((1.0 - step((saturate((_Mask1_var.b*0.8+0.2))*_Mask2_var.b),saturate((_fade*1.428571+-0.4285715)))) - 1.5, sceneUVs) );
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
