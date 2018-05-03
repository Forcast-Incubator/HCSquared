// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

// Shader created with Shader Forge v1.27 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.27;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:5109,x:32863,y:32710,varname:node_5109,prsc:2|emission-9084-RGB,voffset-7889-OUT;n:type:ShaderForge.SFN_Tex2d,id:9084,x:32540,y:32597,ptovrint:False,ptlb:Tex Col,ptin:_TexCol,varname:node_9084,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_VertexColor,id:1103,x:32295,y:33162,varname:node_1103,prsc:2;n:type:ShaderForge.SFN_Tex2d,id:4081,x:31761,y:32917,varname:node_4081,prsc:2,ntxv:0,isnm:False|UVIN-8284-UVOUT,TEX-5792-TEX;n:type:ShaderForge.SFN_Lerp,id:7889,x:32603,y:33067,varname:node_7889,prsc:2|A-2629-OUT,B-3940-OUT,T-1103-R;n:type:ShaderForge.SFN_Panner,id:8284,x:31543,y:32907,varname:node_8284,prsc:2,spu:1,spv:0.5|UVIN-8267-OUT,DIST-4996-OUT;n:type:ShaderForge.SFN_Time,id:3575,x:31151,y:33016,varname:node_3575,prsc:2;n:type:ShaderForge.SFN_Vector3,id:2629,x:32295,y:32916,varname:node_2629,prsc:2,v1:0,v2:0,v3:0;n:type:ShaderForge.SFN_Vector1,id:7834,x:31934,y:33167,varname:node_7834,prsc:2,v1:0;n:type:ShaderForge.SFN_Append,id:8071,x:31973,y:32973,varname:node_8071,prsc:2|A-4081-R,B-3550-G;n:type:ShaderForge.SFN_Append,id:3940,x:32312,y:33024,varname:node_3940,prsc:2|A-1596-OUT,B-7834-OUT;n:type:ShaderForge.SFN_RemapRange,id:1596,x:32058,y:32767,varname:node_1596,prsc:2,frmn:0,frmx:1,tomn:-0.16,tomx:0.16|IN-8071-OUT;n:type:ShaderForge.SFN_Multiply,id:8267,x:31363,y:32876,varname:node_8267,prsc:2|A-5394-OUT,B-6777-OUT;n:type:ShaderForge.SFN_Vector1,id:6777,x:31151,y:32950,varname:node_6777,prsc:2,v1:16;n:type:ShaderForge.SFN_Divide,id:4996,x:31363,y:33027,varname:node_4996,prsc:2|A-3575-T,B-6040-OUT;n:type:ShaderForge.SFN_Vector1,id:6040,x:31151,y:33146,varname:node_6040,prsc:2,v1:6;n:type:ShaderForge.SFN_FragmentPosition,id:3974,x:30976,y:32815,varname:node_3974,prsc:2;n:type:ShaderForge.SFN_Append,id:5394,x:31151,y:32825,varname:node_5394,prsc:2|A-3974-X,B-3974-Y;n:type:ShaderForge.SFN_Tex2dAsset,id:5792,x:31543,y:33246,ptovrint:False,ptlb:Tex vOffset,ptin:_TexvOffset,varname:node_5792,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Panner,id:422,x:31543,y:33050,varname:node_422,prsc:2,spu:0.5,spv:1|UVIN-8267-OUT;n:type:ShaderForge.SFN_Tex2d,id:3550,x:31761,y:33119,varname:node_3550,prsc:2,ntxv:0,isnm:False|UVIN-422-UVOUT,TEX-5792-TEX;proporder:9084-5792;pass:END;sub:END;*/

Shader "Custom/templeFlame" {
    Properties {
        _TexCol ("Tex Col", 2D) = "white" {}
        _TexvOffset ("Tex vOffset", 2D) = "white" {}
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        LOD 200
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            #pragma glsl
            uniform float4 _TimeEditor;
            uniform sampler2D _TexCol; uniform float4 _TexCol_ST;
            uniform sampler2D _TexvOffset; uniform float4 _TexvOffset_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float4 vertexColor : COLOR;
                UNITY_FOG_COORDS(2)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                float4 node_3575 = _Time + _TimeEditor;
                float2 node_8267 = (float2(mul(unity_ObjectToWorld, v.vertex).r,mul(unity_ObjectToWorld, v.vertex).g)*16.0);
                float2 node_8284 = (node_8267+(node_3575.g/6.0)*float2(1,0.5));
                float4 node_4081 = tex2Dlod(_TexvOffset,float4(TRANSFORM_TEX(node_8284, _TexvOffset),0.0,0));
                float4 node_5103 = _Time + _TimeEditor;
                float2 node_422 = (node_8267+node_5103.g*float2(0.5,1));
                float4 node_3550 = tex2Dlod(_TexvOffset,float4(TRANSFORM_TEX(node_422, _TexvOffset),0.0,0));
                v.vertex.xyz += lerp(float3(0,0,0),float3((float2(node_4081.r,node_3550.g)*0.32+-0.16),0.0),o.vertexColor.r);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos(v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
////// Lighting:
////// Emissive:
                float4 _TexCol_var = tex2D(_TexCol,TRANSFORM_TEX(i.uv0, _TexCol));
                float3 emissive = _TexCol_var.rgb;
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
                float4 node_3575 = _Time + _TimeEditor;
                float2 node_8267 = (float2(mul(unity_ObjectToWorld, v.vertex).r,mul(unity_ObjectToWorld, v.vertex).g)*16.0);
                float2 node_8284 = (node_8267+(node_3575.g/6.0)*float2(1,0.5));
                float4 node_4081 = tex2Dlod(_TexvOffset,float4(TRANSFORM_TEX(node_8284, _TexvOffset),0.0,0));
                float4 node_3677 = _Time + _TimeEditor;
                float2 node_422 = (node_8267+node_3677.g*float2(0.5,1));
                float4 node_3550 = tex2Dlod(_TexvOffset,float4(TRANSFORM_TEX(node_422, _TexvOffset),0.0,0));
                v.vertex.xyz += lerp(float3(0,0,0),float3((float2(node_4081.r,node_3550.g)*0.32+-0.16),0.0),o.vertexColor.r);
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
