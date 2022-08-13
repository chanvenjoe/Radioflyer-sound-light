; touch.c Code Start!!;
VarRM[0:4095]={
 L0DC315BC_102,L0DC315BC_103,_pE0B41DE7 
};

; //
.code
; //
; //
; //void _touch_IRS1910CF89();
; //void _touch_init378E5983();
; //interrupt void _Touch_entry886E03ED();
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
; //void _touch_IRS1910CF89()			
_touch_IRS1910CF89:
; //{
; //_A569F39CC_317:;				
_A569F39CC_317:
; //	
; //_A569F39CC_318:;				
_A569F39CC_318:
; //	sAX	= 0;				
	AX	= 0x00
; //	asm test io[0x02].b5;			
	test io[0x02].b5//
; //	if(__jz__) goto L0DC315BC_105;		
	if ZR	jmp L0DC315BC_105
; //	sAX	= 1;				
	AX	= 0x01
; //L0DC315BC_105:;					
L0DC315BC_105:
; //	sCX	= 0x0001;			
	CX	= 0x01
; //	sfx_CMP_AX_CX_JE();			
	AR	= AX
	SF = AR - CX
; //	if(__je__)	goto L0DC315BC_107;	
	if ZR	jmp L0DC315BC_107
; //	goto	L0DC315BC_106;			
	pch =	L0DC315BC_106
	ljmp	L0DC315BC_106
; //L0DC315BC_107:;					
L0DC315BC_107:
; //_A569F39CC_319:;				
_A569F39CC_319:
; //	asm	clr io[INTREQ].b5		
	clr io[INTREQ].b5
; //	
; //L0DC315BC_106:;					
L0DC315BC_106:
; //_A569F39CC_320:;				
_A569F39CC_320:
; //_A569F39CC_321:;				
_A569F39CC_321:
; //	asm I1 = L0DC315BC_102+0;		
	I1 = L0DC315BC_102+0//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sCX	= 0x0001;			
	CX	= 0x01
; //	sfx_CMP_AX_CX_JE();			
	AR	= AX
	SF = AR - CX
; //	if(__je__)	goto L0DC315BC_109;	
	if ZR	jmp L0DC315BC_109
; //	goto	L0DC315BC_108;			
	pch =	L0DC315BC_108
	ljmp	L0DC315BC_108
; //L0DC315BC_109:;					
L0DC315BC_109:
; //	
; //_A569F39CC_322:;				
_A569F39CC_322:
; //	io[0x08]	= 0x0004;		
	AR	= 0x04
	io[0x08]	= AR
; //_A569F39CC_323:;				
_A569F39CC_323:
; //	sAX	= 0x0000;			
	AX	= 0x00
; //	sSI	= (int)&L0DC315BC_102;		
	I1	= L0DC315BC_102
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //	goto L0DC315BC_110;			
	pch =	L0DC315BC_110
	ljmp	L0DC315BC_110
; //L0DC315BC_108:;					
L0DC315BC_108:
; //	
; //_A569F39CC_324:;				
_A569F39CC_324:
; //	asm I1 = L0DC315BC_102+0;		
	I1 = L0DC315BC_102+0//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sSI	= (int)&L0DC315BC_102;		
	I1	= L0DC315BC_102
; //	PUSH(sAX);				
	push	AX
; //	sAX	= 0x0001;			
	AX	= 0x01
; //	sCX	= *(__int16*)sSI;		
	CX	= rm[I1]
; //	sCX	= sCX + sAX;			
	AR	= AX
	CX	+= AR
; //	*(__int16*)sSI	= sCX;			
	rm[I1]	= CX
; //	sAX	= POP();			
	pop	AX
; //_A569F39CC_325:;				
_A569F39CC_325:
; //	io[0x08]	= 0x0000;		
	AR	= 0x00
	io[0x08]	= AR
; //L0DC315BC_110:;					
L0DC315BC_110:
; //_A569F39CC_326:;				
_A569F39CC_326:
; //L0DC315BC_104:;					
L0DC315BC_104:
; //_A569F39CC_327:;				
_A569F39CC_327:
; //	return;					
	rets
; //_touch_IRS1910CF89_end:;			
_touch_IRS1910CF89_end:
; //_A569F39CC_328:;				
_A569F39CC_328:
; //}
; //
; //void _touch_init378E5983()			
_touch_init378E5983:
; //{
; //_A569F39CC_329:;				
_A569F39CC_329:
; //	
; //_A569F39CC_330:;				
_A569F39CC_330:
; //	io[0x19]	= 0x007C;		
	AR	= 0x7C
	io[0x19]	= AR
; //_A569F39CC_331:;				
_A569F39CC_331:
; //	asm clr io[0x19].b0;			
	clr io[0x19].b0//
; //_A569F39CC_332:;				
_A569F39CC_332:
; //	asm clr io[0x19].b1;			
	clr io[0x19].b1//
; //_A569F39CC_333:;				
_A569F39CC_333:
; //	asm set io[0x19].b2;			
	set io[0x19].b2//
; //_A569F39CC_334:;				
_A569F39CC_334:
; //	asm clr io[0x19].b3;			
	clr io[0x19].b3//
; //_A569F39CC_335:;				
_A569F39CC_335:
; //	asm clr io[0x19].b4;			
	clr io[0x19].b4//
; //_A569F39CC_336:;				
_A569F39CC_336:
; //	asm set io[0x19].b5;			
	set io[0x19].b5//
; //_A569F39CC_337:;				
_A569F39CC_337:
; //	asm set io[0x19].b6;			
	set io[0x19].b6//
; //_A569F39CC_338:;				
_A569F39CC_338:
; //	asm set io[0x19].b7;			
	set io[0x19].b7//
; //_A569F39CC_339:;				
_A569F39CC_339:
; //	asm clr io[0x06].b0;			
	clr io[0x06].b0//
; //_A569F39CC_340:;				
_A569F39CC_340:
; //	asm clr io[0x04].b3;			
	clr io[0x04].b3//
; //_A569F39CC_341:;				
_A569F39CC_341:
; //	io[0x1E]	= 0x000F;		
	AR	= 0x0F
	io[0x1E]	= AR
; //_A569F39CC_342:;				
_A569F39CC_342:
; //	io[0x1F]	= 0x0001;		
	AR	= 0x01
	io[0x1F]	= AR
; //_A569F39CC_343:;				
_A569F39CC_343:
; //	asm	set io[INTENA].b5		
	set io[INTENA].b5
; //L0DC315BC_111:;					
L0DC315BC_111:
; //_A569F39CC_344:;				
_A569F39CC_344:
; //	return;					
	rets
; //_touch_init378E5983_end:;			
_touch_init378E5983_end:
; //_A569F39CC_345:;				
_A569F39CC_345:
; //}
; //
; //interrupt void _Touch_entry886E03ED()		
_Touch_entry886E03ED:
; //{						
	push ax
	push bx
	push cx
	push dx
	push r0
	push r1
	push r2
	push r3
	push i1
	push p1
	push mx
	push mr0
	push mr1
	push mr2
	ar = p1.hh
	push ar
; //_A569F39CC_346:;				
_A569F39CC_346:
; //	
; //_A569F39CC_347:;				
_A569F39CC_347:
; //	asm I1 = L0DC315BC_103+0;		
	I1 = L0DC315BC_103+0//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sSI	= (int)&L0DC315BC_103;		
	I1	= L0DC315BC_103
; //	PUSH(sAX);				
	push	AX
; //	sAX	= 0x0001;			
	AX	= 0x01
; //	sCX	= *(__int16*)sSI;		
	CX	= rm[I1]
; //	sCX	= sCX + sAX;			
	AR	= AX
	CX	+= AR
; //	*(__int16*)sSI	= sCX;			
	rm[I1]	= CX
; //	sAX	= POP();			
	pop	AX
; //_A569F39CC_348:;				
_A569F39CC_348:
; //	asm I1 = L0DC315BC_103+0;		
	I1 = L0DC315BC_103+0//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sCX	= 0x0064;			
	CX	= 0x64
; //	sfx_CMP_AX_CX_JG();			
	pch	= sfx_CMP_AX_CX_JG
	lcall	sfx_CMP_AX_CX_JG
; //	if(__je__)	goto L0DC315BC_114;	
	if ZR	jmp L0DC315BC_114
; //	goto	L0DC315BC_113;			
	pch =	L0DC315BC_113
	ljmp	L0DC315BC_113
; //L0DC315BC_114:;					
L0DC315BC_114:
; //	
; //_A569F39CC_349:;				
_A569F39CC_349:
; //_A569F39CC_350:;				
_A569F39CC_350:
; //	_touch_IRS1910CF89();			
	pch	= _touch_IRS1910CF89
	lcall	_touch_IRS1910CF89
; //_A569F39CC_351:;				
_A569F39CC_351:
; //	sAX	= 0x0000;			
	AX	= 0x00
; //	sSI	= (int)&L0DC315BC_103;		
	I1	= L0DC315BC_103
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //L0DC315BC_113:;					
L0DC315BC_113:
; //_A569F39CC_352:;				
_A569F39CC_352:
; //L0DC315BC_112:;					
L0DC315BC_112:
; //_A569F39CC_353:;				
_A569F39CC_353:
; //	return;					
	pop ar
	p1.hh = ar
	pop mr2
	pop mr1
	pop mr0
	pop mx
	pop p1
	pop i1
	pop r3
	pop r2
	pop r1
	pop r0
	pop dx
	pop cx
	pop bx
	pop ax
	reti
; //_Touch_entry886E03ED_end:;			
_Touch_entry886E03ED_end:
; //_A569F39CC_354:;				
_A569F39CC_354:
; //}
; //
; //
; //
; //
.code
; //
; //
; //naked void ginit_code_touch_AB036625_s(void)	
ginit_code_touch_AB036625_s:
; //{
; //	asm P1 = #ginit_seg_touch_AB036625_s+0;	
	P1 = #ginit_seg_touch_AB036625_s+0//
; //	asm I1 = L0DC315BC_102;			
	I1 = L0DC315BC_102//
; //	sCX = 1;				
	CX	= 0x01
; //	sfx_GLOBALINIT();			
	pch	= sfx_GLOBALINIT
	lcall	sfx_GLOBALINIT
; //
; //	asm P1 = #ginit_seg_touch_AB036625_s+1;	
	P1 = #ginit_seg_touch_AB036625_s+1//
; //	asm I1 = L0DC315BC_103;			
	I1 = L0DC315BC_103//
; //	sCX = 1;				
	CX	= 0x01
; //	sfx_GLOBALINIT();			
	pch	= sfx_GLOBALINIT
	lcall	sfx_GLOBALINIT
; //
; //	return;					
	rets
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
.code
; //
; //
; //
; //
; //__int16 ginit_seg_touch_AB036625_s[2] = {	
ginit_seg_touch_AB036625_s:
; //						
DW 
; //	0x0000,					
DW 0x0000,
; //						
DW 
; //	0x0000					
DW 0x0000,
; //};
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
; //
; //
