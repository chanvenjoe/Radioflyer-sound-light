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
; //_A569F39CC_355:;				
_A569F39CC_355:
; //	
; //_A569F39CC_356:;				
_A569F39CC_356:
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
; //LF2D2B0F3_117:;					
LF2D2B0F3_117:
; //_A569F39CC_357:;				
_A569F39CC_357:
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
; //	if(__jnz__)	goto LF2D2B0F3_118;	
	if NZ	jmp LF2D2B0F3_118
; //	goto	LF2D2B0F3_116;			
	jmp	LF2D2B0F3_116
; //LF2D2B0F3_118:;					
LF2D2B0F3_118:
; //_A569F39CC_358:;				
_A569F39CC_358:
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
; //_A569F39CC_359:;				
_A569F39CC_359:
; //	goto LF2D2B0F3_117;			
	jmp	LF2D2B0F3_117
; //LF2D2B0F3_116:;					
LF2D2B0F3_116:
; //_A569F39CC_360:;				
_A569F39CC_360:
; //	sSI	= (int)&_s_0_4;			
	AR	= 2
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	goto LF2D2B0F3_115;			
	jmp	LF2D2B0F3_115
; //LF2D2B0F3_115:;					
LF2D2B0F3_115:
; //_A569F39CC_361:;				
_A569F39CC_361:
; //	return;					
	AR	= 1
	BP	+= AR
	pop	AR
	rm[BP_SAVE]	= AR
	rets
; //_memset_sC3E11DB1_end:;				
_memset_sC3E11DB1_end:
; //_A569F39CC_362:;				
_A569F39CC_362:
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
; //_A569F39CC_363:;				
_A569F39CC_363:
; //	
; //_A569F39CC_364:;				
_A569F39CC_364:
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
; //LF2D2B0F3_121:;					
LF2D2B0F3_121:
; //_A569F39CC_365:;				
_A569F39CC_365:
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
; //	if(__jnz__)	goto LF2D2B0F3_122;	
	if NZ	jmp LF2D2B0F3_122
; //	goto	LF2D2B0F3_120;			
	jmp	LF2D2B0F3_120
; //LF2D2B0F3_122:;					
LF2D2B0F3_122:
; //_A569F39CC_366:;				
_A569F39CC_366:
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
; //_A569F39CC_367:;				
_A569F39CC_367:
; //	goto LF2D2B0F3_121;			
	jmp	LF2D2B0F3_121
; //LF2D2B0F3_120:;					
LF2D2B0F3_120:
; //_A569F39CC_368:;				
_A569F39CC_368:
; //	sSI	= (int)&_s_0_4;			
	AR	= 2
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	goto LF2D2B0F3_119;			
	jmp	LF2D2B0F3_119
; //LF2D2B0F3_119:;					
LF2D2B0F3_119:
; //_A569F39CC_369:;				
_A569F39CC_369:
; //	return;					
	AR	= 1
	BP	+= AR
	pop	AR
	rm[BP_SAVE]	= AR
	rets
; //_memset_rC7200006_end:;				
_memset_rC7200006_end:
; //_A569F39CC_370:;				
_A569F39CC_370:
; //}
; //
; //rcall rjmp void _memset5A9D755A(__int16 _s_0_4_0, __int16 _s_0_4_1, __int16 _c_0_8, __int16 _n_0_10)
_memset5A9D755A:
; //{						
	AR	= rm[BP_SAVE]
	push	AR
	AR	= BP
	rm[BP_SAVE]	= AR
; //_A569F39CC_371:;				
_A569F39CC_371:
; //	
; //_A569F39CC_372:;				
_A569F39CC_372:
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
; //	if(__jnz__)	goto LF2D2B0F3_125;	
	if NZ	jmp LF2D2B0F3_125
; //	goto	LF2D2B0F3_124;			
	jmp	LF2D2B0F3_124
; //LF2D2B0F3_125:;					
LF2D2B0F3_125:
; //_A569F39CC_373:;				
_A569F39CC_373:
; //_A569F39CC_374:;				
_A569F39CC_374:
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
; //	goto LF2D2B0F3_123;			
	jmp	LF2D2B0F3_123
; //LF2D2B0F3_124:;					
LF2D2B0F3_124:
; //_A569F39CC_375:;				
_A569F39CC_375:
; //_A569F39CC_376:;				
_A569F39CC_376:
; //_A569F39CC_377:;				
_A569F39CC_377:
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
; //	goto LF2D2B0F3_123;			
	jmp	LF2D2B0F3_123
; //LF2D2B0F3_123:;					
LF2D2B0F3_123:
; //_A569F39CC_378:;				
_A569F39CC_378:
; //	return;					
	pop	AR
	rm[BP_SAVE]	= AR
	rets
; //_memset5A9D755A_end:;				
_memset5A9D755A_end:
; //_A569F39CC_379:;				
_A569F39CC_379:
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
