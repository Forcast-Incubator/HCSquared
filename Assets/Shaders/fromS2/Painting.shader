// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'
// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.06 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.06;sub:START;pass:START;ps:flbk:,lico:1,lgpr:1,nrmq:0,limd:0,uamb:True,mssp:True,lmpd:False,lprd:False,rprd:False,enco:False,frtr:True,vitr:True,dbil:False,rmgx:True,rpth:0,hqsc:False,hqlp:False,tesm:0,blpr:1,bsrc:3,bdst:7,culm:2,dpts:2,wrdp:False,dith:0,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:3209,x:34007,y:32737,varname:node_3209,prsc:2|custl-4029-OUT,alpha-9646-OUT;n:type:ShaderForge.SFN_LightVector,id:8277,x:32027,y:32957,varname:node_8277,prsc:2;n:type:ShaderForge.SFN_Dot,id:9278,x:32263,y:32861,varname:node_9278,prsc:2,dt:4|A-42-OUT,B-8277-OUT;n:type:ShaderForge.SFN_NormalVector,id:42,x:32027,y:32799,prsc:2,pt:False;n:type:ShaderForge.SFN_Clamp01,id:7250,x:32629,y:32937,varname:node_7250,prsc:2|IN-2942-OUT;n:type:ShaderForge.SFN_Power,id:2942,x:32466,y:32937,varname:node_2942,prsc:2|VAL-9278-OUT,EXP-4518-OUT;n:type:ShaderForge.SFN_ValueProperty,id:4518,x:32263,y:33027,ptovrint:False,ptlb:Powah,ptin:_Powah,varname:node_4518,prsc:2,glob:False,v1:1.22;n:type:ShaderForge.SFN_LightAttenuation,id:7863,x:32550,y:32683,varname:node_7863,prsc:2;n:type:ShaderForge.SFN_LightColor,id:4909,x:33345,y:32930,varname:node_4909,prsc:2;n:type:ShaderForge.SFN_Round,id:1745,x:32785,y:32937,varname:node_1745,prsc:2|IN-7250-OUT;n:type:ShaderForge.SFN_Multiply,id:4029,x:33575,y:32930,varname:node_4029,prsc:2|A-7874-OUT,B-5446-OUT,C-4909-RGB;n:type:ShaderForge.SFN_AmbientLight,id:2122,x:33148,y:32704,varname:node_2122,prsc:2;n:type:ShaderForge.SFN_Multiply,id:5446,x:32974,y:32790,varname:node_5446,prsc:2|A-7870-OUT,B-1745-OUT;n:type:ShaderForge.SFN_Power,id:7870,x:32785,y:32773,varname:node_7870,prsc:2|VAL-7863-OUT,EXP-6914-OUT;n:type:ShaderForge.SFN_ValueProperty,id:6914,x:32550,y:32828,ptovrint:False,ptlb:Atten Powah,ptin:_AttenPowah,varname:node_6914,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_Add,id:7874,x:33345,y:32764,varname:node_7874,prsc:2|A-2122-RGB,B-8652-RGB;n:type:ShaderForge.SFN_Tex2d,id:8652,x:33148,y:32885,ptovrint:False,ptlb:Diffuse,ptin:_Diffuse,varname:node_8652,prsc:2,tex:550082e6556415640a7a6872e7626637,ntxv:0,isnm:False;n:type:ShaderForge.SFN_ViewPosition,id:761,x:32468,y:33235,varname:node_761,prsc:2;n:type:ShaderForge.SFN_Distance,id:1333,x:32705,y:33181,varname:node_1333,prsc:2|A-9291-XYZ,B-761-XYZ;n:type:ShaderForge.SFN_Divide,id:4591,x:32889,y:33200,varname:node_4591,prsc:2|A-1333-OUT,B-3789-OUT;n:type:ShaderForge.SFN_Add,id:3789,x:32705,y:33314,varname:node_3789,prsc:2|A-4419-OUT,B-9187-OUT;n:type:ShaderForge.SFN_Multiply,id:4419,x:32468,y:33368,varname:node_4419,prsc:2|A-9231-OUT,B-9187-OUT;n:type:ShaderForge.SFN_ValueProperty,id:9187,x:32138,y:33310,ptovrint:False,ptlb:Opacity Start,ptin:_OpacityStart,varname:node_9187,prsc:2,glob:False,v1:10;n:type:ShaderForge.SFN_ValueProperty,id:9231,x:32138,y:33213,ptovrint:False,ptlb:Opacity End,ptin:_OpacityEnd,varname:node_9231,prsc:2,glob:False,v1:0.2;n:type:ShaderForge.SFN_Subtract,id:1146,x:33073,y:33200,varname:node_1146,prsc:2|A-4591-OUT,B-9231-OUT;n:type:ShaderForge.SFN_Clamp01,id:3539,x:33253,y:33200,varname:node_3539,prsc:2|IN-1146-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:9291,x:32468,y:33097,varname:node_9291,prsc:2;n:type:ShaderForge.SFN_Step,id:4576,x:33345,y:33053,varname:node_4576,prsc:2|A-8652-A,B-1274-OUT;n:type:ShaderForge.SFN_Vector1,id:1274,x:33148,y:33053,varname:node_1274,prsc:2,v1:0.9;n:type:ShaderForge.SFN_OneMinus,id:3154,x:33511,y:33053,varname:node_3154,prsc:2|IN-4576-OUT;n:type:ShaderForge.SFN_Add,id:9646,x:33743,y:33095,varname:node_9646,prsc:2|A-3154-OUT,B-3539-OUT;proporder:4518-6914-8652-9187-9231;pass:END;sub:END;*/

Shader "Carpathia/Painting" {
    Properties {
        _Powah ("Powah", Float ) = 1.22
        _AttenPowah ("Atten Powah", Float ) = 1
        _Diffuse ("Diffuse", 2D) = "white" {}
        _OpacityStart ("Opacity Start", Float ) = 10
        _OpacityEnd ("Opacity End", Float ) = 0.2
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        Pass {
            Name "ForwardBase"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            Cull Off
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma multi_compile_fwdbase
            #pragma exclude_renderers gles xbox360 ps3 flash d3d11_9x 
            #pragma target 3.0
            uniform float _Powah;
            uniform float _AttenPowah;
            uniform sampler2D _Diffuse; uniform float4 _Diffuse_ST;
            uniform float _OpacityStart;
            uniform float _OpacityEnd;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = mul(unity_ObjectToWorld, float4(v.normal,0)).xyz;
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos(v.vertex);
                return o;
            }
            fixed4 frag(VertexOutput i) : COLOR {
/////// Vectors:
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                
                float nSign = sign( dot( viewDirection, i.normalDir ) ); // Reverse normal if this is a backface
                i.normalDir *= nSign;
                normalDirection *= nSign;
                
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = 1;
                float4 _Diffuse_var = tex2D(_Diffuse,TRANSFORM_TEX(i.uv0, _Diffuse));
                float3 finalColor = ((UNITY_LIGHTMODEL_AMBIENT.rgb+_Diffuse_var.rgb)*(pow(attenuation,_AttenPowah)*round(saturate(pow(0.5*dot(i.normalDir,lightDirection)+0.5,_Powah))))*_LightColor0.rgb);
                return fixed4(finalColor,((1.0 - step(_Diffuse_var.a,0.9))+saturate(((distance(i.posWorld.rgb,_WorldSpaceCameraPos)/((_OpacityEnd*_OpacityStart)+_OpacityStart))-_OpacityEnd))));
            }
            ENDCG
        }
        Pass {
            Name "ForwardAdd"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            Cull Off
            ZWrite Off
            
            Fog { Color (0,0,0,0) }
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #pragma multi_compile_fwdadd
            #pragma exclude_renderers gles xbox360 ps3 flash d3d11_9x 
            #pragma target 3.0
            uniform float _Powah;
            uniform float _AttenPowah;
            uniform sampler2D _Diffuse; uniform float4 _Diffuse_ST;
            uniform float _OpacityStart;
            uniform float _OpacityEnd;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                LIGHTING_COORDS(3,4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = mul(unity_ObjectToWorld, float4(v.normal,0)).xyz;
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos(v.vertex);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            fixed4 frag(VertexOutput i) : COLOR {
/////// Vectors:
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                
                float nSign = sign( dot( viewDirection, i.normalDir ) ); // Reverse normal if this is a backface
                i.normalDir *= nSign;
                normalDirection *= nSign;
                
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float4 _Diffuse_var = tex2D(_Diffuse,TRANSFORM_TEX(i.uv0, _Diffuse));
                float3 finalColor = ((UNITY_LIGHTMODEL_AMBIENT.rgb+_Diffuse_var.rgb)*(pow(attenuation,_AttenPowah)*round(saturate(pow(0.5*dot(i.normalDir,lightDirection)+0.5,_Powah))))*_LightColor0.rgb);
                return fixed4(finalColor * ((1.0 - step(_Diffuse_var.a,0.9))+saturate(((distance(i.posWorld.rgb,_WorldSpaceCameraPos)/((_OpacityEnd*_OpacityStart)+_OpacityStart))-_OpacityEnd))),0);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
