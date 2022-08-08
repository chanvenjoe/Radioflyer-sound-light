; touch.c Code Start!!;
VarRM[0:4095]={
 L0DC315BC_101,_pE0B41DE7 
};

; //
.code
; //
; //
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
; //void _touch_init378E5983()			
_touch_init378E5983:
; //{
; //_AA01D89BC_313:;				
_AA01D89BC_313:
; //	
; //_AA01D89BC_314:;				
_AA01D89BC_314:
; //	io[0x19]	= 0x007C;		
	AR	= 0x7C
	io[0x19]	= AR
; //_AA01D89BC_315:;				
_AA01D89BC_315:
; //	asm clr io[0x19].b0;			
	clr io[0x19].b0//
; //_AA01D89BC_316:;				
_AA01D89BC_316:
; //	asm clr io[0x19].b1;			
	clr io[0x19].b1//
; //_AA01D89BC_317:;				
_AA01D89BC_317:
; //	asm set io[0x19].b2;			
	set io[0x19].b2//
; //_AA01D89BC_318:;				
_AA01D89BC_318:
; //	asm clr io[0x19].b3;			
	clr io[0x19].b3//
; //_AA01D89BC_319:;				
_AA01D89BC_319:
; //	asm set io[0x19].b4;			
	set io[0x19].b4//
; //_AA01D89BC_320:;				
_AA01D89BC_320:
; //	asm clr io[0x19].b5;			
	clr io[0x19].b5//
; //_AA01D89BC_321:;				
_AA01D89BC_321:
; //	asm set io[0x19].b6;			
	set io[0x19].b6//
; //_AA01D89BC_322:;				
_AA01D89BC_322:
; //	asm set io[0x19].b7;			
	set io[0x19].b7//
; //_AA01D89BC_323:;				
_AA01D89BC_323:
; //	io[0x1E]	= 0x000E;		
	AR	= 0x0E
	io[0x1E]	= AR
; //_AA01D89BC_324:;				
_AA01D89BC_324:
; //	io[0x1F]	= 0x000F;		
	AR	= 0x0F
	io[0x1F]	= AR
; //_AA01D89BC_325:;				
_AA01D89BC_325:
; //	asm	set io[INTENA].b5		
	set io[INTENA].b5
; //L0DC315BC_102:;					
L0DC315BC_102:
; //_AA01D89BC_326:;				
_AA01D89BC_326:
; //	return;					
	rets
; //_touch_init378E5983_end:;			
_touch_init378E5983_end:
; //_AA01D89BC_327:;				
_AA01D89BC_327:
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
; //_AA01D89BC_328:;				
_AA01D89BC_328:
; //	
; //_AA01D89BC_329:;				
_AA01D89BC_329:
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
; //_AA01D89BC_330:;				
_AA01D89BC_330:
; //	asm	clr io[INTREQ].b5		
	clr io[INTREQ].b5
; //	
; //L0DC315BC_105:;					
L0DC315BC_105:
; //_AA01D89BC_331:;				
_AA01D89BC_331:
; //_AA01D89BC_332:;				
_AA01D89BC_332:
; //	asm I1 = L0DC315BC_101+0;		
	I1 = L0DC315BC_101+0//
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
; //_AA01D89BC_333:;				
_AA01D89BC_333:
; //	io[0x08]	= 0x000F;		
	AR	= 0x0F
	io[0x08]	= AR
; //_AA01D89BC_334:;				
_AA01D89BC_334:
; //	sAX	= 0x0000;			
	AX	= 0x00
; //	sSI	= (int)&L0DC315BC_101;		
	I1	= L0DC315BC_101
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //	goto L0DC315BC_109;			
	pch =	L0DC315BC_109
	ljmp	L0DC315BC_109
; //L0DC315BC_107:;					
L0DC315BC_107:
; //	
; //_AA01D89BC_335:;				
_AA01D89BC_335:
; //	asm I1 = L0DC315BC_101+0;		
	I1 = L0DC315BC_101+0//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sSI	= (int)&L0DC315BC_101;		
	I1	= L0DC315BC_101
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
; //_AA01D89BC_336:;				
_AA01D89BC_336:
; //	io[0x08]	= 0x0000;		
	AR	= 0x00
	io[0x08]	= AR
; //L0DC315BC_109:;					
L0DC315BC_109:
; //_AA01D89BC_337:;				
_AA01D89BC_337:
; //L0DC315BC_103:;					
L0DC315BC_103:
; //_AA01D89BC_338:;				
_AA01D89BC_338:
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
; //_AA01D89BC_339:;				
_AA01D89BC_339:
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
; //	asm I1 = L0DC315BC_101;			
	I1 = L0DC315BC_101//
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
