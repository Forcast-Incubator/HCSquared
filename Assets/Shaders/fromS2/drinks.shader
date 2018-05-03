// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'
// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.06 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.06;sub:START;pass:START;ps:flbk:,lico:1,lgpr:1,nrmq:0,limd:0,uamb:True,mssp:True,lmpd:False,lprd:False,rprd:False,enco:False,frtr:True,vitr:True,dbil:False,rmgx:True,rpth:0,hqsc:False,hqlp:False,tesm:0,blpr:0,bsrc:0,bdst:1,culm:0,dpts:2,wrdp:True,dith:0,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:3570,x:32839,y:32684,varname:node_3570,prsc:2|custl-4314-OUT;n:type:ShaderForge.SFN_LightVector,id:729,x:31483,y:33303,varname:node_729,prsc:2;n:type:ShaderForge.SFN_NormalVector,id:3975,x:31483,y:33153,prsc:2,pt:False;n:type:ShaderForge.SFN_Color,id:3000,x:31750,y:32788,ptovrint:False,ptlb:Light,ptin:_Light,varname:node_8037,prsc:2,glob:False,c1:0.9852941,c2:0.9061508,c3:0.268058,c4:1;n:type:ShaderForge.SFN_Color,id:7531,x:31750,y:32478,ptovrint:False,ptlb:Shadow,ptin:_Shadow,varname:node_7429,prsc:2,glob:False,c1:0.1098039,c2:0.05490196,c3:0.05490196,c4:1;n:type:ShaderForge.SFN_Clamp01,id:343,x:32146,y:33164,varname:node_343,prsc:2|IN-6060-OUT;n:type:ShaderForge.SFN_Power,id:6060,x:31991,y:33164,varname:node_6060,prsc:2|VAL-5243-OUT,EXP-1967-OUT;n:type:ShaderForge.SFN_ValueProperty,id:1967,x:31721,y:33334,ptovrint:False,ptlb:powah,ptin:_powah,varname:node_4518,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_LightColor,id:849,x:31604,y:32853,varname:node_849,prsc:2;n:type:ShaderForge.SFN_Multiply,id:7898,x:32195,y:32809,varname:node_7898,prsc:2|A-7317-OUT,B-343-OUT;n:type:ShaderForge.SFN_Multiply,id:2306,x:32477,y:32912,varname:node_2306,prsc:2|A-7898-OUT,B-8496-OUT;n:type:ShaderForge.SFN_AmbientLight,id:5099,x:31604,y:32991,varname:node_5099,prsc:2;n:type:ShaderForge.SFN_Add,id:8496,x:31837,y:32949,varname:node_8496,prsc:2|A-849-RGB,B-5099-RGB;n:type:ShaderForge.SFN_Dot,id:5243,x:31721,y:33153,varname:node_5243,prsc:2,dt:3|A-3975-OUT,B-729-OUT;n:type:ShaderForge.SFN_OneMinus,id:6171,x:32400,y:33221,varname:node_6171,prsc:2|IN-343-OUT;n:type:ShaderForge.SFN_Multiply,id:809,x:32462,y:32782,varname:node_809,prsc:2|A-9991-OUT,B-6171-OUT;n:type:ShaderForge.SFN_Add,id:4314,x:32664,y:32882,varname:node_4314,prsc:2|A-809-OUT,B-2306-OUT;n:type:ShaderForge.SFN_Color,id:8097,x:31750,y:32632,ptovrint:False,ptlb:SVARTAN,ptin:_SVARTAN,varname:node_8097,prsc:2,glob:False,c1:0.1098039,c2:0.05490196,c3:0.05490196,c4:1;n:type:ShaderForge.SFN_Lerp,id:9991,x:32168,y:32561,varname:node_9991,prsc:2|A-7531-RGB,B-8097-RGB,T-4608-OUT;n:type:ShaderForge.SFN_Lerp,id:7317,x:31987,y:32798,varname:node_7317,prsc:2|A-3000-RGB,B-8097-RGB,T-4608-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:4272,x:31687,y:32274,varname:node_4272,prsc:2;n:type:ShaderForge.SFN_ViewPosition,id:2881,x:31687,y:32150,varname:node_2881,prsc:2;n:type:ShaderForge.SFN_Distance,id:7861,x:31902,y:32215,varname:node_7861,prsc:2|A-2881-XYZ,B-4272-XYZ;n:type:ShaderForge.SFN_RemapRange,id:4608,x:31956,y:32345,varname:node_4608,prsc:2,frmn:0,frmx:20,tomn:0,tomx:1|IN-7861-OUT;n:type:ShaderForge.SFN_LightAttenuation,id:1257,x:31961,y:32675,varname:node_1257,prsc:2;proporder:3000-7531-1967-8097;pass:END;sub:END;*/

Shader "Carpathia/drinks" {
    Properties {
        _Light ("Light", Color) = (0.9852941,0.9061508,0.268058,1)
        _Shadow ("Shadow", Color) = (0.1098039,0.05490196,0.05490196,1)
        _powah ("powah", Float ) = 1
        _SVARTAN ("SVARTAN", Color) = (0.1098039,0.05490196,0.05490196,1)
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
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma exclude_renderers xbox360 ps3 flash d3d11_9x 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform float4 _Light;
            uniform float4 _Shadow;
            uniform float _powah;
            uniform float4 _SVARTAN;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                LIGHTING_COORDS(2,3)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.normalDir = mul(unity_ObjectToWorld, float4(v.normal,0)).xyz;
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos(v.vertex);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            fixed4 frag(VertexOutput i) : COLOR {
/////// Vectors:
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float node_4608 = (distance(_WorldSpaceCameraPos,i.posWorld.rgb)*0.05+0.0);
                float node_343 = saturate(pow(abs(dot(i.normalDir,lightDirection)),_powah));
                float3 finalColor = ((lerp(_Shadow.rgb,_SVARTAN.rgb,node_4608)*(1.0 - node_343))+((lerp(_Light.rgb,_SVARTAN.rgb,node_4608)*node_343)*(_LightColor0.rgb+UNITY_LIGHTMODEL_AMBIENT.rgb)));
                return fixed4(finalColor,1);
            }
            ENDCG
        }
        Pass {
            Name "ForwardAdd"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            
            
            Fog { Color (0,0,0,0) }
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma exclude_renderers xbox360 ps3 flash d3d11_9x 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform float4 _Light;
            uniform float4 _Shadow;
            uniform float _powah;
            uniform float4 _SVARTAN;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                LIGHTING_COORDS(2,3)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.normalDir = mul(unity_ObjectToWorld, float4(v.normal,0)).xyz;
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos(v.vertex);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            fixed4 frag(VertexOutput i) : COLOR {
/////// Vectors:
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float node_4608 = (distance(_WorldSpaceCameraPos,i.posWorld.rgb)*0.05+0.0);
                float node_343 = saturate(pow(abs(dot(i.normalDir,lightDirection)),_powah));
                float3 finalColor = ((lerp(_Shadow.rgb,_SVARTAN.rgb,node_4608)*(1.0 - node_343))+((lerp(_Light.rgb,_SVARTAN.rgb,node_4608)*node_343)*(_LightColor0.rgb+UNITY_LIGHTMODEL_AMBIENT.rgb)));
                return fixed4(finalColor * 1,0);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
