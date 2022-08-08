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
; //_A1690E9DD_349:;				
_A1690E9DD_349:
; //	
; //_A1690E9DD_350:;				
_A1690E9DD_350:
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
; //LF2D2B0F3_114:;					
LF2D2B0F3_114:
; //_A1690E9DD_351:;				
_A1690E9DD_351:
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
; //	if(__jnz__)	goto LF2D2B0F3_115;	
	if NZ	jmp LF2D2B0F3_115
; //	goto	LF2D2B0F3_113;			
	jmp	LF2D2B0F3_113
; //LF2D2B0F3_115:;					
LF2D2B0F3_115:
; //_A1690E9DD_352:;				
_A1690E9DD_352:
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
; //_A1690E9DD_353:;				
_A1690E9DD_353:
; //	goto LF2D2B0F3_114;			
	jmp	LF2D2B0F3_114
; //LF2D2B0F3_113:;					
LF2D2B0F3_113:
; //_A1690E9DD_354:;				
_A1690E9DD_354:
; //	sSI	= (int)&_s_0_4;			
	AR	= 2
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	goto LF2D2B0F3_112;			
	jmp	LF2D2B0F3_112
; //LF2D2B0F3_112:;					
LF2D2B0F3_112:
; //_A1690E9DD_355:;				
_A1690E9DD_355:
; //	return;					
	AR	= 1
	BP	+= AR
	pop	AR
	rm[BP_SAVE]	= AR
	rets
; //_memset_sC3E11DB1_end:;				
_memset_sC3E11DB1_end:
; //_A1690E9DD_356:;				
_A1690E9DD_356:
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
; //_A1690E9DD_357:;				
_A1690E9DD_357:
; //	
; //_A1690E9DD_358:;				
_A1690E9DD_358:
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
; //LF2D2B0F3_118:;					
LF2D2B0F3_118:
; //_A1690E9DD_359:;				
_A1690E9DD_359:
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
; //	if(__jnz__)	goto LF2D2B0F3_119;	
	if NZ	jmp LF2D2B0F3_119
; //	goto	LF2D2B0F3_117;			
	jmp	LF2D2B0F3_117
; //LF2D2B0F3_119:;					
LF2D2B0F3_119:
; //_A1690E9DD_360:;				
_A1690E9DD_360:
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
; //_A1690E9DD_361:;				
_A1690E9DD_361:
; //	goto LF2D2B0F3_118;			
	jmp	LF2D2B0F3_118
; //LF2D2B0F3_117:;					
LF2D2B0F3_117:
; //_A1690E9DD_362:;				
_A1690E9DD_362:
; //	sSI	= (int)&_s_0_4;			
	AR	= 2
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	goto LF2D2B0F3_116;			
	jmp	LF2D2B0F3_116
; //LF2D2B0F3_116:;					
LF2D2B0F3_116:
; //_A1690E9DD_363:;				
_A1690E9DD_363:
; //	return;					
	AR	= 1
	BP	+= AR
	pop	AR
	rm[BP_SAVE]	= AR
	rets
; //_memset_rC7200006_end:;				
_memset_rC7200006_end:
; //_A1690E9DD_364:;				
_A1690E9DD_364:
; //}
; //
; //rcall rjmp void _memset5A9D755A(__int16 _s_0_4_0, __int16 _s_0_4_1, __int16 _c_0_8, __int16 _n_0_10)
_memset5A9D755A:
; //{						
	AR	= rm[BP_SAVE]
	push	AR
	AR	= BP
	rm[BP_SAVE]	= AR
; //_A1690E9DD_365:;				
_A1690E9DD_365:
; //	
; //_A1690E9DD_366:;				
_A1690E9DD_366:
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
; //	if(__jnz__)	goto LF2D2B0F3_122;	
	if NZ	jmp LF2D2B0F3_122
; //	goto	LF2D2B0F3_121;			
	jmp	LF2D2B0F3_121
; //LF2D2B0F3_122:;					
LF2D2B0F3_122:
; //_A1690E9DD_367:;				
_A1690E9DD_367:
; //_A1690E9DD_368:;				
_A1690E9DD_368:
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
; //	goto LF2D2B0F3_120;			
	jmp	LF2D2B0F3_120
; //LF2D2B0F3_121:;					
LF2D2B0F3_121:
; //_A1690E9DD_369:;				
_A1690E9DD_369:
; //_A1690E9DD_370:;				
_A1690E9DD_370:
; //_A1690E9DD_371:;				
_A1690E9DD_371:
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
; //	goto LF2D2B0F3_120;			
	jmp	LF2D2B0F3_120
; //LF2D2B0F3_120:;					
LF2D2B0F3_120:
; //_A1690E9DD_372:;				
_A1690E9DD_372:
; //	return;					
	pop	AR
	rm[BP_SAVE]	= AR
	rets
; //_memset5A9D755A_end:;				
_memset5A9D755A_end:
; //_A1690E9DD_373:;				
_A1690E9DD_373:
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
