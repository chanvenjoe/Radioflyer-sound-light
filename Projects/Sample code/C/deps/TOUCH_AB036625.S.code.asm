; touch.c Code Start!!;
VarRM[0:4095]={
 L0DC315BC_102,_pE0B41DE7 
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
; //_A1690E9DD_315:;				
_A1690E9DD_315:
; //	
; //_A1690E9DD_316:;				
_A1690E9DD_316:
; //	sAX	= 0;				
	AX	= 0x00
; //	asm test io[0x02].b5;			
	test io[0x02].b5//
; //	if(__jz__) goto L0DC315BC_104;		
	if ZR	jmp L0DC315BC_104
; //	sAX	= 1;				
	AX	= 0x01
; //L0DC315BC_104:;					
L0DC315BC_104:
; //	sCX	= 0x0001;			
	CX	= 0x01
; //	sfx_CMP_AX_CX_JE();			
	AR	= AX
	SF = AR - CX
; //	if(__je__)	goto L0DC315BC_106;	
	if ZR	jmp L0DC315BC_106
; //	goto	L0DC315BC_105;			
	pch =	L0DC315BC_105
	ljmp	L0DC315BC_105
; //L0DC315BC_106:;					
L0DC315BC_106:
; //_A1690E9DD_317:;				
_A1690E9DD_317:
; //	asm	clr io[INTREQ].b5		
	clr io[INTREQ].b5
; //	
; //L0DC315BC_105:;					
L0DC315BC_105:
; //_A1690E9DD_318:;				
_A1690E9DD_318:
; //_A1690E9DD_319:;				
_A1690E9DD_319:
; //	asm I1 = L0DC315BC_102+0;		
	I1 = L0DC315BC_102+0//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sCX	= 0x0001;			
	CX	= 0x01
; //	sfx_CMP_AX_CX_JE();			
	AR	= AX
	SF = AR - CX
; //	if(__je__)	goto L0DC315BC_108;	
	if ZR	jmp L0DC315BC_108
; //	goto	L0DC315BC_107;			
	pch =	L0DC315BC_107
	ljmp	L0DC315BC_107
; //L0DC315BC_108:;					
L0DC315BC_108:
; //	
; //_A1690E9DD_320:;				
_A1690E9DD_320:
; //	io[0x08]	= 0x00FF;		
	AR	= 0x00FF
	io[0x08]	= AR
; //_A1690E9DD_321:;				
_A1690E9DD_321:
; //	sAX	= 0x0000;			
	AX	= 0x00
; //	sSI	= (int)&L0DC315BC_102;		
	I1	= L0DC315BC_102
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //	goto L0DC315BC_109;			
	pch =	L0DC315BC_109
	ljmp	L0DC315BC_109
; //L0DC315BC_107:;					
L0DC315BC_107:
; //	
; //_A1690E9DD_322:;				
_A1690E9DD_322:
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
; //_A1690E9DD_323:;				
_A1690E9DD_323:
; //	io[0x08]	= 0x0000;		
	AR	= 0x00
	io[0x08]	= AR
; //L0DC315BC_109:;					
L0DC315BC_109:
; //_A1690E9DD_324:;				
_A1690E9DD_324:
; //L0DC315BC_103:;					
L0DC315BC_103:
; //_A1690E9DD_325:;				
_A1690E9DD_325:
; //	return;					
	rets
; //_touch_IRS1910CF89_end:;			
_touch_IRS1910CF89_end:
; //_A1690E9DD_326:;				
_A1690E9DD_326:
; //}
; //
; //void _touch_init378E5983()			
_touch_init378E5983:
; //{
; //_A1690E9DD_327:;				
_A1690E9DD_327:
; //	
; //_A1690E9DD_328:;				
_A1690E9DD_328:
; //	io[0x19]	= 0x007C;		
	AR	= 0x7C
	io[0x19]	= AR
; //_A1690E9DD_329:;				
_A1690E9DD_329:
; //	asm clr io[0x19].b0;			
	clr io[0x19].b0//
; //_A1690E9DD_330:;				
_A1690E9DD_330:
; //	asm clr io[0x19].b1;			
	clr io[0x19].b1//
; //_A1690E9DD_331:;				
_A1690E9DD_331:
; //	asm set io[0x19].b2;			
	set io[0x19].b2//
; //_A1690E9DD_332:;				
_A1690E9DD_332:
; //	asm clr io[0x19].b3;			
	clr io[0x19].b3//
; //_A1690E9DD_333:;				
_A1690E9DD_333:
; //	asm set io[0x19].b4;			
	set io[0x19].b4//
; //_A1690E9DD_334:;				
_A1690E9DD_334:
; //	asm clr io[0x19].b5;			
	clr io[0x19].b5//
; //_A1690E9DD_335:;				
_A1690E9DD_335:
; //	asm set io[0x19].b6;			
	set io[0x19].b6//
; //_A1690E9DD_336:;				
_A1690E9DD_336:
; //	asm set io[0x19].b7;			
	set io[0x19].b7//
; //_A1690E9DD_337:;				
_A1690E9DD_337:
; //	io[0x1E]	= 0x000E;		
	AR	= 0x0E
	io[0x1E]	= AR
; //_A1690E9DD_338:;				
_A1690E9DD_338:
; //	io[0x1F]	= 0x000F;		
	AR	= 0x0F
	io[0x1F]	= AR
; //_A1690E9DD_339:;				
_A1690E9DD_339:
; //	asm	set io[INTENA].b5		
	set io[INTENA].b5
; //L0DC315BC_110:;					
L0DC315BC_110:
; //_A1690E9DD_340:;				
_A1690E9DD_340:
; //	return;					
	rets
; //_touch_init378E5983_end:;			
_touch_init378E5983_end:
; //_A1690E9DD_341:;				
_A1690E9DD_341:
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
; //_A1690E9DD_342:;				
_A1690E9DD_342:
; //	
; //_A1690E9DD_343:;				
_A1690E9DD_343:
; //_A1690E9DD_344:;				
_A1690E9DD_344:
; //	_touch_IRS1910CF89();			
	pch	= _touch_IRS1910CF89
	lcall	_touch_IRS1910CF89
; //_A1690E9DD_345:;				
_A1690E9DD_345:
; //_A1690E9DD_346:;				
_A1690E9DD_346:
; //	sAX	= 0x0002;			
	AX	= 0x02
; //	PUSH(sAX);				
	push	AX
; //	_playADPCMBACD5AFD(STACK[sSP + 0]);	
	pch	= _playADPCMBACD5AFD
	lcall	_playADPCMBACD5AFD
; //	RESTORESP(1);				
	pop	AR
; //L0DC315BC_111:;					
L0DC315BC_111:
; //_A1690E9DD_347:;				
_A1690E9DD_347:
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
; //_A1690E9DD_348:;				
_A1690E9DD_348:
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
; //__int16 ginit_seg_touch_AB036625_s[1] = {	
ginit_seg_touch_AB036625_s:
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
; //
