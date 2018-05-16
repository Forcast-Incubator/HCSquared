// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:35347,y:33442,varname:node_3138,prsc:2|emission-7241-RGB,alpha-7362-OUT;n:type:ShaderForge.SFN_Color,id:7241,x:34794,y:33560,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_7241,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_NormalVector,id:1508,x:32320,y:33214,prsc:2,pt:False;n:type:ShaderForge.SFN_Dot,id:851,x:32570,y:33153,varname:node_851,prsc:2,dt:4|A-9219-OUT,B-1508-OUT;n:type:ShaderForge.SFN_Slider,id:5896,x:33594,y:32203,ptovrint:False,ptlb:Opacity Pow,ptin:_OpacityPow,varname:node_5896,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:10;n:type:ShaderForge.SFN_Vector1,id:9816,x:33531,y:32034,varname:node_9816,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:1904,x:33531,y:32099,varname:node_1904,prsc:2,v1:1;n:type:ShaderForge.SFN_ValueProperty,id:5026,x:32771,y:33038,ptovrint:False,ptlb:inMin,ptin:_inMin,varname:node_5026,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_ValueProperty,id:6831,x:32771,y:33121,ptovrint:False,ptlb:inMax,ptin:_inMax,varname:node_6831,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Vector4Property,id:8875,x:31649,y:32980,ptovrint:False,ptlb:Normal ccFocal Point,ptin:_NormalccFocalPoint,varname:node_8875,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0,v2:0,v3:0,v4:0;n:type:ShaderForge.SFN_Normalize,id:9219,x:32320,y:33082,varname:node_9219,prsc:2|IN-8422-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:9462,x:31649,y:33136,varname:node_9462,prsc:2;n:type:ShaderForge.SFN_Subtract,id:8422,x:32145,y:33082,varname:node_8422,prsc:2|A-8875-XYZ,B-9462-XYZ;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:4926,x:33057,y:33351,varname:node_4926,prsc:2|IN-851-OUT,IMIN-5026-OUT,IMAX-6831-OUT,OMIN-9816-OUT,OMAX-1904-OUT;n:type:ShaderForge.SFN_Clamp01,id:172,x:33249,y:33351,varname:node_172,prsc:2|IN-4926-OUT;n:type:ShaderForge.SFN_Power,id:4004,x:33417,y:33351,varname:node_4004,prsc:2|VAL-172-OUT,EXP-300-OUT;n:type:ShaderForge.SFN_Clamp01,id:3430,x:33576,y:33351,varname:node_3430,prsc:2|IN-4004-OUT;n:type:ShaderForge.SFN_ValueProperty,id:388,x:33531,y:31963,ptovrint:False,ptlb:Depth Blackpoint,ptin:_DepthBlackpoint,varname:node_388,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_ValueProperty,id:8168,x:33531,y:31883,ptovrint:False,ptlb:Depth Whitepoint,ptin:_DepthWhitepoint,varname:node_8168,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_FragmentPosition,id:6588,x:33531,y:31739,varname:node_6588,prsc:2;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:1533,x:34218,y:32068,varname:node_1533,prsc:2|IN-6588-Z,IMIN-8168-OUT,IMAX-388-OUT,OMIN-9816-OUT,OMAX-1904-OUT;n:type:ShaderForge.SFN_Abs,id:7393,x:34396,y:31945,varname:node_7393,prsc:2|IN-1533-OUT;n:type:ShaderForge.SFN_OneMinus,id:5236,x:35131,y:32059,varname:node_5236,prsc:2|IN-7747-OUT;n:type:ShaderForge.SFN_Lerp,id:300,x:34428,y:32201,varname:node_300,prsc:2|A-5896-OUT,B-4987-OUT,T-6998-OUT;n:type:ShaderForge.SFN_Round,id:6998,x:34207,y:32431,varname:node_6998,prsc:2|IN-5896-OUT;n:type:ShaderForge.SFN_RemapRange,id:4987,x:34207,y:32259,varname:node_4987,prsc:2,frmn:0.5,frmx:1,tomn:0,tomx:10|IN-5896-OUT;n:type:ShaderForge.SFN_Power,id:7747,x:34578,y:32065,varname:node_7747,prsc:2|VAL-1533-OUT,EXP-300-OUT;n:type:ShaderForge.SFN_If,id:6279,x:34951,y:33125,varname:node_6279,prsc:2|A-4333-OUT,B-6108-OUT,GT-6108-OUT,EQ-4333-OUT,LT-4333-OUT;n:type:ShaderForge.SFN_Relay,id:4333,x:34607,y:32760,varname:node_4333,prsc:2|IN-7747-OUT;n:type:ShaderForge.SFN_Relay,id:6108,x:34610,y:33106,varname:node_6108,prsc:2|IN-3430-OUT;n:type:ShaderForge.SFN_Add,id:9719,x:34371,y:32944,varname:node_9719,prsc:2|A-4333-OUT,B-6108-OUT;n:type:ShaderForge.SFN_Clamp01,id:2450,x:34818,y:32760,varname:node_2450,prsc:2|IN-4333-OUT;n:type:ShaderForge.SFN_Multiply,id:7352,x:35018,y:32860,varname:node_7352,prsc:2|A-2450-OUT,B-6108-OUT;n:type:ShaderForge.SFN_NormalVector,id:501,x:33999,y:33974,prsc:2,pt:False;n:type:ShaderForge.SFN_Dot,id:2996,x:34287,y:33758,varname:node_2996,prsc:2,dt:1|A-4318-OUT,B-501-OUT;n:type:ShaderForge.SFN_ViewVector,id:4318,x:33999,y:33744,varname:node_4318,prsc:2;n:type:ShaderForge.SFN_Power,id:6050,x:34594,y:33802,varname:node_6050,prsc:2|VAL-2996-OUT,EXP-1108-OUT;n:type:ShaderForge.SFN_Slider,id:1108,x:34227,y:33949,ptovrint:False,ptlb:Alpha Nrm Pow,ptin:_AlphaNrmPow,varname:node_4135,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.44,max:10;n:type:ShaderForge.SFN_VertexColor,id:3403,x:34287,y:33615,varname:node_3403,prsc:2;n:type:ShaderForge.SFN_Multiply,id:2216,x:34794,y:33748,varname:node_2216,prsc:2|A-7425-OUT,B-6050-OUT;n:type:ShaderForge.SFN_Slider,id:4714,x:34208,y:33504,ptovrint:False,ptlb:Alpha Vtx Pow,ptin:_AlphaVtxPow,varname:node_9054,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1.07,max:10;n:type:ShaderForge.SFN_Power,id:7425,x:34594,y:33643,varname:node_7425,prsc:2|VAL-3403-R,EXP-4714-OUT;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:7362,x:35042,y:33823,varname:node_7362,prsc:2|IN-2216-OUT,IMIN-9173-X,IMAX-9173-Y,OMIN-9173-Z,OMAX-9173-W;n:type:ShaderForge.SFN_Vector4Property,id:9173,x:34725,y:33966,ptovrint:False,ptlb:Opacity Remapper,ptin:_OpacityRemapper,varname:node_9173,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0,v2:0,v3:0,v4:0;proporder:7241-5896-5026-6831-8875-388-8168-1108-4714-9173;pass:END;sub:END;*/

Shader "Shader Forge/fadedUnlit" {
    Properties {
        _Color ("Color", Color) = (0,0,0,1)
        _OpacityPow ("Opacity Pow", Range(0, 10)) = 0
        _inMin ("inMin", Float ) = 0
        _inMax ("inMax", Float ) = 0
        _NormalccFocalPoint ("Normal ccFocal Point", Vector) = (0,0,0,0)
        _DepthBlackpoint ("Depth Blackpoint", Float ) = 0
        _DepthWhitepoint ("Depth Whitepoint", Float ) = 0
        _AlphaNrmPow ("Alpha Nrm Pow", Range(0, 10)) = 0.44
        _AlphaVtxPow ("Alpha Vtx Pow", Range(0, 10)) = 1.07
        _OpacityRemapper ("Opacity Remapper", Vector) = (0,0,0,0)
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
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
            uniform float4 _Color;
            uniform float _AlphaNrmPow;
            uniform float _AlphaVtxPow;
            uniform float4 _OpacityRemapper;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                float4 vertexColor : COLOR;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.vertexColor = v.vertexColor;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
////// Lighting:
////// Emissive:
                float3 emissive = _Color.rgb;
                float3 finalColor = emissive;
                float node_2216 = (pow(i.vertexColor.r,_AlphaVtxPow)*pow(max(0,dot(viewDirection,i.normalDir)),_AlphaNrmPow));
                return fixed4(finalColor,(_OpacityRemapper.b + ( (node_2216 - _OpacityRemapper.r) * (_OpacityRemapper.a - _OpacityRemapper.b) ) / (_OpacityRemapper.g - _OpacityRemapper.r)));
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
