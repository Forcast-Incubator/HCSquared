// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:3,spmd:1,trmd:0,grmd:1,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:True,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:3,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:2865,x:35548,y:33695,varname:node_2865,prsc:2|diff-5035-OUT,spec-9429-OUT,gloss-7454-OUT,normal-2960-OUT,difocc-4576-OUT,spcocc-4576-OUT,alpha-1693-OUT,disp-9426-OUT,tess-291-OUT;n:type:ShaderForge.SFN_Multiply,id:6343,x:31259,y:32579,varname:node_6343,prsc:2|A-7736-RGB,B-6665-RGB;n:type:ShaderForge.SFN_Color,id:6665,x:31066,y:32676,ptovrint:False,ptlb:Start Color,ptin:_StartColor,varname:_StartColor,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Tex2d,id:7736,x:31066,y:32487,ptovrint:True,ptlb:Start Albedo,ptin:_MainTex,varname:_MainTex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:90ef472345078ee4baf107867d328e14,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:5964,x:31066,y:33042,ptovrint:True,ptlb:Start  Normal Map,ptin:_BumpMap,varname:_BumpMap,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:ff05e3313f373404b9a735c3151d74a2,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Slider,id:358,x:31238,y:32743,ptovrint:False,ptlb:Start Metallic,ptin:_StartMetallic,varname:_StartMetallic,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Tex2d,id:1726,x:31066,y:32847,ptovrint:False,ptlb:Start Roughness,ptin:_StartRoughness,varname:_StartRoughness,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:036cd497b8b9905479efd06dfb554913,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:6832,x:31066,y:33244,ptovrint:False,ptlb:Start AO,ptin:_StartAO,varname:_StartAO,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:15ac98ec8bd1ac542ae816baf78271bf,ntxv:0,isnm:False;n:type:ShaderForge.SFN_ValueProperty,id:5048,x:32572,y:32386,ptovrint:False,ptlb:Switch,ptin:_Switch,varname:_Switch,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Lerp,id:5035,x:34695,y:33436,varname:node_5035,prsc:2|A-6343-OUT,B-6912-OUT,T-456-OUT;n:type:ShaderForge.SFN_Lerp,id:9429,x:34695,y:33545,varname:node_9429,prsc:2|A-358-OUT,B-4634-OUT,T-456-OUT;n:type:ShaderForge.SFN_Lerp,id:7454,x:34695,y:33669,varname:node_7454,prsc:2|A-4372-OUT,B-2084-OUT,T-456-OUT;n:type:ShaderForge.SFN_Multiply,id:6912,x:31280,y:34431,varname:node_6912,prsc:2|A-9866-RGB,B-578-RGB;n:type:ShaderForge.SFN_Color,id:578,x:31087,y:34514,ptovrint:False,ptlb:End Color,ptin:_EndColor,varname:_EndColor,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Tex2d,id:9866,x:31087,y:34280,ptovrint:True,ptlb:End Albedo,ptin:_EndMainTex,varname:_EndMainTex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:8443,x:31089,y:34967,ptovrint:True,ptlb:End Normal Map,ptin:_EndBumpMap,varname:_EndBumpMap,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Slider,id:4634,x:31259,y:34595,ptovrint:False,ptlb:End Metallic,ptin:_EndMetallic,varname:_EndMetallic,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Tex2d,id:9211,x:31089,y:34723,ptovrint:False,ptlb:End Roughness,ptin:_EndRoughness,varname:_EndRoughness,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:1819,x:31089,y:35211,ptovrint:False,ptlb:End AO,ptin:_EndAO,varname:_EndAO,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Lerp,id:4576,x:34695,y:33960,varname:node_4576,prsc:2|A-6832-R,B-1819-R,T-456-OUT;n:type:ShaderForge.SFN_Tex2d,id:3677,x:32474,y:31878,ptovrint:False,ptlb:FadeTex,ptin:_FadeTex,varname:node_3677,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:3348ee9eb48c25a4baf2ccafd576ee72,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Vector1,id:5892,x:30684,y:33932,varname:node_5892,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:5937,x:30684,y:34006,varname:node_5937,prsc:2,v1:1;n:type:ShaderForge.SFN_Relay,id:456,x:33691,y:32895,varname:node_456,prsc:2|IN-1272-OUT;n:type:ShaderForge.SFN_Slider,id:9478,x:32493,y:32472,ptovrint:False,ptlb:Switch Slider,ptin:_SwitchSlider,varname:node_9478,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Multiply,id:1076,x:32846,y:32396,varname:node_1076,prsc:2|A-5048-OUT,B-9478-OUT;n:type:ShaderForge.SFN_ValueProperty,id:3158,x:33389,y:32486,ptovrint:False,ptlb:FadePow,ptin:_FadePow,varname:node_3158,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Power,id:5354,x:33573,y:32371,varname:node_5354,prsc:2|VAL-889-OUT,EXP-3158-OUT;n:type:ShaderForge.SFN_Clamp01,id:1272,x:33742,y:32371,varname:node_1272,prsc:2|IN-5354-OUT;n:type:ShaderForge.SFN_Slider,id:2849,x:32317,y:32060,ptovrint:False,ptlb:TexRangeMin,ptin:_TexRangeMin,varname:node_2849,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-1,cur:0,max:2;n:type:ShaderForge.SFN_Slider,id:8903,x:32317,y:32151,ptovrint:False,ptlb:TexRangeMax,ptin:_TexRangeMax,varname:_texmin_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-1,cur:1,max:2;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:5344,x:32830,y:32121,varname:node_5344,prsc:2|IN-3677-R,IMIN-2849-OUT,IMAX-8903-OUT,OMIN-5892-OUT,OMAX-5937-OUT;n:type:ShaderForge.SFN_Clamp01,id:889,x:33389,y:32324,varname:node_889,prsc:2|IN-5590-OUT;n:type:ShaderForge.SFN_Add,id:5590,x:33220,y:32324,varname:node_5590,prsc:2|A-3647-OUT,B-4913-OUT;n:type:ShaderForge.SFN_OneMinus,id:4115,x:33865,y:32791,varname:node_4115,prsc:2|IN-456-OUT;n:type:ShaderForge.SFN_RemapRange,id:4913,x:33013,y:32396,varname:node_4913,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-1076-OUT;n:type:ShaderForge.SFN_Append,id:2542,x:32020,y:33572,varname:node_2542,prsc:2|A-5964-R,B-5964-G;n:type:ShaderForge.SFN_Append,id:312,x:32020,y:33700,varname:node_312,prsc:2|A-8443-R,B-8443-G;n:type:ShaderForge.SFN_Multiply,id:8325,x:32329,y:33920,varname:node_8325,prsc:2|A-7652-OUT,B-351-OUT;n:type:ShaderForge.SFN_Multiply,id:1398,x:32329,y:33573,varname:node_1398,prsc:2|A-2542-OUT,B-4115-OUT;n:type:ShaderForge.SFN_Multiply,id:5205,x:32329,y:33767,varname:node_5205,prsc:2|A-312-OUT,B-456-OUT;n:type:ShaderForge.SFN_Lerp,id:7652,x:32020,y:33832,varname:node_7652,prsc:2|A-5964-B,B-5937-OUT,T-456-OUT;n:type:ShaderForge.SFN_Lerp,id:351,x:32020,y:33966,varname:node_351,prsc:2|A-5937-OUT,B-8443-B,T-456-OUT;n:type:ShaderForge.SFN_Add,id:3404,x:32546,y:33637,varname:node_3404,prsc:2|A-1398-OUT,B-5205-OUT;n:type:ShaderForge.SFN_Append,id:3544,x:32739,y:33720,varname:node_3544,prsc:2|A-3404-OUT,B-8325-OUT;n:type:ShaderForge.SFN_Normalize,id:1130,x:32910,y:33720,varname:node_1130,prsc:2|IN-3544-OUT;n:type:ShaderForge.SFN_Lerp,id:2960,x:35004,y:33768,varname:node_2960,prsc:2|A-9637-OUT,B-1130-OUT,T-9321-OUT;n:type:ShaderForge.SFN_Vector3,id:9637,x:34832,y:33719,varname:node_9637,prsc:2,v1:0.5,v2:0.5,v3:1;n:type:ShaderForge.SFN_Lerp,id:9321,x:34695,y:33835,varname:node_9321,prsc:2|A-7186-X,B-7729-X,T-456-OUT;n:type:ShaderForge.SFN_Multiply,id:4372,x:31579,y:32931,varname:node_4372,prsc:2|A-1726-R,B-6838-OUT;n:type:ShaderForge.SFN_Multiply,id:2084,x:31581,y:34788,varname:node_2084,prsc:2|A-9211-R,B-5250-OUT;n:type:ShaderForge.SFN_Slider,id:6838,x:31225,y:32999,ptovrint:False,ptlb:StartRoughMult,ptin:_StartRoughMult,varname:node_6838,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:2;n:type:ShaderForge.SFN_Slider,id:5250,x:31250,y:34870,ptovrint:False,ptlb:EndRoughMult,ptin:_EndRoughMult,varname:node_5250,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:2;n:type:ShaderForge.SFN_Lerp,id:9426,x:34645,y:35494,varname:node_9426,prsc:2|A-4429-OUT,B-2275-OUT,T-456-OUT;n:type:ShaderForge.SFN_Tex2d,id:5119,x:33865,y:35682,ptovrint:False,ptlb:End Displacement,ptin:_EndDisplacement,varname:node_5119,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:2,isnm:False;n:type:ShaderForge.SFN_ValueProperty,id:291,x:34645,y:35657,ptovrint:False,ptlb:Tesselation,ptin:_Tesselation,varname:node_291,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Multiply,id:2275,x:34391,y:35732,varname:node_2275,prsc:2|A-204-OUT,B-7729-W,C-8512-OUT;n:type:ShaderForge.SFN_Tex2d,id:583,x:33858,y:35289,ptovrint:False,ptlb:Start Displacement,ptin:_StartDisplacement,varname:node_583,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:2,isnm:False;n:type:ShaderForge.SFN_NormalVector,id:8512,x:34191,y:35631,prsc:2,pt:False;n:type:ShaderForge.SFN_Multiply,id:4429,x:34371,y:35500,varname:node_4429,prsc:2|A-7986-OUT,B-7186-W,C-8512-OUT;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:204,x:34191,y:35818,varname:node_204,prsc:2|IN-5119-RGB,IMIN-5892-OUT,IMAX-5937-OUT,OMIN-7729-Y,OMAX-7729-Z;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:7986,x:34191,y:35402,varname:node_7986,prsc:2|IN-583-RGB,IMIN-5892-OUT,IMAX-5937-OUT,OMIN-7186-Y,OMAX-7186-Z;n:type:ShaderForge.SFN_Vector4Property,id:7186,x:33858,y:35506,ptovrint:False,ptlb:Start Nrm Disp Min Max Str,ptin:_StartNrmDispMinMaxStr,varname:node_7186,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0,v2:0,v3:0,v4:0;n:type:ShaderForge.SFN_Vector4Property,id:7729,x:33865,y:35893,ptovrint:False,ptlb:End Nrm Disp Min Max Str,ptin:_EndNrmDispMinMaxStr,varname:node_7729,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0,v2:0,v3:0,v4:0;n:type:ShaderForge.SFN_Lerp,id:4884,x:32141,y:32274,varname:node_4884,prsc:2|A-8488-R,B-7490-OUT,T-3298-OUT;n:type:ShaderForge.SFN_Round,id:3298,x:31937,y:32471,varname:node_3298,prsc:2|IN-8488-R;n:type:ShaderForge.SFN_Power,id:3647,x:33013,y:32248,varname:node_3647,prsc:2|VAL-5344-OUT,EXP-4884-OUT;n:type:ShaderForge.SFN_Tex2d,id:8488,x:31607,y:32252,ptovrint:False,ptlb:FadeNoise,ptin:_FadeNoise,varname:node_8488,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:1,isnm:False;n:type:ShaderForge.SFN_RemapRange,id:7490,x:31937,y:32312,varname:node_7490,prsc:2,frmn:0.5,frmx:1,tomn:0,tomx:10|IN-8488-R;n:type:ShaderForge.SFN_Tex2d,id:4714,x:33296,y:34420,ptovrint:False,ptlb:Start Alpha,ptin:_StartAlpha,varname:node_4714,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Lerp,id:4392,x:34695,y:34082,varname:node_4392,prsc:2|A-1632-OUT,B-9443-OUT,T-456-OUT;n:type:ShaderForge.SFN_Tex2d,id:5098,x:33296,y:34775,ptovrint:False,ptlb:End Alpha,ptin:_EndAlpha,varname:node_5098,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Add,id:5473,x:33807,y:34598,varname:node_5473,prsc:2|A-4714-R,B-6366-X;n:type:ShaderForge.SFN_Add,id:8690,x:33807,y:34712,varname:node_8690,prsc:2|A-5098-R,B-6366-Z;n:type:ShaderForge.SFN_Dot,id:7333,x:34826,y:34766,varname:node_7333,prsc:2,dt:1|A-2117-OUT,B-8512-OUT;n:type:ShaderForge.SFN_ViewVector,id:2117,x:34546,y:34772,varname:node_2117,prsc:2;n:type:ShaderForge.SFN_Power,id:397,x:34684,y:34228,varname:node_397,prsc:2|VAL-7333-OUT,EXP-4135-OUT;n:type:ShaderForge.SFN_Clamp01,id:2151,x:34853,y:34286,varname:node_2151,prsc:2|IN-397-OUT;n:type:ShaderForge.SFN_Slider,id:4135,x:34669,y:34648,ptovrint:False,ptlb:Alpha Fresnel,ptin:_AlphaFresnel,varname:node_4135,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Multiply,id:1693,x:35052,y:34149,varname:node_1693,prsc:2|A-7849-OUT,B-397-OUT;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:9443,x:34050,y:34712,varname:node_9443,prsc:2|IN-8690-OUT,IMIN-5892-OUT,IMAX-5937-OUT,OMIN-491-OUT,OMAX-6805-OUT;n:type:ShaderForge.SFN_Clamp01,id:7849,x:34853,y:34082,varname:node_7849,prsc:2|IN-4392-OUT;n:type:ShaderForge.SFN_Subtract,id:491,x:33807,y:34832,varname:node_491,prsc:2|A-5892-OUT,B-6366-W;n:type:ShaderForge.SFN_Add,id:6805,x:33807,y:34972,varname:node_6805,prsc:2|A-5937-OUT,B-6366-W;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:1632,x:34050,y:34581,varname:node_1632,prsc:2|IN-5473-OUT,IMIN-5892-OUT,IMAX-5937-OUT,OMIN-7997-OUT,OMAX-4465-OUT;n:type:ShaderForge.SFN_Add,id:4465,x:33807,y:34453,varname:node_4465,prsc:2|A-6366-Y,B-5937-OUT;n:type:ShaderForge.SFN_Subtract,id:7997,x:33807,y:34310,varname:node_7997,prsc:2|A-5892-OUT,B-6366-Y;n:type:ShaderForge.SFN_Vector4Property,id:6366,x:33296,y:34603,ptovrint:False,ptlb:Start End Add Contrast,ptin:_StartEndAddContrast,varname:node_6366,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0,v2:0,v3:0,v4:0;proporder:3677-8488-5048-9478-3158-2849-8903-291-7736-6665-6832-358-1726-6838-5964-583-7186-9866-578-1819-4634-9211-5250-8443-5119-7729-4714-5098-6366-4135;pass:END;sub:END;*/

Shader "Shader Forge/PBRfader" {
    Properties {
        _FadeTex ("FadeTex", 2D) = "white" {}
        _FadeNoise ("FadeNoise", 2D) = "gray" {}
        _Switch ("Switch", Float ) = 1
        _SwitchSlider ("Switch Slider", Range(0, 1)) = 0
        _FadePow ("FadePow", Float ) = 1
        _TexRangeMin ("TexRangeMin", Range(-1, 2)) = 0
        _TexRangeMax ("TexRangeMax", Range(-1, 2)) = 1
        _Tesselation ("Tesselation", Float ) = 1
        _MainTex ("Start Albedo", 2D) = "white" {}
        _StartColor ("Start Color", Color) = (1,1,1,1)
        _StartAO ("Start AO", 2D) = "white" {}
        _StartMetallic ("Start Metallic", Range(0, 1)) = 0
        _StartRoughness ("Start Roughness", 2D) = "white" {}
        _StartRoughMult ("StartRoughMult", Range(0, 2)) = 1
        _BumpMap ("Start  Normal Map", 2D) = "bump" {}
        _StartDisplacement ("Start Displacement", 2D) = "black" {}
        _StartNrmDispMinMaxStr ("Start Nrm Disp Min Max Str", Vector) = (0,0,0,0)
        _EndMainTex ("End Albedo", 2D) = "white" {}
        _EndColor ("End Color", Color) = (1,1,1,1)
        _EndAO ("End AO", 2D) = "white" {}
        _EndMetallic ("End Metallic", Range(0, 1)) = 0
        _EndRoughness ("End Roughness", 2D) = "white" {}
        _EndRoughMult ("EndRoughMult", Range(0, 2)) = 1
        _EndBumpMap ("End Normal Map", 2D) = "bump" {}
        _EndDisplacement ("End Displacement", 2D) = "black" {}
        _EndNrmDispMinMaxStr ("End Nrm Disp Min Max Str", Vector) = (0,0,0,0)
        _StartAlpha ("Start Alpha", 2D) = "white" {}
        _EndAlpha ("End Alpha", 2D) = "white" {}
        _StartEndAddContrast ("Start End Add Contrast", Vector) = (0,0,0,0)
        _AlphaFresnel ("Alpha Fresnel", Range(0, 1)) = 0
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
            #pragma hull hull
            #pragma domain domain
            #pragma vertex tessvert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "Tessellation.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma only_renderers d3d11 
            #pragma target 5.0
            uniform float4 _StartColor;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform sampler2D _BumpMap; uniform float4 _BumpMap_ST;
            uniform float _StartMetallic;
            uniform sampler2D _StartRoughness; uniform float4 _StartRoughness_ST;
            uniform sampler2D _StartAO; uniform float4 _StartAO_ST;
            uniform float _Switch;
            uniform float4 _EndColor;
            uniform sampler2D _EndMainTex; uniform float4 _EndMainTex_ST;
            uniform sampler2D _EndBumpMap; uniform float4 _EndBumpMap_ST;
            uniform float _EndMetallic;
            uniform sampler2D _EndRoughness; uniform float4 _EndRoughness_ST;
            uniform sampler2D _EndAO; uniform float4 _EndAO_ST;
            uniform sampler2D _FadeTex; uniform float4 _FadeTex_ST;
            uniform float _SwitchSlider;
            uniform float _FadePow;
            uniform float _TexRangeMin;
            uniform float _TexRangeMax;
            uniform float _StartRoughMult;
            uniform float _EndRoughMult;
            uniform sampler2D _EndDisplacement; uniform float4 _EndDisplacement_ST;
            uniform float _Tesselation;
            uniform sampler2D _StartDisplacement; uniform float4 _StartDisplacement_ST;
            uniform float4 _StartNrmDispMinMaxStr;
            uniform float4 _EndNrmDispMinMaxStr;
            uniform sampler2D _FadeNoise; uniform float4 _FadeNoise_ST;
            uniform sampler2D _StartAlpha; uniform float4 _StartAlpha_ST;
            uniform sampler2D _EndAlpha; uniform float4 _EndAlpha_ST;
            uniform float _AlphaFresnel;
            uniform float4 _StartEndAddContrast;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
                float3 normalDir : TEXCOORD4;
                float3 tangentDir : TEXCOORD5;
                float3 bitangentDir : TEXCOORD6;
                UNITY_FOG_COORDS(7)
                #if defined(LIGHTMAP_ON) || defined(UNITY_SHOULD_SAMPLE_SH)
                    float4 ambientOrLightmapUV : TEXCOORD8;
                #endif
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                #ifdef LIGHTMAP_ON
                    o.ambientOrLightmapUV.xy = v.texcoord1.xy * unity_LightmapST.xy + unity_LightmapST.zw;
                    o.ambientOrLightmapUV.zw = 0;
                #elif UNITY_SHOULD_SAMPLE_SH
                #endif
                #ifdef DYNAMICLIGHTMAP_ON
                    o.ambientOrLightmapUV.zw = v.texcoord2.xy * unity_DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
                #endif
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            #ifdef UNITY_CAN_COMPILE_TESSELLATION
                struct TessVertex {
                    float4 vertex : INTERNALTESSPOS;
                    float3 normal : NORMAL;
                    float4 tangent : TANGENT;
                    float2 texcoord0 : TEXCOORD0;
                    float2 texcoord1 : TEXCOORD1;
                    float2 texcoord2 : TEXCOORD2;
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
                    o.texcoord1 = v.texcoord1;
                    o.texcoord2 = v.texcoord2;
                    return o;
                }
                void displacement (inout VertexInput v){
                    float4 _StartDisplacement_var = tex2Dlod(_StartDisplacement,float4(TRANSFORM_TEX(v.texcoord0, _StartDisplacement),0.0,0));
                    float node_5892 = 0.0;
                    float node_5937 = 1.0;
                    float4 _EndDisplacement_var = tex2Dlod(_EndDisplacement,float4(TRANSFORM_TEX(v.texcoord0, _EndDisplacement),0.0,0));
                    float4 _FadeTex_var = tex2Dlod(_FadeTex,float4(TRANSFORM_TEX(v.texcoord0, _FadeTex),0.0,0));
                    float4 _FadeNoise_var = tex2Dlod(_FadeNoise,float4(TRANSFORM_TEX(v.texcoord0, _FadeNoise),0.0,0));
                    float node_456 = saturate(pow(saturate((pow((node_5892 + ( (_FadeTex_var.r - _TexRangeMin) * (node_5937 - node_5892) ) / (_TexRangeMax - _TexRangeMin)),lerp(_FadeNoise_var.r,(_FadeNoise_var.r*20.0+-10.0),round(_FadeNoise_var.r)))+((_Switch*_SwitchSlider)*2.0+-1.0))),_FadePow));
                    v.vertex.xyz += lerp(((_StartNrmDispMinMaxStr.g + ( (_StartDisplacement_var.rgb - node_5892) * (_StartNrmDispMinMaxStr.b - _StartNrmDispMinMaxStr.g) ) / (node_5937 - node_5892))*_StartNrmDispMinMaxStr.a*v.normal),((_EndNrmDispMinMaxStr.g + ( (_EndDisplacement_var.rgb - node_5892) * (_EndNrmDispMinMaxStr.b - _EndNrmDispMinMaxStr.g) ) / (node_5937 - node_5892))*_EndNrmDispMinMaxStr.a*v.normal),node_456);
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
                    v.texcoord1 = vi[0].texcoord1*bary.x + vi[1].texcoord1*bary.y + vi[2].texcoord1*bary.z;
                    displacement(v);
                    VertexOutput o = vert(v);
                    return o;
                }
            #endif
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 _BumpMap_var = UnpackNormal(tex2D(_BumpMap,TRANSFORM_TEX(i.uv0, _BumpMap)));
                float4 _FadeTex_var = tex2D(_FadeTex,TRANSFORM_TEX(i.uv0, _FadeTex));
                float node_5892 = 0.0;
                float node_5937 = 1.0;
                float4 _FadeNoise_var = tex2D(_FadeNoise,TRANSFORM_TEX(i.uv0, _FadeNoise));
                float node_456 = saturate(pow(saturate((pow((node_5892 + ( (_FadeTex_var.r - _TexRangeMin) * (node_5937 - node_5892) ) / (_TexRangeMax - _TexRangeMin)),lerp(_FadeNoise_var.r,(_FadeNoise_var.r*20.0+-10.0),round(_FadeNoise_var.r)))+((_Switch*_SwitchSlider)*2.0+-1.0))),_FadePow));
                float3 _EndBumpMap_var = UnpackNormal(tex2D(_EndBumpMap,TRANSFORM_TEX(i.uv0, _EndBumpMap)));
                float3 normalLocal = lerp(float3(0.5,0.5,1),normalize(float3(((float2(_BumpMap_var.r,_BumpMap_var.g)*(1.0 - node_456))+(float2(_EndBumpMap_var.r,_EndBumpMap_var.g)*node_456)),(lerp(_BumpMap_var.b,node_5937,node_456)*lerp(node_5937,_EndBumpMap_var.b,node_456)))),lerp(_StartNrmDispMinMaxStr.r,_EndNrmDispMinMaxStr.r,node_456));
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = 1;
                float3 attenColor = attenuation * _LightColor0.xyz;
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float4 _StartRoughness_var = tex2D(_StartRoughness,TRANSFORM_TEX(i.uv0, _StartRoughness));
                float4 _EndRoughness_var = tex2D(_EndRoughness,TRANSFORM_TEX(i.uv0, _EndRoughness));
                float gloss = 1.0 - lerp((_StartRoughness_var.r*_StartRoughMult),(_EndRoughness_var.r*_EndRoughMult),node_456); // Convert roughness to gloss
                float perceptualRoughness = lerp((_StartRoughness_var.r*_StartRoughMult),(_EndRoughness_var.r*_EndRoughMult),node_456);
                float roughness = perceptualRoughness * perceptualRoughness;
                float specPow = exp2( gloss * 10.0 + 1.0 );
/////// GI Data:
                UnityLight light;
                #ifdef LIGHTMAP_OFF
                    light.color = lightColor;
                    light.dir = lightDirection;
                    light.ndotl = LambertTerm (normalDirection, light.dir);
                #else
                    light.color = half3(0.f, 0.f, 0.f);
                    light.ndotl = 0.0f;
                    light.dir = half3(0.f, 0.f, 0.f);
                #endif
                UnityGIInput d;
                d.light = light;
                d.worldPos = i.posWorld.xyz;
                d.worldViewDir = viewDirection;
                d.atten = attenuation;
                #if defined(LIGHTMAP_ON) || defined(DYNAMICLIGHTMAP_ON)
                    d.ambient = 0;
                    d.lightmapUV = i.ambientOrLightmapUV;
                #else
                    d.ambient = i.ambientOrLightmapUV;
                #endif
                #if UNITY_SPECCUBE_BLENDING || UNITY_SPECCUBE_BOX_PROJECTION
                    d.boxMin[0] = unity_SpecCube0_BoxMin;
                    d.boxMin[1] = unity_SpecCube1_BoxMin;
                #endif
                #if UNITY_SPECCUBE_BOX_PROJECTION
                    d.boxMax[0] = unity_SpecCube0_BoxMax;
                    d.boxMax[1] = unity_SpecCube1_BoxMax;
                    d.probePosition[0] = unity_SpecCube0_ProbePosition;
                    d.probePosition[1] = unity_SpecCube1_ProbePosition;
                #endif
                d.probeHDR[0] = unity_SpecCube0_HDR;
                d.probeHDR[1] = unity_SpecCube1_HDR;
                Unity_GlossyEnvironmentData ugls_en_data;
                ugls_en_data.roughness = 1.0 - gloss;
                ugls_en_data.reflUVW = viewReflectDirection;
                UnityGI gi = UnityGlobalIllumination(d, 1, normalDirection, ugls_en_data );
                lightDirection = gi.light.dir;
                lightColor = gi.light.color;
////// Specular:
                float NdotL = saturate(dot( normalDirection, lightDirection ));
                float4 _StartAO_var = tex2D(_StartAO,TRANSFORM_TEX(i.uv0, _StartAO));
                float4 _EndAO_var = tex2D(_EndAO,TRANSFORM_TEX(i.uv0, _EndAO));
                float node_4576 = lerp(_StartAO_var.r,_EndAO_var.r,node_456);
                float3 specularAO = node_4576;
                float LdotH = saturate(dot(lightDirection, halfDirection));
                float3 specularColor = lerp(_StartMetallic,_EndMetallic,node_456);
                float specularMonochrome;
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float4 _EndMainTex_var = tex2D(_EndMainTex,TRANSFORM_TEX(i.uv0, _EndMainTex));
                float3 diffuseColor = lerp((_MainTex_var.rgb*_StartColor.rgb),(_EndMainTex_var.rgb*_EndColor.rgb),node_456); // Need this for specular when using metallic
                diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, specularColor, specularColor, specularMonochrome );
                specularMonochrome = 1.0-specularMonochrome;
                float NdotV = abs(dot( normalDirection, viewDirection ));
                float NdotH = saturate(dot( normalDirection, halfDirection ));
                float VdotH = saturate(dot( viewDirection, halfDirection ));
                float visTerm = SmithJointGGXVisibilityTerm( NdotL, NdotV, roughness );
                float normTerm = GGXTerm(NdotH, roughness);
                float specularPBL = (visTerm*normTerm) * UNITY_PI;
                #ifdef UNITY_COLORSPACE_GAMMA
                    specularPBL = sqrt(max(1e-4h, specularPBL));
                #endif
                specularPBL = max(0, specularPBL * NdotL);
                #if defined(_SPECULARHIGHLIGHTS_OFF)
                    specularPBL = 0.0;
                #endif
                half surfaceReduction;
                #ifdef UNITY_COLORSPACE_GAMMA
                    surfaceReduction = 1.0-0.28*roughness*perceptualRoughness;
                #else
                    surfaceReduction = 1.0/(roughness*roughness + 1.0);
                #endif
                specularPBL *= any(specularColor) ? 1.0 : 0.0;
                float3 directSpecular = attenColor*specularPBL*FresnelTerm(specularColor, LdotH);
                half grazingTerm = saturate( gloss + specularMonochrome );
                float3 indirectSpecular = (gi.indirect.specular) * specularAO;
                indirectSpecular *= FresnelLerp (specularColor, grazingTerm, NdotV);
                indirectSpecular *= surfaceReduction;
                float3 specular = (directSpecular + indirectSpecular);
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                half fd90 = 0.5 + 2 * LdotH * LdotH * (1-gloss);
                float nlPow5 = Pow5(1-NdotL);
                float nvPow5 = Pow5(1-NdotV);
                float3 directDiffuse = ((1 +(fd90 - 1)*nlPow5) * (1 + (fd90 - 1)*nvPow5) * NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += gi.indirect.diffuse;
                indirectDiffuse *= node_4576; // Diffuse AO
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                float4 _StartAlpha_var = tex2D(_StartAlpha,TRANSFORM_TEX(i.uv0, _StartAlpha));
                float node_7997 = (node_5892-_StartEndAddContrast.g);
                float4 _EndAlpha_var = tex2D(_EndAlpha,TRANSFORM_TEX(i.uv0, _EndAlpha));
                float node_491 = (node_5892-_StartEndAddContrast.a);
                float node_397 = pow(max(0,dot(viewDirection,i.normalDir)),_AlphaFresnel);
                fixed4 finalRGBA = fixed4(finalColor,(saturate(lerp((node_7997 + ( ((_StartAlpha_var.r+_StartEndAddContrast.r) - node_5892) * ((_StartEndAddContrast.g+node_5937) - node_7997) ) / (node_5937 - node_5892)),(node_491 + ( ((_EndAlpha_var.r+_StartEndAddContrast.b) - node_5892) * ((node_5937+_StartEndAddContrast.a) - node_491) ) / (node_5937 - node_5892)),node_456))*node_397));
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
            ZWrite Off
            
            CGPROGRAM
            #pragma hull hull
            #pragma domain domain
            #pragma vertex tessvert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #include "Tessellation.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdadd
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma only_renderers d3d11 
            #pragma target 5.0
            uniform float4 _StartColor;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform sampler2D _BumpMap; uniform float4 _BumpMap_ST;
            uniform float _StartMetallic;
            uniform sampler2D _StartRoughness; uniform float4 _StartRoughness_ST;
            uniform float _Switch;
            uniform float4 _EndColor;
            uniform sampler2D _EndMainTex; uniform float4 _EndMainTex_ST;
            uniform sampler2D _EndBumpMap; uniform float4 _EndBumpMap_ST;
            uniform float _EndMetallic;
            uniform sampler2D _EndRoughness; uniform float4 _EndRoughness_ST;
            uniform sampler2D _FadeTex; uniform float4 _FadeTex_ST;
            uniform float _SwitchSlider;
            uniform float _FadePow;
            uniform float _TexRangeMin;
            uniform float _TexRangeMax;
            uniform float _StartRoughMult;
            uniform float _EndRoughMult;
            uniform sampler2D _EndDisplacement; uniform float4 _EndDisplacement_ST;
            uniform float _Tesselation;
            uniform sampler2D _StartDisplacement; uniform float4 _StartDisplacement_ST;
            uniform float4 _StartNrmDispMinMaxStr;
            uniform float4 _EndNrmDispMinMaxStr;
            uniform sampler2D _FadeNoise; uniform float4 _FadeNoise_ST;
            uniform sampler2D _StartAlpha; uniform float4 _StartAlpha_ST;
            uniform sampler2D _EndAlpha; uniform float4 _EndAlpha_ST;
            uniform float _AlphaFresnel;
            uniform float4 _StartEndAddContrast;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
                float3 normalDir : TEXCOORD4;
                float3 tangentDir : TEXCOORD5;
                float3 bitangentDir : TEXCOORD6;
                LIGHTING_COORDS(7,8)
                UNITY_FOG_COORDS(9)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
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
                    float2 texcoord1 : TEXCOORD1;
                    float2 texcoord2 : TEXCOORD2;
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
                    o.texcoord1 = v.texcoord1;
                    o.texcoord2 = v.texcoord2;
                    return o;
                }
                void displacement (inout VertexInput v){
                    float4 _StartDisplacement_var = tex2Dlod(_StartDisplacement,float4(TRANSFORM_TEX(v.texcoord0, _StartDisplacement),0.0,0));
                    float node_5892 = 0.0;
                    float node_5937 = 1.0;
                    float4 _EndDisplacement_var = tex2Dlod(_EndDisplacement,float4(TRANSFORM_TEX(v.texcoord0, _EndDisplacement),0.0,0));
                    float4 _FadeTex_var = tex2Dlod(_FadeTex,float4(TRANSFORM_TEX(v.texcoord0, _FadeTex),0.0,0));
                    float4 _FadeNoise_var = tex2Dlod(_FadeNoise,float4(TRANSFORM_TEX(v.texcoord0, _FadeNoise),0.0,0));
                    float node_456 = saturate(pow(saturate((pow((node_5892 + ( (_FadeTex_var.r - _TexRangeMin) * (node_5937 - node_5892) ) / (_TexRangeMax - _TexRangeMin)),lerp(_FadeNoise_var.r,(_FadeNoise_var.r*20.0+-10.0),round(_FadeNoise_var.r)))+((_Switch*_SwitchSlider)*2.0+-1.0))),_FadePow));
                    v.vertex.xyz += lerp(((_StartNrmDispMinMaxStr.g + ( (_StartDisplacement_var.rgb - node_5892) * (_StartNrmDispMinMaxStr.b - _StartNrmDispMinMaxStr.g) ) / (node_5937 - node_5892))*_StartNrmDispMinMaxStr.a*v.normal),((_EndNrmDispMinMaxStr.g + ( (_EndDisplacement_var.rgb - node_5892) * (_EndNrmDispMinMaxStr.b - _EndNrmDispMinMaxStr.g) ) / (node_5937 - node_5892))*_EndNrmDispMinMaxStr.a*v.normal),node_456);
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
                    v.texcoord1 = vi[0].texcoord1*bary.x + vi[1].texcoord1*bary.y + vi[2].texcoord1*bary.z;
                    displacement(v);
                    VertexOutput o = vert(v);
                    return o;
                }
            #endif
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 _BumpMap_var = UnpackNormal(tex2D(_BumpMap,TRANSFORM_TEX(i.uv0, _BumpMap)));
                float4 _FadeTex_var = tex2D(_FadeTex,TRANSFORM_TEX(i.uv0, _FadeTex));
                float node_5892 = 0.0;
                float node_5937 = 1.0;
                float4 _FadeNoise_var = tex2D(_FadeNoise,TRANSFORM_TEX(i.uv0, _FadeNoise));
                float node_456 = saturate(pow(saturate((pow((node_5892 + ( (_FadeTex_var.r - _TexRangeMin) * (node_5937 - node_5892) ) / (_TexRangeMax - _TexRangeMin)),lerp(_FadeNoise_var.r,(_FadeNoise_var.r*20.0+-10.0),round(_FadeNoise_var.r)))+((_Switch*_SwitchSlider)*2.0+-1.0))),_FadePow));
                float3 _EndBumpMap_var = UnpackNormal(tex2D(_EndBumpMap,TRANSFORM_TEX(i.uv0, _EndBumpMap)));
                float3 normalLocal = lerp(float3(0.5,0.5,1),normalize(float3(((float2(_BumpMap_var.r,_BumpMap_var.g)*(1.0 - node_456))+(float2(_EndBumpMap_var.r,_EndBumpMap_var.g)*node_456)),(lerp(_BumpMap_var.b,node_5937,node_456)*lerp(node_5937,_EndBumpMap_var.b,node_456)))),lerp(_StartNrmDispMinMaxStr.r,_EndNrmDispMinMaxStr.r,node_456));
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float4 _StartRoughness_var = tex2D(_StartRoughness,TRANSFORM_TEX(i.uv0, _StartRoughness));
                float4 _EndRoughness_var = tex2D(_EndRoughness,TRANSFORM_TEX(i.uv0, _EndRoughness));
                float gloss = 1.0 - lerp((_StartRoughness_var.r*_StartRoughMult),(_EndRoughness_var.r*_EndRoughMult),node_456); // Convert roughness to gloss
                float perceptualRoughness = lerp((_StartRoughness_var.r*_StartRoughMult),(_EndRoughness_var.r*_EndRoughMult),node_456);
                float roughness = perceptualRoughness * perceptualRoughness;
                float specPow = exp2( gloss * 10.0 + 1.0 );
////// Specular:
                float NdotL = saturate(dot( normalDirection, lightDirection ));
                float LdotH = saturate(dot(lightDirection, halfDirection));
                float3 specularColor = lerp(_StartMetallic,_EndMetallic,node_456);
                float specularMonochrome;
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float4 _EndMainTex_var = tex2D(_EndMainTex,TRANSFORM_TEX(i.uv0, _EndMainTex));
                float3 diffuseColor = lerp((_MainTex_var.rgb*_StartColor.rgb),(_EndMainTex_var.rgb*_EndColor.rgb),node_456); // Need this for specular when using metallic
                diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, specularColor, specularColor, specularMonochrome );
                specularMonochrome = 1.0-specularMonochrome;
                float NdotV = abs(dot( normalDirection, viewDirection ));
                float NdotH = saturate(dot( normalDirection, halfDirection ));
                float VdotH = saturate(dot( viewDirection, halfDirection ));
                float visTerm = SmithJointGGXVisibilityTerm( NdotL, NdotV, roughness );
                float normTerm = GGXTerm(NdotH, roughness);
                float specularPBL = (visTerm*normTerm) * UNITY_PI;
                #ifdef UNITY_COLORSPACE_GAMMA
                    specularPBL = sqrt(max(1e-4h, specularPBL));
                #endif
                specularPBL = max(0, specularPBL * NdotL);
                #if defined(_SPECULARHIGHLIGHTS_OFF)
                    specularPBL = 0.0;
                #endif
                specularPBL *= any(specularColor) ? 1.0 : 0.0;
                float3 directSpecular = attenColor*specularPBL*FresnelTerm(specularColor, LdotH);
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                half fd90 = 0.5 + 2 * LdotH * LdotH * (1-gloss);
                float nlPow5 = Pow5(1-NdotL);
                float nvPow5 = Pow5(1-NdotV);
                float3 directDiffuse = ((1 +(fd90 - 1)*nlPow5) * (1 + (fd90 - 1)*nvPow5) * NdotL) * attenColor;
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                float4 _StartAlpha_var = tex2D(_StartAlpha,TRANSFORM_TEX(i.uv0, _StartAlpha));
                float node_7997 = (node_5892-_StartEndAddContrast.g);
                float4 _EndAlpha_var = tex2D(_EndAlpha,TRANSFORM_TEX(i.uv0, _EndAlpha));
                float node_491 = (node_5892-_StartEndAddContrast.a);
                float node_397 = pow(max(0,dot(viewDirection,i.normalDir)),_AlphaFresnel);
                fixed4 finalRGBA = fixed4(finalColor * (saturate(lerp((node_7997 + ( ((_StartAlpha_var.r+_StartEndAddContrast.r) - node_5892) * ((_StartEndAddContrast.g+node_5937) - node_7997) ) / (node_5937 - node_5892)),(node_491 + ( ((_EndAlpha_var.r+_StartEndAddContrast.b) - node_5892) * ((node_5937+_StartEndAddContrast.a) - node_491) ) / (node_5937 - node_5892)),node_456))*node_397),0);
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
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "Tessellation.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma only_renderers d3d11 
            #pragma target 5.0
            uniform float _Switch;
            uniform sampler2D _FadeTex; uniform float4 _FadeTex_ST;
            uniform float _SwitchSlider;
            uniform float _FadePow;
            uniform float _TexRangeMin;
            uniform float _TexRangeMax;
            uniform sampler2D _EndDisplacement; uniform float4 _EndDisplacement_ST;
            uniform float _Tesselation;
            uniform sampler2D _StartDisplacement; uniform float4 _StartDisplacement_ST;
            uniform float4 _StartNrmDispMinMaxStr;
            uniform float4 _EndNrmDispMinMaxStr;
            uniform sampler2D _FadeNoise; uniform float4 _FadeNoise_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
                float2 uv1 : TEXCOORD2;
                float2 uv2 : TEXCOORD3;
                float4 posWorld : TEXCOORD4;
                float3 normalDir : TEXCOORD5;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
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
                    float2 texcoord1 : TEXCOORD1;
                    float2 texcoord2 : TEXCOORD2;
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
                    o.texcoord1 = v.texcoord1;
                    o.texcoord2 = v.texcoord2;
                    return o;
                }
                void displacement (inout VertexInput v){
                    float4 _StartDisplacement_var = tex2Dlod(_StartDisplacement,float4(TRANSFORM_TEX(v.texcoord0, _StartDisplacement),0.0,0));
                    float node_5892 = 0.0;
                    float node_5937 = 1.0;
                    float4 _EndDisplacement_var = tex2Dlod(_EndDisplacement,float4(TRANSFORM_TEX(v.texcoord0, _EndDisplacement),0.0,0));
                    float4 _FadeTex_var = tex2Dlod(_FadeTex,float4(TRANSFORM_TEX(v.texcoord0, _FadeTex),0.0,0));
                    float4 _FadeNoise_var = tex2Dlod(_FadeNoise,float4(TRANSFORM_TEX(v.texcoord0, _FadeNoise),0.0,0));
                    float node_456 = saturate(pow(saturate((pow((node_5892 + ( (_FadeTex_var.r - _TexRangeMin) * (node_5937 - node_5892) ) / (_TexRangeMax - _TexRangeMin)),lerp(_FadeNoise_var.r,(_FadeNoise_var.r*20.0+-10.0),round(_FadeNoise_var.r)))+((_Switch*_SwitchSlider)*2.0+-1.0))),_FadePow));
                    v.vertex.xyz += lerp(((_StartNrmDispMinMaxStr.g + ( (_StartDisplacement_var.rgb - node_5892) * (_StartNrmDispMinMaxStr.b - _StartNrmDispMinMaxStr.g) ) / (node_5937 - node_5892))*_StartNrmDispMinMaxStr.a*v.normal),((_EndNrmDispMinMaxStr.g + ( (_EndDisplacement_var.rgb - node_5892) * (_EndNrmDispMinMaxStr.b - _EndNrmDispMinMaxStr.g) ) / (node_5937 - node_5892))*_EndNrmDispMinMaxStr.a*v.normal),node_456);
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
                    v.texcoord1 = vi[0].texcoord1*bary.x + vi[1].texcoord1*bary.y + vi[2].texcoord1*bary.z;
                    displacement(v);
                    VertexOutput o = vert(v);
                    return o;
                }
            #endif
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
        Pass {
            Name "Meta"
            Tags {
                "LightMode"="Meta"
            }
            Cull Off
            
            CGPROGRAM
            #pragma hull hull
            #pragma domain domain
            #pragma vertex tessvert
            #pragma fragment frag
            #define UNITY_PASS_META 1
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "Tessellation.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #include "UnityMetaPass.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma only_renderers d3d11 
            #pragma target 5.0
            uniform float4 _StartColor;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float _StartMetallic;
            uniform sampler2D _StartRoughness; uniform float4 _StartRoughness_ST;
            uniform float _Switch;
            uniform float4 _EndColor;
            uniform sampler2D _EndMainTex; uniform float4 _EndMainTex_ST;
            uniform float _EndMetallic;
            uniform sampler2D _EndRoughness; uniform float4 _EndRoughness_ST;
            uniform sampler2D _FadeTex; uniform float4 _FadeTex_ST;
            uniform float _SwitchSlider;
            uniform float _FadePow;
            uniform float _TexRangeMin;
            uniform float _TexRangeMax;
            uniform float _StartRoughMult;
            uniform float _EndRoughMult;
            uniform sampler2D _EndDisplacement; uniform float4 _EndDisplacement_ST;
            uniform float _Tesselation;
            uniform sampler2D _StartDisplacement; uniform float4 _StartDisplacement_ST;
            uniform float4 _StartNrmDispMinMaxStr;
            uniform float4 _EndNrmDispMinMaxStr;
            uniform sampler2D _FadeNoise; uniform float4 _FadeNoise_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
                float3 normalDir : TEXCOORD4;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityMetaVertexPosition(v.vertex, v.texcoord1.xy, v.texcoord2.xy, unity_LightmapST, unity_DynamicLightmapST );
                return o;
            }
            #ifdef UNITY_CAN_COMPILE_TESSELLATION
                struct TessVertex {
                    float4 vertex : INTERNALTESSPOS;
                    float3 normal : NORMAL;
                    float4 tangent : TANGENT;
                    float2 texcoord0 : TEXCOORD0;
                    float2 texcoord1 : TEXCOORD1;
                    float2 texcoord2 : TEXCOORD2;
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
                    o.texcoord1 = v.texcoord1;
                    o.texcoord2 = v.texcoord2;
                    return o;
                }
                void displacement (inout VertexInput v){
                    float4 _StartDisplacement_var = tex2Dlod(_StartDisplacement,float4(TRANSFORM_TEX(v.texcoord0, _StartDisplacement),0.0,0));
                    float node_5892 = 0.0;
                    float node_5937 = 1.0;
                    float4 _EndDisplacement_var = tex2Dlod(_EndDisplacement,float4(TRANSFORM_TEX(v.texcoord0, _EndDisplacement),0.0,0));
                    float4 _FadeTex_var = tex2Dlod(_FadeTex,float4(TRANSFORM_TEX(v.texcoord0, _FadeTex),0.0,0));
                    float4 _FadeNoise_var = tex2Dlod(_FadeNoise,float4(TRANSFORM_TEX(v.texcoord0, _FadeNoise),0.0,0));
                    float node_456 = saturate(pow(saturate((pow((node_5892 + ( (_FadeTex_var.r - _TexRangeMin) * (node_5937 - node_5892) ) / (_TexRangeMax - _TexRangeMin)),lerp(_FadeNoise_var.r,(_FadeNoise_var.r*20.0+-10.0),round(_FadeNoise_var.r)))+((_Switch*_SwitchSlider)*2.0+-1.0))),_FadePow));
                    v.vertex.xyz += lerp(((_StartNrmDispMinMaxStr.g + ( (_StartDisplacement_var.rgb - node_5892) * (_StartNrmDispMinMaxStr.b - _StartNrmDispMinMaxStr.g) ) / (node_5937 - node_5892))*_StartNrmDispMinMaxStr.a*v.normal),((_EndNrmDispMinMaxStr.g + ( (_EndDisplacement_var.rgb - node_5892) * (_EndNrmDispMinMaxStr.b - _EndNrmDispMinMaxStr.g) ) / (node_5937 - node_5892))*_EndNrmDispMinMaxStr.a*v.normal),node_456);
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
                    v.texcoord1 = vi[0].texcoord1*bary.x + vi[1].texcoord1*bary.y + vi[2].texcoord1*bary.z;
                    displacement(v);
                    VertexOutput o = vert(v);
                    return o;
                }
            #endif
            float4 frag(VertexOutput i) : SV_Target {
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                UnityMetaInput o;
                UNITY_INITIALIZE_OUTPUT( UnityMetaInput, o );
                
                o.Emission = 0;
                
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float4 _EndMainTex_var = tex2D(_EndMainTex,TRANSFORM_TEX(i.uv0, _EndMainTex));
                float4 _FadeTex_var = tex2D(_FadeTex,TRANSFORM_TEX(i.uv0, _FadeTex));
                float node_5892 = 0.0;
                float node_5937 = 1.0;
                float4 _FadeNoise_var = tex2D(_FadeNoise,TRANSFORM_TEX(i.uv0, _FadeNoise));
                float node_456 = saturate(pow(saturate((pow((node_5892 + ( (_FadeTex_var.r - _TexRangeMin) * (node_5937 - node_5892) ) / (_TexRangeMax - _TexRangeMin)),lerp(_FadeNoise_var.r,(_FadeNoise_var.r*20.0+-10.0),round(_FadeNoise_var.r)))+((_Switch*_SwitchSlider)*2.0+-1.0))),_FadePow));
                float3 diffColor = lerp((_MainTex_var.rgb*_StartColor.rgb),(_EndMainTex_var.rgb*_EndColor.rgb),node_456);
                float specularMonochrome;
                float3 specColor;
                diffColor = DiffuseAndSpecularFromMetallic( diffColor, lerp(_StartMetallic,_EndMetallic,node_456), specColor, specularMonochrome );
                float4 _StartRoughness_var = tex2D(_StartRoughness,TRANSFORM_TEX(i.uv0, _StartRoughness));
                float4 _EndRoughness_var = tex2D(_EndRoughness,TRANSFORM_TEX(i.uv0, _EndRoughness));
                float roughness = lerp((_StartRoughness_var.r*_StartRoughMult),(_EndRoughness_var.r*_EndRoughMult),node_456);
                o.Albedo = diffColor + specColor * roughness * roughness * 0.5;
                
                return UnityMetaFragment( o );
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
