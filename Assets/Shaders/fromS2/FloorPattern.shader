// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'
// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.06 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.06;sub:START;pass:START;ps:flbk:,lico:1,lgpr:1,nrmq:0,limd:0,uamb:True,mssp:True,lmpd:False,lprd:False,rprd:False,enco:False,frtr:True,vitr:True,dbil:False,rmgx:True,rpth:0,hqsc:False,hqlp:False,tesm:0,blpr:0,bsrc:0,bdst:1,culm:0,dpts:2,wrdp:True,dith:0,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:3209,x:34167,y:32368,varname:node_3209,prsc:2|normal-9779-RGB,custl-3029-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:1561,x:33091,y:32269,varname:node_1561,prsc:2;n:type:ShaderForge.SFN_Tex2d,id:9779,x:33705,y:32169,ptovrint:False,ptlb:Normal Map,ptin:_NormalMap,varname:node_9779,prsc:2,tex:8e624259447f2894b9603fdfabe69f9d,ntxv:3,isnm:True|UVIN-9326-OUT;n:type:ShaderForge.SFN_Tex2d,id:4730,x:33650,y:32414,ptovrint:False,ptlb:Diffuse,ptin:_Diffuse,varname:node_4730,prsc:2,ntxv:2,isnm:False|UVIN-9326-OUT;n:type:ShaderForge.SFN_ComponentMask,id:9326,x:33395,y:32251,varname:node_9326,prsc:2,cc1:0,cc2:2,cc3:-1,cc4:-1|IN-1561-XYZ;n:type:ShaderForge.SFN_LightVector,id:9565,x:32305,y:33084,varname:node_9565,prsc:2;n:type:ShaderForge.SFN_Dot,id:4752,x:32541,y:32988,varname:node_4752,prsc:2,dt:4|A-83-OUT,B-9565-OUT;n:type:ShaderForge.SFN_NormalVector,id:83,x:32305,y:32926,prsc:2,pt:True;n:type:ShaderForge.SFN_Color,id:1243,x:33340,y:32688,ptovrint:False,ptlb:Light,ptin:_Light,varname:node_8037,prsc:2,glob:False,c1:0.9852941,c2:0.9061508,c3:0.268058,c4:1;n:type:ShaderForge.SFN_Clamp01,id:5019,x:32907,y:33064,varname:node_5019,prsc:2|IN-1501-OUT;n:type:ShaderForge.SFN_Power,id:1501,x:32744,y:33064,varname:node_1501,prsc:2|VAL-4752-OUT,EXP-6902-OUT;n:type:ShaderForge.SFN_ValueProperty,id:6902,x:32541,y:33154,ptovrint:False,ptlb:Powah,ptin:_Powah,varname:node_4518,prsc:2,glob:False,v1:1.22;n:type:ShaderForge.SFN_LightAttenuation,id:6958,x:32541,y:32709,varname:node_6958,prsc:2;n:type:ShaderForge.SFN_LightColor,id:5232,x:33536,y:33041,varname:node_5232,prsc:2;n:type:ShaderForge.SFN_Round,id:7640,x:33063,y:33064,varname:node_7640,prsc:2|IN-5019-OUT;n:type:ShaderForge.SFN_Multiply,id:3029,x:33962,y:32637,varname:node_3029,prsc:2|A-1243-RGB,B-9782-OUT,C-8538-OUT,D-4730-RGB;n:type:ShaderForge.SFN_AmbientLight,id:2944,x:33536,y:32898,varname:node_2944,prsc:2;n:type:ShaderForge.SFN_Multiply,id:9782,x:33340,y:32862,varname:node_9782,prsc:2|A-5918-OUT,B-7640-OUT;n:type:ShaderForge.SFN_Power,id:5918,x:32906,y:32771,varname:node_5918,prsc:2|VAL-6958-OUT,EXP-3490-OUT;n:type:ShaderForge.SFN_ValueProperty,id:3490,x:32541,y:32857,ptovrint:False,ptlb:Atten Powah,ptin:_AttenPowah,varname:node_6914,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_Add,id:8538,x:33879,y:32855,varname:node_8538,prsc:2|A-2944-RGB,B-5232-RGB;proporder:9779-4730-1243-6902-3490;pass:END;sub:END;*/

Shader "Carpathia/FloorPattern" {
    Properties {
        _NormalMap ("Normal Map", 2D) = "bump" {}
        _Diffuse ("Diffuse", 2D) = "black" {}
        _Light ("Light", Color) = (0.9852941,0.9061508,0.268058,1)
        _Powah ("Powah", Float ) = 1.22
        _AttenPowah ("Atten Powah", Float ) = 1
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
            uniform sampler2D _NormalMap; uniform float4 _NormalMap_ST;
            uniform sampler2D _Diffuse; uniform float4 _Diffuse_ST;
            uniform float4 _Light;
            uniform float _Powah;
            uniform float _AttenPowah;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                float3 tangentDir : TEXCOORD2;
                float3 binormalDir : TEXCOORD3;
                LIGHTING_COORDS(4,5)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.normalDir = mul(unity_ObjectToWorld, float4(v.normal,0)).xyz;
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.binormalDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos(v.vertex);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            fixed4 frag(VertexOutput i) : COLOR {
                float3x3 tangentTransform = float3x3( i.tangentDir, i.binormalDir, i.normalDir);
/////// Vectors:
                float2 node_9326 = i.posWorld.rgb.rb;
                float3 _NormalMap_var = UnpackNormal(tex2D(_NormalMap,TRANSFORM_TEX(node_9326, _NormalMap)));
                float3 normalLocal = _NormalMap_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float4 _Diffuse_var = tex2D(_Diffuse,TRANSFORM_TEX(node_9326, _Diffuse));
                float3 finalColor = (_Light.rgb*(pow(attenuation,_AttenPowah)*round(saturate(pow(0.5*dot(normalDirection,lightDirection)+0.5,_Powah))))*(UNITY_LIGHTMODEL_AMBIENT.rgb+_LightColor0.rgb)*_Diffuse_var.rgb);
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
            uniform sampler2D _NormalMap; uniform float4 _NormalMap_ST;
            uniform sampler2D _Diffuse; uniform float4 _Diffuse_ST;
            uniform float4 _Light;
            uniform float _Powah;
            uniform float _AttenPowah;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                float3 tangentDir : TEXCOORD2;
                float3 binormalDir : TEXCOORD3;
                LIGHTING_COORDS(4,5)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.normalDir = mul(unity_ObjectToWorld, float4(v.normal,0)).xyz;
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.binormalDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos(v.vertex);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            fixed4 frag(VertexOutput i) : COLOR {
                float3x3 tangentTransform = float3x3( i.tangentDir, i.binormalDir, i.normalDir);
/////// Vectors:
                float2 node_9326 = i.posWorld.rgb.rb;
                float3 _NormalMap_var = UnpackNormal(tex2D(_NormalMap,TRANSFORM_TEX(node_9326, _NormalMap)));
                float3 normalLocal = _NormalMap_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float4 _Diffuse_var = tex2D(_Diffuse,TRANSFORM_TEX(node_9326, _Diffuse));
                float3 finalColor = (_Light.rgb*(pow(attenuation,_AttenPowah)*round(saturate(pow(0.5*dot(normalDirection,lightDirection)+0.5,_Powah))))*(UNITY_LIGHTMODEL_AMBIENT.rgb+_LightColor0.rgb)*_Diffuse_var.rgb);
                return fixed4(finalColor * 1,0);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
