// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.06 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.06;sub:START;pass:START;ps:flbk:,lico:0,lgpr:1,nrmq:0,limd:0,uamb:True,mssp:True,lmpd:False,lprd:False,rprd:False,enco:False,frtr:True,vitr:True,dbil:False,rmgx:True,rpth:0,hqsc:False,hqlp:False,tesm:0,blpr:0,bsrc:0,bdst:1,culm:0,dpts:6,wrdp:False,dith:2,ufog:False,aust:False,igpj:False,qofs:0,qpre:1,rntp:5,fgom:True,fgoc:True,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:1,x:34471,y:32161,varname:node_1,prsc:2|emission-7623-OUT;n:type:ShaderForge.SFN_Tex2d,id:295,x:33022,y:32290,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:node_295,prsc:2,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Add,id:3594,x:33694,y:32401,varname:node_3594,prsc:2|A-273-R,B-273-G,C-273-B;n:type:ShaderForge.SFN_Vector3,id:3426,x:32809,y:32504,varname:node_3426,prsc:2,v1:0.2126,v2:0.7152,v3:0.0722;n:type:ShaderForge.SFN_Multiply,id:4686,x:33201,y:32587,varname:node_4686,prsc:2|A-295-RGB,B-8437-OUT;n:type:ShaderForge.SFN_ComponentMask,id:273,x:33517,y:32391,varname:node_273,prsc:2,cc1:0,cc2:1,cc3:2,cc4:-1|IN-5466-OUT;n:type:ShaderForge.SFN_Power,id:4179,x:33387,y:32587,varname:node_4179,prsc:2|VAL-4686-OUT,EXP-1713-OUT;n:type:ShaderForge.SFN_Vector1,id:1713,x:33201,y:32732,varname:node_1713,prsc:2,v1:2;n:type:ShaderForge.SFN_RemapRange,id:9791,x:32425,y:32185,varname:node_9791,prsc:2,frmn:0,frmx:1,tomn:0.99,tomx:0.01|IN-6828-V;n:type:ShaderForge.SFN_ScreenPos,id:6828,x:32200,y:32098,varname:node_6828,prsc:2,sctp:2;n:type:ShaderForge.SFN_AmbientLight,id:6455,x:33863,y:32655,varname:node_6455,prsc:2;n:type:ShaderForge.SFN_Add,id:7623,x:34184,y:32316,varname:node_7623,prsc:2|A-295-RGB,B-6804-OUT;n:type:ShaderForge.SFN_OneMinus,id:9973,x:33851,y:32511,varname:node_9973,prsc:2|IN-3594-OUT;n:type:ShaderForge.SFN_Multiply,id:6804,x:34124,y:32562,varname:node_6804,prsc:2|A-9973-OUT,B-6455-RGB;n:type:ShaderForge.SFN_Append,id:184,x:32614,y:32128,varname:node_184,prsc:2|A-6828-U,B-9791-OUT;n:type:ShaderForge.SFN_Vector3,id:8437,x:33022,y:32615,varname:node_8437,prsc:2,v1:0.299,v2:0.587,v3:0.114;n:type:ShaderForge.SFN_Sqrt,id:5466,x:33555,y:32587,varname:node_5466,prsc:2|IN-4179-OUT;n:type:ShaderForge.SFN_Multiply,id:7174,x:33022,y:32476,varname:node_7174,prsc:2|A-295-RGB,B-3426-OUT;proporder:295;pass:END;sub:END;*/

Shader "Carpathia/Svaerten" {
    Properties {
        _MainTex ("MainTex", 2D) = "white" {}
    }
    SubShader {
        Tags {
            "RenderType"="Overlay"
        }
        LOD 200
        Pass {
            Name "ForwardBase"
            Tags {
                "LightMode"="ForwardBase"
            }
            ZTest Always
            ZWrite Off
            
            Fog {Mode Off}
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma exclude_renderers xbox360 ps3 flash d3d11_9x 
            #pragma target 3.0
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
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
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float3 node_273 = sqrt(pow((_MainTex_var.rgb*float3(0.299,0.587,0.114)),2.0)).rgb;
                float3 emissive = (_MainTex_var.rgb+((1.0 - (node_273.r+node_273.g+node_273.b))*UNITY_LIGHTMODEL_AMBIENT.rgb));
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
