
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
_AE3845712_253:;				=>>_AE3845712_253:;
	
_AE3845712_254:;				=>>_AE3845712_254:;
	asm clr io[0x04].b0;			=>>clr io[0x04].b0//
_AE3845712_255:;				=>>_AE3845712_255:;
	asm clr io[0x04].b1;			=>>clr io[0x04].b1//
_AE3845712_256:;				=>>_AE3845712_256:;
	asm clr io[0x04].b2;			=>>clr io[0x04].b2//
_AE3845712_257:;				=>>_AE3845712_257:;
	asm clr io[0x04].b3;			=>>clr io[0x04].b3//
_AE3845712_258:;				=>>_AE3845712_258:;
	io[0x1E]	= 0x0005;		=>>AR	= 0x05;io[0x1E]	= AR
_AE3845712_259:;				=>>_AE3845712_259:;
	sAX	= 0x000F;			=>>AX	= 0x0F
	sAX	= sAX | io[0x1F];		=>>AR	= io[0x1F];AX	|= AR
	io[0x1F]	= sAX;			=>>AR	= AX;io[0x1F]	= AR
_AE3845712_260:;				=>>_AE3845712_260:;
	sAX	= 0x0000;			=>>AX	= 0x00
	sSI	= (int)&L5589D4CE_67;		=>>I1	= L5589D4CE_67
	*(__int16*)sSI	= sAX			=>>rm[I1]	= AX
_AE3845712_261:;				=>>_AE3845712_261:;
	sAX	= 0x0000;			=>>AX	= 0x00
	sSI	= (int)&L5589D4CE_68;		=>>I1	= L5589D4CE_68
	*(__int16*)sSI	= sAX			=>>rm[I1]	= AX
_AE3845712_262:;				=>>_AE3845712_262:;
	sAX	= 0x0200;			=>>AX	= 0x0200
	sSI	= (int)&L5589D4CE_69;		=>>I1	= L5589D4CE_69
	*(__int16*)sSI	= sAX			=>>rm[I1]	= AX
L5589D4CE_70:;					=>>L5589D4CE_70:;
_AE3845712_263:;				=>>_AE3845712_263:;
	return;					=>>rets
_InitKey3C587B6D_end:;				=>>_InitKey3C587B6D_end:;
_AE3845712_264:;				=>>_AE3845712_264:;
}

rjmp void L5589D4CE_71()			=>>L5589D4CE_71:
{
	__int16 _btn_1_2;
						=>>AR	= rm[BP_SAVE];push	AR;AR	= BP;rm[BP_SAVE]	= AR;AR	 = -1;BP	+= AR
_AE3845712_265:;				=>>_AE3845712_265:;
	
_AE3845712_266:;				=>>_AE3845712_266:;
	sAX	= 0x000F;			=>>AX	= 0x0F
	sAX	= sAX & io[0x07];		=>>AR	= io[0x07];AX	&= AR
	sSI	= (int)&_btn_1_2;		=>>I1	= rm[BP_SAVE]
	*(__int16*)sSI	= sAX;			=>>rm[I1]	= AX
_AE3845712_267:;				=>>_AE3845712_267:;
	sSI	= (int)&_btn_1_2;		=>>I1	= rm[BP_SAVE]
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	goto L5589D4CE_73;			=>>jmp	L5589D4CE_73
L5589D4CE_73:;					=>>L5589D4CE_73:;
_AE3845712_268:;				=>>_AE3845712_268:;
	return;					=>>AR	= 1;BP	+= AR;pop	AR;rm[BP_SAVE]	= AR;rets
L5589D4CE_71_end:;				=>>L5589D4CE_71_end:;
_AE3845712_269:;				=>>_AE3845712_269:;
}

rjmp void _PollingKey3B90E3B1()			=>>_PollingKey3B90E3B1:
{
	__int16 _keynow_1_2;
	__int16 _i_1_4;
	__int16 _bits_1_6;
	__int16 _bitp_1_8;
	__int16 _pkey_1_10;
						=>>AR	= rm[BP_SAVE];push	AR;AR	= BP;rm[BP_SAVE]	= AR;AR	 = -5;BP	+= AR
_AE3845712_270:;				=>>_AE3845712_270:;
	
_AE3845712_271:;				=>>_AE3845712_271:;
_AE3845712_272:;				=>>_AE3845712_272:;
	NEARCALL(L5589D4CE_71);			=>>call	L5589D4CE_71
	sSI	= (int)&_keynow_1_2;		=>>I1	= rm[BP_SAVE]
	*(__int16*)sSI	= sAX;			=>>rm[I1]	= AX
_AE3845712_273:;				=>>_AE3845712_273:;
	asm I1 = L5589D4CE_67+0;		=>>I1 = L5589D4CE_67+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sSI	= (int)&_keynow_1_2;		=>>I1	= rm[BP_SAVE]
	sCX	= *(__int16*)sSI;		=>>CX	= rm[I1]
	sfx_CMP_AX_CX_JNE();			=>>pch	= sfx_CMP_AX_CX_JNE;lcall	sfx_CMP_AX_CX_JNE
	if(__je__)	goto L5589D4CE_76;	=>>if ZR	jmp L5589D4CE_76
	goto	L5589D4CE_75;			=>>jmp	L5589D4CE_75
L5589D4CE_76:;					=>>L5589D4CE_76:;
	
_AE3845712_274:;				=>>_AE3845712_274:;
	sSI	= (int)&_keynow_1_2;		=>>I1	= rm[BP_SAVE]
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sSI	= (int)&L5589D4CE_67;		=>>I1	= L5589D4CE_67
	*(__int16*)sSI	= sAX			=>>rm[I1]	= AX
_AE3845712_275:;				=>>_AE3845712_275:;
	sAX	= 0x0200;			=>>AX	= 0x0200
	sSI	= (int)&L5589D4CE_69;		=>>I1	= L5589D4CE_69
	*(__int16*)sSI	= sAX			=>>rm[I1]	= AX
_AE3845712_276:;				=>>_AE3845712_276:;
	goto L5589D4CE_74;			=>>jmp	L5589D4CE_74
L5589D4CE_75:;					=>>L5589D4CE_75:;
_AE3845712_277:;				=>>_AE3845712_277:;
_AE3845712_278:;				=>>_AE3845712_278:;
	asm I1 = L5589D4CE_69+0;		=>>I1 = L5589D4CE_69+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sfx_CHECKZERO();			=>>AR	= AX;
	if(__jnz__)	goto L5589D4CE_78;	=>>if NZ	jmp L5589D4CE_78
	goto	L5589D4CE_77;			=>>jmp	L5589D4CE_77
L5589D4CE_78:;					=>>L5589D4CE_78:;
	
_AE3845712_279:;				=>>_AE3845712_279:;
	asm I1 = L5589D4CE_69+0;		=>>I1 = L5589D4CE_69+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sCX	= 0x0001;			=>>CX	= 0x01
	sAX	= sAX - sCX;			=>>AR	= CX;AX	-= AR
	sSI	= (int)&L5589D4CE_69;		=>>I1	= L5589D4CE_69
	*(__int16*)sSI	= sAX			=>>rm[I1]	= AX
_AE3845712_280:;				=>>_AE3845712_280:;
	goto L5589D4CE_74;			=>>jmp	L5589D4CE_74
L5589D4CE_77:;					=>>L5589D4CE_77:;
_AE3845712_281:;				=>>_AE3845712_281:;
_AE3845712_282:;				=>>_AE3845712_282:;
	asm AX = #_keyfuncF06F3D55+0;		=>>AX = #_keyfuncF06F3D55+0//
	sSI	= (int)&_pkey_1_10;		=>>AR	= -4;I1	= rm[BP_SAVE];I1	+= AR
	*(__int16*)sSI	= sAX;			=>>rm[I1]	= AX
_AE3845712_283:;				=>>_AE3845712_283:;
	sAX	= 0x0200;			=>>AX	= 0x0200
	sSI	= (int)&L5589D4CE_69;		=>>I1	= L5589D4CE_69
	*(__int16*)sSI	= sAX			=>>rm[I1]	= AX
_AE3845712_284:;				=>>_AE3845712_284:;
	asm I1 = L5589D4CE_68+0;		=>>I1 = L5589D4CE_68+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	asm I1 = L5589D4CE_67+0;		=>>I1 = L5589D4CE_67+0//
	asm AR = rm[I1];			=>>AR = rm[I1]//
	asm AX = AX ^ AR;			=>>AX = AX ^ AR//
	sSI	= (int)&_bits_1_6;		=>>AR	= -2;I1	= rm[BP_SAVE];I1	+= AR
	*(__int16*)sSI	= sAX;			=>>rm[I1]	= AX
_AE3845712_285:;				=>>_AE3845712_285:;
	asm I1 = L5589D4CE_68+0;		=>>I1 = L5589D4CE_68+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sSI	= (int)&_bitp_1_8;		=>>AR	= -3;I1	= rm[BP_SAVE];I1	+= AR
	*(__int16*)sSI	= sAX;			=>>rm[I1]	= AX
_AE3845712_286:;				=>>_AE3845712_286:;
	asm I1 = L5589D4CE_67+0;		=>>I1 = L5589D4CE_67+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sSI	= (int)&L5589D4CE_68;		=>>I1	= L5589D4CE_68
	*(__int16*)sSI	= sAX			=>>rm[I1]	= AX
_AE3845712_287:;				=>>_AE3845712_287:;
	_i_1_4+0	= 0x05;			=>>AR	= -1;I1	= rm[BP_SAVE];I1	+= AR;AX	= 0x05;rm[I1]	= AX
L5589D4CE_80:;					=>>L5589D4CE_80:;
_AE3845712_288:;				=>>_AE3845712_288:;
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
	
_AE3845712_289:;				=>>_AE3845712_289:;
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
	
_AE3845712_290:;				=>>_AE3845712_290:;
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
	
_AE3845712_291:;				=>>_AE3845712_291:;
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
_AE3845712_292:;				=>>_AE3845712_292:;
_AE3845712_293:;				=>>_AE3845712_293:;
	sSI	= (int)&_pkey_1_10;		=>>AR	= -4;I1	= rm[BP_SAVE];I1	+= AR
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sCX	= 0x0002;			=>>CX	= 0x02
	sAX	= sAX + sCX;			=>>AR	= CX;AX	+= AR
	sDI	= sAX;				=>>AR	= AX;P1	= AR
	sAX	= *(__int16*)sDI;		=>>AX	= pm[P1]
	sfx_CALL_BY_AX();			=>>AR	= AX;P1	= AR;P1.hh	= 0;fcall	pm[P1];
L5589D4CE_88:;					=>>L5589D4CE_88:;
_AE3845712_294:;				=>>_AE3845712_294:;
	goto L5589D4CE_90;			=>>jmp	L5589D4CE_90
L5589D4CE_85:;					=>>L5589D4CE_85:;
	
_AE3845712_295:;				=>>_AE3845712_295:;
	sSI	= (int)&_pkey_1_10;		=>>AR	= -4;I1	= rm[BP_SAVE];I1	+= AR
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sDI	= sAX;				=>>AR	= AX;P1	= AR
	sAX	= *(__int16*)sDI;		=>>AX	= pm[P1]
	sfx_CHECKZERO();			=>>AR	= AX;
	if(__jnz__)	goto L5589D4CE_92;	=>>if NZ	jmp L5589D4CE_92
	goto	L5589D4CE_91;			=>>jmp	L5589D4CE_91
L5589D4CE_92:;					=>>L5589D4CE_92:;
_AE3845712_296:;				=>>_AE3845712_296:;
_AE3845712_297:;				=>>_AE3845712_297:;
	sSI	= (int)&_pkey_1_10;		=>>AR	= -4;I1	= rm[BP_SAVE];I1	+= AR
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sDI	= sAX;				=>>AR	= AX;P1	= AR
	sAX	= *(__int16*)sDI;		=>>AX	= pm[P1]
	sfx_CALL_BY_AX();			=>>AR	= AX;P1	= AR;P1.hh	= 0;fcall	pm[P1];
L5589D4CE_91:;					=>>L5589D4CE_91:;
_AE3845712_298:;				=>>_AE3845712_298:;
L5589D4CE_90:;					=>>L5589D4CE_90:;
_AE3845712_299:;				=>>_AE3845712_299:;
	goto L5589D4CE_93;			=>>jmp	L5589D4CE_93
L5589D4CE_82:;					=>>L5589D4CE_82:;
	
_AE3845712_300:;				=>>_AE3845712_300:;
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
	
_AE3845712_301:;				=>>_AE3845712_301:;
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
_AE3845712_302:;				=>>_AE3845712_302:;
_AE3845712_303:;				=>>_AE3845712_303:;
	sSI	= (int)&_pkey_1_10;		=>>AR	= -4;I1	= rm[BP_SAVE];I1	+= AR
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sCX	= 0x0001;			=>>CX	= 0x01
	sAX	= sAX + sCX;			=>>AR	= CX;AX	+= AR
	sDI	= sAX;				=>>AR	= AX;P1	= AR
	sAX	= *(__int16*)sDI;		=>>AX	= pm[P1]
	sfx_CALL_BY_AX();			=>>AR	= AX;P1	= AR;P1.hh	= 0;fcall	pm[P1];
L5589D4CE_97:;					=>>L5589D4CE_97:;
_AE3845712_304:;				=>>_AE3845712_304:;
L5589D4CE_94:;					=>>L5589D4CE_94:;
_AE3845712_305:;				=>>_AE3845712_305:;
L5589D4CE_93:;					=>>L5589D4CE_93:;
_AE3845712_306:;				=>>_AE3845712_306:;
_AE3845712_307:;				=>>_AE3845712_307:;
	sSI	= (int)&_bits_1_6;		=>>AR	= -2;I1	= rm[BP_SAVE];I1	+= AR
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	asm sra AX, 1;				=>>sra AX, 1//
	sSI	= (int)&_bits_1_6;		=>>AR	= -2;I1	= rm[BP_SAVE];I1	+= AR
	*(__int16*)sSI	= sAX;			=>>rm[I1]	= AX
_AE3845712_308:;				=>>_AE3845712_308:;
	sSI	= (int)&_bitp_1_8;		=>>AR	= -3;I1	= rm[BP_SAVE];I1	+= AR
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	asm sra AX, 1;				=>>sra AX, 1//
	sSI	= (int)&_bitp_1_8;		=>>AR	= -3;I1	= rm[BP_SAVE];I1	+= AR
	*(__int16*)sSI	= sAX;			=>>rm[I1]	= AX
_AE3845712_309:;				=>>_AE3845712_309:;
	sSI	= (int)&_pkey_1_10;		=>>AR	= -4;I1	= rm[BP_SAVE];I1	+= AR
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sSI	= (int)&_pkey_1_10;		=>>AR	= -4;I1	= rm[BP_SAVE];I1	+= AR
	asm AR = 0x0003;			=>>AR = 0x0003//
	sCX	= *(__int16*)sSI;		=>>CX	= rm[I1]
	asm rm[I1] = CX + AR;			=>>rm[I1] = CX + AR//
_AE3845712_310:;				=>>_AE3845712_310:;
	goto L5589D4CE_80;			=>>jmp	L5589D4CE_80
L5589D4CE_79:;					=>>L5589D4CE_79:;
L5589D4CE_74:;					=>>L5589D4CE_74:;
_AE3845712_311:;				=>>_AE3845712_311:;
	return;					=>>AR	= 5;BP	+= AR;pop	AR;rm[BP_SAVE]	= AR;rets
_PollingKey3B90E3B1_end:;			=>>_PollingKey3B90E3B1_end:;
_AE3845712_312:;				=>>_AE3845712_312:;
}








.code



.code







.data





.code





