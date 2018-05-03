// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.06 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.06;sub:START;pass:START;ps:flbk:,lico:0,lgpr:1,nrmq:0,limd:0,uamb:True,mssp:True,lmpd:False,lprd:False,rprd:False,enco:False,frtr:True,vitr:True,dbil:False,rmgx:True,rpth:0,hqsc:False,hqlp:False,tesm:0,blpr:2,bsrc:0,bdst:0,culm:0,dpts:2,wrdp:False,dith:0,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.25,fgcg:0.1209939,fgcb:0.07352941,fgca:1,fgde:0.02,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:367,x:32863,y:32643,varname:node_367,prsc:2|emission-6727-OUT;n:type:ShaderForge.SFN_Tex2d,id:3152,x:32248,y:32670,ptovrint:False,ptlb:Stars,ptin:_Stars,varname:node_3152,prsc:2,ntxv:2,isnm:False;n:type:ShaderForge.SFN_VertexColor,id:1412,x:32248,y:32834,varname:node_1412,prsc:2;n:type:ShaderForge.SFN_Multiply,id:6727,x:32593,y:32694,varname:node_6727,prsc:2|A-3152-RGB,B-1412-A,C-8291-RGB,D-1731-OUT;n:type:ShaderForge.SFN_Color,id:8291,x:32248,y:32500,ptovrint:False,ptlb:Tint,ptin:_Tint,varname:node_8291,prsc:2,glob:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Tex2d,id:3115,x:32311,y:32290,varname:node_3115,prsc:2,ntxv:0,isnm:False|UVIN-8391-UVOUT,TEX-1652-TEX;n:type:ShaderForge.SFN_Time,id:1228,x:31536,y:32376,varname:node_1228,prsc:2;n:type:ShaderForge.SFN_Panner,id:8391,x:32034,y:32344,varname:node_8391,prsc:2,spu:0.5,spv:0.9|DIST-3996-OUT;n:type:ShaderForge.SFN_Multiply,id:3996,x:31760,y:32365,varname:node_3996,prsc:2|A-1228-T,B-397-OUT;n:type:ShaderForge.SFN_ValueProperty,id:397,x:31536,y:32531,ptovrint:False,ptlb:Flicker Speed,ptin:_FlickerSpeed,varname:node_397,prsc:2,glob:False,v1:0;n:type:ShaderForge.SFN_Panner,id:9036,x:32034,y:32190,varname:node_9036,prsc:2,spu:-0.7,spv:-0.8|DIST-3996-OUT;n:type:ShaderForge.SFN_Tex2dAsset,id:1652,x:32034,y:32029,ptovrint:False,ptlb:Flicker Mask,ptin:_FlickerMask,varname:node_1652,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:1077,x:32311,y:32145,varname:node_1077,prsc:2,ntxv:0,isnm:False|UVIN-9036-UVOUT,TEX-1652-TEX;n:type:ShaderForge.SFN_Min,id:3196,x:32496,y:32225,varname:node_3196,prsc:2|A-1077-B,B-3115-B;n:type:ShaderForge.SFN_Slider,id:8234,x:31860,y:32538,ptovrint:False,ptlb:Clamp Flicker,ptin:_ClampFlicker,varname:node_8234,prsc:2,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Clamp,id:1731,x:32703,y:32254,varname:node_1731,prsc:2|IN-3196-OUT,MIN-8234-OUT,MAX-5485-OUT;n:type:ShaderForge.SFN_Vector1,id:5485,x:32496,y:32373,varname:node_5485,prsc:2,v1:1;proporder:3152-8291-397-1652-8234;pass:END;sub:END;*/

Shader "Carpathia/Stars" {
    Properties {
        _Stars ("Stars", 2D) = "black" {}
        _Tint ("Tint", Color) = (1,1,1,1)
        _FlickerSpeed ("Flicker Speed", Float ) = 0
        _FlickerMask ("Flicker Mask", 2D) = "white" {}
        _ClampFlicker ("Clamp Flicker", Range(0, 1)) = 0
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        LOD 200
        Pass {
            Name "ForwardBase"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend One One
            ZWrite Off
            
            Fog {Mode Off}
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma exclude_renderers xbox360 ps3 flash d3d11_9x 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform sampler2D _Stars; uniform float4 _Stars_ST;
            uniform float4 _Tint;
            uniform float _FlickerSpeed;
            uniform sampler2D _FlickerMask; uniform float4 _FlickerMask_ST;
            uniform float _ClampFlicker;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.pos = UnityObjectToClipPos(v.vertex);
                return o;
            }
            fixed4 frag(VertexOutput i) : COLOR {
/////// Vectors:
////// Lighting:
////// Emissive:
                float4 _Stars_var = tex2D(_Stars,TRANSFORM_TEX(i.uv0, _Stars));
                float4 node_1228 = _Time + _TimeEditor;
                float node_3996 = (node_1228.g*_FlickerSpeed);
                float2 node_9036 = (i.uv0+node_3996*float2(-0.7,-0.8));
                float4 node_1077 = tex2D(_FlickerMask,TRANSFORM_TEX(node_9036, _FlickerMask));
                float2 node_8391 = (i.uv0+node_3996*float2(0.5,0.9));
                float4 node_3115 = tex2D(_FlickerMask,TRANSFORM_TEX(node_8391, _FlickerMask));
                float3 emissive = (_Stars_var.rgb*i.vertexColor.a*_Tint.rgb*clamp(min(node_1077.b,node_3115.b),_ClampFlicker,1.0));
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
