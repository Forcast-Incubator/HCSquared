// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'
// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.06 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.06;sub:START;pass:START;ps:flbk:,lico:1,lgpr:1,nrmq:1,limd:0,uamb:True,mssp:True,lmpd:False,lprd:False,rprd:False,enco:False,frtr:True,vitr:True,dbil:False,rmgx:True,rpth:0,hqsc:False,hqlp:False,tesm:0,blpr:0,bsrc:0,bdst:1,culm:2,dpts:2,wrdp:True,dith:0,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:3209,x:33366,y:32396,varname:node_3209,prsc:2|normal-9844-OUT,custl-7634-OUT;n:type:ShaderForge.SFN_Tex2d,id:8487,x:32525,y:32201,ptovrint:False,ptlb:Normal Map,ptin:_NormalMap,varname:node_9779,prsc:2,tex:8e624259447f2894b9603fdfabe69f9d,ntxv:3,isnm:True;n:type:ShaderForge.SFN_LightVector,id:6906,x:31140,y:32954,varname:node_6906,prsc:2;n:type:ShaderForge.SFN_Dot,id:1350,x:31376,y:32858,varname:node_1350,prsc:2,dt:4|A-3270-OUT,B-6906-OUT;n:type:ShaderForge.SFN_NormalVector,id:3270,x:31140,y:32796,prsc:2,pt:True;n:type:ShaderForge.SFN_Clamp01,id:5499,x:32016,y:32944,varname:node_5499,prsc:2|IN-498-OUT;n:type:ShaderForge.SFN_Power,id:498,x:31853,y:32944,varname:node_498,prsc:2|VAL-1350-OUT,EXP-7253-OUT;n:type:ShaderForge.SFN_ValueProperty,id:7347,x:31376,y:33122,ptovrint:False,ptlb:Light Power,ptin:_LightPower,varname:node_4518,prsc:2,glob:False,v1:1.22;n:type:ShaderForge.SFN_LightAttenuation,id:8162,x:31998,y:32647,varname:node_8162,prsc:2;n:type:ShaderForge.SFN_LightColor,id:1000,x:32506,y:32855,varname:node_1000,prsc:2;n:type:ShaderForge.SFN_Round,id:1332,x:32172,y:32944,varname:node_1332,prsc:2|IN-5499-OUT;n:type:ShaderForge.SFN_Multiply,id:7634,x:32967,y:32676,varname:node_7634,prsc:2|A-1244-RGB,B-858-OUT,C-7936-OUT;n:type:ShaderForge.SFN_AmbientLight,id:9315,x:32506,y:32980,varname:node_9315,prsc:2;n:type:ShaderForge.SFN_Add,id:7936,x:32715,y:32843,varname:node_7936,prsc:2|A-1000-RGB,B-9315-RGB;n:type:ShaderForge.SFN_Multiply,id:858,x:32365,y:32788,varname:node_858,prsc:2|A-2313-OUT,B-1332-OUT;n:type:ShaderForge.SFN_Tex2d,id:1244,x:32317,y:32545,ptovrint:False,ptlb:Diffuse,ptin:_Diffuse,varname:node_1244,prsc:2,tex:936ce75f1b251dd44a23ba402347285c,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Lerp,id:7253,x:31679,y:32986,varname:node_7253,prsc:2|A-8362-OUT,B-7347-OUT,T-2456-OUT;n:type:ShaderForge.SFN_ValueProperty,id:8362,x:31376,y:33038,ptovrint:False,ptlb:Light Power Normal,ptin:_LightPowerNormal,varname:_LightPower_copy,prsc:2,glob:False,v1:1.22;n:type:ShaderForge.SFN_Lerp,id:9844,x:32933,y:32388,varname:node_9844,prsc:2|A-8487-RGB,B-3524-OUT,T-2456-OUT;n:type:ShaderForge.SFN_VertexColor,id:6646,x:31464,y:32593,varname:node_6646,prsc:2;n:type:ShaderForge.SFN_Vector3,id:3524,x:32525,y:32362,varname:node_3524,prsc:2,v1:0.5019608,v2:0.5019608,v3:1;n:type:ShaderForge.SFN_SwitchProperty,id:2456,x:31700,y:32507,ptovrint:False,ptlb:Vertex Alpha Data,ptin:_VertexAlphaData,varname:node_2456,prsc:2,on:False|A-9496-OUT,B-6646-A;n:type:ShaderForge.SFN_Vector1,id:9496,x:31464,y:32517,varname:node_9496,prsc:2,v1:0;n:type:ShaderForge.SFN_Power,id:2313,x:32172,y:32730,varname:node_2313,prsc:2|VAL-8162-OUT,EXP-7616-OUT;n:type:ShaderForge.SFN_ValueProperty,id:7616,x:31985,y:32823,ptovrint:False,ptlb:atten powah,ptin:_attenpowah,varname:node_7616,prsc:2,glob:False,v1:0.6;proporder:8487-1244-7347-8362-2456-7616;pass:END;sub:END;*/

Shader "Carpathia/DiffuseNormal" {
    Properties {
        _NormalMap ("Normal Map", 2D) = "bump" {}
        _Diffuse ("Diffuse", 2D) = "white" {}
        _LightPower ("Light Power", Float ) = 1.22
        _LightPowerNormal ("Light Power Normal", Float ) = 1.22
        [MaterialToggle] _VertexAlphaData ("Vertex Alpha Data", Float ) = 0
        _attenpowah ("atten powah", Float ) = 0.6
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
            uniform sampler2D _NormalMap; uniform float4 _NormalMap_ST;
            uniform float _LightPower;
            uniform sampler2D _Diffuse; uniform float4 _Diffuse_ST;
            uniform float _LightPowerNormal;
            uniform fixed _VertexAlphaData;
            uniform float _attenpowah;
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
                float _VertexAlphaData_var = lerp( 0.0, i.vertexColor.a, _VertexAlphaData );
                float3 normalLocal = lerp(_NormalMap_var.rgb,float3(0.5019608,0.5019608,1),_VertexAlphaData_var);
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                
                float nSign = sign( dot( viewDirection, i.normalDir ) ); // Reverse normal if this is a backface
                i.normalDir *= nSign;
                normalDirection *= nSign;
                
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float4 _Diffuse_var = tex2D(_Diffuse,TRANSFORM_TEX(i.uv0, _Diffuse));
                float3 finalColor = (_Diffuse_var.rgb*(pow(attenuation,_attenpowah)*round(saturate(pow(0.5*dot(normalDirection,lightDirection)+0.5,lerp(_LightPowerNormal,_LightPower,_VertexAlphaData_var)))))*(_LightColor0.rgb+UNITY_LIGHTMODEL_AMBIENT.rgb));
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
            uniform sampler2D _NormalMap; uniform float4 _NormalMap_ST;
            uniform float _LightPower;
            uniform sampler2D _Diffuse; uniform float4 _Diffuse_ST;
            uniform float _LightPowerNormal;
            uniform fixed _VertexAlphaData;
            uniform float _attenpowah;
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
                float _VertexAlphaData_var = lerp( 0.0, i.vertexColor.a, _VertexAlphaData );
                float3 normalLocal = lerp(_NormalMap_var.rgb,float3(0.5019608,0.5019608,1),_VertexAlphaData_var);
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                
                float nSign = sign( dot( viewDirection, i.normalDir ) ); // Reverse normal if this is a backface
                i.normalDir *= nSign;
                normalDirection *= nSign;
                
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float4 _Diffuse_var = tex2D(_Diffuse,TRANSFORM_TEX(i.uv0, _Diffuse));
                float3 finalColor = (_Diffuse_var.rgb*(pow(attenuation,_attenpowah)*round(saturate(pow(0.5*dot(normalDirection,lightDirection)+0.5,lerp(_LightPowerNormal,_LightPower,_VertexAlphaData_var)))))*(_LightColor0.rgb+UNITY_LIGHTMODEL_AMBIENT.rgb));
                return fixed4(finalColor * 1,0);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
