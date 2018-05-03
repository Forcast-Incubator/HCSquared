// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'
// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.06 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.06;sub:START;pass:START;ps:flbk:,lico:1,lgpr:1,nrmq:1,limd:0,uamb:True,mssp:True,lmpd:False,lprd:False,rprd:False,enco:False,frtr:True,vitr:True,dbil:False,rmgx:True,rpth:0,hqsc:False,hqlp:False,tesm:0,blpr:0,bsrc:0,bdst:1,culm:2,dpts:2,wrdp:True,dith:0,ufog:True,aust:True,igpj:False,qofs:0,qpre:2,rntp:3,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:3209,x:33380,y:32564,varname:node_3209,prsc:2|normal-9119-OUT,custl-7634-OUT,clip-8286-OUT;n:type:ShaderForge.SFN_Tex2d,id:1987,x:32893,y:32906,ptovrint:False,ptlb:Alpha,ptin:_Alpha,varname:node_1987,prsc:2,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:8487,x:32710,y:32152,ptovrint:False,ptlb:Normal Map,ptin:_NormalMap,varname:node_9779,prsc:2,tex:8e624259447f2894b9603fdfabe69f9d,ntxv:3,isnm:True;n:type:ShaderForge.SFN_LightVector,id:6906,x:31140,y:32954,varname:node_6906,prsc:2;n:type:ShaderForge.SFN_Dot,id:1350,x:31376,y:32858,varname:node_1350,prsc:2,dt:4|A-3270-OUT,B-6906-OUT;n:type:ShaderForge.SFN_NormalVector,id:3270,x:31140,y:32796,prsc:2,pt:True;n:type:ShaderForge.SFN_Clamp01,id:5499,x:32016,y:32944,varname:node_5499,prsc:2|IN-498-OUT;n:type:ShaderForge.SFN_Power,id:498,x:31853,y:32944,varname:node_498,prsc:2|VAL-1350-OUT,EXP-907-OUT;n:type:ShaderForge.SFN_ValueProperty,id:7347,x:31376,y:33122,ptovrint:False,ptlb:Light Power,ptin:_LightPower,varname:node_4518,prsc:2,glob:False,v1:1.22;n:type:ShaderForge.SFN_LightAttenuation,id:8162,x:32082,y:32709,varname:node_8162,prsc:2;n:type:ShaderForge.SFN_LightColor,id:1000,x:32506,y:32855,varname:node_1000,prsc:2;n:type:ShaderForge.SFN_Round,id:1332,x:32172,y:32944,varname:node_1332,prsc:2|IN-5499-OUT;n:type:ShaderForge.SFN_Multiply,id:7634,x:32715,y:32696,varname:node_7634,prsc:2|A-7429-OUT,B-858-OUT,C-7936-OUT;n:type:ShaderForge.SFN_AmbientLight,id:9315,x:32506,y:32980,varname:node_9315,prsc:2;n:type:ShaderForge.SFN_Add,id:7936,x:32715,y:32843,varname:node_7936,prsc:2|A-1000-RGB,B-9315-RGB;n:type:ShaderForge.SFN_Multiply,id:858,x:32361,y:32797,varname:node_858,prsc:2|A-8162-OUT,B-1332-OUT;n:type:ShaderForge.SFN_VertexColor,id:9765,x:31071,y:32220,varname:node_9765,prsc:2;n:type:ShaderForge.SFN_Lerp,id:9119,x:33118,y:32502,varname:node_9119,prsc:2|A-8487-RGB,B-8385-OUT,T-9765-A;n:type:ShaderForge.SFN_Vector3,id:8385,x:32710,y:32321,varname:node_8385,prsc:2,v1:0.5019608,v2:0.5019608,v3:1;n:type:ShaderForge.SFN_Lerp,id:7429,x:32518,y:32593,varname:node_7429,prsc:2|A-9215-RGB,B-1244-RGB,T-9765-A;n:type:ShaderForge.SFN_Tex2d,id:1244,x:32281,y:32562,ptovrint:False,ptlb:Diffuse,ptin:_Diffuse,varname:node_1244,prsc:2,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Color,id:9215,x:32281,y:32391,ptovrint:False,ptlb:Tint,ptin:_Tint,varname:node_9215,prsc:2,glob:False,c1:1,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Lerp,id:8286,x:33148,y:32963,varname:node_8286,prsc:2|A-1987-R,B-7273-OUT,T-9765-A;n:type:ShaderForge.SFN_Vector1,id:7273,x:32893,y:33086,varname:node_7273,prsc:2,v1:1;n:type:ShaderForge.SFN_ValueProperty,id:8361,x:31376,y:33029,ptovrint:False,ptlb:Light Power Normal,ptin:_LightPowerNormal,varname:_LightPower_copy,prsc:2,glob:False,v1:1.22;n:type:ShaderForge.SFN_Lerp,id:907,x:31647,y:33008,varname:node_907,prsc:2|A-8361-OUT,B-7347-OUT,T-9765-A;proporder:1987-8487-7347-1244-9215-8361;pass:END;sub:END;*/

Shader "Carpathia/DiffuseNormalAlpha" {
    Properties {
        _Alpha ("Alpha", 2D) = "white" {}
        _NormalMap ("Normal Map", 2D) = "bump" {}
        _LightPower ("Light Power", Float ) = 1.22
        _Diffuse ("Diffuse", 2D) = "white" {}
        _Tint ("Tint", Color) = (1,0,0,1)
        _LightPowerNormal ("Light Power Normal", Float ) = 1.22
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "Queue"="AlphaTest"
            "RenderType"="TransparentCutout"
        }
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
            uniform sampler2D _Alpha; uniform float4 _Alpha_ST;
            uniform sampler2D _NormalMap; uniform float4 _NormalMap_ST;
            uniform float _LightPower;
            uniform sampler2D _Diffuse; uniform float4 _Diffuse_ST;
            uniform float4 _Tint;
            uniform float _LightPowerNormal;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 binormalDir : TEXCOORD4;
                float4 vertexColor : COLOR;
                LIGHTING_COORDS(5,6)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
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
                float3 _NormalMap_var = UnpackNormal(tex2D(_NormalMap,TRANSFORM_TEX(i.uv0, _NormalMap)));
                float3 normalLocal = lerp(_NormalMap_var.rgb,float3(0.5019608,0.5019608,1),i.vertexColor.a);
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                
                float nSign = sign( dot( viewDirection, i.normalDir ) ); // Reverse normal if this is a backface
                i.normalDir *= nSign;
                normalDirection *= nSign;
                
                float4 _Alpha_var = tex2D(_Alpha,TRANSFORM_TEX(i.uv0, _Alpha));
                clip(lerp(_Alpha_var.r,1.0,i.vertexColor.a) - 0.5);
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float4 _Diffuse_var = tex2D(_Diffuse,TRANSFORM_TEX(i.uv0, _Diffuse));
                float3 finalColor = (lerp(_Tint.rgb,_Diffuse_var.rgb,i.vertexColor.a)*(attenuation*round(saturate(pow(0.5*dot(normalDirection,lightDirection)+0.5,lerp(_LightPowerNormal,_LightPower,i.vertexColor.a)))))*(_LightColor0.rgb+UNITY_LIGHTMODEL_AMBIENT.rgb));
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
            uniform sampler2D _Alpha; uniform float4 _Alpha_ST;
            uniform sampler2D _NormalMap; uniform float4 _NormalMap_ST;
            uniform float _LightPower;
            uniform sampler2D _Diffuse; uniform float4 _Diffuse_ST;
            uniform float4 _Tint;
            uniform float _LightPowerNormal;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 binormalDir : TEXCOORD4;
                float4 vertexColor : COLOR;
                LIGHTING_COORDS(5,6)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
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
                float3 _NormalMap_var = UnpackNormal(tex2D(_NormalMap,TRANSFORM_TEX(i.uv0, _NormalMap)));
                float3 normalLocal = lerp(_NormalMap_var.rgb,float3(0.5019608,0.5019608,1),i.vertexColor.a);
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                
                float nSign = sign( dot( viewDirection, i.normalDir ) ); // Reverse normal if this is a backface
                i.normalDir *= nSign;
                normalDirection *= nSign;
                
                float4 _Alpha_var = tex2D(_Alpha,TRANSFORM_TEX(i.uv0, _Alpha));
                clip(lerp(_Alpha_var.r,1.0,i.vertexColor.a) - 0.5);
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float4 _Diffuse_var = tex2D(_Diffuse,TRANSFORM_TEX(i.uv0, _Diffuse));
                float3 finalColor = (lerp(_Tint.rgb,_Diffuse_var.rgb,i.vertexColor.a)*(attenuation*round(saturate(pow(0.5*dot(normalDirection,lightDirection)+0.5,lerp(_LightPowerNormal,_LightPower,i.vertexColor.a)))))*(_LightColor0.rgb+UNITY_LIGHTMODEL_AMBIENT.rgb));
                return fixed4(finalColor * 1,0);
            }
            ENDCG
        }
        Pass {
            Name "ShadowCollector"
            Tags {
                "LightMode"="ShadowCollector"
            }
            Cull Off
            
            Fog {Mode Off}
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCOLLECTOR
            #define SHADOW_COLLECTOR_PASS
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcollector
            #pragma exclude_renderers xbox360 ps3 flash d3d11_9x 
            #pragma target 3.0
            uniform sampler2D _Alpha; uniform float4 _Alpha_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                V2F_SHADOW_COLLECTOR;
                float2 uv0 : TEXCOORD5;
                float4 vertexColor : COLOR;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.pos = UnityObjectToClipPos(v.vertex);
                TRANSFER_SHADOW_COLLECTOR(o)
                return o;
            }
            fixed4 frag(VertexOutput i) : COLOR {
/////// Vectors:
                float4 _Alpha_var = tex2D(_Alpha,TRANSFORM_TEX(i.uv0, _Alpha));
                clip(lerp(_Alpha_var.r,1.0,i.vertexColor.a) - 0.5);
                SHADOW_COLLECTOR_FRAGMENT(i)
            }
            ENDCG
        }
        Pass {
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Cull Off
            Offset 1, 1
            
            Fog {Mode Off}
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma exclude_renderers xbox360 ps3 flash d3d11_9x 
            #pragma target 3.0
            uniform sampler2D _Alpha; uniform float4 _Alpha_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
                float4 vertexColor : COLOR;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.pos = UnityObjectToClipPos(v.vertex);
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            fixed4 frag(VertexOutput i) : COLOR {
/////// Vectors:
                float4 _Alpha_var = tex2D(_Alpha,TRANSFORM_TEX(i.uv0, _Alpha));
                clip(lerp(_Alpha_var.r,1.0,i.vertexColor.a) - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
