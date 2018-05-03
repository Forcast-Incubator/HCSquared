// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'
// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.06 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.06;sub:START;pass:START;ps:flbk:,lico:1,lgpr:1,nrmq:1,limd:0,uamb:True,mssp:True,lmpd:False,lprd:False,rprd:False,enco:False,frtr:True,vitr:True,dbil:False,rmgx:True,rpth:0,hqsc:True,hqlp:False,tesm:0,blpr:2,bsrc:0,bdst:0,culm:0,dpts:2,wrdp:False,dith:0,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.2046335,fgcg:0.2352941,fgcb:0.1623991,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:2485,x:32721,y:32622,varname:node_2485,prsc:2|emission-3563-OUT;n:type:ShaderForge.SFN_Color,id:9087,x:32146,y:32501,ptovrint:False,ptlb:Emission,ptin:_Emission,varname:node_9087,prsc:2,glob:False,c1:1,c2:0.8896551,c3:0,c4:1;n:type:ShaderForge.SFN_Multiply,id:3563,x:32510,y:32694,varname:node_3563,prsc:2|A-9087-RGB,B-3912-OUT,C-3580-OUT;n:type:ShaderForge.SFN_Tex2d,id:2138,x:31914,y:32581,ptovrint:False,ptlb:Alpha,ptin:_Alpha,varname:node_2138,prsc:2,ntxv:0,isnm:False|UVIN-3408-UVOUT;n:type:ShaderForge.SFN_TexCoord,id:3408,x:31733,y:32581,varname:node_3408,prsc:2,uv:0;n:type:ShaderForge.SFN_Fresnel,id:6855,x:33589,y:32514,varname:node_6855,prsc:2|NRM-4587-OUT,EXP-508-OUT;n:type:ShaderForge.SFN_NormalVector,id:4587,x:33303,y:32442,prsc:2,pt:False;n:type:ShaderForge.SFN_ValueProperty,id:508,x:33405,y:32594,ptovrint:False,ptlb:fresnelMask,ptin:_fresnelMask,varname:node_1632,prsc:2,glob:False,v1:0;n:type:ShaderForge.SFN_OneMinus,id:5363,x:33756,y:32514,varname:node_5363,prsc:2|IN-6855-OUT;n:type:ShaderForge.SFN_Fresnel,id:1712,x:33653,y:32578,varname:node_1712,prsc:2|NRM-6326-OUT,EXP-3251-OUT;n:type:ShaderForge.SFN_NormalVector,id:6326,x:33367,y:32506,prsc:2,pt:False;n:type:ShaderForge.SFN_ValueProperty,id:3251,x:33469,y:32658,ptovrint:False,ptlb:fresnelMask_copy,ptin:_fresnelMask_copy,varname:_fresnelMask_copy,prsc:2,glob:False,v1:0;n:type:ShaderForge.SFN_OneMinus,id:4854,x:33820,y:32578,varname:node_4854,prsc:2|IN-1712-OUT;n:type:ShaderForge.SFN_Fresnel,id:595,x:33717,y:32642,varname:node_595,prsc:2|NRM-872-OUT,EXP-7011-OUT;n:type:ShaderForge.SFN_NormalVector,id:872,x:33431,y:32570,prsc:2,pt:False;n:type:ShaderForge.SFN_ValueProperty,id:7011,x:33533,y:32722,ptovrint:False,ptlb:fresnelMask_copy_copy,ptin:_fresnelMask_copy_copy,varname:_fresnelMask_copy_copy,prsc:2,glob:False,v1:0;n:type:ShaderForge.SFN_OneMinus,id:5347,x:33884,y:32642,varname:node_5347,prsc:2|IN-595-OUT;n:type:ShaderForge.SFN_Fresnel,id:1604,x:33781,y:32706,varname:node_1604,prsc:2|NRM-7120-OUT,EXP-1553-OUT;n:type:ShaderForge.SFN_NormalVector,id:7120,x:33495,y:32634,prsc:2,pt:False;n:type:ShaderForge.SFN_ValueProperty,id:1553,x:33597,y:32786,ptovrint:False,ptlb:fresnelMask_copy_copy_copy,ptin:_fresnelMask_copy_copy_copy,varname:_fresnelMask_copy_copy_copy,prsc:2,glob:False,v1:0;n:type:ShaderForge.SFN_OneMinus,id:1348,x:33948,y:32706,varname:node_1348,prsc:2|IN-1604-OUT;n:type:ShaderForge.SFN_Fresnel,id:1944,x:33845,y:32770,varname:node_1944,prsc:2|NRM-5867-OUT,EXP-3806-OUT;n:type:ShaderForge.SFN_NormalVector,id:5867,x:33559,y:32698,prsc:2,pt:False;n:type:ShaderForge.SFN_ValueProperty,id:3806,x:33661,y:32850,ptovrint:False,ptlb:fresnelMask_copy_copy_copy_copy,ptin:_fresnelMask_copy_copy_copy_copy,varname:_fresnelMask_copy_copy_copy_copy,prsc:2,glob:False,v1:0;n:type:ShaderForge.SFN_OneMinus,id:5638,x:34012,y:32770,varname:node_5638,prsc:2|IN-1944-OUT;n:type:ShaderForge.SFN_Fresnel,id:7160,x:33909,y:32834,varname:node_7160,prsc:2|NRM-3489-OUT,EXP-3637-OUT;n:type:ShaderForge.SFN_NormalVector,id:3489,x:33623,y:32762,prsc:2,pt:False;n:type:ShaderForge.SFN_ValueProperty,id:3637,x:33725,y:32914,ptovrint:False,ptlb:fresnelMask_copy_copy_copy_copy_copy,ptin:_fresnelMask_copy_copy_copy_copy_copy,varname:_fresnelMask_copy_copy_copy_copy_copy,prsc:2,glob:False,v1:0;n:type:ShaderForge.SFN_OneMinus,id:5576,x:34076,y:32834,varname:node_5576,prsc:2|IN-7160-OUT;n:type:ShaderForge.SFN_Fresnel,id:1884,x:33973,y:32898,varname:node_1884,prsc:2|NRM-4983-OUT,EXP-5412-OUT;n:type:ShaderForge.SFN_NormalVector,id:4983,x:33687,y:32826,prsc:2,pt:False;n:type:ShaderForge.SFN_ValueProperty,id:5412,x:33789,y:32978,ptovrint:False,ptlb:fresnelMask_copy_copy_copy_copy_copy_copy,ptin:_fresnelMask_copy_copy_copy_copy_copy_copy,varname:_fresnelMask_copy_copy_copy_copy_copy_copy,prsc:2,glob:False,v1:0;n:type:ShaderForge.SFN_OneMinus,id:1172,x:34140,y:32898,varname:node_1172,prsc:2|IN-1884-OUT;n:type:ShaderForge.SFN_Fresnel,id:5967,x:34037,y:32962,varname:node_5967,prsc:2|NRM-2861-OUT,EXP-7059-OUT;n:type:ShaderForge.SFN_NormalVector,id:2861,x:33751,y:32890,prsc:2,pt:False;n:type:ShaderForge.SFN_ValueProperty,id:7059,x:33853,y:33042,ptovrint:False,ptlb:fresnelMask_copy_copy_copy_copy_copy_copy_copy,ptin:_fresnelMask_copy_copy_copy_copy_copy_copy_copy,varname:_fresnelMask_copy_copy_copy_copy_copy_copy_copy,prsc:2,glob:False,v1:0;n:type:ShaderForge.SFN_OneMinus,id:6722,x:34204,y:32962,varname:node_6722,prsc:2|IN-5967-OUT;n:type:ShaderForge.SFN_Fresnel,id:875,x:34101,y:33026,varname:node_875,prsc:2|NRM-7189-OUT,EXP-2789-OUT;n:type:ShaderForge.SFN_NormalVector,id:7189,x:33815,y:32954,prsc:2,pt:False;n:type:ShaderForge.SFN_ValueProperty,id:2789,x:33917,y:33106,ptovrint:False,ptlb:fresnelMask_copy_copy_copy_copy_copy_copy_copy_copy,ptin:_fresnelMask_copy_copy_copy_copy_copy_copy_copy_copy,varname:_fresnelMask_copy_copy_copy_copy_copy_copy_copy_copy,prsc:2,glob:False,v1:0;n:type:ShaderForge.SFN_OneMinus,id:8643,x:34268,y:33026,varname:node_8643,prsc:2|IN-875-OUT;n:type:ShaderForge.SFN_Fresnel,id:1677,x:34165,y:33090,varname:node_1677,prsc:2|NRM-6737-OUT,EXP-8954-OUT;n:type:ShaderForge.SFN_NormalVector,id:6737,x:33879,y:33018,prsc:2,pt:False;n:type:ShaderForge.SFN_ValueProperty,id:8954,x:33981,y:33170,ptovrint:False,ptlb:fresnelMask_copy_copy_copy_copy_copy_copy_copy_copy_copy,ptin:_fresnelMask_copy_copy_copy_copy_copy_copy_copy_copy_copy,varname:_fresnelMask_copy_copy_copy_copy_copy_copy_copy_copy_copy,prsc:2,glob:False,v1:0;n:type:ShaderForge.SFN_OneMinus,id:1611,x:34332,y:33090,varname:node_1611,prsc:2|IN-1677-OUT;n:type:ShaderForge.SFN_Fresnel,id:6565,x:31737,y:32870,varname:node_6565,prsc:2|NRM-7060-OUT;n:type:ShaderForge.SFN_NormalVector,id:7060,x:31576,y:32870,prsc:2,pt:False;n:type:ShaderForge.SFN_OneMinus,id:3580,x:32250,y:32870,varname:node_3580,prsc:2|IN-9823-OUT;n:type:ShaderForge.SFN_Power,id:9823,x:32081,y:32870,varname:node_9823,prsc:2|VAL-8140-OUT,EXP-8106-OUT;n:type:ShaderForge.SFN_ValueProperty,id:5358,x:31912,y:32770,ptovrint:False,ptlb:fade,ptin:_fade,varname:node_5358,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_RemapRange,id:8140,x:31912,y:32870,varname:node_8140,prsc:2,frmn:0,frmx:1,tomn:0,tomx:1.6|IN-6565-OUT;n:type:ShaderForge.SFN_Vector1,id:8106,x:31912,y:33027,varname:node_8106,prsc:2,v1:0.9;n:type:ShaderForge.SFN_Multiply,id:3912,x:32250,y:32680,varname:node_3912,prsc:2|A-2138-RGB,B-462-OUT;n:type:ShaderForge.SFN_Clamp01,id:462,x:32081,y:32726,varname:node_462,prsc:2|IN-5358-OUT;proporder:9087-5358-2138;pass:END;sub:END;*/

Shader "Carpathia/glowMeshMask" {
    Properties {
        _Emission ("Emission", Color) = (1,0.8896551,0,1)
        _fade ("fade", Float ) = 1
        _Alpha ("Alpha", 2D) = "white" {}
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        LOD 200
        Pass {
            Name "ForwardBase"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend One One
            ZWrite Off
            
            Fog {Mode Off}
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma exclude_renderers xbox360 ps3 flash d3d11_9x 
            #pragma target 3.0
            uniform float4 _Emission;
            uniform sampler2D _Alpha; uniform float4 _Alpha_ST;
            uniform float _fade;
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
                o.pos = UnityObjectToClipPos(v.vertex);
                return o;
            }
            fixed4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
/////// Vectors:
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
////// Lighting:
////// Emissive:
                float4 _Alpha_var = tex2D(_Alpha,TRANSFORM_TEX(i.uv0, _Alpha));
                float3 emissive = (_Emission.rgb*(_Alpha_var.rgb*saturate(_fade))*(1.0 - pow(((1.0-max(0,dot(i.normalDir, viewDirection)))*1.6+0.0),0.9)));
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
