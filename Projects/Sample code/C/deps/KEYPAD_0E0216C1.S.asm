
#include "crt0.h"













__int16 L5589D4CE_67;
__int16 L5589D4CE_68;
__int16 L5589D4CE_69;



// CODE segment					=>>VarRM[0:4095]={
 L5589D4CE_67,L5589D4CE_68,L5589D4CE_69 
};

.code


rjmp void _InitKey3C587B6D();
rjmp void _PollingKey3B90E3B1();




.code



.data



.code
rjmp void _InitKey3C587B6D()			=>>_InitKey3C587B6D:
{
_A1690E9DD_254:;				=>>_A1690E9DD_254:;
	
_A1690E9DD_255:;				=>>_A1690E9DD_255:;
	asm clr io[0x04].b0;			=>>clr io[0x04].b0//
_A1690E9DD_256:;				=>>_A1690E9DD_256:;
	asm clr io[0x04].b1;			=>>clr io[0x04].b1//
_A1690E9DD_257:;				=>>_A1690E9DD_257:;
	asm clr io[0x04].b2;			=>>clr io[0x04].b2//
_A1690E9DD_258:;				=>>_A1690E9DD_258:;
	asm set io[0x05].b2;			=>>set io[0x05].b2//
_A1690E9DD_259:;				=>>_A1690E9DD_259:;
	asm set io[0x05].b0;			=>>set io[0x05].b0//
_A1690E9DD_260:;				=>>_A1690E9DD_260:;
	io[0x1E]	= 0x0005;		=>>AR	= 0x05;io[0x1E]	= AR
_A1690E9DD_261:;				=>>_A1690E9DD_261:;
	sAX	= 0x0007;			=>>AX	= 0x07
	sAX	= sAX | io[0x1F];		=>>AR	= io[0x1F];AX	|= AR
	io[0x1F]	= sAX;			=>>AR	= AX;io[0x1F]	= AR
_A1690E9DD_262:;				=>>_A1690E9DD_262:;
	sAX	= 0x0000;			=>>AX	= 0x00
	sSI	= (int)&L5589D4CE_67;		=>>I1	= L5589D4CE_67
	*(__int16*)sSI	= sAX			=>>rm[I1]	= AX
_A1690E9DD_263:;				=>>_A1690E9DD_263:;
	sAX	= 0x0000;			=>>AX	= 0x00
	sSI	= (int)&L5589D4CE_68;		=>>I1	= L5589D4CE_68
	*(__int16*)sSI	= sAX			=>>rm[I1]	= AX
_A1690E9DD_264:;				=>>_A1690E9DD_264:;
	sAX	= 0x0200;			=>>AX	= 0x0200
	sSI	= (int)&L5589D4CE_69;		=>>I1	= L5589D4CE_69
	*(__int16*)sSI	= sAX			=>>rm[I1]	= AX
L5589D4CE_70:;					=>>L5589D4CE_70:;
_A1690E9DD_265:;				=>>_A1690E9DD_265:;
	return;					=>>rets
_InitKey3C587B6D_end:;				=>>_InitKey3C587B6D_end:;
_A1690E9DD_266:;				=>>_A1690E9DD_266:;
}

rjmp void L5589D4CE_71()			=>>L5589D4CE_71:
{
	__int16 _btn_1_2;
						=>>AR	= rm[BP_SAVE];push	AR;AR	= BP;rm[BP_SAVE]	= AR;AR	 = -1;BP	+= AR
_A1690E9DD_267:;				=>>_A1690E9DD_267:;
	
_A1690E9DD_268:;				=>>_A1690E9DD_268:;
	sAX	= 0x000F;			=>>AX	= 0x0F
	sAX	= sAX & io[0x07];		=>>AR	= io[0x07];AX	&= AR
	sSI	= (int)&_btn_1_2;		=>>I1	= rm[BP_SAVE]
	*(__int16*)sSI	= sAX;			=>>rm[I1]	= AX
_A1690E9DD_269:;				=>>_A1690E9DD_269:;
	sSI	= (int)&_btn_1_2;		=>>I1	= rm[BP_SAVE]
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	goto L5589D4CE_73;			=>>jmp	L5589D4CE_73
L5589D4CE_73:;					=>>L5589D4CE_73:;
_A1690E9DD_270:;				=>>_A1690E9DD_270:;
	return;					=>>AR	= 1;BP	+= AR;pop	AR;rm[BP_SAVE]	= AR;rets
L5589D4CE_71_end:;				=>>L5589D4CE_71_end:;
_A1690E9DD_271:;				=>>_A1690E9DD_271:;
}

rjmp void _PollingKey3B90E3B1()			=>>_PollingKey3B90E3B1:
{
	__int16 _keynow_1_2;
	__int16 _i_1_4;
	__int16 _bits_1_6;
	__int16 _bitp_1_8;
	__int16 _pkey_1_10;
						=>>AR	= rm[BP_SAVE];push	AR;AR	= BP;rm[BP_SAVE]	= AR;AR	 = -5;BP	+= AR
_A1690E9DD_272:;				=>>_A1690E9DD_272:;
	
_A1690E9DD_273:;				=>>_A1690E9DD_273:;
_A1690E9DD_274:;				=>>_A1690E9DD_274:;
	NEARCALL(L5589D4CE_71);			=>>call	L5589D4CE_71
	sSI	= (int)&_keynow_1_2;		=>>I1	= rm[BP_SAVE]
	*(__int16*)sSI	= sAX;			=>>rm[I1]	= AX
_A1690E9DD_275:;				=>>_A1690E9DD_275:;
	asm I1 = L5589D4CE_67+0;		=>>I1 = L5589D4CE_67+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sSI	= (int)&_keynow_1_2;		=>>I1	= rm[BP_SAVE]
	sCX	= *(__int16*)sSI;		=>>CX	= rm[I1]
	sfx_CMP_AX_CX_JNE();			=>>pch	= sfx_CMP_AX_CX_JNE;lcall	sfx_CMP_AX_CX_JNE
	if(__je__)	goto L5589D4CE_76;	=>>if ZR	jmp L5589D4CE_76
	goto	L5589D4CE_75;			=>>jmp	L5589D4CE_75
L5589D4CE_76:;					=>>L5589D4CE_76:;
	
_A1690E9DD_276:;				=>>_A1690E9DD_276:;
	sSI	= (int)&_keynow_1_2;		=>>I1	= rm[BP_SAVE]
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sSI	= (int)&L5589D4CE_67;		=>>I1	= L5589D4CE_67
	*(__int16*)sSI	= sAX			=>>rm[I1]	= AX
_A1690E9DD_277:;				=>>_A1690E9DD_277:;
	sAX	= 0x0200;			=>>AX	= 0x0200
	sSI	= (int)&L5589D4CE_69;		=>>I1	= L5589D4CE_69
	*(__int16*)sSI	= sAX			=>>rm[I1]	= AX
_A1690E9DD_278:;				=>>_A1690E9DD_278:;
	goto L5589D4CE_74;			=>>jmp	L5589D4CE_74
L5589D4CE_75:;					=>>L5589D4CE_75:;
_A1690E9DD_279:;				=>>_A1690E9DD_279:;
_A1690E9DD_280:;				=>>_A1690E9DD_280:;
	asm I1 = L5589D4CE_69+0;		=>>I1 = L5589D4CE_69+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sfx_CHECKZERO();			=>>AR	= AX;
	if(__jnz__)	goto L5589D4CE_78;	=>>if NZ	jmp L5589D4CE_78
	goto	L5589D4CE_77;			=>>jmp	L5589D4CE_77
L5589D4CE_78:;					=>>L5589D4CE_78:;
	
_A1690E9DD_281:;				=>>_A1690E9DD_281:;
	asm I1 = L5589D4CE_69+0;		=>>I1 = L5589D4CE_69+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sCX	= 0x0001;			=>>CX	= 0x01
	sAX	= sAX - sCX;			=>>AR	= CX;AX	-= AR
	sSI	= (int)&L5589D4CE_69;		=>>I1	= L5589D4CE_69
	*(__int16*)sSI	= sAX			=>>rm[I1]	= AX
_A1690E9DD_282:;				=>>_A1690E9DD_282:;
	goto L5589D4CE_74;			=>>jmp	L5589D4CE_74
L5589D4CE_77:;					=>>L5589D4CE_77:;
_A1690E9DD_283:;				=>>_A1690E9DD_283:;
_A1690E9DD_284:;				=>>_A1690E9DD_284:;
	asm AX = #_keyfuncF06F3D55+0;		=>>AX = #_keyfuncF06F3D55+0//
	sSI	= (int)&_pkey_1_10;		=>>AR	= -4;I1	= rm[BP_SAVE];I1	+= AR
	*(__int16*)sSI	= sAX;			=>>rm[I1]	= AX
_A1690E9DD_285:;				=>>_A1690E9DD_285:;
	sAX	= 0x0200;			=>>AX	= 0x0200
	sSI	= (int)&L5589D4CE_69;		=>>I1	= L5589D4CE_69
	*(__int16*)sSI	= sAX			=>>rm[I1]	= AX
_A1690E9DD_286:;				=>>_A1690E9DD_286:;
	asm I1 = L5589D4CE_68+0;		=>>I1 = L5589D4CE_68+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	asm I1 = L5589D4CE_67+0;		=>>I1 = L5589D4CE_67+0//
	asm AR = rm[I1];			=>>AR = rm[I1]//
	asm AX = AX ^ AR;			=>>AX = AX ^ AR//
	sSI	= (int)&_bits_1_6;		=>>AR	= -2;I1	= rm[BP_SAVE];I1	+= AR
	*(__int16*)sSI	= sAX;			=>>rm[I1]	= AX
_A1690E9DD_287:;				=>>_A1690E9DD_287:;
	asm I1 = L5589D4CE_68+0;		=>>I1 = L5589D4CE_68+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sSI	= (int)&_bitp_1_8;		=>>AR	= -3;I1	= rm[BP_SAVE];I1	+= AR
	*(__int16*)sSI	= sAX;			=>>rm[I1]	= AX
_A1690E9DD_288:;				=>>_A1690E9DD_288:;
	asm I1 = L5589D4CE_67+0;		=>>I1 = L5589D4CE_67+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sSI	= (int)&L5589D4CE_68;		=>>I1	= L5589D4CE_68
	*(__int16*)sSI	= sAX			=>>rm[I1]	= AX
_A1690E9DD_289:;				=>>_A1690E9DD_289:;
	_i_1_4+0	= 0x05;			=>>AR	= -1;I1	= rm[BP_SAVE];I1	+= AR;AX	= 0x05;rm[I1]	= AX
L5589D4CE_80:;					=>>L5589D4CE_80:;
_A1690E9DD_290:;				=>>_A1690E9DD_290:;
	sSI	= (int)&_i_1_4;			=>>AR	= -1;I1	= rm[BP_SAVE];I1	+= AR
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sSI	= (int)&_i_1_4;			=>>AR	= -1;I1	= rm[BP_SAVE];I1	+= AR
	asm AR = 0x0001;			=>>AR = 0x0001//
	sCX	= *(__int16*)sSI;		=>>CX	= rm[I1]
	asm rm[I1] = CX - AR;			=>>rm[I1] = CX - AR//
	sfx_CHECKZERO();			=>>AR	= AX;
	if(__jnz__)	goto L5589D4CE_81;	=>>if NZ	jmp L5589D4CE_81
	goto	L5589D4CE_79;			=>>jmp	L5589D4CE_79
L5589D4CE_81:;					=>>L5589D4CE_81:;
	
_A1690E9DD_291:;				=>>_A1690E9DD_291:;
	sAX	= 0;				=>>AX	= 0x00
	sSI	= (int)&_bits_1_6+0;		=>>AR	= -2;I1	= rm[BP_SAVE];I1	+= AR
	asm AR = rm[I1];			=>>AR = rm[I1]//
	asm test AR.b0;				=>>test AR.b0//
	if(__jz__) goto L5589D4CE_83;		=>>if ZR	jmp L5589D4CE_83
	sAX	= 1;				=>>AX	= 0x01
L5589D4CE_83:;					=>>L5589D4CE_83:;
	sfx_CHECKZERO();			=>>AR	= AX;
	if(__jnz__)	goto L5589D4CE_84;	=>>if NZ	jmp L5589D4CE_84
	goto	L5589D4CE_82;			=>>jmp	L5589D4CE_82
L5589D4CE_84:;					=>>L5589D4CE_84:;
	
_A1690E9DD_292:;				=>>_A1690E9DD_292:;
	sAX	= 0;				=>>AX	= 0x00
	sSI	= (int)&_bitp_1_8+0;		=>>AR	= -3;I1	= rm[BP_SAVE];I1	+= AR
	asm AR = rm[I1];			=>>AR = rm[I1]//
	asm test AR.b0;				=>>test AR.b0//
	if(__jz__) goto L5589D4CE_86;		=>>if ZR	jmp L5589D4CE_86
	sAX	= 1;				=>>AX	= 0x01
L5589D4CE_86:;					=>>L5589D4CE_86:;
	sfx_CHECKZERO();			=>>AR	= AX;
	if(__jnz__)	goto L5589D4CE_87;	=>>if NZ	jmp L5589D4CE_87
	goto	L5589D4CE_85;			=>>jmp	L5589D4CE_85
L5589D4CE_87:;					=>>L5589D4CE_87:;
	
_A1690E9DD_293:;				=>>_A1690E9DD_293:;
	sSI	= (int)&_pkey_1_10;		=>>AR	= -4;I1	= rm[BP_SAVE];I1	+= AR
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sCX	= 0x0002;			=>>CX	= 0x02
	sAX	= sAX + sCX;			=>>AR	= CX;AX	+= AR
	sDI	= sAX;				=>>AR	= AX;P1	= AR
	sAX	= *(__int16*)sDI;		=>>AX	= pm[P1]
	sfx_CHECKZERO();			=>>AR	= AX;
	if(__jnz__)	goto L5589D4CE_89;	=>>if NZ	jmp L5589D4CE_89
	goto	L5589D4CE_88;			=>>jmp	L5589D4CE_88
L5589D4CE_89:;					=>>L5589D4CE_89:;
_A1690E9DD_294:;				=>>_A1690E9DD_294:;
_A1690E9DD_295:;				=>>_A1690E9DD_295:;
	sSI	= (int)&_pkey_1_10;		=>>AR	= -4;I1	= rm[BP_SAVE];I1	+= AR
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sCX	= 0x0002;			=>>CX	= 0x02
	sAX	= sAX + sCX;			=>>AR	= CX;AX	+= AR
	sDI	= sAX;				=>>AR	= AX;P1	= AR
	sAX	= *(__int16*)sDI;		=>>AX	= pm[P1]
	sfx_CALL_BY_AX();			=>>AR	= AX;P1	= AR;P1.hh	= 0;fcall	pm[P1];
L5589D4CE_88:;					=>>L5589D4CE_88:;
_A1690E9DD_296:;				=>>_A1690E9DD_296:;
	goto L5589D4CE_90;			=>>jmp	L5589D4CE_90
L5589D4CE_85:;					=>>L5589D4CE_85:;
	
_A1690E9DD_297:;				=>>_A1690E9DD_297:;
	sSI	= (int)&_pkey_1_10;		=>>AR	= -4;I1	= rm[BP_SAVE];I1	+= AR
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sDI	= sAX;				=>>AR	= AX;P1	= AR
	sAX	= *(__int16*)sDI;		=>>AX	= pm[P1]
	sfx_CHECKZERO();			=>>AR	= AX;
	if(__jnz__)	goto L5589D4CE_92;	=>>if NZ	jmp L5589D4CE_92
	goto	L5589D4CE_91;			=>>jmp	L5589D4CE_91
L5589D4CE_92:;					=>>L5589D4CE_92:;
_A1690E9DD_298:;				=>>_A1690E9DD_298:;
_A1690E9DD_299:;				=>>_A1690E9DD_299:;
	sSI	= (int)&_pkey_1_10;		=>>AR	= -4;I1	= rm[BP_SAVE];I1	+= AR
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sDI	= sAX;				=>>AR	= AX;P1	= AR
	sAX	= *(__int16*)sDI;		=>>AX	= pm[P1]
	sfx_CALL_BY_AX();			=>>AR	= AX;P1	= AR;P1.hh	= 0;fcall	pm[P1];
L5589D4CE_91:;					=>>L5589D4CE_91:;
_A1690E9DD_300:;				=>>_A1690E9DD_300:;
L5589D4CE_90:;					=>>L5589D4CE_90:;
_A1690E9DD_301:;				=>>_A1690E9DD_301:;
	goto L5589D4CE_93;			=>>jmp	L5589D4CE_93
L5589D4CE_82:;					=>>L5589D4CE_82:;
	
_A1690E9DD_302:;				=>>_A1690E9DD_302:;
	sAX	= 0;				=>>AX	= 0x00
	sSI	= (int)&_bitp_1_8+0;		=>>AR	= -3;I1	= rm[BP_SAVE];I1	+= AR
	asm AR = rm[I1];			=>>AR = rm[I1]//
	asm test AR.b0;				=>>test AR.b0//
	if(__jz__) goto L5589D4CE_95;		=>>if ZR	jmp L5589D4CE_95
	sAX	= 1;				=>>AX	= 0x01
L5589D4CE_95:;					=>>L5589D4CE_95:;
	sfx_CHECKZERO();			=>>AR	= AX;
	if(__jnz__)	goto L5589D4CE_96;	=>>if NZ	jmp L5589D4CE_96
	goto	L5589D4CE_94;			=>>jmp	L5589D4CE_94
L5589D4CE_96:;					=>>L5589D4CE_96:;
	
_A1690E9DD_303:;				=>>_A1690E9DD_303:;
	sSI	= (int)&_pkey_1_10;		=>>AR	= -4;I1	= rm[BP_SAVE];I1	+= AR
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sCX	= 0x0001;			=>>CX	= 0x01
	sAX	= sAX + sCX;			=>>AR	= CX;AX	+= AR
	sDI	= sAX;				=>>AR	= AX;P1	= AR
	sAX	= *(__int16*)sDI;		=>>AX	= pm[P1]
	sfx_CHECKZERO();			=>>AR	= AX;
	if(__jnz__)	goto L5589D4CE_98;	=>>if NZ	jmp L5589D4CE_98
	goto	L5589D4CE_97;			=>>jmp	L5589D4CE_97
L5589D4CE_98:;					=>>L5589D4CE_98:;
_A1690E9DD_304:;				=>>_A1690E9DD_304:;
_A1690E9DD_305:;				=>>_A1690E9DD_305:;
	sSI	= (int)&_pkey_1_10;		=>>AR	= -4;I1	= rm[BP_SAVE];I1	+= AR
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sCX	= 0x0001;			=>>CX	= 0x01
	sAX	= sAX + sCX;			=>>AR	= CX;AX	+= AR
	sDI	= sAX;				=>>AR	= AX;P1	= AR
	sAX	= *(__int16*)sDI;		=>>AX	= pm[P1]
	sfx_CALL_BY_AX();			=>>AR	= AX;P1	= AR;P1.hh	= 0;fcall	pm[P1];
L5589D4CE_97:;					=>>L5589D4CE_97:;
_A1690E9DD_306:;				=>>_A1690E9DD_306:;
L5589D4CE_94:;					=>>L5589D4CE_94:;
_A1690E9DD_307:;				=>>_A1690E9DD_307:;
L5589D4CE_93:;					=>>L5589D4CE_93:;
_A1690E9DD_308:;				=>>_A1690E9DD_308:;
_A1690E9DD_309:;				=>>_A1690E9DD_309:;
	sSI	= (int)&_bits_1_6;		=>>AR	= -2;I1	= rm[BP_SAVE];I1	+= AR
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	asm sra AX, 1;				=>>sra AX, 1//
	sSI	= (int)&_bits_1_6;		=>>AR	= -2;I1	= rm[BP_SAVE];I1	+= AR
	*(__int16*)sSI	= sAX;			=>>rm[I1]	= AX
_A1690E9DD_310:;				=>>_A1690E9DD_310:;
	sSI	= (int)&_bitp_1_8;		=>>AR	= -3;I1	= rm[BP_SAVE];I1	+= AR
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	asm sra AX, 1;				=>>sra AX, 1//
	sSI	= (int)&_bitp_1_8;		=>>AR	= -3;I1	= rm[BP_SAVE];I1	+= AR
	*(__int16*)sSI	= sAX;			=>>rm[I1]	= AX
_A1690E9DD_311:;				=>>_A1690E9DD_311:;
	sSI	= (int)&_pkey_1_10;		=>>AR	= -4;I1	= rm[BP_SAVE];I1	+= AR
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sSI	= (int)&_pkey_1_10;		=>>AR	= -4;I1	= rm[BP_SAVE];I1	+= AR
	asm AR = 0x0003;			=>>AR = 0x0003//
	sCX	= *(__int16*)sSI;		=>>CX	= rm[I1]
	asm rm[I1] = CX + AR;			=>>rm[I1] = CX + AR//
_A1690E9DD_312:;				=>>_A1690E9DD_312:;
	goto L5589D4CE_80;			=>>jmp	L5589D4CE_80
L5589D4CE_79:;					=>>L5589D4CE_79:;
L5589D4CE_74:;					=>>L5589D4CE_74:;
_A1690E9DD_313:;				=>>_A1690E9DD_313:;
	return;					=>>AR	= 5;BP	+= AR;pop	AR;rm[BP_SAVE]	= AR;rets
_PollingKey3B90E3B1_end:;			=>>_PollingKey3B90E3B1_end:;
_A1690E9DD_314:;				=>>_A1690E9DD_314:;
}








.code



.code







.data





.code





