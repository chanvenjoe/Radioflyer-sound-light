; keypad.c Code Start!!;
VarRM[0:4095]={
 L5589D4CE_67,L5589D4CE_68,L5589D4CE_69 
};

; //
.code
; //
; //
; //rjmp void _InitKey3C587B6D();
; //rjmp void _PollingKey3B90E3B1();
; //
; //
; //
; //
.code
; //
; //
; //
.data
; //
; //
; //
.code
; //rjmp void _InitKey3C587B6D()			
_InitKey3C587B6D:
; //{
; //_AA01D89BC_254:;				
_AA01D89BC_254:
; //	
; //_AA01D89BC_255:;				
_AA01D89BC_255:
; //	asm clr io[0x04].b0;			
	clr io[0x04].b0//
; //_AA01D89BC_256:;				
_AA01D89BC_256:
; //	asm clr io[0x04].b1;			
	clr io[0x04].b1//
; //_AA01D89BC_257:;				
_AA01D89BC_257:
; //	asm clr io[0x04].b2;			
	clr io[0x04].b2//
; //_AA01D89BC_258:;				
_AA01D89BC_258:
; //	io[0x1E]	= 0x0005;		
	AR	= 0x05
	io[0x1E]	= AR
; //_AA01D89BC_259:;				
_AA01D89BC_259:
; //	sAX	= 0x0007;			
	AX	= 0x07
; //	sAX	= sAX | io[0x1F];		
	AR	= io[0x1F]
	AX	|= AR
; //	io[0x1F]	= sAX;			
	AR	= AX
	io[0x1F]	= AR
; //_AA01D89BC_260:;				
_AA01D89BC_260:
; //	sAX	= 0x0000;			
	AX	= 0x00
; //	sSI	= (int)&L5589D4CE_67;		
	I1	= L5589D4CE_67
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_AA01D89BC_261:;				
_AA01D89BC_261:
; //	sAX	= 0x0000;			
	AX	= 0x00
; //	sSI	= (int)&L5589D4CE_68;		
	I1	= L5589D4CE_68
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_AA01D89BC_262:;				
_AA01D89BC_262:
; //	sAX	= 0x0200;			
	AX	= 0x0200
; //	sSI	= (int)&L5589D4CE_69;		
	I1	= L5589D4CE_69
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //L5589D4CE_70:;					
L5589D4CE_70:
; //_AA01D89BC_263:;				
_AA01D89BC_263:
; //	return;					
	rets
; //_InitKey3C587B6D_end:;				
_InitKey3C587B6D_end:
; //_AA01D89BC_264:;				
_AA01D89BC_264:
; //}
; //
; //rjmp void L5589D4CE_71()			
L5589D4CE_71:
; //{
; //	__int16 _btn_1_2;
; //						
	AR	= rm[BP_SAVE]
	push	AR
	AR	= BP
	rm[BP_SAVE]	= AR
	AR	 = -1
	BP	+= AR
; //_AA01D89BC_265:;				
_AA01D89BC_265:
; //	
; //_AA01D89BC_266:;				
_AA01D89BC_266:
; //	sAX	= 0x000F;			
	AX	= 0x0F
; //	sAX	= sAX & io[0x07];		
	AR	= io[0x07]
	AX	&= AR
; //	sSI	= (int)&_btn_1_2;		
	I1	= rm[BP_SAVE]
; //	*(__int16*)sSI	= sAX;			
	rm[I1]	= AX
; //_AA01D89BC_267:;				
_AA01D89BC_267:
; //	sSI	= (int)&_btn_1_2;		
	I1	= rm[BP_SAVE]
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	goto L5589D4CE_73;			
	jmp	L5589D4CE_73
; //L5589D4CE_73:;					
L5589D4CE_73:
; //_AA01D89BC_268:;				
_AA01D89BC_268:
; //	return;					
	AR	= 1
	BP	+= AR
	pop	AR
	rm[BP_SAVE]	= AR
	rets
; //L5589D4CE_71_end:;				
L5589D4CE_71_end:
; //_AA01D89BC_269:;				
_AA01D89BC_269:
; //}
; //
; //rjmp void _PollingKey3B90E3B1()			
_PollingKey3B90E3B1:
; //{
; //	__int16 _keynow_1_2;
; //	__int16 _i_1_4;
; //	__int16 _bits_1_6;
; //	__int16 _bitp_1_8;
; //	__int16 _pkey_1_10;
; //						
	AR	= rm[BP_SAVE]
	push	AR
	AR	= BP
	rm[BP_SAVE]	= AR
	AR	 = -5
	BP	+= AR
; //_AA01D89BC_270:;				
_AA01D89BC_270:
; //	
; //_AA01D89BC_271:;				
_AA01D89BC_271:
; //_AA01D89BC_272:;				
_AA01D89BC_272:
; //	NEARCALL(L5589D4CE_71);			
	call	L5589D4CE_71
; //	sSI	= (int)&_keynow_1_2;		
	I1	= rm[BP_SAVE]
; //	*(__int16*)sSI	= sAX;			
	rm[I1]	= AX
; //_AA01D89BC_273:;				
_AA01D89BC_273:
; //	asm I1 = L5589D4CE_67+0;		
	I1 = L5589D4CE_67+0//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sSI	= (int)&_keynow_1_2;		
	I1	= rm[BP_SAVE]
; //	sCX	= *(__int16*)sSI;		
	CX	= rm[I1]
; //	sfx_CMP_AX_CX_JNE();			
	pch	= sfx_CMP_AX_CX_JNE
	lcall	sfx_CMP_AX_CX_JNE
; //	if(__je__)	goto L5589D4CE_76;	
	if ZR	jmp L5589D4CE_76
; //	goto	L5589D4CE_75;			
	jmp	L5589D4CE_75
; //L5589D4CE_76:;					
L5589D4CE_76:
; //	
; //_AA01D89BC_274:;				
_AA01D89BC_274:
; //	sSI	= (int)&_keynow_1_2;		
	I1	= rm[BP_SAVE]
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sSI	= (int)&L5589D4CE_67;		
	I1	= L5589D4CE_67
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_AA01D89BC_275:;				
_AA01D89BC_275:
; //	sAX	= 0x0200;			
	AX	= 0x0200
; //	sSI	= (int)&L5589D4CE_69;		
	I1	= L5589D4CE_69
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_AA01D89BC_276:;				
_AA01D89BC_276:
; //	goto L5589D4CE_74;			
	jmp	L5589D4CE_74
; //L5589D4CE_75:;					
L5589D4CE_75:
; //_AA01D89BC_277:;				
_AA01D89BC_277:
; //_AA01D89BC_278:;				
_AA01D89BC_278:
; //	asm I1 = L5589D4CE_69+0;		
	I1 = L5589D4CE_69+0//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sfx_CHECKZERO();			
	AR	= AX
; //	if(__jnz__)	goto L5589D4CE_78;	
	if NZ	jmp L5589D4CE_78
; //	goto	L5589D4CE_77;			
	jmp	L5589D4CE_77
; //L5589D4CE_78:;					
L5589D4CE_78:
; //	
; //_AA01D89BC_279:;				
_AA01D89BC_279:
; //	asm I1 = L5589D4CE_69+0;		
	I1 = L5589D4CE_69+0//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sCX	= 0x0001;			
	CX	= 0x01
; //	sAX	= sAX - sCX;			
	AR	= CX
	AX	-= AR
; //	sSI	= (int)&L5589D4CE_69;		
	I1	= L5589D4CE_69
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_AA01D89BC_280:;				
_AA01D89BC_280:
; //	goto L5589D4CE_74;			
	jmp	L5589D4CE_74
; //L5589D4CE_77:;					
L5589D4CE_77:
; //_AA01D89BC_281:;				
_AA01D89BC_281:
; //_AA01D89BC_282:;				
_AA01D89BC_282:
; //	asm AX = #_keyfuncF06F3D55+0;		
	AX = #_keyfuncF06F3D55+0//
; //	sSI	= (int)&_pkey_1_10;		
	AR	= -4
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	*(__int16*)sSI	= sAX;			
	rm[I1]	= AX
; //_AA01D89BC_283:;				
_AA01D89BC_283:
; //	sAX	= 0x0200;			
	AX	= 0x0200
; //	sSI	= (int)&L5589D4CE_69;		
	I1	= L5589D4CE_69
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_AA01D89BC_284:;				
_AA01D89BC_284:
; //	asm I1 = L5589D4CE_68+0;		
	I1 = L5589D4CE_68+0//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	asm I1 = L5589D4CE_67+0;		
	I1 = L5589D4CE_67+0//
; //	asm AR = rm[I1];			
	AR = rm[I1]//
; //	asm AX = AX ^ AR;			
	AX = AX ^ AR//
; //	sSI	= (int)&_bits_1_6;		
	AR	= -2
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	*(__int16*)sSI	= sAX;			
	rm[I1]	= AX
; //_AA01D89BC_285:;				
_AA01D89BC_285:
; //	asm I1 = L5589D4CE_68+0;		
	I1 = L5589D4CE_68+0//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sSI	= (int)&_bitp_1_8;		
	AR	= -3
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	*(__int16*)sSI	= sAX;			
	rm[I1]	= AX
; //_AA01D89BC_286:;				
_AA01D89BC_286:
; //	asm I1 = L5589D4CE_67+0;		
	I1 = L5589D4CE_67+0//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sSI	= (int)&L5589D4CE_68;		
	I1	= L5589D4CE_68
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_AA01D89BC_287:;				
_AA01D89BC_287:
; //	_i_1_4+0	= 0x05;			
	AR	= -1
	I1	= rm[BP_SAVE]
	I1	+= AR
	AX	= 0x05
	rm[I1]	= AX
; //L5589D4CE_80:;					
L5589D4CE_80:
; //_AA01D89BC_288:;				
_AA01D89BC_288:
; //	sSI	= (int)&_i_1_4;			
	AR	= -1
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sSI	= (int)&_i_1_4;			
	AR	= -1
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	asm AR = 0x0001;			
	AR = 0x0001//
; //	sCX	= *(__int16*)sSI;		
	CX	= rm[I1]
; //	asm rm[I1] = CX - AR;			
	rm[I1] = CX - AR//
; //	sfx_CHECKZERO();			
	AR	= AX
; //	if(__jnz__)	goto L5589D4CE_81;	
	if NZ	jmp L5589D4CE_81
; //	goto	L5589D4CE_79;			
	jmp	L5589D4CE_79
; //L5589D4CE_81:;					
L5589D4CE_81:
; //	
; //_AA01D89BC_289:;				
_AA01D89BC_289:
; //	sAX	= 0;				
	AX	= 0x00
; //	sSI	= (int)&_bits_1_6+0;		
	AR	= -2
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	asm AR = rm[I1];			
	AR = rm[I1]//
; //	asm test AR.b0;				
	test AR.b0//
; //	if(__jz__) goto L5589D4CE_83;		
	if ZR	jmp L5589D4CE_83
; //	sAX	= 1;				
	AX	= 0x01
; //L5589D4CE_83:;					
L5589D4CE_83:
; //	sfx_CHECKZERO();			
	AR	= AX
; //	if(__jnz__)	goto L5589D4CE_84;	
	if NZ	jmp L5589D4CE_84
; //	goto	L5589D4CE_82;			
	jmp	L5589D4CE_82
; //L5589D4CE_84:;					
L5589D4CE_84:
; //	
; //_AA01D89BC_290:;				
_AA01D89BC_290:
; //	sAX	= 0;				
	AX	= 0x00
; //	sSI	= (int)&_bitp_1_8+0;		
	AR	= -3
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	asm AR = rm[I1];			
	AR = rm[I1]//
; //	asm test AR.b0;				
	test AR.b0//
; //	if(__jz__) goto L5589D4CE_86;		
	if ZR	jmp L5589D4CE_86
; //	sAX	= 1;				
	AX	= 0x01
; //L5589D4CE_86:;					
L5589D4CE_86:
; //	sfx_CHECKZERO();			
	AR	= AX
; //	if(__jnz__)	goto L5589D4CE_87;	
	if NZ	jmp L5589D4CE_87
; //	goto	L5589D4CE_85;			
	jmp	L5589D4CE_85
; //L5589D4CE_87:;					
L5589D4CE_87:
; //	
; //_AA01D89BC_291:;				
_AA01D89BC_291:
; //	sSI	= (int)&_pkey_1_10;		
	AR	= -4
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sCX	= 0x0002;			
	CX	= 0x02
; //	sAX	= sAX + sCX;			
	AR	= CX
	AX	+= AR
; //	sDI	= sAX;				
	AR	= AX
	P1	= AR
; //	sAX	= *(__int16*)sDI;		
	AX	= pm[P1]
; //	sfx_CHECKZERO();			
	AR	= AX
; //	if(__jnz__)	goto L5589D4CE_89;	
	if NZ	jmp L5589D4CE_89
; //	goto	L5589D4CE_88;			
	jmp	L5589D4CE_88
; //L5589D4CE_89:;					
L5589D4CE_89:
; //_AA01D89BC_292:;				
_AA01D89BC_292:
; //_AA01D89BC_293:;				
_AA01D89BC_293:
; //	sSI	= (int)&_pkey_1_10;		
	AR	= -4
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sCX	= 0x0002;			
	CX	= 0x02
; //	sAX	= sAX + sCX;			
	AR	= CX
	AX	+= AR
; //	sDI	= sAX;				
	AR	= AX
	P1	= AR
; //	sAX	= *(__int16*)sDI;		
	AX	= pm[P1]
; //	sfx_CALL_BY_AX();			
	AR	= AX
	P1	= AR
	P1.hh	= 0
	fcall	pm[P1]
; //L5589D4CE_88:;					
L5589D4CE_88:
; //_AA01D89BC_294:;				
_AA01D89BC_294:
; //	goto L5589D4CE_90;			
	jmp	L5589D4CE_90
; //L5589D4CE_85:;					
L5589D4CE_85:
; //	
; //_AA01D89BC_295:;				
_AA01D89BC_295:
; //	sSI	= (int)&_pkey_1_10;		
	AR	= -4
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sDI	= sAX;				
	AR	= AX
	P1	= AR
; //	sAX	= *(__int16*)sDI;		
	AX	= pm[P1]
; //	sfx_CHECKZERO();			
	AR	= AX
; //	if(__jnz__)	goto L5589D4CE_92;	
	if NZ	jmp L5589D4CE_92
; //	goto	L5589D4CE_91;			
	jmp	L5589D4CE_91
; //L5589D4CE_92:;					
L5589D4CE_92:
; //_AA01D89BC_296:;				
_AA01D89BC_296:
; //_AA01D89BC_297:;				
_AA01D89BC_297:
; //	sSI	= (int)&_pkey_1_10;		
	AR	= -4
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sDI	= sAX;				
	AR	= AX
	P1	= AR
; //	sAX	= *(__int16*)sDI;		
	AX	= pm[P1]
; //	sfx_CALL_BY_AX();			
	AR	= AX
	P1	= AR
	P1.hh	= 0
	fcall	pm[P1]
; //L5589D4CE_91:;					
L5589D4CE_91:
; //_AA01D89BC_298:;				
_AA01D89BC_298:
; //L5589D4CE_90:;					
L5589D4CE_90:
; //_AA01D89BC_299:;				
_AA01D89BC_299:
; //	goto L5589D4CE_93;			
	jmp	L5589D4CE_93
; //L5589D4CE_82:;					
L5589D4CE_82:
; //	
; //_AA01D89BC_300:;				
_AA01D89BC_300:
; //	sAX	= 0;				
	AX	= 0x00
; //	sSI	= (int)&_bitp_1_8+0;		
	AR	= -3
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	asm AR = rm[I1];			
	AR = rm[I1]//
; //	asm test AR.b0;				
	test AR.b0//
; //	if(__jz__) goto L5589D4CE_95;		
	if ZR	jmp L5589D4CE_95
; //	sAX	= 1;				
	AX	= 0x01
; //L5589D4CE_95:;					
L5589D4CE_95:
; //	sfx_CHECKZERO();			
	AR	= AX
; //	if(__jnz__)	goto L5589D4CE_96;	
	if NZ	jmp L5589D4CE_96
; //	goto	L5589D4CE_94;			
	jmp	L5589D4CE_94
; //L5589D4CE_96:;					
L5589D4CE_96:
; //	
; //_AA01D89BC_301:;				
_AA01D89BC_301:
; //	sSI	= (int)&_pkey_1_10;		
	AR	= -4
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sCX	= 0x0001;			
	CX	= 0x01
; //	sAX	= sAX + sCX;			
	AR	= CX
	AX	+= AR
; //	sDI	= sAX;				
	AR	= AX
	P1	= AR
; //	sAX	= *(__int16*)sDI;		
	AX	= pm[P1]
; //	sfx_CHECKZERO();			
	AR	= AX
; //	if(__jnz__)	goto L5589D4CE_98;	
	if NZ	jmp L5589D4CE_98
; //	goto	L5589D4CE_97;			
	jmp	L5589D4CE_97
; //L5589D4CE_98:;					
L5589D4CE_98:
; //_AA01D89BC_302:;				
_AA01D89BC_302:
; //_AA01D89BC_303:;				
_AA01D89BC_303:
; //	sSI	= (int)&_pkey_1_10;		
	AR	= -4
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sCX	= 0x0001;			
	CX	= 0x01
; //	sAX	= sAX + sCX;			
	AR	= CX
	AX	+= AR
; //	sDI	= sAX;				
	AR	= AX
	P1	= AR
; //	sAX	= *(__int16*)sDI;		
	AX	= pm[P1]
; //	sfx_CALL_BY_AX();			
	AR	= AX
	P1	= AR
	P1.hh	= 0
	fcall	pm[P1]
; //L5589D4CE_97:;					
L5589D4CE_97:
; //_AA01D89BC_304:;				
_AA01D89BC_304:
; //L5589D4CE_94:;					
L5589D4CE_94:
; //_AA01D89BC_305:;				
_AA01D89BC_305:
; //L5589D4CE_93:;					
L5589D4CE_93:
; //_AA01D89BC_306:;				
_AA01D89BC_306:
; //_AA01D89BC_307:;				
_AA01D89BC_307:
; //	sSI	= (int)&_bits_1_6;		
	AR	= -2
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	asm sra AX, 1;				
	sra AX, 1//
; //	sSI	= (int)&_bits_1_6;		
	AR	= -2
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	*(__int16*)sSI	= sAX;			
	rm[I1]	= AX
; //_AA01D89BC_308:;				
_AA01D89BC_308:
; //	sSI	= (int)&_bitp_1_8;		
	AR	= -3
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	asm sra AX, 1;				
	sra AX, 1//
; //	sSI	= (int)&_bitp_1_8;		
	AR	= -3
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	*(__int16*)sSI	= sAX;			
	rm[I1]	= AX
; //_AA01D89BC_309:;				
_AA01D89BC_309:
; //	sSI	= (int)&_pkey_1_10;		
	AR	= -4
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sSI	= (int)&_pkey_1_10;		
	AR	= -4
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	asm AR = 0x0003;			
	AR = 0x0003//
; //	sCX	= *(__int16*)sSI;		
	CX	= rm[I1]
; //	asm rm[I1] = CX + AR;			
	rm[I1] = CX + AR//
; //_AA01D89BC_310:;				
_AA01D89BC_310:
; //	goto L5589D4CE_80;			
	jmp	L5589D4CE_80
; //L5589D4CE_79:;					
L5589D4CE_79:
; //L5589D4CE_74:;					
L5589D4CE_74:
; //_AA01D89BC_311:;				
_AA01D89BC_311:
; //	return;					
	AR	= 5
	BP	+= AR
	pop	AR
	rm[BP_SAVE]	= AR
	rets
; //_PollingKey3B90E3B1_end:;			
_PollingKey3B90E3B1_end:
; //_AA01D89BC_312:;				
_AA01D89BC_312:
; //}
; //
; //
; //
; //
; //
; //
; //
; //
.code
; //
; //
; //
.code
; //
; //
; //
; //
; //
; //
; //
.data
; //
; //
; //
; //
; //
.code
; //
; //
; //
; //
; //
