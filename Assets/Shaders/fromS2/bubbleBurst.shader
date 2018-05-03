// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:2,rntp:3,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:4647,x:33269,y:32607,varname:node_4647,prsc:2|emission-1526-RGB,clip-3253-OUT;n:type:ShaderForge.SFN_TexCoord,id:3922,x:31510,y:32998,varname:node_3922,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Tex2d,id:2858,x:31807,y:32668,ptovrint:False,ptlb:bubbleTex,ptin:_bubbleTex,varname:node_2858,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Color,id:1526,x:32763,y:32445,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_1526,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Subtract,id:3222,x:32162,y:33145,varname:node_3222,prsc:2|A-3922-V,B-1296-OUT;n:type:ShaderForge.SFN_OneMinus,id:1442,x:32332,y:33145,varname:node_1442,prsc:2|IN-3222-OUT;n:type:ShaderForge.SFN_RemapRange,id:1296,x:31954,y:33128,varname:node_1296,prsc:2,frmn:0.5,frmx:1,tomn:0,tomx:1|IN-4710-A;n:type:ShaderForge.SFN_Clamp01,id:4250,x:32500,y:33145,varname:node_4250,prsc:2|IN-1442-OUT;n:type:ShaderForge.SFN_Multiply,id:4232,x:32769,y:32959,varname:node_4232,prsc:2|A-613-OUT,B-4250-OUT;n:type:ShaderForge.SFN_RemapRange,id:1219,x:31954,y:33293,varname:node_1219,prsc:2,frmn:0.5,frmx:1,tomn:0,tomx:1|IN-4710-A;n:type:ShaderForge.SFN_Subtract,id:8386,x:32162,y:33293,varname:node_8386,prsc:2|A-3922-V,B-1219-OUT;n:type:ShaderForge.SFN_OneMinus,id:8618,x:32332,y:33293,varname:node_8618,prsc:2|IN-8386-OUT;n:type:ShaderForge.SFN_Clamp01,id:3698,x:32500,y:33293,varname:node_3698,prsc:2|IN-8618-OUT;n:type:ShaderForge.SFN_Add,id:4583,x:32937,y:33064,varname:node_4583,prsc:2|A-4232-OUT,B-3698-OUT;n:type:ShaderForge.SFN_OneMinus,id:613,x:32769,y:32820,varname:node_613,prsc:2|IN-6516-OUT;n:type:ShaderForge.SFN_Multiply,id:548,x:32535,y:32636,varname:node_548,prsc:2|A-2858-R,B-5632-OUT;n:type:ShaderForge.SFN_Clamp01,id:5632,x:32332,y:33017,varname:node_5632,prsc:2|IN-3222-OUT;n:type:ShaderForge.SFN_Subtract,id:3253,x:33040,y:32869,varname:node_3253,prsc:2|A-4583-OUT,B-2326-OUT;n:type:ShaderForge.SFN_OneMinus,id:6709,x:31776,y:32928,varname:node_6709,prsc:2|IN-4071-OUT;n:type:ShaderForge.SFN_Add,id:5883,x:31969,y:32861,varname:node_5883,prsc:2|A-2858-R,B-6709-OUT;n:type:ShaderForge.SFN_RemapRange,id:6312,x:32131,y:32861,varname:node_6312,prsc:2,frmn:0,frmx:2,tomn:0,tomx:1|IN-5883-OUT;n:type:ShaderForge.SFN_Clamp01,id:6516,x:32322,y:32861,varname:node_6516,prsc:2|IN-6312-OUT;n:type:ShaderForge.SFN_Add,id:2326,x:32769,y:32689,varname:node_2326,prsc:2|A-548-OUT,B-5632-OUT;n:type:ShaderForge.SFN_VertexColor,id:4710,x:31555,y:33203,varname:node_4710,prsc:2;n:type:ShaderForge.SFN_FragmentPosition,id:5726,x:31235,y:32607,varname:node_5726,prsc:2;n:type:ShaderForge.SFN_RemapRange,id:9962,x:31469,y:32682,varname:node_9962,prsc:2,frmn:0,frmx:10,tomn:0,tomx:1|IN-5865-OUT;n:type:ShaderForge.SFN_Append,id:5865,x:31292,y:32777,varname:node_5865,prsc:2|A-5726-X,B-5726-Z;n:type:ShaderForge.SFN_Panner,id:3137,x:31629,y:32547,varname:node_3137,prsc:2,spu:1,spv:1|UVIN-3922-UVOUT,DIST-5726-X;n:type:ShaderForge.SFN_NormalVector,id:912,x:31049,y:33053,prsc:2,pt:False;n:type:ShaderForge.SFN_Dot,id:4071,x:31234,y:33112,varname:node_4071,prsc:2,dt:4|A-912-OUT,B-5197-OUT;n:type:ShaderForge.SFN_Vector3,id:5197,x:31049,y:33202,varname:node_5197,prsc:2,v1:0,v2:1,v3:0;proporder:2858-1526;pass:END;sub:END;*/

Shader "Custom/bubbleBurst" {
    Properties {
        _bubbleTex ("bubbleTex", 2D) = "white" {}
        _Color ("Color", Color) = (0.5,0.5,0.5,1)
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "Queue"="AlphaTest"
            "RenderType"="TransparentCutout"
        }
        LOD 200
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Cull Off
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles n3ds wiiu 
            #pragma target 3.0
            uniform sampler2D _bubbleTex; uniform float4 _bubbleTex_ST;
            uniform float4 _Color;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float4 vertexColor : COLOR;
                UNITY_FOG_COORDS(3)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float4 _bubbleTex_var = tex2D(_bubbleTex,TRANSFORM_TEX(i.uv0, _bubbleTex));
                float node_3222 = (i.uv0.g-(i.vertexColor.a*2.0+-1.0));
                float node_5632 = saturate(node_3222);
                clip(((((1.0 - saturate(((_bubbleTex_var.r+(1.0 - 0.5*dot(i.normalDir,float3(0,1,0))+0.5))*0.5+0.0)))*saturate((1.0 - node_3222)))+saturate((1.0 - (i.uv0.g-(i.vertexColor.a*2.0+-1.0)))))-((_bubbleTex_var.r*node_5632)+node_5632)) - 0.5);
////// Lighting:
////// Emissive:
                float3 emissive = _Color.rgb;
                float3 finalColor = emissive;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Offset 1, 1
            Cull Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles n3ds wiiu 
            #pragma target 3.0
            uniform sampler2D _bubbleTex; uniform float4 _bubbleTex_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
                float4 posWorld : TEXCOORD2;
                float3 normalDir : TEXCOORD3;
                float4 vertexColor : COLOR;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float4 _bubbleTex_var = tex2D(_bubbleTex,TRANSFORM_TEX(i.uv0, _bubbleTex));
                float node_3222 = (i.uv0.g-(i.vertexColor.a*2.0+-1.0));
                float node_5632 = saturate(node_3222);
                clip(((((1.0 - saturate(((_bubbleTex_var.r+(1.0 - 0.5*dot(i.normalDir,float3(0,1,0))+0.5))*0.5+0.0)))*saturate((1.0 - node_3222)))+saturate((1.0 - (i.uv0.g-(i.vertexColor.a*2.0+-1.0)))))-((_bubbleTex_var.r*node_5632)+node_5632)) - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
