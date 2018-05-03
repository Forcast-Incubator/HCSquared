// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.06 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.06;sub:START;pass:START;ps:flbk:,lico:1,lgpr:1,nrmq:0,limd:0,uamb:True,mssp:True,lmpd:False,lprd:False,rprd:False,enco:False,frtr:True,vitr:True,dbil:False,rmgx:True,rpth:0,hqsc:False,hqlp:False,tesm:0,blpr:0,bsrc:0,bdst:1,culm:0,dpts:2,wrdp:True,dith:0,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:7413,x:33415,y:32555,varname:node_7413,prsc:2|emission-1342-OUT;n:type:ShaderForge.SFN_Tex2d,id:4969,x:32871,y:32916,ptovrint:False,ptlb:Mask,ptin:_Mask,varname:node_4969,prsc:2,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Color,id:6394,x:32661,y:32774,ptovrint:False,ptlb:Light,ptin:_Light,varname:node_8037,prsc:2,glob:False,c1:0.9852941,c2:0.9061508,c3:0.268058,c4:1;n:type:ShaderForge.SFN_Multiply,id:1342,x:33105,y:32853,varname:node_1342,prsc:2|A-6457-OUT,B-4969-B;n:type:ShaderForge.SFN_AmbientLight,id:1252,x:32661,y:32624,varname:node_1252,prsc:2;n:type:ShaderForge.SFN_Add,id:6457,x:32871,y:32704,varname:node_6457,prsc:2|A-1252-RGB,B-6394-RGB;n:type:ShaderForge.SFN_Panner,id:766,x:34037,y:31695,varname:node_766,prsc:2,spu:0.65,spv:0|DIST-2974-TSL;n:type:ShaderForge.SFN_Time,id:2974,x:33812,y:31705,varname:node_2974,prsc:2;n:type:ShaderForge.SFN_ScreenPos,id:1254,x:33636,y:31506,varname:node_1254,prsc:2,sctp:0;n:type:ShaderForge.SFN_Tex2d,id:9191,x:34247,y:31724,ptovrint:False,ptlb:Normal,ptin:_Normal,varname:node_2289,prsc:2,ntxv:3,isnm:True|UVIN-766-UVOUT;n:type:ShaderForge.SFN_Vector1,id:9828,x:33636,y:31664,varname:node_9828,prsc:2,v1:5;n:type:ShaderForge.SFN_Divide,id:3834,x:33812,y:31589,varname:node_3834,prsc:2|A-1254-UVOUT,B-9828-OUT;proporder:4969-6394;pass:END;sub:END;*/

Shader "Carpathia/ColorEmissiveDiffuse" {
    Properties {
        _Mask ("Mask", 2D) = "white" {}
        _Light ("Light", Color) = (0.9852941,0.9061508,0.268058,1)
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
            uniform sampler2D _Mask; uniform float4 _Mask_ST;
            uniform float4 _Light;
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
////// Lighting:
////// Emissive:
                float4 _Mask_var = tex2D(_Mask,TRANSFORM_TEX(i.uv0, _Mask));
                float3 emissive = ((UNITY_LIGHTMODEL_AMBIENT.rgb+_Light.rgb)*_Mask_var.b);
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
