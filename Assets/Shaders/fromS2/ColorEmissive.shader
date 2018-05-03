// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.06 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.06;sub:START;pass:START;ps:flbk:,lico:1,lgpr:1,nrmq:0,limd:0,uamb:True,mssp:True,lmpd:False,lprd:False,rprd:False,enco:False,frtr:True,vitr:True,dbil:False,rmgx:True,rpth:0,hqsc:False,hqlp:False,tesm:0,blpr:0,bsrc:0,bdst:1,culm:0,dpts:2,wrdp:True,dith:0,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:7413,x:33401,y:32641,varname:node_7413,prsc:2|emission-5932-RGB;n:type:ShaderForge.SFN_Color,id:5932,x:33153,y:32733,ptovrint:False,ptlb:Emission,ptin:_Emission,varname:node_5932,prsc:2,glob:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Panner,id:9515,x:33973,y:31631,varname:node_9515,prsc:2,spu:0.65,spv:0|DIST-1403-TSL;n:type:ShaderForge.SFN_Time,id:1403,x:33748,y:31641,varname:node_1403,prsc:2;n:type:ShaderForge.SFN_ScreenPos,id:8032,x:33572,y:31442,varname:node_8032,prsc:2,sctp:0;n:type:ShaderForge.SFN_Tex2d,id:5205,x:34183,y:31660,ptovrint:False,ptlb:Normal,ptin:_Normal,varname:node_2289,prsc:2,ntxv:3,isnm:True|UVIN-9515-UVOUT;n:type:ShaderForge.SFN_Vector1,id:4850,x:33572,y:31600,varname:node_4850,prsc:2,v1:5;n:type:ShaderForge.SFN_Divide,id:3723,x:33748,y:31525,varname:node_3723,prsc:2|A-8032-UVOUT,B-4850-OUT;proporder:5932;pass:END;sub:END;*/

Shader "Carpathia/ColorEmissive" {
    Properties {
        _Emission ("Emission", Color) = (0.5,0.5,0.5,1)
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
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
            #pragma multi_compile_fwdbase_fullshadows
            #pragma exclude_renderers xbox360 ps3 flash d3d11_9x 
            #pragma target 3.0
            uniform float4 _Emission;
            struct VertexInput {
                float4 vertex : POSITION;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.pos = UnityObjectToClipPos(v.vertex);
                return o;
            }
            fixed4 frag(VertexOutput i) : COLOR {
/////// Vectors:
////// Lighting:
////// Emissive:
                float3 emissive = _Emission.rgb;
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
