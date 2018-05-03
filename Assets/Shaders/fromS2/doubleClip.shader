// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.06 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.06;sub:START;pass:START;ps:flbk:,lico:1,lgpr:1,nrmq:0,limd:0,uamb:True,mssp:True,lmpd:False,lprd:False,rprd:False,enco:False,frtr:True,vitr:True,dbil:False,rmgx:True,rpth:0,hqsc:False,hqlp:False,tesm:0,blpr:0,bsrc:0,bdst:1,culm:2,dpts:2,wrdp:True,dith:0,ufog:True,aust:True,igpj:False,qofs:0,qpre:2,rntp:3,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:2799,x:33401,y:32497,varname:node_2799,prsc:2|emission-4719-RGB,clip-6206-OUT;n:type:ShaderForge.SFN_Tex2d,id:7084,x:32789,y:32771,ptovrint:False,ptlb:AlphaClip,ptin:_AlphaClip,varname:node_7084,prsc:2,ntxv:0,isnm:False;n:type:ShaderForge.SFN_SwitchProperty,id:9523,x:33010,y:32829,ptovrint:False,ptlb:g/b switch,ptin:_gbswitch,varname:node_9523,prsc:2,on:False|A-7084-B,B-7084-G;n:type:ShaderForge.SFN_SwitchProperty,id:6206,x:33195,y:32846,ptovrint:False,ptlb:r/gb switch,ptin:_rgbswitch,varname:node_6206,prsc:2,on:False|A-9523-OUT,B-7084-R;n:type:ShaderForge.SFN_Color,id:4719,x:33010,y:32600,ptovrint:False,ptlb:Emission,ptin:_Emission,varname:node_4719,prsc:2,glob:False,c1:0.5,c2:0.5,c3:0.5,c4:1;proporder:4719-7084-6206-9523;pass:END;sub:END;*/

Shader "Carpathia/doubleClip" {
    Properties {
        _Emission ("Emission", Color) = (0.5,0.5,0.5,1)
        _AlphaClip ("AlphaClip", 2D) = "white" {}
        [MaterialToggle] _rgbswitch ("r/gb switch", Float ) = 1
        [MaterialToggle] _gbswitch ("g/b switch", Float ) = 1
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
            #pragma multi_compile_fwdbase_fullshadows
            #pragma exclude_renderers xbox360 ps3 flash d3d11_9x 
            #pragma target 3.0
            uniform sampler2D _AlphaClip; uniform float4 _AlphaClip_ST;
            uniform fixed _gbswitch;
            uniform fixed _rgbswitch;
            uniform float4 _Emission;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = UnityObjectToClipPos(v.vertex);
                return o;
            }
            fixed4 frag(VertexOutput i) : COLOR {
/////// Vectors:
                float4 _AlphaClip_var = tex2D(_AlphaClip,TRANSFORM_TEX(i.uv0, _AlphaClip));
                clip(lerp( lerp( _AlphaClip_var.b, _AlphaClip_var.g, _gbswitch ), _AlphaClip_var.r, _rgbswitch ) - 0.5);
////// Lighting:
////// Emissive:
                float3 emissive = _Emission.rgb;
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
            uniform sampler2D _AlphaClip; uniform float4 _AlphaClip_ST;
            uniform fixed _gbswitch;
            uniform fixed _rgbswitch;
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
                float4 _AlphaClip_var = tex2D(_AlphaClip,TRANSFORM_TEX(i.uv0, _AlphaClip));
                clip(lerp( lerp( _AlphaClip_var.b, _AlphaClip_var.g, _gbswitch ), _AlphaClip_var.r, _rgbswitch ) - 0.5);
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
            uniform sampler2D _AlphaClip; uniform float4 _AlphaClip_ST;
            uniform fixed _gbswitch;
            uniform fixed _rgbswitch;
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
                float4 _AlphaClip_var = tex2D(_AlphaClip,TRANSFORM_TEX(i.uv0, _AlphaClip));
                clip(lerp( lerp( _AlphaClip_var.b, _AlphaClip_var.g, _gbswitch ), _AlphaClip_var.r, _rgbswitch ) - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
