// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'
// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.06 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.06;sub:START;pass:START;ps:flbk:,lico:1,lgpr:1,nrmq:1,limd:0,uamb:True,mssp:True,lmpd:False,lprd:False,rprd:False,enco:False,frtr:True,vitr:True,dbil:False,rmgx:True,rpth:0,hqsc:False,hqlp:False,tesm:0,blpr:0,bsrc:0,bdst:1,culm:2,dpts:2,wrdp:True,dith:0,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.25,fgcg:0.1209939,fgcb:0.07352941,fgca:1,fgde:0.02,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:8058,x:33574,y:32610,varname:node_8058,prsc:2|normal-7473-RGB,emission-212-OUT;n:type:ShaderForge.SFN_Color,id:5443,x:32694,y:32855,ptovrint:False,ptlb:Emission,ptin:_Emission,varname:node_5443,prsc:2,glob:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Tex2d,id:7473,x:32852,y:32634,ptovrint:False,ptlb:Scollin Bump,ptin:_ScollinBump,varname:node_7473,prsc:2,ntxv:3,isnm:True|UVIN-9352-UVOUT;n:type:ShaderForge.SFN_Panner,id:9352,x:32633,y:32614,varname:node_9352,prsc:2,spu:1,spv:0|UVIN-2562-UVOUT,DIST-9328-OUT;n:type:ShaderForge.SFN_TexCoord,id:2562,x:32394,y:32614,varname:node_2562,prsc:2,uv:0;n:type:ShaderForge.SFN_Time,id:2157,x:32164,y:32758,varname:node_2157,prsc:2;n:type:ShaderForge.SFN_Multiply,id:9328,x:32394,y:32773,varname:node_9328,prsc:2|A-2157-T,B-6746-OUT;n:type:ShaderForge.SFN_ValueProperty,id:6746,x:32177,y:32937,ptovrint:False,ptlb:scroll Speed,ptin:_scrollSpeed,varname:node_6746,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_Multiply,id:212,x:33180,y:32879,varname:node_212,prsc:2|A-5443-RGB,B-9697-OUT,C-5253-RGB;n:type:ShaderForge.SFN_LightVector,id:929,x:31770,y:33487,varname:node_929,prsc:2;n:type:ShaderForge.SFN_Dot,id:2990,x:32006,y:33391,varname:node_2990,prsc:2,dt:4|A-4757-OUT,B-929-OUT;n:type:ShaderForge.SFN_NormalVector,id:4757,x:31770,y:33329,prsc:2,pt:True;n:type:ShaderForge.SFN_Clamp01,id:907,x:32372,y:33467,varname:node_907,prsc:2|IN-1017-OUT;n:type:ShaderForge.SFN_Power,id:1017,x:32209,y:33467,varname:node_1017,prsc:2|VAL-2990-OUT,EXP-2889-OUT;n:type:ShaderForge.SFN_ValueProperty,id:2889,x:32006,y:33557,ptovrint:False,ptlb:Powah,ptin:_Powah,varname:node_4518,prsc:2,glob:False,v1:1.22;n:type:ShaderForge.SFN_LightAttenuation,id:8305,x:32079,y:33171,varname:node_8305,prsc:2;n:type:ShaderForge.SFN_Round,id:7758,x:32652,y:33467,varname:node_7758,prsc:2|IN-907-OUT;n:type:ShaderForge.SFN_Multiply,id:9697,x:32840,y:33249,varname:node_9697,prsc:2|A-5473-OUT,B-907-OUT;n:type:ShaderForge.SFN_Power,id:5473,x:32413,y:33098,varname:node_5473,prsc:2|VAL-8305-OUT,EXP-5531-OUT;n:type:ShaderForge.SFN_ValueProperty,id:5531,x:32094,y:33079,ptovrint:False,ptlb:Atten Powah,ptin:_AttenPowah,varname:node_6914,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_LightColor,id:5253,x:32773,y:33000,varname:node_5253,prsc:2;proporder:5443-2889-5531-7473-6746;pass:END;sub:END;*/

Shader "Carpathia/bandScrollin" {
    Properties {
        _Emission ("Emission", Color) = (0.5,0.5,0.5,1)
        _Powah ("Powah", Float ) = 1.22
        _AttenPowah ("Atten Powah", Float ) = 1
        _ScollinBump ("Scollin Bump", 2D) = "bump" {}
        _scrollSpeed ("scroll Speed", Float ) = 1
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
            Cull Off
            
            
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
            uniform float4 _TimeEditor;
            uniform float4 _Emission;
            uniform sampler2D _ScollinBump; uniform float4 _ScollinBump_ST;
            uniform float _scrollSpeed;
            uniform float _Powah;
            uniform float _AttenPowah;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 binormalDir : TEXCOORD4;
                LIGHTING_COORDS(5,6)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
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
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.binormalDir, i.normalDir);
/////// Vectors:
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float4 node_2157 = _Time + _TimeEditor;
                float2 node_9352 = (i.uv0+(node_2157.g*_scrollSpeed)*float2(1,0));
                float3 _ScollinBump_var = UnpackNormal(tex2D(_ScollinBump,TRANSFORM_TEX(node_9352, _ScollinBump)));
                float3 normalLocal = _ScollinBump_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                
                float nSign = sign( dot( viewDirection, i.normalDir ) ); // Reverse normal if this is a backface
                i.normalDir *= nSign;
                normalDirection *= nSign;
                
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
////// Emissive:
                float node_907 = saturate(pow(0.5*dot(normalDirection,lightDirection)+0.5,_Powah));
                float3 emissive = (_Emission.rgb*(pow(attenuation,_AttenPowah)*node_907)*_LightColor0.rgb);
                float3 finalColor = emissive;
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
            Cull Off
            
            
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
            uniform float4 _TimeEditor;
            uniform float4 _Emission;
            uniform sampler2D _ScollinBump; uniform float4 _ScollinBump_ST;
            uniform float _scrollSpeed;
            uniform float _Powah;
            uniform float _AttenPowah;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 binormalDir : TEXCOORD4;
                LIGHTING_COORDS(5,6)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
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
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.binormalDir, i.normalDir);
/////// Vectors:
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float4 node_2157 = _Time + _TimeEditor;
                float2 node_9352 = (i.uv0+(node_2157.g*_scrollSpeed)*float2(1,0));
                float3 _ScollinBump_var = UnpackNormal(tex2D(_ScollinBump,TRANSFORM_TEX(node_9352, _ScollinBump)));
                float3 normalLocal = _ScollinBump_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                
                float nSign = sign( dot( viewDirection, i.normalDir ) ); // Reverse normal if this is a backface
                i.normalDir *= nSign;
                normalDirection *= nSign;
                
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 finalColor = 0;
                return fixed4(finalColor * 1,0);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
