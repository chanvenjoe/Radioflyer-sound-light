
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
naked rjmp void Sbb_Ch0GetBts();




.code



.data



.code
rjmp void _ClearRenderBufB079D01D()		=>>_ClearRenderBufB079D01D:
{
	__int16 _i_1_2;
						=>>AR	= rm[BP_SAVE];push	AR;AR	= BP;rm[BP_SAVE]	= AR;AR	 = -1;BP	+= AR
_A89F084ED_125:;				=>>_A89F084ED_125:;
	
_A89F084ED_126:;				=>>_A89F084ED_126:;
	asm AX = PCMY+0;			=>>AX = PCMY+0//
_A89F084ED_127:;				=>>_A89F084ED_127:;
	asm	AR = AX				=>>AR = AX
_A89F084ED_128:;				=>>_A89F084ED_128:;
	asm	I0 = AR				=>>I0 = AR
_A89F084ED_129:;				=>>_A89F084ED_129:;
	_i_1_2+0	= 0x0200;		=>>I1	= rm[BP_SAVE];AR	= 0x0200;rm[I1]	= AR
LFB78B58C_61:;					=>>LFB78B58C_61:;
_A89F084ED_130:;				=>>_A89F084ED_130:;
	sSI	= (int)&_i_1_2;			=>>I1	= rm[BP_SAVE]
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sSI	= (int)&_i_1_2;			=>>I1	= rm[BP_SAVE]
	asm AR = 0x0001;			=>>AR = 0x0001//
	sCX	= *(__int16*)sSI;		=>>CX	= rm[I1]
	asm rm[I1] = CX - AR;			=>>rm[I1] = CX - AR//
	sfx_CHECKZERO();			=>>AR	= AX;
	if(__jnz__)	goto LFB78B58C_62;	=>>if NZ	jmp LFB78B58C_62
	goto	LFB78B58C_60;			=>>jmp	LFB78B58C_60
LFB78B58C_62:;					=>>LFB78B58C_62:;
	
_A89F084ED_131:;				=>>_A89F084ED_131:;
	sAX	= 0x0000;			=>>AX	= 0x00
_A89F084ED_132:;				=>>_A89F084ED_132:;
	asm	rm[I0++] = AX			=>>rm[I0++] = AX
	goto LFB78B58C_61;			=>>jmp	LFB78B58C_61
LFB78B58C_60:;					=>>LFB78B58C_60:;
LFB78B58C_59:;					=>>LFB78B58C_59:;
_A89F084ED_133:;				=>>_A89F084ED_133:;
	return;					=>>AR	= 1;BP	+= AR;pop	AR;rm[BP_SAVE]	= AR;rets
_ClearRenderBufB079D01D_end:;			=>>_ClearRenderBufB079D01D_end:;
_A89F084ED_134:;				=>>_A89F084ED_134:;
}

rjmp void _Sub3Initial96BE24F3()		=>>_Sub3Initial96BE24F3:
{
_A89F084ED_135:;				=>>_A89F084ED_135:;
_A89F084ED_136:;				=>>_A89F084ED_136:;
	asm	dsi				=>>dsi
_A89F084ED_137:;				=>>_A89F084ED_137:;
	asm	nop				=>>nop
	
_A89F084ED_138:;				=>>_A89F084ED_138:;
_A89F084ED_139:;				=>>_A89F084ED_139:;
	_ClearRenderBufB079D01D();		=>>pch	= _ClearRenderBufB079D01D;lcall	_ClearRenderBufB079D01D
_A89F084ED_140:;				=>>_A89F084ED_140:;
	asm	AR = PASR,0			=>>AR = PASR,0
_A89F084ED_141:;				=>>_A89F084ED_141:;
	asm AX = PCMY+0;			=>>AX = PCMY+0//
	asm I1 = PCMYIN_PTR+0;			=>>I1 = PCMYIN_PTR+0//
	*(__int16*)sSI	= sAX			=>>rm[I1]	= AX
_A89F084ED_142:;				=>>_A89F084ED_142:;
	asm AX = PCMY+0;			=>>AX = PCMY+0//
	asm I1 = PCMYOU_PTR+0;			=>>I1 = PCMYOU_PTR+0//
	*(__int16*)sSI	= sAX			=>>rm[I1]	= AX
_A89F084ED_143:;				=>>_A89F084ED_143:;
	io[0x3B]	= 0x0000;		=>>AR	= 0x00;io[0x3B]	= AR
_A89F084ED_144:;				=>>_A89F084ED_144:;
_A89F084ED_145:;				=>>_A89F084ED_145:;
	Subb3_Init();				=>>pch	= Subb3_Init;lcall	Subb3_Init
LFB78B58C_63:;					=>>LFB78B58C_63:;
_A89F084ED_146:;				=>>_A89F084ED_146:;
	return;					=>>rets
_Sub3Initial96BE24F3_end:;			=>>_Sub3Initial96BE24F3_end:;
_A89F084ED_147:;				=>>_A89F084ED_147:;
}

rjmp void _WaitPCM_Empty_size53398B9D()		=>>_WaitPCM_Empty_size53398B9D:
{
	__int16 _x_1_2;
						=>>AR	= rm[BP_SAVE];push	AR;AR	= BP;rm[BP_SAVE]	= AR;AR	 = -1;BP	+= AR
_A89F084ED_148:;				=>>_A89F084ED_148:;
_A89F084ED_149:;				=>>_A89F084ED_149:;
	asm I1 = PCMYOU_PTR+0;			=>>I1 = PCMYOU_PTR+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	asm I1 = PCMYIN_PTR+0;			=>>I1 = PCMYIN_PTR+0//
	sCX	= *(__int16*)sSI;		=>>CX	= rm[I1]
	sAX	= sAX - sCX;			=>>AR	= CX;AX	-= AR
	
	sSI	= (int)&_x_1_2;			=>>I1	= rm[BP_SAVE]
	*(__int16*)sSI	= sAX;			=>>rm[I1]	= AX
_A89F084ED_150:;				=>>_A89F084ED_150:;
	sSI	= (int)&_x_1_2;			=>>I1	= rm[BP_SAVE]
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sCX	= 0x0000;			=>>CX	= 0x00
	sfx_CMP_AX_CX_JL();			=>>pch	= sfx_CMP_AX_CX_JL;lcall	sfx_CMP_AX_CX_JL
	if(__je__)	goto LFB78B58C_66;	=>>if ZR	jmp LFB78B58C_66
	goto	LFB78B58C_65;			=>>jmp	LFB78B58C_65
LFB78B58C_66:;					=>>LFB78B58C_66:;
	
_A89F084ED_151:;				=>>_A89F084ED_151:;
	sAX	= 0x01FF;			=>>AX	= 0x01FF
	sSI	= (int)&_x_1_2;			=>>I1	= rm[BP_SAVE]
	sCX	= *(__int16*)sSI;		=>>CX	= rm[I1]
	sAX	= sAX & sCX;			=>>AR	= CX;AX	&= AR
	sSI	= (int)&_x_1_2;			=>>I1	= rm[BP_SAVE]
	*(__int16*)sSI	= sAX;			=>>rm[I1]	= AX
LFB78B58C_65:;					=>>LFB78B58C_65:;
_A89F084ED_152:;				=>>_A89F084ED_152:;
_A89F084ED_153:;				=>>_A89F084ED_153:;
	sSI	= (int)&_x_1_2;			=>>I1	= rm[BP_SAVE]
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sCX	= 0x0121;			=>>CX	= 0x0121
	sAX	= sAX - sCX;			=>>AR	= CX;AX	-= AR
	sSI	= (int)&_x_1_2;			=>>I1	= rm[BP_SAVE]
	*(__int16*)sSI	= sAX;			=>>rm[I1]	= AX
_A89F084ED_154:;				=>>_A89F084ED_154:;
	sSI	= (int)&_x_1_2;			=>>I1	= rm[BP_SAVE]
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	goto LFB78B58C_64;			=>>jmp	LFB78B58C_64
LFB78B58C_64:;					=>>LFB78B58C_64:;
_A89F084ED_155:;				=>>_A89F084ED_155:;
	return;					=>>AR	= 1;BP	+= AR;pop	AR;rm[BP_SAVE]	= AR;rets
_WaitPCM_Empty_size53398B9D_end:;		=>>_WaitPCM_Empty_size53398B9D_end:;
_A89F084ED_156:;				=>>_A89F084ED_156:;
}

rjmp void _Sub3ZeroFillABFF23AA()		=>>_Sub3ZeroFillABFF23AA:
{
	__int16 _i_1_2;
						=>>AR	= rm[BP_SAVE];push	AR;AR	= BP;rm[BP_SAVE]	= AR;AR	 = -1;BP	+= AR
_A89F084ED_157:;				=>>_A89F084ED_157:;
_A89F084ED_158:;				=>>_A89F084ED_158:;
	asm	push CBL			=>>push CBL
_A89F084ED_159:;				=>>_A89F084ED_159:;
	io[0x3B]	= 0x0009;		=>>AR	= 0x09;io[0x3B]	= AR
	
_A89F084ED_160:;				=>>_A89F084ED_160:;
	asm I1 = PCMYIN_PTR+0;			=>>I1 = PCMYIN_PTR+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
_A89F084ED_161:;				=>>_A89F084ED_161:;
	asm	AR = AX				=>>AR = AX
_A89F084ED_162:;				=>>_A89F084ED_162:;
	asm	I0 = AR				=>>I0 = AR
_A89F084ED_163:;				=>>_A89F084ED_163:;
	_i_1_2+0	= 0x0120;		=>>I1	= rm[BP_SAVE];AR	= 0x0120;rm[I1]	= AR
LFB78B58C_69:;					=>>LFB78B58C_69:;
_A89F084ED_164:;				=>>_A89F084ED_164:;
	sSI	= (int)&_i_1_2;			=>>I1	= rm[BP_SAVE]
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sSI	= (int)&_i_1_2;			=>>I1	= rm[BP_SAVE]
	asm AR = 0x0001;			=>>AR = 0x0001//
	sCX	= *(__int16*)sSI;		=>>CX	= rm[I1]
	asm rm[I1] = CX - AR;			=>>rm[I1] = CX - AR//
	sfx_CHECKZERO();			=>>AR	= AX;
	if(__jnz__)	goto LFB78B58C_70;	=>>if NZ	jmp LFB78B58C_70
	goto	LFB78B58C_68;			=>>jmp	LFB78B58C_68
LFB78B58C_70:;					=>>LFB78B58C_70:;
	
_A89F084ED_165:;				=>>_A89F084ED_165:;
	sAX	= 0x0000;			=>>AX	= 0x00
_A89F084ED_166:;				=>>_A89F084ED_166:;
	asm	rm[I0++] = AX			=>>rm[I0++] = AX
	goto LFB78B58C_69;			=>>jmp	LFB78B58C_69
LFB78B58C_68:;					=>>LFB78B58C_68:;
_A89F084ED_167:;				=>>_A89F084ED_167:;
_A89F084ED_168:;				=>>_A89F084ED_168:;
	get_I0();				=>>push	I0;pop	AX;
	asm I1 = PCMYIN_PTR+0;			=>>I1 = PCMYIN_PTR+0//
	*(__int16*)sSI	= sAX			=>>rm[I1]	= AX
_A89F084ED_169:;				=>>_A89F084ED_169:;
	asm	pop CBL				=>>pop CBL
LFB78B58C_67:;					=>>LFB78B58C_67:;
_A89F084ED_170:;				=>>_A89F084ED_170:;
	return;					=>>AR	= 1;BP	+= AR;pop	AR;rm[BP_SAVE]	= AR;rets
_Sub3ZeroFillABFF23AA_end:;			=>>_Sub3ZeroFillABFF23AA_end:;
_A89F084ED_171:;				=>>_A89F084ED_171:;
}

rjmp void _Sub3Play422CAD6D(__int16 _sdata_0_4_0, __int16 _sdata_0_4_1)=>>_Sub3Play422CAD6D:
{						=>>AR	= rm[BP_SAVE];push	AR;AR	= BP;rm[BP_SAVE]	= AR
_A89F084ED_172:;				=>>_A89F084ED_172:;
	
_A89F084ED_173:;				=>>_A89F084ED_173:;
	sSI	= (int)&_sdata_0_4_0;		=>>AR	= 2;I1	= rm[BP_SAVE];I1	+= AR
	sAX	= *(__int16*)sSI++;		=>>AX	= rm[I1++]
	sDX	= *(__int16*)sSI--;		=>>DX	= rm[I1--]
	asm I1 = bts_ch0_get_ix+0;		=>>I1 = bts_ch0_get_ix+0//
	sfx_STORSILONG();			=>>rm[I1++]	= AX;rm[I1--]	= DX;
_A89F084ED_174:;				=>>_A89F084ED_174:;
_A89F084ED_175:;				=>>_A89F084ED_175:;
	_Sub3Initial96BE24F3();			=>>pch	= _Sub3Initial96BE24F3;lcall	_Sub3Initial96BE24F3
_A89F084ED_176:;				=>>_A89F084ED_176:;
	asm AX = SUBFLTI+0;			=>>AX = SUBFLTI+0//
	PUSH(sAX);				=>>push	AX
	sAX	= 0x0000;			=>>AX	= 0x00
	sSI	= POP();			=>>pop	I1
	*(__int16*)sSI	= sAX;			=>>rm[I1]	= AX
_A89F084ED_177:;				=>>_A89F084ED_177:;
	asm AX = SUBFLTI+1;			=>>AX = SUBFLTI+1//
	PUSH(sAX);				=>>push	AX
	sAX	= 0x0000;			=>>AX	= 0x00
	sSI	= POP();			=>>pop	I1
	*(__int16*)sSI	= sAX;			=>>rm[I1]	= AX
_A89F084ED_178:;				=>>_A89F084ED_178:;
	asm AX = SUBFLTI+2;			=>>AX = SUBFLTI+2//
	PUSH(sAX);				=>>push	AX
	sAX	= 0x0000;			=>>AX	= 0x00
	sSI	= POP();			=>>pop	I1
	*(__int16*)sSI	= sAX;			=>>rm[I1]	= AX
_A89F084ED_179:;				=>>_A89F084ED_179:;
	asm AX = SUBFLTI+3;			=>>AX = SUBFLTI+3//
	PUSH(sAX);				=>>push	AX
	sAX	= 0x0000;			=>>AX	= 0x00
	sSI	= POP();			=>>pop	I1
	*(__int16*)sSI	= sAX;			=>>rm[I1]	= AX
_A89F084ED_180:;				=>>_A89F084ED_180:;
	sAX	= 0x0000;			=>>AX	= 0x00
	asm I1 = SUBFLTA+0;			=>>I1 = SUBFLTA+0//
	*(__int16*)sSI	= sAX			=>>rm[I1]	= AX
_A89F084ED_181:;				=>>_A89F084ED_181:;
	asm I1 = SampleCh0Rate+0;		=>>I1 = SampleCh0Rate+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	asm I1 = SUBFLTP+0;			=>>I1 = SUBFLTP+0//
	*(__int16*)sSI	= sAX			=>>rm[I1]	= AX
_A89F084ED_182:;				=>>_A89F084ED_182:;
	sAX	= 0x003F;			=>>AX	= 0x3F
	asm I1 = SUBFLTG+0;			=>>I1 = SUBFLTG+0//
	*(__int16*)sSI	= sAX			=>>rm[I1]	= AX
_A89F084ED_183:;				=>>_A89F084ED_183:;
	asm	set io[INTENA].b0		=>>set io[INTENA].b0
_A89F084ED_184:;				=>>_A89F084ED_184:;
	asm	eni				=>>eni
LFB78B58C_71:;					=>>LFB78B58C_71:;
_A89F084ED_185:;				=>>_A89F084ED_185:;
	return;					=>>pop	AR;rm[BP_SAVE]	= AR;rets
_Sub3Play422CAD6D_end:;				=>>_Sub3Play422CAD6D_end:;
_A89F084ED_186:;				=>>_A89F084ED_186:;
}

naked rjmp void Sbb_Ch0GetBts()			=>>Sbb_Ch0GetBts:
{
_A89F084ED_187:;				=>>_A89F084ED_187:;
_A89F084ED_188:;				=>>_A89F084ED_188:;
	asm	push I1				=>>push I1
_A89F084ED_189:;				=>>_A89F084ED_189:;
	asm	push P1				=>>push P1
_A89F084ED_190:;				=>>_A89F084ED_190:;
	asm	push AX				=>>push AX
_A89F084ED_191:;				=>>_A89F084ED_191:;
	asm	push BX				=>>push BX
_A89F084ED_192:;				=>>_A89F084ED_192:;
	asm	push CX				=>>push CX
_A89F084ED_193:;				=>>_A89F084ED_193:;
	asm	push DX				=>>push DX
_A89F084ED_194:;				=>>_A89F084ED_194:;
	asm	AR = P1.hh			=>>AR = P1.hh
_A89F084ED_195:;				=>>_A89F084ED_195:;
	asm	push AR				=>>push AR
	
_A89F084ED_196:;				=>>_A89F084ED_196:;
_A89F084ED_197:;				=>>_A89F084ED_197:;
_A89F084ED_198:;				=>>_A89F084ED_198:;
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
	_lptr_read(STACK[sSP + 0], STACK[sSP + 1]);=>>pch	= _lptr_read;lcall	_lptr_read
	vXCHG(STACK[sSP + 0]);			=>>AR	= AX;AX	= xchg AR;
_A89F084ED_199:;				=>>_A89F084ED_199:;
	asm	pop AR				=>>pop AR
_A89F084ED_200:;				=>>_A89F084ED_200:;
	asm	P1.hh = AR			=>>P1.hh = AR
_A89F084ED_201:;				=>>_A89F084ED_201:;
	asm	AR = AX				=>>AR = AX
	
_A89F084ED_202:;				=>>_A89F084ED_202:;
	asm	pop DX				=>>pop DX
_A89F084ED_203:;				=>>_A89F084ED_203:;
	asm	pop CX				=>>pop CX
_A89F084ED_204:;				=>>_A89F084ED_204:;
	asm	pop BX				=>>pop BX
_A89F084ED_205:;				=>>_A89F084ED_205:;
	asm	pop AX				=>>pop AX
_A89F084ED_206:;				=>>_A89F084ED_206:;
	asm	pop P1				=>>pop P1
_A89F084ED_207:;				=>>_A89F084ED_207:;
	asm	pop I1				=>>pop I1
LFB78B58C_72:;					=>>LFB78B58C_72:;
_A89F084ED_208:;				=>>_A89F084ED_208:;
	return;					=>>rets
Sbb_Ch0GetBts_end:;				=>>Sbb_Ch0GetBts_end:;
_A89F084ED_209:;				=>>_A89F084ED_209:;
}




.code


naked void ginit_code_sub3play_8ED4FA41_s(void)	=>>ginit_code_sub3play_8ED4FA41_s:
{
	return;					=>>rets
}








.code



.code







.data





.code








































































