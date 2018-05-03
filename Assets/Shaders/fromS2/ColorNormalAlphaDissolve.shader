// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'
// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.06 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.06;sub:START;pass:START;ps:flbk:,lico:1,lgpr:1,nrmq:1,limd:0,uamb:True,mssp:True,lmpd:False,lprd:False,rprd:False,enco:False,frtr:True,vitr:True,dbil:False,rmgx:True,rpth:0,hqsc:False,hqlp:False,tesm:0,blpr:0,bsrc:0,bdst:1,culm:2,dpts:2,wrdp:True,dith:0,ufog:True,aust:True,igpj:False,qofs:0,qpre:2,rntp:3,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:3209,x:33053,y:33120,varname:node_3209,prsc:2|normal-8487-RGB,custl-7634-OUT,clip-1083-OUT;n:type:ShaderForge.SFN_Tex2d,id:1987,x:32524,y:33440,ptovrint:False,ptlb:Cutout,ptin:_Cutout,varname:node_1987,prsc:2,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:8487,x:32558,y:32640,ptovrint:False,ptlb:Normal Map,ptin:_NormalMap,varname:node_9779,prsc:2,tex:8e624259447f2894b9603fdfabe69f9d,ntxv:3,isnm:True;n:type:ShaderForge.SFN_LightVector,id:6906,x:31285,y:33113,varname:node_6906,prsc:2;n:type:ShaderForge.SFN_Dot,id:1350,x:31521,y:33017,varname:node_1350,prsc:2,dt:4|A-3270-OUT,B-6906-OUT;n:type:ShaderForge.SFN_NormalVector,id:3270,x:31285,y:32955,prsc:2,pt:True;n:type:ShaderForge.SFN_Color,id:5036,x:32232,y:32778,ptovrint:False,ptlb:Light,ptin:_Light,varname:node_8037,prsc:2,glob:False,c1:0.9852941,c2:0.9061508,c3:0.268058,c4:1;n:type:ShaderForge.SFN_Clamp01,id:5499,x:31887,y:33093,varname:node_5499,prsc:2|IN-498-OUT;n:type:ShaderForge.SFN_Power,id:498,x:31724,y:33093,varname:node_498,prsc:2|VAL-1350-OUT,EXP-7347-OUT;n:type:ShaderForge.SFN_ValueProperty,id:7347,x:31521,y:33183,ptovrint:False,ptlb:Light Power,ptin:_LightPower,varname:node_4518,prsc:2,glob:False,v1:1.22;n:type:ShaderForge.SFN_LightAttenuation,id:8162,x:31927,y:32912,varname:node_8162,prsc:2;n:type:ShaderForge.SFN_LightColor,id:1000,x:32299,y:33103,varname:node_1000,prsc:2;n:type:ShaderForge.SFN_Round,id:1332,x:32043,y:33093,varname:node_1332,prsc:2|IN-5499-OUT;n:type:ShaderForge.SFN_Multiply,id:7634,x:32508,y:32944,varname:node_7634,prsc:2|A-5036-RGB,B-858-OUT,C-7936-OUT;n:type:ShaderForge.SFN_AmbientLight,id:9315,x:32299,y:33228,varname:node_9315,prsc:2;n:type:ShaderForge.SFN_Add,id:7936,x:32508,y:33091,varname:node_7936,prsc:2|A-1000-RGB,B-9315-RGB;n:type:ShaderForge.SFN_Multiply,id:858,x:32232,y:32946,varname:node_858,prsc:2|A-8162-OUT,B-1332-OUT;n:type:ShaderForge.SFN_Tex2d,id:4462,x:31674,y:33596,ptovrint:False,ptlb:Mask1,ptin:_Mask1,varname:node_8438,prsc:2,tex:e950636c300acaa45a3365cbe5b186ab,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:1242,x:32000,y:33794,ptovrint:False,ptlb:Mask2,ptin:_Mask2,varname:node_3617,prsc:2,tex:98d35e2295781ca478cd8f67b75955ab,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Step,id:21,x:32369,y:33677,varname:node_21,prsc:2|A-1837-OUT,B-1037-OUT;n:type:ShaderForge.SFN_OneMinus,id:2580,x:32604,y:33620,varname:node_2580,prsc:2|IN-21-OUT;n:type:ShaderForge.SFN_RemapRange,id:5365,x:32000,y:33981,varname:node_5365,prsc:2,frmn:0.3,frmx:1,tomn:0,tomx:1|IN-567-OUT;n:type:ShaderForge.SFN_Clamp01,id:1037,x:32190,y:33829,varname:node_1037,prsc:2|IN-5365-OUT;n:type:ShaderForge.SFN_Multiply,id:1837,x:32190,y:33665,varname:node_1837,prsc:2|A-5889-OUT,B-1242-B;n:type:ShaderForge.SFN_RemapRange,id:2981,x:31845,y:33623,varname:node_2981,prsc:2,frmn:0,frmx:1,tomn:0.2,tomx:1|IN-4462-B;n:type:ShaderForge.SFN_Clamp01,id:5889,x:32012,y:33640,varname:node_5889,prsc:2|IN-2981-OUT;n:type:ShaderForge.SFN_ValueProperty,id:567,x:31755,y:34033,ptovrint:False,ptlb:fade,ptin:_fade,varname:node_8040,prsc:2,glob:False,v1:0.8;n:type:ShaderForge.SFN_Multiply,id:1083,x:32761,y:33411,varname:node_1083,prsc:2|A-1987-R,B-2580-OUT;n:type:ShaderForge.SFN_Panner,id:1148,x:33781,y:31439,varname:node_1148,prsc:2,spu:0.65,spv:0|DIST-6236-TSL;n:type:ShaderForge.SFN_Time,id:6236,x:33556,y:31449,varname:node_6236,prsc:2;n:type:ShaderForge.SFN_ScreenPos,id:7095,x:33380,y:31250,varname:node_7095,prsc:2,sctp:0;n:type:ShaderForge.SFN_Tex2d,id:9562,x:33991,y:31468,ptovrint:False,ptlb:Normal,ptin:_Normal,varname:node_2289,prsc:2,ntxv:3,isnm:True|UVIN-1148-UVOUT;n:type:ShaderForge.SFN_Vector1,id:7311,x:33380,y:31408,varname:node_7311,prsc:2,v1:5;n:type:ShaderForge.SFN_Divide,id:1943,x:33556,y:31333,varname:node_1943,prsc:2|A-7095-UVOUT,B-7311-OUT;proporder:1987-8487-5036-7347-4462-1242-567;pass:END;sub:END;*/

Shader "Carpathia/ColorNormalAlphaDissolve" {
    Properties {
        _Cutout ("Cutout", 2D) = "white" {}
        _NormalMap ("Normal Map", 2D) = "bump" {}
        _Light ("Light", Color) = (0.9852941,0.9061508,0.268058,1)
        _LightPower ("Light Power", Float ) = 1.22
        _Mask1 ("Mask1", 2D) = "white" {}
        _Mask2 ("Mask2", 2D) = "white" {}
        _fade ("fade", Float ) = 0.8
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "Queue"="AlphaTest"
            "RenderType"="TransparentCutout"
        }
        Pass {
            Name "ForwardBase"
            Tags {
                "LightMode"="ForwardBase"
            }
            Cull Off
            
            
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
            uniform sampler2D _Cutout; uniform float4 _Cutout_ST;
            uniform sampler2D _NormalMap; uniform float4 _NormalMap_ST;
            uniform float4 _Light;
            uniform float _LightPower;
            uniform sampler2D _Mask1; uniform float4 _Mask1_ST;
            uniform sampler2D _Mask2; uniform float4 _Mask2_ST;
            uniform float _fade;
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
                float3 _NormalMap_var = UnpackNormal(tex2D(_NormalMap,TRANSFORM_TEX(i.uv0, _NormalMap)));
                float3 normalLocal = _NormalMap_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                
                float nSign = sign( dot( viewDirection, i.normalDir ) ); // Reverse normal if this is a backface
                i.normalDir *= nSign;
                normalDirection *= nSign;
                
                float4 _Cutout_var = tex2D(_Cutout,TRANSFORM_TEX(i.uv0, _Cutout));
                float4 _Mask1_var = tex2D(_Mask1,TRANSFORM_TEX(i.uv0, _Mask1));
                float4 _Mask2_var = tex2D(_Mask2,TRANSFORM_TEX(i.uv0, _Mask2));
                clip((_Cutout_var.r*(1.0 - step((saturate((_Mask1_var.b*0.8+0.2))*_Mask2_var.b),saturate((_fade*1.428571+-0.4285715))))) - 0.5);
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 finalColor = (_Light.rgb*(attenuation*round(saturate(pow(0.5*dot(normalDirection,lightDirection)+0.5,_LightPower))))*(_LightColor0.rgb+UNITY_LIGHTMODEL_AMBIENT.rgb));
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
            Cull Off
            
            
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
            uniform sampler2D _Cutout; uniform float4 _Cutout_ST;
            uniform sampler2D _NormalMap; uniform float4 _NormalMap_ST;
            uniform float4 _Light;
            uniform float _LightPower;
            uniform sampler2D _Mask1; uniform float4 _Mask1_ST;
            uniform sampler2D _Mask2; uniform float4 _Mask2_ST;
            uniform float _fade;
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
                float3 _NormalMap_var = UnpackNormal(tex2D(_NormalMap,TRANSFORM_TEX(i.uv0, _NormalMap)));
                float3 normalLocal = _NormalMap_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                
                float nSign = sign( dot( viewDirection, i.normalDir ) ); // Reverse normal if this is a backface
                i.normalDir *= nSign;
                normalDirection *= nSign;
                
                float4 _Cutout_var = tex2D(_Cutout,TRANSFORM_TEX(i.uv0, _Cutout));
                float4 _Mask1_var = tex2D(_Mask1,TRANSFORM_TEX(i.uv0, _Mask1));
                float4 _Mask2_var = tex2D(_Mask2,TRANSFORM_TEX(i.uv0, _Mask2));
                clip((_Cutout_var.r*(1.0 - step((saturate((_Mask1_var.b*0.8+0.2))*_Mask2_var.b),saturate((_fade*1.428571+-0.4285715))))) - 0.5);
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 finalColor = (_Light.rgb*(attenuation*round(saturate(pow(0.5*dot(normalDirection,lightDirection)+0.5,_LightPower))))*(_LightColor0.rgb+UNITY_LIGHTMODEL_AMBIENT.rgb));
                return fixed4(finalColor * 1,0);
            }
            ENDCG
        }
        Pass {
            Name "ShadowCollector"
            Tags {
                "LightMode"="ShadowCollector"
            }
            Cull Off
            
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
            uniform sampler2D _Cutout; uniform float4 _Cutout_ST;
            uniform sampler2D _Mask1; uniform float4 _Mask1_ST;
            uniform sampler2D _Mask2; uniform float4 _Mask2_ST;
            uniform float _fade;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                V2F_SHADOW_COLLECTOR;
                float2 uv0 : TEXCOORD5;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = UnityObjectToClipPos(v.vertex);
                TRANSFER_SHADOW_COLLECTOR(o)
                return o;
            }
            fixed4 frag(VertexOutput i) : COLOR {
/////// Vectors:
                float4 _Cutout_var = tex2D(_Cutout,TRANSFORM_TEX(i.uv0, _Cutout));
                float4 _Mask1_var = tex2D(_Mask1,TRANSFORM_TEX(i.uv0, _Mask1));
                float4 _Mask2_var = tex2D(_Mask2,TRANSFORM_TEX(i.uv0, _Mask2));
                clip((_Cutout_var.r*(1.0 - step((saturate((_Mask1_var.b*0.8+0.2))*_Mask2_var.b),saturate((_fade*1.428571+-0.4285715))))) - 0.5);
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
            uniform sampler2D _Cutout; uniform float4 _Cutout_ST;
            uniform sampler2D _Mask1; uniform float4 _Mask1_ST;
            uniform sampler2D _Mask2; uniform float4 _Mask2_ST;
            uniform float _fade;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = UnityObjectToClipPos(v.vertex);
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            fixed4 frag(VertexOutput i) : COLOR {
/////// Vectors:
                float4 _Cutout_var = tex2D(_Cutout,TRANSFORM_TEX(i.uv0, _Cutout));
                float4 _Mask1_var = tex2D(_Mask1,TRANSFORM_TEX(i.uv0, _Mask1));
                float4 _Mask2_var = tex2D(_Mask2,TRANSFORM_TEX(i.uv0, _Mask2));
                clip((_Cutout_var.r*(1.0 - step((saturate((_Mask1_var.b*0.8+0.2))*_Mask2_var.b),saturate((_fade*1.428571+-0.4285715))))) - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
