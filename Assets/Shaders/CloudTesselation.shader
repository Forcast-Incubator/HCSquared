// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:7220,x:34071,y:33005,varname:node_7220,prsc:2|emission-201-RGB,tess-3069-OUT;n:type:ShaderForge.SFN_Sin,id:1309,x:32946,y:33062,varname:node_1309,prsc:2|IN-6874-OUT;n:type:ShaderForge.SFN_TexCoord,id:5224,x:31644,y:33099,varname:node_5224,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_ValueProperty,id:3069,x:32782,y:33260,ptovrint:False,ptlb:Tea,ptin:_Tea,varname:node_3069,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Multiply,id:1026,x:31939,y:33035,varname:node_1026,prsc:2|A-5224-U,B-8075-OUT;n:type:ShaderForge.SFN_ValueProperty,id:8075,x:31644,y:32935,ptovrint:False,ptlb:Mult 1,ptin:_Mult1,varname:node_8075,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Cos,id:4853,x:32254,y:33272,varname:node_4853,prsc:2|IN-7251-OUT;n:type:ShaderForge.SFN_Distance,id:7562,x:32182,y:33090,varname:node_7562,prsc:2|A-1026-OUT,B-7251-OUT;n:type:ShaderForge.SFN_Sin,id:7936,x:32341,y:33090,varname:node_7936,prsc:2|IN-7562-OUT;n:type:ShaderForge.SFN_Multiply,id:7251,x:31939,y:33168,varname:node_7251,prsc:2|A-5224-V,B-3614-OUT;n:type:ShaderForge.SFN_ValueProperty,id:3614,x:31644,y:33027,ptovrint:False,ptlb:Mult 2,ptin:_Mult2,varname:node_3614,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Multiply,id:6874,x:32782,y:33062,varname:node_6874,prsc:2|A-6790-OUT,B-4853-OUT;n:type:ShaderForge.SFN_Vector1,id:147,x:31644,y:32797,varname:node_147,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:6882,x:31644,y:32854,varname:node_6882,prsc:2,v1:1;n:type:ShaderForge.SFN_ValueProperty,id:9963,x:31644,y:32728,ptovrint:False,ptlb:Mult 3,ptin:_Mult3,varname:node_9963,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Multiply,id:6790,x:32594,y:32935,varname:node_6790,prsc:2|A-573-OUT,B-9963-OUT,C-3542-R,D-7936-OUT,E-2188-OUT;n:type:ShaderForge.SFN_Add,id:573,x:32182,y:32935,varname:node_573,prsc:2|A-1026-OUT,B-7251-OUT;n:type:ShaderForge.SFN_Panner,id:2476,x:32252,y:32766,varname:node_2476,prsc:2,spu:1,spv:0|UVIN-5224-UVOUT,DIST-8075-OUT;n:type:ShaderForge.SFN_ComponentMask,id:3542,x:32417,y:32766,varname:node_3542,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-2476-UVOUT;n:type:ShaderForge.SFN_Multiply,id:3361,x:33174,y:32894,varname:node_3361,prsc:2|A-6790-OUT,B-1309-OUT,C-2188-OUT,D-2188-OUT;n:type:ShaderForge.SFN_Cos,id:4731,x:33354,y:32894,varname:node_4731,prsc:2|IN-3361-OUT;n:type:ShaderForge.SFN_Divide,id:8316,x:33556,y:33059,varname:node_8316,prsc:2|A-4731-OUT,B-1309-OUT;n:type:ShaderForge.SFN_ArcTan,id:1080,x:33749,y:33059,varname:node_1080,prsc:2|IN-8316-OUT;n:type:ShaderForge.SFN_Sin,id:627,x:33749,y:33208,varname:node_627,prsc:2|IN-8316-OUT;n:type:ShaderForge.SFN_Pi,id:2188,x:32319,y:33462,varname:node_2188,prsc:2;n:type:ShaderForge.SFN_VertexColor,id:201,x:33795,y:32879,varname:node_201,prsc:2;proporder:3069-8075-3614-9963;pass:END;sub:END;*/

Shader "Custom/CloudTesselation" {
    Properties {
        _Tea ("Tea", Float ) = 1
        _Mult1 ("Mult 1", Float ) = 1
        _Mult2 ("Mult 2", Float ) = 1
        _Mult3 ("Mult 3", Float ) = 0
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        LOD 200
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma hull hull
            #pragma domain domain
            #pragma vertex tessvert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #include "Tessellation.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 5.0
            uniform float _Tea;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 vertexColor : COLOR;
                UNITY_FOG_COORDS(0)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.vertexColor = v.vertexColor;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            #ifdef UNITY_CAN_COMPILE_TESSELLATION
                struct TessVertex {
                    float4 vertex : INTERNALTESSPOS;
                    float3 normal : NORMAL;
                    float4 tangent : TANGENT;
                    float4 vertexColor : COLOR;
                };
                struct OutputPatchConstant {
                    float edge[3]         : SV_TessFactor;
                    float inside          : SV_InsideTessFactor;
                    float3 vTangent[4]    : TANGENT;
                    float2 vUV[4]         : TEXCOORD;
                    float3 vTanUCorner[4] : TANUCORNER;
                    float3 vTanVCorner[4] : TANVCORNER;
                    float4 vCWts          : TANWEIGHTS;
                };
                TessVertex tessvert (VertexInput v) {
                    TessVertex o;
                    o.vertex = v.vertex;
                    o.normal = v.normal;
                    o.tangent = v.tangent;
                    o.vertexColor = v.vertexColor;
                    return o;
                }
                float Tessellation(TessVertex v){
                    return _Tea;
                }
                float4 Tessellation(TessVertex v, TessVertex v1, TessVertex v2){
                    float tv = Tessellation(v);
                    float tv1 = Tessellation(v1);
                    float tv2 = Tessellation(v2);
                    return float4( tv1+tv2, tv2+tv, tv+tv1, tv+tv1+tv2 ) / float4(2,2,2,3);
                }
                OutputPatchConstant hullconst (InputPatch<TessVertex,3> v) {
                    OutputPatchConstant o = (OutputPatchConstant)0;
                    float4 ts = Tessellation( v[0], v[1], v[2] );
                    o.edge[0] = ts.x;
                    o.edge[1] = ts.y;
                    o.edge[2] = ts.z;
                    o.inside = ts.w;
                    return o;
                }
                [domain("tri")]
                [partitioning("fractional_odd")]
                [outputtopology("triangle_cw")]
                [patchconstantfunc("hullconst")]
                [outputcontrolpoints(3)]
                TessVertex hull (InputPatch<TessVertex,3> v, uint id : SV_OutputControlPointID) {
                    return v[id];
                }
                [domain("tri")]
                VertexOutput domain (OutputPatchConstant tessFactors, const OutputPatch<TessVertex,3> vi, float3 bary : SV_DomainLocation) {
                    VertexInput v = (VertexInput)0;
                    v.vertex = vi[0].vertex*bary.x + vi[1].vertex*bary.y + vi[2].vertex*bary.z;
                    v.normal = vi[0].normal*bary.x + vi[1].normal*bary.y + vi[2].normal*bary.z;
                    v.tangent = vi[0].tangent*bary.x + vi[1].tangent*bary.y + vi[2].tangent*bary.z;
                    v.vertexColor = vi[0].vertexColor*bary.x + vi[1].vertexColor*bary.y + vi[2].vertexColor*bary.z;
                    VertexOutput o = vert(v);
                    return o;
                }
            #endif
            float4 frag(VertexOutput i) : COLOR {
////// Lighting:
////// Emissive:
                float3 emissive = i.vertexColor.rgb;
                float3 finalColor = emissive;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
