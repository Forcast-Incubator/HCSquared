// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:False,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.2794118,fgcg:0.2794118,fgcb:0.2794118,fgca:1,fgde:0.04,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:33314,y:32750,varname:node_3138,prsc:2|normal-9710-RGB,emission-595-OUT,alpha-8121-OUT,refract-7276-OUT;n:type:ShaderForge.SFN_Tex2d,id:9710,x:32359,y:32595,ptovrint:False,ptlb:Normal,ptin:_Normal,varname:node_9710,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:True|UVIN-5723-UVOUT;n:type:ShaderForge.SFN_Slider,id:5192,x:32513,y:33284,ptovrint:False,ptlb:Opacity,ptin:_Opacity,varname:node_5192,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_NormalVector,id:7910,x:31964,y:33468,prsc:2,pt:True;n:type:ShaderForge.SFN_ComponentMask,id:6152,x:32176,y:33468,varname:node_6152,prsc:2,cc1:0,cc2:2,cc3:-1,cc4:-1|IN-7910-OUT;n:type:ShaderForge.SFN_Multiply,id:7276,x:32382,y:33508,varname:node_7276,prsc:2|A-6152-OUT,B-3049-OUT;n:type:ShaderForge.SFN_Slider,id:3049,x:32000,y:33672,ptovrint:False,ptlb:Refraction Strength,ptin:_RefractionStrength,varname:node_3049,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_FragmentPosition,id:4863,x:31727,y:32595,varname:node_4863,prsc:2;n:type:ShaderForge.SFN_Append,id:1817,x:31936,y:32595,varname:node_1817,prsc:2|A-4863-X,B-4863-Z;n:type:ShaderForge.SFN_Panner,id:5723,x:32152,y:32595,varname:node_5723,prsc:2,spu:1,spv:1|UVIN-1817-OUT,DIST-5431-OUT;n:type:ShaderForge.SFN_Time,id:3677,x:31733,y:32754,varname:node_3677,prsc:2;n:type:ShaderForge.SFN_ValueProperty,id:7051,x:31733,y:32926,ptovrint:False,ptlb:Panning,ptin:_Panning,varname:node_7051,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Multiply,id:5431,x:31936,y:32754,varname:node_5431,prsc:2|A-3677-TSL,B-7051-OUT;n:type:ShaderForge.SFN_ViewReflectionVector,id:2550,x:32073,y:32795,varname:node_2550,prsc:2;n:type:ShaderForge.SFN_Cubemap,id:1120,x:32692,y:32901,ptovrint:False,ptlb:reflectionMap,ptin:_reflectionMap,varname:node_1120,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,pvfc:0|DIR-2550-OUT;n:type:ShaderForge.SFN_ViewVector,id:668,x:32073,y:32945,varname:node_668,prsc:2;n:type:ShaderForge.SFN_Dot,id:1192,x:32354,y:33060,varname:node_1192,prsc:2,dt:0|A-2550-OUT,B-668-OUT;n:type:ShaderForge.SFN_RemapRange,id:7875,x:32513,y:33060,varname:node_7875,prsc:2,frmn:-1,frmx:1,tomn:1,tomx:0|IN-1192-OUT;n:type:ShaderForge.SFN_Power,id:7307,x:32690,y:33060,varname:node_7307,prsc:2|VAL-7875-OUT,EXP-9011-OUT;n:type:ShaderForge.SFN_Slider,id:9011,x:32356,y:32989,ptovrint:False,ptlb:Reflection Power,ptin:_ReflectionPower,varname:node_9011,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:10;n:type:ShaderForge.SFN_Multiply,id:8121,x:32952,y:32991,varname:node_8121,prsc:2|A-7307-OUT,B-5192-OUT;n:type:ShaderForge.SFN_Color,id:6892,x:32692,y:32727,ptovrint:False,ptlb:Reflection Tint,ptin:_ReflectionTint,varname:node_6892,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Multiply,id:595,x:32962,y:32846,varname:node_595,prsc:2|A-6892-RGB,B-1120-RGB;proporder:9710-5192-3049-7051-1120-9011-6892;pass:END;sub:END;*/

Shader "Shader Forge/refractor" {
    Properties {
        _Normal ("Normal", 2D) = "bump" {}
        _Opacity ("Opacity", Range(0, 1)) = 0
        _RefractionStrength ("Refraction Strength", Range(0, 1)) = 0
        _Panning ("Panning", Float ) = 0
        _reflectionMap ("reflectionMap", Cube) = "_Skybox" {}
        _ReflectionPower ("Reflection Power", Range(0, 10)) = 0
        _ReflectionTint ("Reflection Tint", Color) = (1,1,1,1)
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        GrabPass{ }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _GrabTexture;
            uniform sampler2D _Normal; uniform float4 _Normal_ST;
            uniform float _Opacity;
            uniform float _RefractionStrength;
            uniform float _Panning;
            uniform samplerCUBE _reflectionMap;
            uniform float _ReflectionPower;
            uniform float4 _ReflectionTint;
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
                float3 bitangentDir : TEXCOORD3;
                float4 projPos : TEXCOORD4;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float4 node_3677 = _Time;
                float2 node_5723 = (float2(i.posWorld.r,i.posWorld.b)+(node_3677.r*_Panning)*float2(1,1));
                float3 _Normal_var = UnpackNormal(tex2D(_Normal,TRANSFORM_TEX(node_5723, _Normal)));
                float3 normalLocal = _Normal_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float2 sceneUVs = (i.projPos.xy / i.projPos.w) + (normalDirection.rb*_RefractionStrength);
                float4 sceneColor = tex2D(_GrabTexture, sceneUVs);
////// Lighting:
////// Emissive:
                float3 emissive = (_ReflectionTint.rgb*texCUBE(_reflectionMap,viewReflectDirection).rgb);
                float3 finalColor = emissive;
                return fixed4(lerp(sceneColor.rgb, finalColor,(pow((dot(viewReflectDirection,viewDirection)*-0.5+0.5),_ReflectionPower)*_Opacity)),1);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
