// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'
// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.06 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.06;sub:START;pass:START;ps:flbk:,lico:0,lgpr:1,nrmq:0,limd:0,uamb:True,mssp:True,lmpd:False,lprd:False,rprd:False,enco:False,frtr:True,vitr:True,dbil:False,rmgx:True,rpth:0,hqsc:False,hqlp:False,tesm:0,blpr:1,bsrc:3,bdst:7,culm:0,dpts:2,wrdp:True,dith:0,ufog:True,aust:False,igpj:True,qofs:0,qpre:4,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:3209,x:34973,y:32411,varname:node_3209,prsc:2|emission-1243-RGB,alpha-7791-A,voffset-2095-OUT;n:type:ShaderForge.SFN_Color,id:1243,x:34220,y:32434,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_8037,prsc:2,glob:False,c1:0.9852941,c2:0.9061508,c3:0.268058,c4:1;n:type:ShaderForge.SFN_VertexColor,id:7791,x:34220,y:32591,varname:node_7791,prsc:2;n:type:ShaderForge.SFN_Tex2d,id:304,x:34220,y:32241,ptovrint:False,ptlb:Mask,ptin:_Mask,varname:node_304,prsc:2,ntxv:0,isnm:False|UVIN-4023-UVOUT;n:type:ShaderForge.SFN_Time,id:1012,x:33566,y:32165,varname:node_1012,prsc:2;n:type:ShaderForge.SFN_Panner,id:4023,x:34014,y:32241,varname:node_4023,prsc:2,spu:0,spv:-1|DIST-4295-OUT;n:type:ShaderForge.SFN_Multiply,id:4295,x:33823,y:32258,varname:node_4295,prsc:2|A-1012-T,B-4518-OUT;n:type:ShaderForge.SFN_ValueProperty,id:4518,x:33566,y:32330,ptovrint:False,ptlb:Panning Speed,ptin:_PanningSpeed,varname:node_4518,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_Vector4Property,id:6969,x:34220,y:32752,ptovrint:False,ptlb:Smoke Offset,ptin:_SmokeOffset,varname:node_9216,prsc:2,glob:False,v1:1,v2:1,v3:1,v4:0;n:type:ShaderForge.SFN_Multiply,id:2095,x:34749,y:32801,varname:node_2095,prsc:2|A-6969-XYZ,B-304-B,C-428-OUT,D-7791-B;n:type:ShaderForge.SFN_NormalVector,id:428,x:34220,y:32924,prsc:2,pt:False;n:type:ShaderForge.SFN_Clamp,id:5248,x:34548,y:33015,varname:node_5248,prsc:2|IN-7791-B,MIN-6404-OUT,MAX-7927-OUT;n:type:ShaderForge.SFN_Vector1,id:7927,x:34220,y:33084,varname:node_7927,prsc:2,v1:0;n:type:ShaderForge.SFN_Slider,id:6404,x:34141,y:33181,ptovrint:False,ptlb:Clamp Start,ptin:_ClampStart,varname:node_6404,prsc:2,min:0,cur:1,max:1;proporder:1243-304-4518-6969-6404;pass:END;sub:END;*/

Shader "Carpathia/ChimneySmoke" {
    Properties {
        _Color ("Color", Color) = (0.9852941,0.9061508,0.268058,1)
        _Mask ("Mask", 2D) = "white" {}
        _PanningSpeed ("Panning Speed", Float ) = 1
        _SmokeOffset ("Smoke Offset", Vector) = (1,1,1,0)
        _ClampStart ("Clamp Start", Range(0, 1)) = 1
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Overlay"
            "RenderType"="Transparent"
        }
        Pass {
            Name "ForwardBase"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma exclude_renderers xbox360 ps3 flash d3d11_9x 
            #pragma target 3.0
            #pragma glsl
            uniform float4 _TimeEditor;
            uniform float4 _Color;
            uniform sampler2D _Mask; uniform float4 _Mask_ST;
            uniform float _PanningSpeed;
            uniform float4 _SmokeOffset;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                float4 vertexColor : COLOR;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.normalDir = mul(unity_ObjectToWorld, float4(v.normal,0)).xyz;
                float4 node_1012 = _Time + _TimeEditor;
                float2 node_4023 = (o.uv0+(node_1012.g*_PanningSpeed)*float2(0,-1));
                float4 _Mask_var = tex2Dlod(_Mask,float4(TRANSFORM_TEX(node_4023, _Mask),0.0,0));
                v.vertex.xyz += (_SmokeOffset.rgb*_Mask_var.b*v.normal*o.vertexColor.b);
                o.pos = UnityObjectToClipPos(v.vertex);
                return o;
            }
            fixed4 frag(VertexOutput i) : COLOR {
/////// Vectors:
                float3 normalDirection = i.normalDir;
////// Lighting:
////// Emissive:
                float3 emissive = _Color.rgb;
                float3 finalColor = emissive;
                return fixed4(finalColor,i.vertexColor.a);
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
            uniform sampler2D _Mask; uniform float4 _Mask_ST;
            uniform float _PanningSpeed;
            uniform float4 _SmokeOffset;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                V2F_SHADOW_COLLECTOR;
                float2 uv0 : TEXCOORD5;
                float3 normalDir : TEXCOORD6;
                float4 vertexColor : COLOR;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.normalDir = mul(unity_ObjectToWorld, float4(v.normal,0)).xyz;
                float4 node_1012 = _Time + _TimeEditor;
                float2 node_4023 = (o.uv0+(node_1012.g*_PanningSpeed)*float2(0,-1));
                float4 _Mask_var = tex2Dlod(_Mask,float4(TRANSFORM_TEX(node_4023, _Mask),0.0,0));
                v.vertex.xyz += (_SmokeOffset.rgb*_Mask_var.b*v.normal*o.vertexColor.b);
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
            uniform sampler2D _Mask; uniform float4 _Mask_ST;
            uniform float _PanningSpeed;
            uniform float4 _SmokeOffset;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float4 vertexColor : COLOR;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.normalDir = mul(unity_ObjectToWorld, float4(v.normal,0)).xyz;
                float4 node_1012 = _Time + _TimeEditor;
                float2 node_4023 = (o.uv0+(node_1012.g*_PanningSpeed)*float2(0,-1));
                float4 _Mask_var = tex2Dlod(_Mask,float4(TRANSFORM_TEX(node_4023, _Mask),0.0,0));
                v.vertex.xyz += (_SmokeOffset.rgb*_Mask_var.b*v.normal*o.vertexColor.b);
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
