; C:\TRITAN\FDSP-IDE\tools\CC\lib\libc\memset.c Code Start!!;
VarRM[0:4095]={
  
};

; //
.code
; //
; //
; //rcall rjmp void _memset_sC3E11DB1(__int16 _s_0_4, __int16 _c_0_6, __int16 _n_0_8);
; //rcall rjmp void _memset_rC7200006(__int16 _s_0_4, __int16 _c_0_6, __int16 _n_0_8);
; //rcall rjmp void _memset5A9D755A(__int16 _s_0_4_0, __int16 _s_0_4_1, __int16 _c_0_8, __int16 _n_0_10);
; //
; //
; //
; //
.code
; //rcall rjmp void _memset_sC3E11DB1(__int16 _s_0_4, __int16 _c_0_6, __int16 _n_0_8)
_memset_sC3E11DB1:
; //{
; //	__int16 _ret_1_2;
; //						
	AR	= rm[BP_SAVE]
	push	AR
	AR	= BP
	rm[BP_SAVE]	= AR
	AR	 = -1
	BP	+= AR
; //_AECA8DE46_317:;				
_AECA8DE46_317:
; //	
; //_AECA8DE46_318:;				
_AECA8DE46_318:
; //	sSI	= (int)&_s_0_4;			
	AR	= 2
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sSI	= (int)&_ret_1_2;		
	I1	= rm[BP_SAVE]
; //	*(__int16*)sSI	= sAX;			
	rm[I1]	= AX
; //LF2D2B0F3_102:;					
LF2D2B0F3_102:
; //_AECA8DE46_319:;				
_AECA8DE46_319:
; //	sSI	= (int)&_n_0_8;			
	AR	= 4
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sSI	= (int)&_n_0_8;			
	AR	= 4
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
; //	if(__jnz__)	goto LF2D2B0F3_103;	
	if NZ	jmp LF2D2B0F3_103
; //	goto	LF2D2B0F3_101;			
	jmp	LF2D2B0F3_101
; //LF2D2B0F3_103:;					
LF2D2B0F3_103:
; //_AECA8DE46_320:;				
_AECA8DE46_320:
; //	sSI	= (int)&_ret_1_2;		
	I1	= rm[BP_SAVE]
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	PUSH(sAX);				
	push	AX
; //	sSI	= (int)&_c_0_6;			
	AR	= 3
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sSI	= POP();			
	pop	I1
; //	*(__int16*)sSI	= sAX;			
	rm[I1]	= AX
; //	sSI	= (int)&_ret_1_2;		
	I1	= rm[BP_SAVE]
; //	asm AR = 0x0001;			
	AR = 0x0001//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	asm rm[I1] = AX + AR;			
	rm[I1] = AX + AR//
; //_AECA8DE46_321:;				
_AECA8DE46_321:
; //	goto LF2D2B0F3_102;			
	jmp	LF2D2B0F3_102
; //LF2D2B0F3_101:;					
LF2D2B0F3_101:
; //_AECA8DE46_322:;				
_AECA8DE46_322:
; //	sSI	= (int)&_s_0_4;			
	AR	= 2
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	goto LF2D2B0F3_100;			
	jmp	LF2D2B0F3_100
; //LF2D2B0F3_100:;					
LF2D2B0F3_100:
; //_AECA8DE46_323:;				
_AECA8DE46_323:
; //	return;					
	AR	= 1
	BP	+= AR
	pop	AR
	rm[BP_SAVE]	= AR
	rets
; //_memset_sC3E11DB1_end:;				
_memset_sC3E11DB1_end:
; //_AECA8DE46_324:;				
_AECA8DE46_324:
; //}
; //
; //rcall rjmp void _memset_rC7200006(__int16 _s_0_4, __int16 _c_0_6, __int16 _n_0_8)
_memset_rC7200006:
; //{
; //	__int16 _ret_1_2;
; //						
	AR	= rm[BP_SAVE]
	push	AR
	AR	= BP
	rm[BP_SAVE]	= AR
	AR	 = -1
	BP	+= AR
; //_AECA8DE46_325:;				
_AECA8DE46_325:
; //	
; //_AECA8DE46_326:;				
_AECA8DE46_326:
; //	sSI	= (int)&_s_0_4;			
	AR	= 2
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sSI	= (int)&_ret_1_2;		
	I1	= rm[BP_SAVE]
; //	*(__int16*)sSI	= sAX;			
	rm[I1]	= AX
; //LF2D2B0F3_106:;					
LF2D2B0F3_106:
; //_AECA8DE46_327:;				
_AECA8DE46_327:
; //	sSI	= (int)&_n_0_8;			
	AR	= 4
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sSI	= (int)&_n_0_8;			
	AR	= 4
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
; //	if(__jnz__)	goto LF2D2B0F3_107;	
	if NZ	jmp LF2D2B0F3_107
; //	goto	LF2D2B0F3_105;			
	jmp	LF2D2B0F3_105
; //LF2D2B0F3_107:;					
LF2D2B0F3_107:
; //_AECA8DE46_328:;				
_AECA8DE46_328:
; //	sSI	= (int)&_ret_1_2;		
	I1	= rm[BP_SAVE]
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	PUSH(sAX);				
	push	AX
; //	sSI	= (int)&_c_0_6;			
	AR	= 3
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sSI	= POP();			
	pop	I1
; //	*(__int16*)sSI	= sAX;			
	rm[I1]	= AX
; //	sSI	= (int)&_ret_1_2;		
	I1	= rm[BP_SAVE]
; //	asm AR = 0x0001;			
	AR = 0x0001//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	asm rm[I1] = AX + AR;			
	rm[I1] = AX + AR//
; //_AECA8DE46_329:;				
_AECA8DE46_329:
; //	goto LF2D2B0F3_106;			
	jmp	LF2D2B0F3_106
; //LF2D2B0F3_105:;					
LF2D2B0F3_105:
; //_AECA8DE46_330:;				
_AECA8DE46_330:
; //	sSI	= (int)&_s_0_4;			
	AR	= 2
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	goto LF2D2B0F3_104;			
	jmp	LF2D2B0F3_104
; //LF2D2B0F3_104:;					
LF2D2B0F3_104:
; //_AECA8DE46_331:;				
_AECA8DE46_331:
; //	return;					
	AR	= 1
	BP	+= AR
	pop	AR
	rm[BP_SAVE]	= AR
	rets
; //_memset_rC7200006_end:;				
_memset_rC7200006_end:
; //_AECA8DE46_332:;				
_AECA8DE46_332:
; //}
; //
; //rcall rjmp void _memset5A9D755A(__int16 _s_0_4_0, __int16 _s_0_4_1, __int16 _c_0_8, __int16 _n_0_10)
_memset5A9D755A:
; //{						
	AR	= rm[BP_SAVE]
	push	AR
	AR	= BP
	rm[BP_SAVE]	= AR
; //_AECA8DE46_333:;				
_AECA8DE46_333:
; //	
; //_AECA8DE46_334:;				
_AECA8DE46_334:
; //	sAX	= (int)&_s_0_4_0;		
	AR	= 2
	AX	= rm[BP_SAVE]
	AX	+= AR
; //	sCX	= 0x0001;			
	CX	= 0x01
; //	sAX	= sAX + sCX;			
	AR	= CX
	AX	+= AR
; //	sSI	= sAX;				
	AR	= AX
	I1	= AR
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sfx_CHECKZERO();			
	AR	= AX
; //	if(__jnz__)	goto LF2D2B0F3_110;	
	if NZ	jmp LF2D2B0F3_110
; //	goto	LF2D2B0F3_109;			
	jmp	LF2D2B0F3_109
; //LF2D2B0F3_110:;					
LF2D2B0F3_110:
; //_AECA8DE46_335:;				
_AECA8DE46_335:
; //_AECA8DE46_336:;				
_AECA8DE46_336:
; //	sSI	= (int)&_n_0_10;		
	AR	= 5
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	PUSH(sAX);				
	push	AX
; //	sSI	= (int)&_c_0_8;			
	AR	= 4
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	PUSH(sAX);				
	push	AX
; //	sAX	= (int)&_s_0_4_0;		
	AR	= 2
	AX	= rm[BP_SAVE]
	AX	+= AR
; //	sSI	= sAX;				
	AR	= AX
	I1	= AR
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	PUSH(sAX);				
	push	AX
; //	_memset_rC7200006(STACK[sSP + 0], STACK[sSP + 1], STACK[sSP + 2]);
	call	_memset_rC7200006
; //	RESTORESP(3);				
	AR	= 3
	BP	+= AR
; //	sDX	= 0x0800;			
	DX	= 0x0800
; //	goto LF2D2B0F3_108;			
	jmp	LF2D2B0F3_108
; //LF2D2B0F3_109:;					
LF2D2B0F3_109:
; //_AECA8DE46_337:;				
_AECA8DE46_337:
; //_AECA8DE46_338:;				
_AECA8DE46_338:
; //_AECA8DE46_339:;				
_AECA8DE46_339:
; //	sSI	= (int)&_n_0_10;		
	AR	= 5
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	PUSH(sAX);				
	push	AX
; //	sSI	= (int)&_c_0_8;			
	AR	= 4
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	PUSH(sAX);				
	push	AX
; //	sAX	= (int)&_s_0_4_0;		
	AR	= 2
	AX	= rm[BP_SAVE]
	AX	+= AR
; //	sSI	= sAX;				
	AR	= AX
	I1	= AR
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	PUSH(sAX);				
	push	AX
; //	_memset_sC3E11DB1(STACK[sSP + 0], STACK[sSP + 1], STACK[sSP + 2]);
	call	_memset_sC3E11DB1
; //	RESTORESP(3);				
	AR	= 3
	BP	+= AR
; //	sDX	= 0;				
	DX	= 0x00
; //	goto LF2D2B0F3_108;			
	jmp	LF2D2B0F3_108
; //LF2D2B0F3_108:;					
LF2D2B0F3_108:
; //_AECA8DE46_340:;				
_AECA8DE46_340:
; //	return;					
	pop	AR
	rm[BP_SAVE]	= AR
	rets
; //_memset5A9D755A_end:;				
_memset5A9D755A_end:
; //_AECA8DE46_341:;				
_AECA8DE46_341:
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
