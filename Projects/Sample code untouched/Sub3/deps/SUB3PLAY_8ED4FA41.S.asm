
#include "crt0.h"













__int16 bts_ch0_get_ix[2];
__int16 PCMYIN_PTR;
__int16 PCMYOU_PTR;
__int16 PCMIN;
__int16 SampleCh0Rate;
align(512) __int16 PCMY[512];
__int16 SUBFLTI[4];
__int16 SUBFLTA;
__int16 SUBFLTP;
__int16 SUBFLTG;



// CODE segment					=>>VarRM[0:4095]={
 bts_ch0_get_ix[2],PCMYIN_PTR,PCMYOU_PTR,PCMIN,SampleCh0Rate,BaseOn512#PCMY[512],SUBFLTI[4],SUBFLTA
,SUBFLTP,SUBFLTG 
};

.code


rjmp void _ClearRenderBufB079D01D();
rjmp void _Sub3Initial96BE24F3();
rjmp void _WaitPCM_Empty_size53398B9D();
rjmp void _Sub3ZeroFillABFF23AA();
rjmp void _Sub3Play422CAD6D(__int16 _sdata_0_4_0, __int16 _sdata_0_4_1);
rjmp void Sbb_Ch0GetBts();
rjmp void _Sbb_SkipdataE1C72441(__int16 _offset_0_4_0, __int16 _offset_0_4_1);




.code



.data



.code
rjmp void _ClearRenderBufB079D01D()		=>>_ClearRenderBufB079D01D:
{
	__int16 _i_1_2;
						=>>AR	= rm[BP_SAVE];push	AR;AR	= BP;rm[BP_SAVE]	= AR;AR	 = -1;BP	+= AR
_A7F5C94F4_87:;					=>>_A7F5C94F4_87:;
	
_A7F5C94F4_88:;					=>>_A7F5C94F4_88:;
	asm AX = PCMY+0;			=>>AX = PCMY+0//
_A7F5C94F4_89:;					=>>_A7F5C94F4_89:;
	asm	AR = AX				=>>AR = AX
_A7F5C94F4_90:;					=>>_A7F5C94F4_90:;
	asm	I0 = AR				=>>I0 = AR
	
	
_A7F5C94F4_91:;					=>>_A7F5C94F4_91:;
	_i_1_2+0	= 0x0200;		=>>I1	= rm[BP_SAVE];AX	= 0x0200;rm[I1]	= AX
LFB78B58C_30:;					=>>LFB78B58C_30:;
_A7F5C94F4_92:;					=>>_A7F5C94F4_92:;
	sSI	= (int)&_i_1_2;			=>>I1	= rm[BP_SAVE]
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sSI	= (int)&_i_1_2;			=>>I1	= rm[BP_SAVE]
	asm AR = 0x0001;			=>>AR = 0x0001//
	sCX	= *(__int16*)sSI;		=>>CX	= rm[I1]
	asm rm[I1] = CX - AR;			=>>rm[I1] = CX - AR//
	sfx_CHECKZERO();			=>>AR	= AX;
	if(__jnz__)	goto LFB78B58C_31;	=>>if NZ	jmp LFB78B58C_31
	goto	LFB78B58C_29;			=>>jmp	LFB78B58C_29
LFB78B58C_31:;					=>>LFB78B58C_31:;
	
_A7F5C94F4_93:;					=>>_A7F5C94F4_93:;
	sAX	= 0x0000;			=>>AX	= 0x00
_A7F5C94F4_94:;					=>>_A7F5C94F4_94:;
	asm	rm[I0++] = AX			=>>rm[I0++] = AX
_A7F5C94F4_95:;					=>>_A7F5C94F4_95:;
	goto LFB78B58C_30;			=>>jmp	LFB78B58C_30
LFB78B58C_29:;					=>>LFB78B58C_29:;
LFB78B58C_28:;					=>>LFB78B58C_28:;
_A7F5C94F4_96:;					=>>_A7F5C94F4_96:;
	return;					=>>AR	= 1;BP	+= AR;pop	AR;rm[BP_SAVE]	= AR;rets
_ClearRenderBufB079D01D_end:;			=>>_ClearRenderBufB079D01D_end:;
_A7F5C94F4_97:;					=>>_A7F5C94F4_97:;
}

rjmp void _Sub3Initial96BE24F3()		=>>_Sub3Initial96BE24F3:
{
_A7F5C94F4_98:;					=>>_A7F5C94F4_98:;
_A7F5C94F4_99:;					=>>_A7F5C94F4_99:;
	asm	dsi				=>>dsi
_A7F5C94F4_100:;				=>>_A7F5C94F4_100:;
	asm	nop				=>>nop
	
	
_A7F5C94F4_101:;				=>>_A7F5C94F4_101:;
_A7F5C94F4_102:;				=>>_A7F5C94F4_102:;
	_ClearRenderBufB079D01D();		=>>pch	= _ClearRenderBufB079D01D;lcall	_ClearRenderBufB079D01D
_A7F5C94F4_103:;				=>>_A7F5C94F4_103:;
	asm	AR = PASR,0			=>>AR = PASR,0
_A7F5C94F4_104:;				=>>_A7F5C94F4_104:;
	asm AX = PCMY+0;			=>>AX = PCMY+0//
	asm I1 = PCMYIN_PTR+0;			=>>I1 = PCMYIN_PTR+0//
	*(__int16*)sSI	= sAX			=>>rm[I1]	= AX
_A7F5C94F4_105:;				=>>_A7F5C94F4_105:;
	asm AX = PCMY+0;			=>>AX = PCMY+0//
	asm I1 = PCMYOU_PTR+0;			=>>I1 = PCMYOU_PTR+0//
	*(__int16*)sSI	= sAX			=>>rm[I1]	= AX
_A7F5C94F4_106:;				=>>_A7F5C94F4_106:;
	io[0x3B]	= 0x0000;		=>>AR	= 0x00;io[0x3B]	= AR
_A7F5C94F4_107:;				=>>_A7F5C94F4_107:;
_A7F5C94F4_108:;				=>>_A7F5C94F4_108:;
	Subb3_Init();				=>>pch	= Subb3_Init;lcall	Subb3_Init
LFB78B58C_32:;					=>>LFB78B58C_32:;
_A7F5C94F4_109:;				=>>_A7F5C94F4_109:;
	return;					=>>rets
_Sub3Initial96BE24F3_end:;			=>>_Sub3Initial96BE24F3_end:;
_A7F5C94F4_110:;				=>>_A7F5C94F4_110:;
}

rjmp void _WaitPCM_Empty_size53398B9D()		=>>_WaitPCM_Empty_size53398B9D:
{
	__int16 _x_1_2;
						=>>AR	= rm[BP_SAVE];push	AR;AR	= BP;rm[BP_SAVE]	= AR;AR	 = -1;BP	+= AR
_A7F5C94F4_111:;				=>>_A7F5C94F4_111:;
	
_A7F5C94F4_112:;				=>>_A7F5C94F4_112:;
	asm I1 = PCMYOU_PTR+0;			=>>I1 = PCMYOU_PTR+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	asm I1 = PCMYIN_PTR+0;			=>>I1 = PCMYIN_PTR+0//
	sCX	= *(__int16*)sSI;		=>>CX	= rm[I1]
	sAX	= sAX - sCX;			=>>AR	= CX;AX	-= AR
	
	sSI	= (int)&_x_1_2;			=>>I1	= rm[BP_SAVE]
	*(__int16*)sSI	= sAX;			=>>rm[I1]	= AX
_A7F5C94F4_113:;				=>>_A7F5C94F4_113:;
	sSI	= (int)&_x_1_2;			=>>I1	= rm[BP_SAVE]
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sCX	= 0x0000;			=>>CX	= 0x00
	sfx_CMP_AX_CX_JL();			=>>pch	= sfx_CMP_AX_CX_JL;lcall	sfx_CMP_AX_CX_JL
	if(__je__)	goto LFB78B58C_35;	=>>if ZR	jmp LFB78B58C_35
	goto	LFB78B58C_34;			=>>jmp	LFB78B58C_34
LFB78B58C_35:;					=>>LFB78B58C_35:;
	
_A7F5C94F4_114:;				=>>_A7F5C94F4_114:;
	sAX	= 0x01FF;			=>>AX	= 0x01FF
	sSI	= (int)&_x_1_2;			=>>I1	= rm[BP_SAVE]
	sCX	= *(__int16*)sSI;		=>>CX	= rm[I1]
	sAX	= sAX & sCX;			=>>AR	= CX;AX	&= AR
	sSI	= (int)&_x_1_2;			=>>I1	= rm[BP_SAVE]
	*(__int16*)sSI	= sAX;			=>>rm[I1]	= AX
LFB78B58C_34:;					=>>LFB78B58C_34:;
_A7F5C94F4_115:;				=>>_A7F5C94F4_115:;
_A7F5C94F4_116:;				=>>_A7F5C94F4_116:;
	sSI	= (int)&_x_1_2;			=>>I1	= rm[BP_SAVE]
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sCX	= 0x0121;			=>>CX	= 0x0121
	sAX	= sAX - sCX;			=>>AR	= CX;AX	-= AR
	sSI	= (int)&_x_1_2;			=>>I1	= rm[BP_SAVE]
	*(__int16*)sSI	= sAX;			=>>rm[I1]	= AX
_A7F5C94F4_117:;				=>>_A7F5C94F4_117:;
	sSI	= (int)&_x_1_2;			=>>I1	= rm[BP_SAVE]
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	goto LFB78B58C_33;			=>>jmp	LFB78B58C_33
LFB78B58C_33:;					=>>LFB78B58C_33:;
_A7F5C94F4_118:;				=>>_A7F5C94F4_118:;
	return;					=>>AR	= 1;BP	+= AR;pop	AR;rm[BP_SAVE]	= AR;rets
_WaitPCM_Empty_size53398B9D_end:;		=>>_WaitPCM_Empty_size53398B9D_end:;
_A7F5C94F4_119:;				=>>_A7F5C94F4_119:;
}

rjmp void _Sub3ZeroFillABFF23AA()		=>>_Sub3ZeroFillABFF23AA:
{
	__int16 _i_1_2;
						=>>AR	= rm[BP_SAVE];push	AR;AR	= BP;rm[BP_SAVE]	= AR;AR	 = -1;BP	+= AR
_A7F5C94F4_120:;				=>>_A7F5C94F4_120:;
_A7F5C94F4_121:;				=>>_A7F5C94F4_121:;
	asm	push CBL			=>>push CBL
	
_A7F5C94F4_122:;				=>>_A7F5C94F4_122:;
	io[0x3B]	= 0x0009;		=>>AR	= 0x09;io[0x3B]	= AR
	
_A7F5C94F4_123:;				=>>_A7F5C94F4_123:;
	asm I1 = PCMYIN_PTR+0;			=>>I1 = PCMYIN_PTR+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
_A7F5C94F4_124:;				=>>_A7F5C94F4_124:;
	asm	AR = AX				=>>AR = AX
_A7F5C94F4_125:;				=>>_A7F5C94F4_125:;
	asm	I0 = AR				=>>I0 = AR
	
_A7F5C94F4_126:;				=>>_A7F5C94F4_126:;
	_i_1_2+0	= 0x0120;		=>>I1	= rm[BP_SAVE];AX	= 0x0120;rm[I1]	= AX
LFB78B58C_38:;					=>>LFB78B58C_38:;
_A7F5C94F4_127:;				=>>_A7F5C94F4_127:;
	sSI	= (int)&_i_1_2;			=>>I1	= rm[BP_SAVE]
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sSI	= (int)&_i_1_2;			=>>I1	= rm[BP_SAVE]
	asm AR = 0x0001;			=>>AR = 0x0001//
	sCX	= *(__int16*)sSI;		=>>CX	= rm[I1]
	asm rm[I1] = CX - AR;			=>>rm[I1] = CX - AR//
	sfx_CHECKZERO();			=>>AR	= AX;
	if(__jnz__)	goto LFB78B58C_39;	=>>if NZ	jmp LFB78B58C_39
	goto	LFB78B58C_37;			=>>jmp	LFB78B58C_37
LFB78B58C_39:;					=>>LFB78B58C_39:;
	
_A7F5C94F4_128:;				=>>_A7F5C94F4_128:;
	sAX	= 0x0000;			=>>AX	= 0x00
_A7F5C94F4_129:;				=>>_A7F5C94F4_129:;
	asm	rm[I0++] = AX			=>>rm[I0++] = AX
_A7F5C94F4_130:;				=>>_A7F5C94F4_130:;
	goto LFB78B58C_38;			=>>jmp	LFB78B58C_38
LFB78B58C_37:;					=>>LFB78B58C_37:;
_A7F5C94F4_131:;				=>>_A7F5C94F4_131:;
_A7F5C94F4_132:;				=>>_A7F5C94F4_132:;
	get_I0();				=>>push	I0;pop	AX;
	asm I1 = PCMYIN_PTR+0;			=>>I1 = PCMYIN_PTR+0//
	*(__int16*)sSI	= sAX			=>>rm[I1]	= AX
_A7F5C94F4_133:;				=>>_A7F5C94F4_133:;
	asm	pop CBL				=>>pop CBL
LFB78B58C_36:;					=>>LFB78B58C_36:;
_A7F5C94F4_134:;				=>>_A7F5C94F4_134:;
	return;					=>>AR	= 1;BP	+= AR;pop	AR;rm[BP_SAVE]	= AR;rets
_Sub3ZeroFillABFF23AA_end:;			=>>_Sub3ZeroFillABFF23AA_end:;
_A7F5C94F4_135:;				=>>_A7F5C94F4_135:;
}

rjmp void _Sub3Play422CAD6D(__int16 _sdata_0_4_0, __int16 _sdata_0_4_1)=>>_Sub3Play422CAD6D:
{						=>>AR	= rm[BP_SAVE];push	AR;AR	= BP;rm[BP_SAVE]	= AR
_A7F5C94F4_136:;				=>>_A7F5C94F4_136:;
	
_A7F5C94F4_137:;				=>>_A7F5C94F4_137:;
	sSI	= (int)&_sdata_0_4_0;		=>>AR	= 2;I1	= rm[BP_SAVE];I1	+= AR
	sAX	= *(__int16*)sSI++;		=>>AX	= rm[I1++]
	sDX	= *(__int16*)sSI--;		=>>DX	= rm[I1--]
	asm I1 = bts_ch0_get_ix+0;		=>>I1 = bts_ch0_get_ix+0//
	sfx_STORSILONG();			=>>rm[I1++]	= AX;rm[I1--]	= DX;
_A7F5C94F4_138:;				=>>_A7F5C94F4_138:;
_A7F5C94F4_139:;				=>>_A7F5C94F4_139:;
	_Sub3Initial96BE24F3();			=>>pch	= _Sub3Initial96BE24F3;lcall	_Sub3Initial96BE24F3
_A7F5C94F4_140:;				=>>_A7F5C94F4_140:;
	asm AX = SUBFLTI+0;			=>>AX = SUBFLTI+0//
	PUSH(sAX);				=>>push	AX
	sAX	= 0x0000;			=>>AX	= 0x00
	sSI	= POP();			=>>pop	I1
	*(__int16*)sSI	= sAX;			=>>rm[I1]	= AX
_A7F5C94F4_141:;				=>>_A7F5C94F4_141:;
	asm AX = SUBFLTI+1;			=>>AX = SUBFLTI+1//
	PUSH(sAX);				=>>push	AX
	sAX	= 0x0000;			=>>AX	= 0x00
	sSI	= POP();			=>>pop	I1
	*(__int16*)sSI	= sAX;			=>>rm[I1]	= AX
_A7F5C94F4_142:;				=>>_A7F5C94F4_142:;
	asm AX = SUBFLTI+2;			=>>AX = SUBFLTI+2//
	PUSH(sAX);				=>>push	AX
	sAX	= 0x0000;			=>>AX	= 0x00
	sSI	= POP();			=>>pop	I1
	*(__int16*)sSI	= sAX;			=>>rm[I1]	= AX
_A7F5C94F4_143:;				=>>_A7F5C94F4_143:;
	asm AX = SUBFLTI+3;			=>>AX = SUBFLTI+3//
	PUSH(sAX);				=>>push	AX
	sAX	= 0x0000;			=>>AX	= 0x00
	sSI	= POP();			=>>pop	I1
	*(__int16*)sSI	= sAX;			=>>rm[I1]	= AX
_A7F5C94F4_144:;				=>>_A7F5C94F4_144:;
	sAX	= 0x0000;			=>>AX	= 0x00
	asm I1 = SUBFLTA+0;			=>>I1 = SUBFLTA+0//
	*(__int16*)sSI	= sAX			=>>rm[I1]	= AX
_A7F5C94F4_145:;				=>>_A7F5C94F4_145:;
	asm I1 = SampleCh0Rate+0;		=>>I1 = SampleCh0Rate+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	asm I1 = SUBFLTP+0;			=>>I1 = SUBFLTP+0//
	*(__int16*)sSI	= sAX			=>>rm[I1]	= AX
_A7F5C94F4_146:;				=>>_A7F5C94F4_146:;
	sAX	= 0x003F;			=>>AX	= 0x3F
	asm I1 = SUBFLTG+0;			=>>I1 = SUBFLTG+0//
	*(__int16*)sSI	= sAX			=>>rm[I1]	= AX
_A7F5C94F4_147:;				=>>_A7F5C94F4_147:;
	asm	set io[INTENA].b0		=>>set io[INTENA].b0
_A7F5C94F4_148:;				=>>_A7F5C94F4_148:;
	asm	eni				=>>eni
LFB78B58C_40:;					=>>LFB78B58C_40:;
_A7F5C94F4_149:;				=>>_A7F5C94F4_149:;
	return;					=>>pop	AR;rm[BP_SAVE]	= AR;rets
_Sub3Play422CAD6D_end:;				=>>_Sub3Play422CAD6D_end:;
_A7F5C94F4_150:;				=>>_A7F5C94F4_150:;
}

rjmp void Sbb_Ch0GetBts()			=>>Sbb_Ch0GetBts:
{
_A7F5C94F4_151:;				=>>_A7F5C94F4_151:;
_A7F5C94F4_152:;				=>>_A7F5C94F4_152:;
	asm	push I1				=>>push I1
_A7F5C94F4_153:;				=>>_A7F5C94F4_153:;
	asm	push P1				=>>push P1
_A7F5C94F4_154:;				=>>_A7F5C94F4_154:;
	asm	push AX				=>>push AX
_A7F5C94F4_155:;				=>>_A7F5C94F4_155:;
	asm	push BX				=>>push BX
_A7F5C94F4_156:;				=>>_A7F5C94F4_156:;
	asm	push CX				=>>push CX
_A7F5C94F4_157:;				=>>_A7F5C94F4_157:;
	asm	push DX				=>>push DX
_A7F5C94F4_158:;				=>>_A7F5C94F4_158:;
	asm	AR = P1.hh			=>>AR = P1.hh
_A7F5C94F4_159:;				=>>_A7F5C94F4_159:;
	asm	push AR				=>>push AR
	
_A7F5C94F4_160:;				=>>_A7F5C94F4_160:;
_A7F5C94F4_161:;				=>>_A7F5C94F4_161:;
_A7F5C94F4_162:;				=>>_A7F5C94F4_162:;
	asm I1 = bts_ch0_get_ix+0;		=>>I1 = bts_ch0_get_ix+0//
	sAX	= *(__int16*)sSI++;		=>>AX	= rm[I1++]
	sDX	= *(__int16*)sSI--;		=>>DX	= rm[I1--]
	sSI	= (int)&bts_ch0_get_ix[0];	=>>I1	= bts_ch0_get_ix
	PUSH(sAX);				=>>push	AX
	PUSH(sDX);				=>>push	DX
	sfx_GETSILONG_BXCX();			=>>CX	= rm[I1++];BX	= rm[I1--];
	sAX = 0x0001;				=>>AX	= 0x01
	sDX = 0x0000;				=>>DX	= 0x00
	sfx_ADDLONG_BXCX_DXAX();		=>>AR	= AX;CX	= CX + AR;AR	= DX;BX	= BX + AR + C;
	sfx_STORSILONG_BXCX();			=>>rm[I1++]	= CX;rm[I1--]	= BX;
	sDX	= POP();			=>>pop	DX
	sAX	= POP();			=>>pop	AX
	PUSH(sDX);				=>>push	DX
	PUSH(sAX);				=>>push	AX
	_lptr_read(STACK[sSP + 0], STACK[sSP + 1]);=>>pch	= _lptr_read;lcall	_lptr_read
	RESTORESP(2);				=>>pop	AR;pop	AR;
	PUSH(sAX);				=>>push	AX
	vXCHG(STACK[sSP + 0]);			=>>AR	= AX;AX	= xchg AR;
	RESTORESP(1);				=>>pop	AR;
_A7F5C94F4_163:;				=>>_A7F5C94F4_163:;
	asm	pop AR				=>>pop AR
_A7F5C94F4_164:;				=>>_A7F5C94F4_164:;
	asm	P1.hh = AR			=>>P1.hh = AR
_A7F5C94F4_165:;				=>>_A7F5C94F4_165:;
	asm	pop DX				=>>pop DX
_A7F5C94F4_166:;				=>>_A7F5C94F4_166:;
	asm	pop CX				=>>pop CX
_A7F5C94F4_167:;				=>>_A7F5C94F4_167:;
	asm	pop BX				=>>pop BX
	
_A7F5C94F4_168:;				=>>_A7F5C94F4_168:;
_A7F5C94F4_169:;				=>>_A7F5C94F4_169:;
	asintax();				=>>_A7F5C94F4_170:;				=>>_A7F5C94F4_170:;
	asm	AR = AX				=>>AR = AX
_A7F5C94F4_171:;				=>>_A7F5C94F4_171:;
	asm	pop AX				=>>pop AX
_A7F5C94F4_172:;				=>>_A7F5C94F4_172:;
	asm	pop P1				=>>pop P1
_A7F5C94F4_173:;				=>>_A7F5C94F4_173:;
	asm	pop I1				=>>pop I1
LFB78B58C_41:;					=>>LFB78B58C_41:;
_A7F5C94F4_174:;				=>>_A7F5C94F4_174:;
	return;					=>>rets
Sbb_Ch0GetBts_end:;				=>>Sbb_Ch0GetBts_end:;
_A7F5C94F4_175:;				=>>_A7F5C94F4_175:;
}

rjmp void _Sbb_SkipdataE1C72441(__int16 _offset_0_4_0, __int16 _offset_0_4_1)=>>_Sbb_SkipdataE1C72441:
{
						=>>AR	= rm[BP_SAVE];push	AR;AR	= BP;rm[BP_SAVE]	= AR
LFB78B58C_42:;					=>>LFB78B58C_42:;
_A7F5C94F4_176:;				=>>_A7F5C94F4_176:;
	return;					=>>pop	AR;rm[BP_SAVE]	= AR;rets
_Sbb_SkipdataE1C72441_end:;			=>>_Sbb_SkipdataE1C72441_end:;
_A7F5C94F4_177:;				=>>_A7F5C94F4_177:;
}








.code



.code







.data





.code
























