// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:35571,y:33575,varname:node_3138,prsc:2|emission-7241-RGB,alpha-5699-OUT;n:type:ShaderForge.SFN_Color,id:7241,x:35218,y:33509,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_7241,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_NormalVector,id:501,x:33999,y:33974,prsc:2,pt:False;n:type:ShaderForge.SFN_Dot,id:2996,x:34287,y:33758,varname:node_2996,prsc:2,dt:4|A-4318-OUT,B-501-OUT;n:type:ShaderForge.SFN_ViewVector,id:4318,x:33999,y:33744,varname:node_4318,prsc:2;n:type:ShaderForge.SFN_Power,id:6050,x:34579,y:33803,varname:node_6050,prsc:2|VAL-2996-OUT,EXP-1108-OUT;n:type:ShaderForge.SFN_Slider,id:1108,x:34227,y:33949,ptovrint:False,ptlb:Alpha Nrm Pow,ptin:_AlphaNrmPow,varname:node_4135,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-2,cur:0.44,max:10;n:type:ShaderForge.SFN_VertexColor,id:3403,x:34287,y:33615,varname:node_3403,prsc:2;n:type:ShaderForge.SFN_Slider,id:4714,x:34208,y:33504,ptovrint:False,ptlb:Alpha Vtx Pow,ptin:_AlphaVtxPow,varname:node_9054,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-2,cur:1.07,max:10;n:type:ShaderForge.SFN_Power,id:7425,x:34594,y:33643,varname:node_7425,prsc:2|VAL-3403-R,EXP-4714-OUT;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:7362,x:34819,y:33979,varname:node_7362,prsc:2|IN-6050-OUT,IMIN-9173-X,IMAX-9173-Y,OMIN-9173-Z,OMAX-9173-W;n:type:ShaderForge.SFN_Vector4Property,id:9173,x:34587,y:34092,ptovrint:False,ptlb:Opacity Remapper,ptin:_OpacityRemapper,varname:node_9173,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0,v2:0,v3:0,v4:0;n:type:ShaderForge.SFN_Add,id:7488,x:35015,y:33664,varname:node_7488,prsc:2|A-7425-OUT,B-7362-OUT;n:type:ShaderForge.SFN_Clamp01,id:5699,x:35218,y:33664,varname:node_5699,prsc:2|IN-7488-OUT;proporder:7241-1108-4714-9173;pass:END;sub:END;*/

Shader "Shader Forge/fadedUnlit" {
    Properties {
        _Color ("Color", Color) = (0,0,0,1)
        _AlphaNrmPow ("Alpha Nrm Pow", Range(-2, 10)) = 0.44
        _AlphaVtxPow ("Alpha Vtx Pow", Range(-2, 10)) = 1.07
        _OpacityRemapper ("Opacity Remapper", Vector) = (0,0,0,0)
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _Color;
            uniform float _AlphaNrmPow;
            uniform float _AlphaVtxPow;
            uniform float4 _OpacityRemapper;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                float4 vertexColor : COLOR;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.vertexColor = v.vertexColor;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
////// Lighting:
////// Emissive:
                float3 emissive = _Color.rgb;
                float3 finalColor = emissive;
                float node_7425 = pow(i.vertexColor.r,_AlphaVtxPow);
                float node_6050 = pow(0.5*dot(viewDirection,i.normalDir)+0.5,_AlphaNrmPow);
                return fixed4(finalColor,saturate((node_7425+(_OpacityRemapper.b + ( (node_6050 - _OpacityRemapper.r) * (_OpacityRemapper.a - _OpacityRemapper.b) ) / (_OpacityRemapper.g - _OpacityRemapper.r)))));
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
