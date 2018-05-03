// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.06 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.06;sub:START;pass:START;ps:flbk:,lico:1,lgpr:1,nrmq:0,limd:0,uamb:True,mssp:True,lmpd:False,lprd:False,rprd:False,enco:False,frtr:True,vitr:True,dbil:False,rmgx:True,rpth:0,hqsc:False,hqlp:False,tesm:0,blpr:0,bsrc:0,bdst:1,culm:0,dpts:2,wrdp:True,dith:0,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:2079,x:32812,y:32584,varname:node_2079,prsc:2|emission-5184-OUT;n:type:ShaderForge.SFN_Color,id:8129,x:32091,y:32685,ptovrint:False,ptlb:smoke,ptin:_smoke,varname:node_8129,prsc:2,glob:False,c1:0.4511649,c2:0.4980392,c3:0.4804124,c4:1;n:type:ShaderForge.SFN_Slider,id:5676,x:31934,y:32861,ptovrint:False,ptlb:SVARTAN slider,ptin:_SVARTANslider,varname:node_5676,prsc:2,min:0,cur:0.3241082,max:1;n:type:ShaderForge.SFN_VertexColor,id:7680,x:32091,y:32933,varname:node_7680,prsc:2;n:type:ShaderForge.SFN_Tex2d,id:8330,x:32091,y:33080,ptovrint:False,ptlb:squikkely,ptin:_squikkely,varname:node_8330,prsc:2,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:1351,x:32328,y:32933,varname:node_1351,prsc:2|A-5676-OUT,B-7680-A,C-8330-R;n:type:ShaderForge.SFN_Multiply,id:5184,x:32553,y:32684,varname:node_5184,prsc:2|A-8129-RGB,B-1351-OUT;proporder:8129-5676-8330;pass:END;sub:END;*/

Shader "Carpathia/smokeCigar" {
    Properties {
        _smoke ("smoke", Color) = (0.4511649,0.4980392,0.4804124,1)
        _SVARTANslider ("SVARTAN slider", Range(0, 1)) = 0.3241082
        _squikkely ("squikkely", 2D) = "white" {}
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        LOD 200
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
            uniform float4 _smoke;
            uniform float _SVARTANslider;
            uniform sampler2D _squikkely; uniform float4 _squikkely_ST;
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
                float4 _squikkely_var = tex2D(_squikkely,TRANSFORM_TEX(i.uv0, _squikkely));
                float3 emissive = (_smoke.rgb*(_SVARTANslider*i.vertexColor.a*_squikkely_var.r));
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
