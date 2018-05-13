// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:5350,x:33694,y:31228,varname:node_5350,prsc:2|diff-8530-OUT,emission-3462-OUT,disp-6818-OUT,tess-2560-OUT;n:type:ShaderForge.SFN_ValueProperty,id:2039,x:29645,y:33126,ptovrint:False,ptlb:Frequency,ptin:_Frequency,varname:node_2039,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:4;n:type:ShaderForge.SFN_TexCoord,id:5568,x:29666,y:32896,varname:node_5568,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Time,id:9000,x:29666,y:32757,varname:node_9000,prsc:2;n:type:ShaderForge.SFN_Multiply,id:3862,x:29841,y:32713,varname:node_3862,prsc:2|A-2760-OUT,B-9000-T;n:type:ShaderForge.SFN_Add,id:3202,x:29999,y:32872,varname:node_3202,prsc:2|A-3862-OUT,B-5568-UVOUT;n:type:ShaderForge.SFN_Multiply,id:1250,x:29999,y:33032,varname:node_1250,prsc:2|A-3202-OUT,B-2039-OUT;n:type:ShaderForge.SFN_Frac,id:4822,x:30231,y:33032,varname:node_4822,prsc:2|IN-1250-OUT;n:type:ShaderForge.SFN_Multiply,id:6454,x:30284,y:32876,varname:node_6454,prsc:2|A-6667-OUT,B-4822-OUT;n:type:ShaderForge.SFN_Subtract,id:2088,x:30284,y:32692,varname:node_2088,prsc:2|A-724-OUT,B-6454-OUT;n:type:ShaderForge.SFN_Multiply,id:6999,x:30659,y:32628,varname:node_6999,prsc:2|A-2088-OUT,B-4822-OUT,C-4822-OUT;n:type:ShaderForge.SFN_ComponentMask,id:5635,x:31724,y:32625,varname:node_5635,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-6999-OUT;n:type:ShaderForge.SFN_Floor,id:3713,x:30200,y:33284,varname:node_3713,prsc:2|IN-1250-OUT;n:type:ShaderForge.SFN_ComponentMask,id:903,x:30411,y:33300,varname:node_903,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-3713-OUT;n:type:ShaderForge.SFN_Vector1,id:8384,x:30326,y:33488,varname:node_8384,prsc:2,v1:57;n:type:ShaderForge.SFN_Multiply,id:8718,x:30613,y:33335,varname:node_8718,prsc:2|A-903-G,B-8384-OUT;n:type:ShaderForge.SFN_Add,id:1059,x:30851,y:33321,varname:node_1059,prsc:2|A-903-R,B-8718-OUT;n:type:ShaderForge.SFN_Vector1,id:724,x:29908,y:32512,varname:node_724,prsc:2,v1:3;n:type:ShaderForge.SFN_Vector1,id:6667,x:29886,y:32623,varname:node_6667,prsc:2,v1:2;n:type:ShaderForge.SFN_Vector1,id:1685,x:30851,y:33225,varname:node_1685,prsc:2,v1:1;n:type:ShaderForge.SFN_Vector1,id:9484,x:30851,y:33051,varname:node_9484,prsc:2,v1:58;n:type:ShaderForge.SFN_Vector1,id:688,x:30851,y:33136,varname:node_688,prsc:2,v1:57;n:type:ShaderForge.SFN_Add,id:4415,x:31063,y:33182,varname:node_4415,prsc:2|A-1685-OUT,B-1059-OUT;n:type:ShaderForge.SFN_Add,id:9983,x:31063,y:33034,varname:node_9983,prsc:2|A-688-OUT,B-1059-OUT;n:type:ShaderForge.SFN_Add,id:2523,x:31063,y:32889,varname:node_2523,prsc:2|A-9484-OUT,B-1059-OUT;n:type:ShaderForge.SFN_Sin,id:5353,x:31262,y:33182,varname:node_5353,prsc:2|IN-4415-OUT;n:type:ShaderForge.SFN_Sin,id:6993,x:31262,y:33329,varname:node_6993,prsc:2|IN-1059-OUT;n:type:ShaderForge.SFN_Sin,id:2435,x:31262,y:33034,varname:node_2435,prsc:2|IN-9983-OUT;n:type:ShaderForge.SFN_Sin,id:9691,x:31262,y:32889,varname:node_9691,prsc:2|IN-2523-OUT;n:type:ShaderForge.SFN_Vector1,id:5264,x:31262,y:32801,varname:node_5264,prsc:2,v1:473.5;n:type:ShaderForge.SFN_Multiply,id:5030,x:31500,y:32889,varname:node_5030,prsc:2|A-5264-OUT,B-9691-OUT;n:type:ShaderForge.SFN_Multiply,id:2233,x:31500,y:33034,varname:node_2233,prsc:2|A-5264-OUT,B-2435-OUT;n:type:ShaderForge.SFN_Multiply,id:5182,x:31500,y:33182,varname:node_5182,prsc:2|A-5264-OUT,B-5353-OUT;n:type:ShaderForge.SFN_Multiply,id:5965,x:31500,y:33329,varname:node_5965,prsc:2|A-5264-OUT,B-6993-OUT;n:type:ShaderForge.SFN_Frac,id:3714,x:31724,y:32889,varname:node_3714,prsc:2|IN-5030-OUT;n:type:ShaderForge.SFN_Frac,id:9680,x:31724,y:33034,varname:node_9680,prsc:2|IN-2233-OUT;n:type:ShaderForge.SFN_Frac,id:2944,x:31724,y:33182,varname:node_2944,prsc:2|IN-5182-OUT;n:type:ShaderForge.SFN_Frac,id:2873,x:31724,y:33329,varname:node_2873,prsc:2|IN-5965-OUT;n:type:ShaderForge.SFN_Lerp,id:9721,x:31970,y:33034,varname:node_9721,prsc:2|A-9680-OUT,B-3714-OUT,T-5635-R;n:type:ShaderForge.SFN_Lerp,id:7673,x:31970,y:33182,varname:node_7673,prsc:2|A-2873-OUT,B-2944-OUT,T-5635-R;n:type:ShaderForge.SFN_Lerp,id:8691,x:32274,y:32616,varname:node_8691,prsc:2|A-7673-OUT,B-9721-OUT,T-5635-G;n:type:ShaderForge.SFN_ValueProperty,id:9312,x:32274,y:32822,ptovrint:False,ptlb:Amplitude,ptin:_Amplitude,varname:node_9312,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Multiply,id:2265,x:32596,y:32607,varname:node_2265,prsc:2|A-8691-OUT,B-9312-OUT;n:type:ShaderForge.SFN_Multiply,id:9329,x:29717,y:31859,varname:node_9329,prsc:2|A-9981-UVOUT,B-2265-OUT;n:type:ShaderForge.SFN_TexCoord,id:9981,x:29447,y:31792,varname:node_9981,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_ValueProperty,id:5699,x:29220,y:31698,ptovrint:False,ptlb:Frequency2,ptin:_Frequency2,varname:node_5699,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:10;n:type:ShaderForge.SFN_Multiply,id:8189,x:30066,y:31666,varname:node_8189,prsc:2|A-9704-OUT,B-5699-OUT;n:type:ShaderForge.SFN_Time,id:9841,x:29195,y:31516,varname:node_9841,prsc:2;n:type:ShaderForge.SFN_Multiply,id:834,x:29482,y:31448,varname:node_834,prsc:2|A-2592-OUT,B-9841-T;n:type:ShaderForge.SFN_Add,id:9704,x:29838,y:31486,varname:node_9704,prsc:2|A-834-OUT,B-9329-OUT;n:type:ShaderForge.SFN_Frac,id:1023,x:30391,y:31834,varname:node_1023,prsc:2|IN-8189-OUT;n:type:ShaderForge.SFN_Floor,id:3059,x:30318,y:31462,varname:node_3059,prsc:2|IN-8189-OUT;n:type:ShaderForge.SFN_ComponentMask,id:2315,x:30538,y:31462,varname:node_2315,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-3059-OUT;n:type:ShaderForge.SFN_Vector1,id:7795,x:30522,y:31708,varname:node_7795,prsc:2,v1:57;n:type:ShaderForge.SFN_Multiply,id:9895,x:30775,y:31536,varname:node_9895,prsc:2|A-2315-G,B-7795-OUT;n:type:ShaderForge.SFN_Add,id:949,x:31170,y:31737,varname:node_949,prsc:2|A-2315-R,B-9895-OUT;n:type:ShaderForge.SFN_Vector1,id:3686,x:31170,y:31597,varname:node_3686,prsc:2,v1:1;n:type:ShaderForge.SFN_Vector1,id:3788,x:31170,y:31423,varname:node_3788,prsc:2,v1:58;n:type:ShaderForge.SFN_Vector1,id:8168,x:31170,y:31508,varname:node_8168,prsc:2,v1:57;n:type:ShaderForge.SFN_Add,id:4548,x:31382,y:31554,varname:node_4548,prsc:2|A-3686-OUT,B-949-OUT;n:type:ShaderForge.SFN_Add,id:772,x:31382,y:31406,varname:node_772,prsc:2|A-8168-OUT,B-949-OUT;n:type:ShaderForge.SFN_Add,id:7504,x:31382,y:31261,varname:node_7504,prsc:2|A-3788-OUT,B-949-OUT;n:type:ShaderForge.SFN_Sin,id:6786,x:31581,y:31554,varname:node_6786,prsc:2|IN-4548-OUT;n:type:ShaderForge.SFN_Sin,id:2515,x:31581,y:31701,varname:node_2515,prsc:2|IN-949-OUT;n:type:ShaderForge.SFN_Sin,id:4971,x:31581,y:31406,varname:node_4971,prsc:2|IN-772-OUT;n:type:ShaderForge.SFN_Sin,id:8668,x:31581,y:31261,varname:node_8668,prsc:2|IN-7504-OUT;n:type:ShaderForge.SFN_Multiply,id:4864,x:31819,y:31261,varname:node_4864,prsc:2|A-1171-OUT,B-8668-OUT;n:type:ShaderForge.SFN_Multiply,id:2997,x:31819,y:31406,varname:node_2997,prsc:2|A-1171-OUT,B-4971-OUT;n:type:ShaderForge.SFN_Multiply,id:8558,x:31819,y:31554,varname:node_8558,prsc:2|A-1171-OUT,B-6786-OUT;n:type:ShaderForge.SFN_Multiply,id:7445,x:31819,y:31701,varname:node_7445,prsc:2|A-1171-OUT,B-2515-OUT;n:type:ShaderForge.SFN_Frac,id:9511,x:32043,y:31261,varname:node_9511,prsc:2|IN-4864-OUT;n:type:ShaderForge.SFN_Frac,id:9256,x:32043,y:31406,varname:node_9256,prsc:2|IN-2997-OUT;n:type:ShaderForge.SFN_Frac,id:3547,x:32043,y:31554,varname:node_3547,prsc:2|IN-8558-OUT;n:type:ShaderForge.SFN_Frac,id:8753,x:32043,y:31701,varname:node_8753,prsc:2|IN-7445-OUT;n:type:ShaderForge.SFN_Vector1,id:1171,x:31581,y:31135,varname:node_1171,prsc:2,v1:473.5;n:type:ShaderForge.SFN_Multiply,id:7575,x:30622,y:32014,varname:node_7575,prsc:2|A-1023-OUT,B-5499-OUT;n:type:ShaderForge.SFN_Vector1,id:5499,x:30406,y:32177,varname:node_5499,prsc:2,v1:2;n:type:ShaderForge.SFN_Vector1,id:200,x:30584,y:31922,varname:node_200,prsc:2,v1:3;n:type:ShaderForge.SFN_Subtract,id:9700,x:30938,y:31977,varname:node_9700,prsc:2|A-200-OUT,B-7575-OUT;n:type:ShaderForge.SFN_Multiply,id:1924,x:32014,y:31967,varname:node_1924,prsc:2|A-1023-OUT,B-1023-OUT,C-9700-OUT;n:type:ShaderForge.SFN_ComponentMask,id:8776,x:32243,y:31928,varname:node_8776,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-1924-OUT;n:type:ShaderForge.SFN_Lerp,id:4479,x:32485,y:31421,varname:node_4479,prsc:2|A-9256-OUT,B-9511-OUT,T-8776-R;n:type:ShaderForge.SFN_Lerp,id:5608,x:32485,y:31569,varname:node_5608,prsc:2|A-8753-OUT,B-3547-OUT,T-8776-R;n:type:ShaderForge.SFN_Lerp,id:2909,x:32773,y:31561,varname:node_2909,prsc:2|A-5608-OUT,B-4479-OUT,T-8776-G;n:type:ShaderForge.SFN_ValueProperty,id:4299,x:32759,y:31814,ptovrint:False,ptlb:Amplitude2,ptin:_Amplitude2,varname:_Amplitude_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Multiply,id:7004,x:33045,y:31664,varname:node_7004,prsc:2|A-2909-OUT,B-4299-OUT;n:type:ShaderForge.SFN_ValueProperty,id:2560,x:33313,y:31730,ptovrint:False,ptlb:Tesselation,ptin:_Tesselation,varname:node_2560,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:2;n:type:ShaderForge.SFN_Append,id:3361,x:33129,y:31476,varname:node_3361,prsc:2|A-7004-OUT,B-7004-OUT,C-7004-OUT;n:type:ShaderForge.SFN_NormalVector,id:6853,x:32900,y:31289,prsc:2,pt:False;n:type:ShaderForge.SFN_Multiply,id:6818,x:33159,y:31330,varname:node_6818,prsc:2|A-6853-OUT,B-7004-OUT;n:type:ShaderForge.SFN_Color,id:7507,x:33096,y:31161,ptovrint:False,ptlb:Emissive Color,ptin:_EmissiveColor,varname:node_7507,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Multiply,id:3462,x:33461,y:31328,varname:node_3462,prsc:2|A-7507-RGB,B-7004-OUT;n:type:ShaderForge.SFN_Color,id:793,x:33045,y:30978,ptovrint:False,ptlb:Diffuse Color,ptin:_DiffuseColor,varname:node_793,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Multiply,id:8530,x:33417,y:31026,varname:node_8530,prsc:2|A-793-RGB,B-7004-OUT;n:type:ShaderForge.SFN_Vector4Property,id:9737,x:28853,y:31477,ptovrint:False,ptlb:MoveVector,ptin:_MoveVector,varname:node_9737,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.1,v2:0.1,v3:0.1,v4:0.1;n:type:ShaderForge.SFN_Append,id:2592,x:29195,y:31343,varname:node_2592,prsc:2|A-9737-X,B-9737-Y;n:type:ShaderForge.SFN_Append,id:2760,x:29400,y:32644,varname:node_2760,prsc:2|A-9737-Z,B-9737-W;proporder:793-7507-2039-5699-9312-4299-2560-9737;pass:END;sub:END;*/

Shader "Custom/PlaneDeformer" {
    Properties {
        _DiffuseColor ("Diffuse Color", Color) = (1,1,1,1)
        _EmissiveColor ("Emissive Color", Color) = (1,1,1,1)
        _Frequency ("Frequency", Float ) = 4
        _Frequency2 ("Frequency2", Float ) = 10
        _Amplitude ("Amplitude", Float ) = 1
        _Amplitude2 ("Amplitude2", Float ) = 1
        _Tesselation ("Tesselation", Float ) = 2
        _MoveVector ("MoveVector", Vector) = (0.1,0.1,0.1,0.1)
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
            #include "AutoLight.cginc"
            #include "Tessellation.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 5.0
            uniform float4 _LightColor0;
            uniform float _Frequency;
            uniform float _Amplitude;
            uniform float _Frequency2;
            uniform float _Amplitude2;
            uniform float _Tesselation;
            uniform float4 _EmissiveColor;
            uniform float4 _DiffuseColor;
            uniform float4 _MoveVector;
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
                LIGHTING_COORDS(3,4)
                UNITY_FOG_COORDS(5)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            #ifdef UNITY_CAN_COMPILE_TESSELLATION
                struct TessVertex {
                    float4 vertex : INTERNALTESSPOS;
                    float3 normal : NORMAL;
                    float4 tangent : TANGENT;
                    float2 texcoord0 : TEXCOORD0;
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
                    o.texcoord0 = v.texcoord0;
                    return o;
                }
                void displacement (inout VertexInput v){
                    float node_1171 = 473.5;
                    float4 node_9841 = _Time;
                    float node_5264 = 473.5;
                    float4 node_9000 = _Time;
                    float2 node_1250 = (((float2(_MoveVector.b,_MoveVector.a)*node_9000.g)+v.texcoord0)*_Frequency);
                    float2 node_903 = floor(node_1250).rg;
                    float node_1059 = (node_903.r+(node_903.g*57.0));
                    float2 node_4822 = frac(node_1250);
                    float2 node_5635 = ((3.0-(2.0*node_4822))*node_4822*node_4822).rg;
                    float2 node_8189 = (((float2(_MoveVector.r,_MoveVector.g)*node_9841.g)+(v.texcoord0*(lerp(lerp(frac((node_5264*sin(node_1059))),frac((node_5264*sin((1.0+node_1059)))),node_5635.r),lerp(frac((node_5264*sin((57.0+node_1059)))),frac((node_5264*sin((58.0+node_1059)))),node_5635.r),node_5635.g)*_Amplitude)))*_Frequency2);
                    float2 node_2315 = floor(node_8189).rg;
                    float node_9895 = (node_2315.g*57.0);
                    float node_949 = (node_2315.r+node_9895);
                    float2 node_1023 = frac(node_8189);
                    float2 node_8776 = (node_1023*node_1023*(3.0-(node_1023*2.0))).rg;
                    float node_7004 = (lerp(lerp(frac((node_1171*sin(node_949))),frac((node_1171*sin((1.0+node_949)))),node_8776.r),lerp(frac((node_1171*sin((57.0+node_949)))),frac((node_1171*sin((58.0+node_949)))),node_8776.r),node_8776.g)*_Amplitude2);
                    v.vertex.xyz += (v.normal*node_7004);
                }
                float Tessellation(TessVertex v){
                    return _Tesselation;
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
                    v.texcoord0 = vi[0].texcoord0*bary.x + vi[1].texcoord0*bary.y + vi[2].texcoord0*bary.z;
                    displacement(v);
                    VertexOutput o = vert(v);
                    return o;
                }
            #endif
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += UNITY_LIGHTMODEL_AMBIENT.rgb; // Ambient Light
                float node_1171 = 473.5;
                float4 node_9841 = _Time;
                float node_5264 = 473.5;
                float4 node_9000 = _Time;
                float2 node_1250 = (((float2(_MoveVector.b,_MoveVector.a)*node_9000.g)+i.uv0)*_Frequency);
                float2 node_903 = floor(node_1250).rg;
                float node_1059 = (node_903.r+(node_903.g*57.0));
                float2 node_4822 = frac(node_1250);
                float2 node_5635 = ((3.0-(2.0*node_4822))*node_4822*node_4822).rg;
                float2 node_8189 = (((float2(_MoveVector.r,_MoveVector.g)*node_9841.g)+(i.uv0*(lerp(lerp(frac((node_5264*sin(node_1059))),frac((node_5264*sin((1.0+node_1059)))),node_5635.r),lerp(frac((node_5264*sin((57.0+node_1059)))),frac((node_5264*sin((58.0+node_1059)))),node_5635.r),node_5635.g)*_Amplitude)))*_Frequency2);
                float2 node_2315 = floor(node_8189).rg;
                float node_9895 = (node_2315.g*57.0);
                float node_949 = (node_2315.r+node_9895);
                float2 node_1023 = frac(node_8189);
                float2 node_8776 = (node_1023*node_1023*(3.0-(node_1023*2.0))).rg;
                float node_7004 = (lerp(lerp(frac((node_1171*sin(node_949))),frac((node_1171*sin((1.0+node_949)))),node_8776.r),lerp(frac((node_1171*sin((57.0+node_949)))),frac((node_1171*sin((58.0+node_949)))),node_8776.r),node_8776.g)*_Amplitude2);
                float3 diffuseColor = (_DiffuseColor.rgb*node_7004);
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
////// Emissive:
                float3 emissive = (_EmissiveColor.rgb*node_7004);
/// Final Color:
                float3 finalColor = diffuse + emissive;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            
            
            CGPROGRAM
            #pragma hull hull
            #pragma domain domain
            #pragma vertex tessvert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Tessellation.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 5.0
            uniform float4 _LightColor0;
            uniform float _Frequency;
            uniform float _Amplitude;
            uniform float _Frequency2;
            uniform float _Amplitude2;
            uniform float _Tesselation;
            uniform float4 _EmissiveColor;
            uniform float4 _DiffuseColor;
            uniform float4 _MoveVector;
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
                LIGHTING_COORDS(3,4)
                UNITY_FOG_COORDS(5)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            #ifdef UNITY_CAN_COMPILE_TESSELLATION
                struct TessVertex {
                    float4 vertex : INTERNALTESSPOS;
                    float3 normal : NORMAL;
                    float4 tangent : TANGENT;
                    float2 texcoord0 : TEXCOORD0;
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
                    o.texcoord0 = v.texcoord0;
                    return o;
                }
                void displacement (inout VertexInput v){
                    float node_1171 = 473.5;
                    float4 node_9841 = _Time;
                    float node_5264 = 473.5;
                    float4 node_9000 = _Time;
                    float2 node_1250 = (((float2(_MoveVector.b,_MoveVector.a)*node_9000.g)+v.texcoord0)*_Frequency);
                    float2 node_903 = floor(node_1250).rg;
                    float node_1059 = (node_903.r+(node_903.g*57.0));
                    float2 node_4822 = frac(node_1250);
                    float2 node_5635 = ((3.0-(2.0*node_4822))*node_4822*node_4822).rg;
                    float2 node_8189 = (((float2(_MoveVector.r,_MoveVector.g)*node_9841.g)+(v.texcoord0*(lerp(lerp(frac((node_5264*sin(node_1059))),frac((node_5264*sin((1.0+node_1059)))),node_5635.r),lerp(frac((node_5264*sin((57.0+node_1059)))),frac((node_5264*sin((58.0+node_1059)))),node_5635.r),node_5635.g)*_Amplitude)))*_Frequency2);
                    float2 node_2315 = floor(node_8189).rg;
                    float node_9895 = (node_2315.g*57.0);
                    float node_949 = (node_2315.r+node_9895);
                    float2 node_1023 = frac(node_8189);
                    float2 node_8776 = (node_1023*node_1023*(3.0-(node_1023*2.0))).rg;
                    float node_7004 = (lerp(lerp(frac((node_1171*sin(node_949))),frac((node_1171*sin((1.0+node_949)))),node_8776.r),lerp(frac((node_1171*sin((57.0+node_949)))),frac((node_1171*sin((58.0+node_949)))),node_8776.r),node_8776.g)*_Amplitude2);
                    v.vertex.xyz += (v.normal*node_7004);
                }
                float Tessellation(TessVertex v){
                    return _Tesselation;
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
                    v.texcoord0 = vi[0].texcoord0*bary.x + vi[1].texcoord0*bary.y + vi[2].texcoord0*bary.z;
                    displacement(v);
                    VertexOutput o = vert(v);
                    return o;
                }
            #endif
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float node_1171 = 473.5;
                float4 node_9841 = _Time;
                float node_5264 = 473.5;
                float4 node_9000 = _Time;
                float2 node_1250 = (((float2(_MoveVector.b,_MoveVector.a)*node_9000.g)+i.uv0)*_Frequency);
                float2 node_903 = floor(node_1250).rg;
                float node_1059 = (node_903.r+(node_903.g*57.0));
                float2 node_4822 = frac(node_1250);
                float2 node_5635 = ((3.0-(2.0*node_4822))*node_4822*node_4822).rg;
                float2 node_8189 = (((float2(_MoveVector.r,_MoveVector.g)*node_9841.g)+(i.uv0*(lerp(lerp(frac((node_5264*sin(node_1059))),frac((node_5264*sin((1.0+node_1059)))),node_5635.r),lerp(frac((node_5264*sin((57.0+node_1059)))),frac((node_5264*sin((58.0+node_1059)))),node_5635.r),node_5635.g)*_Amplitude)))*_Frequency2);
                float2 node_2315 = floor(node_8189).rg;
                float node_9895 = (node_2315.g*57.0);
                float node_949 = (node_2315.r+node_9895);
                float2 node_1023 = frac(node_8189);
                float2 node_8776 = (node_1023*node_1023*(3.0-(node_1023*2.0))).rg;
                float node_7004 = (lerp(lerp(frac((node_1171*sin(node_949))),frac((node_1171*sin((1.0+node_949)))),node_8776.r),lerp(frac((node_1171*sin((57.0+node_949)))),frac((node_1171*sin((58.0+node_949)))),node_8776.r),node_8776.g)*_Amplitude2);
                float3 diffuseColor = (_DiffuseColor.rgb*node_7004);
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse;
                fixed4 finalRGBA = fixed4(finalColor * 1,0);
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
            Cull Back
            
            CGPROGRAM
            #pragma hull hull
            #pragma domain domain
            #pragma vertex tessvert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "Tessellation.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 5.0
            uniform float _Frequency;
            uniform float _Amplitude;
            uniform float _Frequency2;
            uniform float _Amplitude2;
            uniform float _Tesselation;
            uniform float4 _MoveVector;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            #ifdef UNITY_CAN_COMPILE_TESSELLATION
                struct TessVertex {
                    float4 vertex : INTERNALTESSPOS;
                    float3 normal : NORMAL;
                    float4 tangent : TANGENT;
                    float2 texcoord0 : TEXCOORD0;
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
                    o.texcoord0 = v.texcoord0;
                    return o;
                }
                void displacement (inout VertexInput v){
                    float node_1171 = 473.5;
                    float4 node_9841 = _Time;
                    float node_5264 = 473.5;
                    float4 node_9000 = _Time;
                    float2 node_1250 = (((float2(_MoveVector.b,_MoveVector.a)*node_9000.g)+v.texcoord0)*_Frequency);
                    float2 node_903 = floor(node_1250).rg;
                    float node_1059 = (node_903.r+(node_903.g*57.0));
                    float2 node_4822 = frac(node_1250);
                    float2 node_5635 = ((3.0-(2.0*node_4822))*node_4822*node_4822).rg;
                    float2 node_8189 = (((float2(_MoveVector.r,_MoveVector.g)*node_9841.g)+(v.texcoord0*(lerp(lerp(frac((node_5264*sin(node_1059))),frac((node_5264*sin((1.0+node_1059)))),node_5635.r),lerp(frac((node_5264*sin((57.0+node_1059)))),frac((node_5264*sin((58.0+node_1059)))),node_5635.r),node_5635.g)*_Amplitude)))*_Frequency2);
                    float2 node_2315 = floor(node_8189).rg;
                    float node_9895 = (node_2315.g*57.0);
                    float node_949 = (node_2315.r+node_9895);
                    float2 node_1023 = frac(node_8189);
                    float2 node_8776 = (node_1023*node_1023*(3.0-(node_1023*2.0))).rg;
                    float node_7004 = (lerp(lerp(frac((node_1171*sin(node_949))),frac((node_1171*sin((1.0+node_949)))),node_8776.r),lerp(frac((node_1171*sin((57.0+node_949)))),frac((node_1171*sin((58.0+node_949)))),node_8776.r),node_8776.g)*_Amplitude2);
                    v.vertex.xyz += (v.normal*node_7004);
                }
                float Tessellation(TessVertex v){
                    return _Tesselation;
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
                    v.texcoord0 = vi[0].texcoord0*bary.x + vi[1].texcoord0*bary.y + vi[2].texcoord0*bary.z;
                    displacement(v);
                    VertexOutput o = vert(v);
                    return o;
                }
            #endif
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
