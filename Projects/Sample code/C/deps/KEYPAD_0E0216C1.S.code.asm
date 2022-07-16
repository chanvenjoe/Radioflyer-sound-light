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
; //_AECA8DE46_255:;				
_AECA8DE46_255:
; //	
; //_AECA8DE46_256:;				
_AECA8DE46_256:
; //	asm clr io[0x04].b0;			
	clr io[0x04].b0//
; //_AECA8DE46_257:;				
_AECA8DE46_257:
; //	asm clr io[0x04].b1;			
	clr io[0x04].b1//
; //_AECA8DE46_258:;				
_AECA8DE46_258:
; //	asm clr io[0x04].b2;			
	clr io[0x04].b2//
; //_AECA8DE46_259:;				
_AECA8DE46_259:
; //	asm clr io[0x04].b3;			
	clr io[0x04].b3//
; //_AECA8DE46_260:;				
_AECA8DE46_260:
; //	asm set io[0x05].b2;			
	set io[0x05].b2//
; //_AECA8DE46_261:;				
_AECA8DE46_261:
; //	asm set io[0x05].b0;			
	set io[0x05].b0//
; //_AECA8DE46_262:;				
_AECA8DE46_262:
; //	io[0x1E]	= 0x0005;		
	AR	= 0x05
	io[0x1E]	= AR
; //_AECA8DE46_263:;				
_AECA8DE46_263:
; //	sAX	= 0x000F;			
	AX	= 0x0F
; //	sAX	= sAX | io[0x1F];		
	AR	= io[0x1F]
	AX	|= AR
; //	io[0x1F]	= sAX;			
	AR	= AX
	io[0x1F]	= AR
; //_AECA8DE46_264:;				
_AECA8DE46_264:
; //	sAX	= 0x0000;			
	AX	= 0x00
; //	sSI	= (int)&L5589D4CE_67;		
	I1	= L5589D4CE_67
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_AECA8DE46_265:;				
_AECA8DE46_265:
; //	sAX	= 0x0000;			
	AX	= 0x00
; //	sSI	= (int)&L5589D4CE_68;		
	I1	= L5589D4CE_68
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_AECA8DE46_266:;				
_AECA8DE46_266:
; //	sAX	= 0x0200;			
	AX	= 0x0200
; //	sSI	= (int)&L5589D4CE_69;		
	I1	= L5589D4CE_69
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //L5589D4CE_70:;					
L5589D4CE_70:
; //_AECA8DE46_267:;				
_AECA8DE46_267:
; //	return;					
	rets
; //_InitKey3C587B6D_end:;				
_InitKey3C587B6D_end:
; //_AECA8DE46_268:;				
_AECA8DE46_268:
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
; //_AECA8DE46_269:;				
_AECA8DE46_269:
; //	
; //_AECA8DE46_270:;				
_AECA8DE46_270:
; //	sAX	= 0x000F;			
	AX	= 0x0F
; //	sAX	= sAX & io[0x07];		
	AR	= io[0x07]
	AX	&= AR
; //	sSI	= (int)&_btn_1_2;		
	I1	= rm[BP_SAVE]
; //	*(__int16*)sSI	= sAX;			
	rm[I1]	= AX
; //_AECA8DE46_271:;				
_AECA8DE46_271:
; //	sSI	= (int)&_btn_1_2;		
	I1	= rm[BP_SAVE]
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	goto L5589D4CE_73;			
	jmp	L5589D4CE_73
; //L5589D4CE_73:;					
L5589D4CE_73:
; //_AECA8DE46_272:;				
_AECA8DE46_272:
; //	return;					
	AR	= 1
	BP	+= AR
	pop	AR
	rm[BP_SAVE]	= AR
	rets
; //L5589D4CE_71_end:;				
L5589D4CE_71_end:
; //_AECA8DE46_273:;				
_AECA8DE46_273:
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
; //_AECA8DE46_274:;				
_AECA8DE46_274:
; //	
; //_AECA8DE46_275:;				
_AECA8DE46_275:
; //_AECA8DE46_276:;				
_AECA8DE46_276:
; //	NEARCALL(L5589D4CE_71);			
	call	L5589D4CE_71
; //	sSI	= (int)&_keynow_1_2;		
	I1	= rm[BP_SAVE]
; //	*(__int16*)sSI	= sAX;			
	rm[I1]	= AX
; //_AECA8DE46_277:;				
_AECA8DE46_277:
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
; //_AECA8DE46_278:;				
_AECA8DE46_278:
; //	sSI	= (int)&_keynow_1_2;		
	I1	= rm[BP_SAVE]
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sSI	= (int)&L5589D4CE_67;		
	I1	= L5589D4CE_67
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_AECA8DE46_279:;				
_AECA8DE46_279:
; //	sAX	= 0x0200;			
	AX	= 0x0200
; //	sSI	= (int)&L5589D4CE_69;		
	I1	= L5589D4CE_69
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_AECA8DE46_280:;				
_AECA8DE46_280:
; //	goto L5589D4CE_74;			
	jmp	L5589D4CE_74
; //L5589D4CE_75:;					
L5589D4CE_75:
; //_AECA8DE46_281:;				
_AECA8DE46_281:
; //_AECA8DE46_282:;				
_AECA8DE46_282:
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
; //_AECA8DE46_283:;				
_AECA8DE46_283:
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
; //_AECA8DE46_284:;				
_AECA8DE46_284:
; //	goto L5589D4CE_74;			
	jmp	L5589D4CE_74
; //L5589D4CE_77:;					
L5589D4CE_77:
; //_AECA8DE46_285:;				
_AECA8DE46_285:
; //_AECA8DE46_286:;				
_AECA8DE46_286:
; //	asm AX = #_keyfuncF06F3D55+0;		
	AX = #_keyfuncF06F3D55+0//
; //	sSI	= (int)&_pkey_1_10;		
	AR	= -4
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	*(__int16*)sSI	= sAX;			
	rm[I1]	= AX
; //_AECA8DE46_287:;				
_AECA8DE46_287:
; //	sAX	= 0x0200;			
	AX	= 0x0200
; //	sSI	= (int)&L5589D4CE_69;		
	I1	= L5589D4CE_69
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_AECA8DE46_288:;				
_AECA8DE46_288:
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
; //_AECA8DE46_289:;				
_AECA8DE46_289:
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
; //_AECA8DE46_290:;				
_AECA8DE46_290:
; //	asm I1 = L5589D4CE_67+0;		
	I1 = L5589D4CE_67+0//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sSI	= (int)&L5589D4CE_68;		
	I1	= L5589D4CE_68
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_AECA8DE46_291:;				
_AECA8DE46_291:
; //	_i_1_4+0	= 0x05;			
	AR	= -1
	I1	= rm[BP_SAVE]
	I1	+= AR
	AX	= 0x05
	rm[I1]	= AX
; //L5589D4CE_80:;					
L5589D4CE_80:
; //_AECA8DE46_292:;				
_AECA8DE46_292:
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
; //_AECA8DE46_293:;				
_AECA8DE46_293:
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
; //_AECA8DE46_294:;				
_AECA8DE46_294:
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
; //_AECA8DE46_295:;				
_AECA8DE46_295:
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
; //_AECA8DE46_296:;				
_AECA8DE46_296:
; //_AECA8DE46_297:;				
_AECA8DE46_297:
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
; //_AECA8DE46_298:;				
_AECA8DE46_298:
; //	goto L5589D4CE_90;			
	jmp	L5589D4CE_90
; //L5589D4CE_85:;					
L5589D4CE_85:
; //	
; //_AECA8DE46_299:;				
_AECA8DE46_299:
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
; //_AECA8DE46_300:;				
_AECA8DE46_300:
; //_AECA8DE46_301:;				
_AECA8DE46_301:
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
; //_AECA8DE46_302:;				
_AECA8DE46_302:
; //L5589D4CE_90:;					
L5589D4CE_90:
; //_AECA8DE46_303:;				
_AECA8DE46_303:
; //	goto L5589D4CE_93;			
	jmp	L5589D4CE_93
; //L5589D4CE_82:;					
L5589D4CE_82:
; //	
; //_AECA8DE46_304:;				
_AECA8DE46_304:
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
; //_AECA8DE46_305:;				
_AECA8DE46_305:
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
; //_AECA8DE46_306:;				
_AECA8DE46_306:
; //_AECA8DE46_307:;				
_AECA8DE46_307:
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
; //_AECA8DE46_308:;				
_AECA8DE46_308:
; //L5589D4CE_94:;					
L5589D4CE_94:
; //_AECA8DE46_309:;				
_AECA8DE46_309:
; //L5589D4CE_93:;					
L5589D4CE_93:
; //_AECA8DE46_310:;				
_AECA8DE46_310:
; //_AECA8DE46_311:;				
_AECA8DE46_311:
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
; //_AECA8DE46_312:;				
_AECA8DE46_312:
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
; //_AECA8DE46_313:;				
_AECA8DE46_313:
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
; //_AECA8DE46_314:;				
_AECA8DE46_314:
; //	goto L5589D4CE_80;			
	jmp	L5589D4CE_80
; //L5589D4CE_79:;					
L5589D4CE_79:
; //L5589D4CE_74:;					
L5589D4CE_74:
; //_AECA8DE46_315:;				
_AECA8DE46_315:
; //	return;					
	AR	= 5
	BP	+= AR
	pop	AR
	rm[BP_SAVE]	= AR
	rets
; //_PollingKey3B90E3B1_end:;			
_PollingKey3B90E3B1_end:
; //_AECA8DE46_316:;				
_AECA8DE46_316:
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
