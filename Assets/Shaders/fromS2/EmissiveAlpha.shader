// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.06 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.06;sub:START;pass:START;ps:flbk:,lico:1,lgpr:1,nrmq:0,limd:0,uamb:True,mssp:True,lmpd:False,lprd:False,rprd:False,enco:False,frtr:True,vitr:True,dbil:False,rmgx:True,rpth:0,hqsc:False,hqlp:False,tesm:0,blpr:0,bsrc:0,bdst:1,culm:2,dpts:2,wrdp:True,dith:0,ufog:False,aust:True,igpj:False,qofs:0,qpre:2,rntp:3,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:3209,x:33609,y:32592,varname:node_3209,prsc:2|emission-8037-RGB,clip-7926-OUT;n:type:ShaderForge.SFN_Color,id:8037,x:33265,y:32644,ptovrint:False,ptlb:lightColour,ptin:_lightColour,varname:node_8037,prsc:2,glob:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Tex2d,id:1987,x:32781,y:32847,ptovrint:False,ptlb:Cutout,ptin:_Cutout,varname:node_1987,prsc:2,tex:b33af5ab44463a24a84097d3c7947564,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Slider,id:6033,x:32289,y:33086,ptovrint:False,ptlb:alpha r/g/b/a,ptin:_alphargba,varname:node_6033,prsc:2,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Posterize,id:9056,x:32643,y:33135,varname:node_9056,prsc:2|IN-6033-OUT,STPS-2379-OUT;n:type:ShaderForge.SFN_Vector1,id:2379,x:32407,y:33157,varname:node_2379,prsc:2,v1:4;n:type:ShaderForge.SFN_Lerp,id:2815,x:33088,y:32831,varname:node_2815,prsc:2|A-1987-R,B-1987-G,T-1706-OUT;n:type:ShaderForge.SFN_RemapRange,id:1706,x:32829,y:33009,varname:node_1706,prsc:2,frmn:0,frmx:0.5,tomn:0,tomx:1|IN-9056-OUT;n:type:ShaderForge.SFN_RemapRange,id:9820,x:32856,y:33069,varname:node_9820,prsc:2,frmn:0.5,frmx:1,tomn:0,tomx:1|IN-9056-OUT;n:type:ShaderForge.SFN_Lerp,id:5124,x:33088,y:32921,varname:node_5124,prsc:2|A-1987-B,B-1987-A,T-9820-OUT;n:type:ShaderForge.SFN_Round,id:7926,x:33424,y:32873,varname:node_7926,prsc:2|IN-4558-OUT;n:type:ShaderForge.SFN_Lerp,id:4558,x:33265,y:32873,varname:node_4558,prsc:2|A-2815-OUT,B-5124-OUT,T-3093-OUT;n:type:ShaderForge.SFN_Round,id:3093,x:33088,y:33103,varname:node_3093,prsc:2|IN-9056-OUT;proporder:8037-1987-6033;pass:END;sub:END;*/

Shader "Carpathia/EmmisiveAlpha" {
    Properties {
        _lightColour ("lightColour", Color) = (0.5,0.5,0.5,1)
        _Cutout ("Cutout", 2D) = "white" {}
        _alphargba ("alpha r/g/b/a", Range(0, 1)) = 1
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
            
            
            Fog {Mode Off}
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma exclude_renderers xbox360 ps3 flash d3d11_9x 
            #pragma target 3.0
            uniform float4 _lightColour;
            uniform sampler2D _Cutout; uniform float4 _Cutout_ST;
            uniform float _alphargba;
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
                float4 _Cutout_var = tex2D(_Cutout,TRANSFORM_TEX(i.uv0, _Cutout));
                float node_2379 = 4.0;
                float node_9056 = floor(_alphargba * node_2379) / (node_2379 - 1);
                float node_1706 = (node_9056*2.0+0.0);
                clip(round(lerp(lerp(_Cutout_var.r,_Cutout_var.g,node_1706),lerp(_Cutout_var.b,_Cutout_var.a,(node_9056*2.0+-1.0)),round(node_9056))) - 0.5);
////// Lighting:
////// Emissive:
                float3 emissive = _lightColour.rgb;
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
            uniform sampler2D _Cutout; uniform float4 _Cutout_ST;
            uniform float _alphargba;
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
                float node_2379 = 4.0;
                float node_9056 = floor(_alphargba * node_2379) / (node_2379 - 1);
                float node_1706 = (node_9056*2.0+0.0);
                clip(round(lerp(lerp(_Cutout_var.r,_Cutout_var.g,node_1706),lerp(_Cutout_var.b,_Cutout_var.a,(node_9056*2.0+-1.0)),round(node_9056))) - 0.5);
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
            uniform float _alphargba;
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
                float node_2379 = 4.0;
                float node_9056 = floor(_alphargba * node_2379) / (node_2379 - 1);
                float node_1706 = (node_9056*2.0+0.0);
                clip(round(lerp(lerp(_Cutout_var.r,_Cutout_var.g,node_1706),lerp(_Cutout_var.b,_Cutout_var.a,(node_9056*2.0+-1.0)),round(node_9056))) - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
