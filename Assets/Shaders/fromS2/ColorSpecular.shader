// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'
// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.06 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.06;sub:START;pass:START;ps:flbk:,lico:1,lgpr:1,nrmq:0,limd:0,uamb:True,mssp:True,lmpd:False,lprd:False,rprd:False,enco:False,frtr:True,vitr:True,dbil:False,rmgx:True,rpth:0,hqsc:False,hqlp:False,tesm:0,blpr:0,bsrc:0,bdst:1,culm:0,dpts:2,wrdp:True,dith:0,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:3209,x:34956,y:32859,varname:node_3209,prsc:2|custl-8806-OUT;n:type:ShaderForge.SFN_LightVector,id:8277,x:32650,y:33245,varname:node_8277,prsc:2;n:type:ShaderForge.SFN_Dot,id:9278,x:33238,y:33134,varname:node_9278,prsc:2,dt:0|A-42-OUT,B-8277-OUT;n:type:ShaderForge.SFN_NormalVector,id:42,x:32650,y:33098,prsc:2,pt:False;n:type:ShaderForge.SFN_Color,id:8037,x:34162,y:32803,ptovrint:False,ptlb:Light,ptin:_Light,varname:node_8037,prsc:2,glob:False,c1:0.9852941,c2:0.9061508,c3:0.268058,c4:1;n:type:ShaderForge.SFN_ValueProperty,id:4518,x:33238,y:33313,ptovrint:False,ptlb:Powah,ptin:_Powah,varname:node_4518,prsc:2,glob:False,v1:1.22;n:type:ShaderForge.SFN_Clamp01,id:3727,x:33802,y:33266,varname:node_3727,prsc:2|IN-3001-OUT;n:type:ShaderForge.SFN_Power,id:8101,x:33458,y:33283,varname:node_8101,prsc:2|VAL-9278-OUT,EXP-4518-OUT;n:type:ShaderForge.SFN_LightAttenuation,id:9535,x:33661,y:33137,varname:node_9535,prsc:2;n:type:ShaderForge.SFN_LightColor,id:4012,x:33881,y:32812,varname:node_4012,prsc:2;n:type:ShaderForge.SFN_Multiply,id:6449,x:34568,y:32962,varname:node_6449,prsc:2|A-8037-RGB,B-749-OUT,C-9301-OUT;n:type:ShaderForge.SFN_AmbientLight,id:3914,x:33881,y:32940,varname:node_3914,prsc:2;n:type:ShaderForge.SFN_Add,id:749,x:34162,y:32953,varname:node_749,prsc:2|A-4012-RGB,B-3914-RGB;n:type:ShaderForge.SFN_Multiply,id:9301,x:34179,y:33237,varname:node_9301,prsc:2|A-9833-OUT,B-3727-OUT;n:type:ShaderForge.SFN_RemapRange,id:3001,x:33629,y:33266,varname:node_3001,prsc:2,frmn:0,frmx:1,tomn:-9,tomx:9|IN-8101-OUT;n:type:ShaderForge.SFN_Power,id:9833,x:33989,y:33146,varname:node_9833,prsc:2|VAL-9535-OUT,EXP-4168-OUT;n:type:ShaderForge.SFN_ValueProperty,id:4168,x:33802,y:33202,ptovrint:False,ptlb:Atten Powah,ptin:_AttenPowah,varname:node_4168,prsc:2,glob:False,v1:0.7;n:type:ShaderForge.SFN_Dot,id:6426,x:33284,y:33500,varname:node_6426,prsc:2,dt:4|A-8277-OUT,B-42-OUT;n:type:ShaderForge.SFN_Clamp01,id:5931,x:33998,y:33689,varname:node_5931,prsc:2|IN-1905-OUT;n:type:ShaderForge.SFN_Power,id:939,x:33629,y:33689,varname:node_939,prsc:2|VAL-6426-OUT,EXP-8283-OUT;n:type:ShaderForge.SFN_LightAttenuation,id:8695,x:33625,y:33458,varname:node_8695,prsc:2;n:type:ShaderForge.SFN_Multiply,id:3648,x:34329,y:33625,varname:node_3648,prsc:2|A-9184-OUT,B-5931-OUT;n:type:ShaderForge.SFN_RemapRange,id:1905,x:33825,y:33689,varname:node_1905,prsc:2,frmn:0,frmx:1,tomn:-20,tomx:20|IN-939-OUT;n:type:ShaderForge.SFN_ValueProperty,id:8283,x:33432,y:33762,ptovrint:False,ptlb:hilijt Powah,ptin:_hilijtPowah,varname:_Powah_copy,prsc:2,glob:False,v1:1.22;n:type:ShaderForge.SFN_Add,id:8806,x:34717,y:33125,varname:node_8806,prsc:2|A-6449-OUT,B-420-OUT;n:type:ShaderForge.SFN_Multiply,id:420,x:34576,y:33461,varname:node_420,prsc:2|A-749-OUT,B-3648-OUT,C-8037-A,D-9301-OUT;n:type:ShaderForge.SFN_RemapRange,id:9184,x:34144,y:33499,varname:node_9184,prsc:2,frmn:0,frmx:1,tomn:0,tomx:0.4|IN-94-OUT;n:type:ShaderForge.SFN_ValueProperty,id:6835,x:33625,y:33611,ptovrint:False,ptlb:hilijt atten Powah,ptin:_hilijtattenPowah,varname:node_6835,prsc:2,glob:False,v1:0;n:type:ShaderForge.SFN_Power,id:714,x:33813,y:33499,varname:node_714,prsc:2|VAL-8695-OUT,EXP-6835-OUT;n:type:ShaderForge.SFN_Clamp01,id:94,x:33979,y:33499,varname:node_94,prsc:2|IN-714-OUT;proporder:8037-4518-4168-8283-6835;pass:END;sub:END;*/

Shader "Carpathia/ColorSpecular" {
    Properties {
        _Light ("Light", Color) = (0.9852941,0.9061508,0.268058,1)
        _Powah ("Powah", Float ) = 1.22
        _AttenPowah ("Atten Powah", Float ) = 0.7
        _hilijtPowah ("hilijt Powah", Float ) = 1.22
        _hilijtattenPowah ("hilijt atten Powah", Float ) = 0
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
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma exclude_renderers xbox360 ps3 flash d3d11_9x 
            #pragma target 3.0
            uniform float4 _Light;
            uniform float _Powah;
            uniform float _AttenPowah;
            uniform float _hilijtPowah;
            uniform float _hilijtattenPowah;
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
                float attenuation = LIGHT_ATTENUATION(i);
                float3 node_749 = (_LightColor0.rgb+UNITY_LIGHTMODEL_AMBIENT.rgb);
                float node_9301 = (pow(attenuation,_AttenPowah)*saturate((pow(dot(i.normalDir,lightDirection),_Powah)*18.0+-9.0)));
                float3 finalColor = ((_Light.rgb*node_749*node_9301)+(node_749*((saturate(pow(attenuation,_hilijtattenPowah))*0.4+0.0)*saturate((pow(0.5*dot(lightDirection,i.normalDir)+0.5,_hilijtPowah)*40.0+-20.0)))*_Light.a*node_9301));
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
            #include "Lighting.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma exclude_renderers xbox360 ps3 flash d3d11_9x 
            #pragma target 3.0
            uniform float4 _Light;
            uniform float _Powah;
            uniform float _AttenPowah;
            uniform float _hilijtPowah;
            uniform float _hilijtattenPowah;
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
                float attenuation = LIGHT_ATTENUATION(i);
                float3 node_749 = (_LightColor0.rgb+UNITY_LIGHTMODEL_AMBIENT.rgb);
                float node_9301 = (pow(attenuation,_AttenPowah)*saturate((pow(dot(i.normalDir,lightDirection),_Powah)*18.0+-9.0)));
                float3 finalColor = ((_Light.rgb*node_749*node_9301)+(node_749*((saturate(pow(attenuation,_hilijtattenPowah))*0.4+0.0)*saturate((pow(0.5*dot(lightDirection,i.normalDir)+0.5,_hilijtPowah)*40.0+-20.0)))*_Light.a*node_9301));
                return fixed4(finalColor * 1,0);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
