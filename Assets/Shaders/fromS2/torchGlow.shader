// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

// Shader created with Shader Forge v1.27 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.27;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:0,dpts:2,wrdp:False,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:5950,x:32664,y:32636,varname:node_5950,prsc:2|emission-3777-RGB,voffset-492-OUT;n:type:ShaderForge.SFN_Color,id:3777,x:32317,y:32699,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_3777,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_VertexColor,id:5610,x:32123,y:33111,varname:node_5610,prsc:2;n:type:ShaderForge.SFN_Tex2d,id:8718,x:31589,y:32866,varname:node_4081,prsc:2,ntxv:0,isnm:False|UVIN-9784-UVOUT,TEX-3550-TEX;n:type:ShaderForge.SFN_Lerp,id:492,x:32431,y:33016,varname:node_492,prsc:2|A-176-OUT,B-9573-OUT,T-5610-R;n:type:ShaderForge.SFN_Panner,id:9784,x:31371,y:32856,varname:node_9784,prsc:2,spu:1,spv:0.5|UVIN-6359-OUT,DIST-2380-TSL;n:type:ShaderForge.SFN_Time,id:2380,x:31129,y:33030,varname:node_2380,prsc:2;n:type:ShaderForge.SFN_Vector3,id:176,x:32123,y:32865,varname:node_176,prsc:2,v1:0,v2:0,v3:0;n:type:ShaderForge.SFN_Vector1,id:591,x:31762,y:33116,varname:node_591,prsc:2,v1:0;n:type:ShaderForge.SFN_Append,id:1773,x:31801,y:32922,varname:node_1773,prsc:2|A-8718-R,B-591-OUT;n:type:ShaderForge.SFN_Append,id:9573,x:32140,y:32973,varname:node_9573,prsc:2|A-9158-OUT,B-591-OUT;n:type:ShaderForge.SFN_RemapRange,id:9158,x:31886,y:32716,varname:node_9158,prsc:2,frmn:0,frmx:1,tomn:-0.05,tomx:0.05|IN-1773-OUT;n:type:ShaderForge.SFN_Multiply,id:6359,x:31166,y:32865,varname:node_6359,prsc:2|A-3816-OUT,B-6136-OUT;n:type:ShaderForge.SFN_Vector1,id:6136,x:30979,y:32899,varname:node_6136,prsc:2,v1:0.06;n:type:ShaderForge.SFN_FragmentPosition,id:4575,x:30804,y:32764,varname:node_4575,prsc:2;n:type:ShaderForge.SFN_Append,id:3816,x:30979,y:32774,varname:node_3816,prsc:2|A-4575-X,B-4575-Y;n:type:ShaderForge.SFN_Tex2dAsset,id:3550,x:31371,y:33195,ptovrint:False,ptlb:Tex vOffset,ptin:_TexvOffset,varname:node_5792,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Panner,id:4772,x:31371,y:32999,varname:node_4772,prsc:2,spu:0.5,spv:1|UVIN-6359-OUT,DIST-2380-TSL;n:type:ShaderForge.SFN_Tex2d,id:6170,x:31589,y:33068,varname:node_3550,prsc:2,ntxv:0,isnm:False|UVIN-4772-UVOUT,TEX-3550-TEX;proporder:3777-3550;pass:END;sub:END;*/

Shader "Custom/torchGlow" {
    Properties {
        _Color ("Color", Color) = (0.5,0.5,0.5,1)
        _TexvOffset ("Tex vOffset", 2D) = "white" {}
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        LOD 200
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend One One
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            #pragma glsl
            uniform float4 _TimeEditor;
            uniform float4 _Color;
            uniform sampler2D _TexvOffset; uniform float4 _TexvOffset_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float4 vertexColor : COLOR;
                UNITY_FOG_COORDS(1)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.vertexColor = v.vertexColor;
                float4 node_2380 = _Time + _TimeEditor;
                float2 node_6359 = (float2(mul(unity_ObjectToWorld, v.vertex).r,mul(unity_ObjectToWorld, v.vertex).g)*0.06);
                float2 node_9784 = (node_6359+node_2380.r*float2(1,0.5));
                float4 node_4081 = tex2Dlod(_TexvOffset,float4(TRANSFORM_TEX(node_9784, _TexvOffset),0.0,0));
                float node_591 = 0.0;
                v.vertex.xyz += lerp(float3(0,0,0),float3((float2(node_4081.r,node_591)*0.1+-0.05),node_591),o.vertexColor.r);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos(v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
////// Lighting:
////// Emissive:
                float3 emissive = _Color.rgb;
                float3 finalColor = emissive;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Offset 1, 1
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            #pragma glsl
            uniform float4 _TimeEditor;
            uniform sampler2D _TexvOffset; uniform float4 _TexvOffset_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float4 posWorld : TEXCOORD1;
                float4 vertexColor : COLOR;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.vertexColor = v.vertexColor;
                float4 node_2380 = _Time + _TimeEditor;
                float2 node_6359 = (float2(mul(unity_ObjectToWorld, v.vertex).r,mul(unity_ObjectToWorld, v.vertex).g)*0.06);
                float2 node_9784 = (node_6359+node_2380.r*float2(1,0.5));
                float4 node_4081 = tex2Dlod(_TexvOffset,float4(TRANSFORM_TEX(node_9784, _TexvOffset),0.0,0));
                float node_591 = 0.0;
                v.vertex.xyz += lerp(float3(0,0,0),float3((float2(node_4081.r,node_591)*0.1+-0.05),node_591),o.vertexColor.r);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos(v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
