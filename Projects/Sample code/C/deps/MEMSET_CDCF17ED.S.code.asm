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
; //_AA01D89BC_340:;				
_AA01D89BC_340:
; //	
; //_AA01D89BC_341:;				
_AA01D89BC_341:
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
; //LF2D2B0F3_112:;					
LF2D2B0F3_112:
; //_AA01D89BC_342:;				
_AA01D89BC_342:
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
; //	if(__jnz__)	goto LF2D2B0F3_113;	
	if NZ	jmp LF2D2B0F3_113
; //	goto	LF2D2B0F3_111;			
	jmp	LF2D2B0F3_111
; //LF2D2B0F3_113:;					
LF2D2B0F3_113:
; //_AA01D89BC_343:;				
_AA01D89BC_343:
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
; //_AA01D89BC_344:;				
_AA01D89BC_344:
; //	goto LF2D2B0F3_112;			
	jmp	LF2D2B0F3_112
; //LF2D2B0F3_111:;					
LF2D2B0F3_111:
; //_AA01D89BC_345:;				
_AA01D89BC_345:
; //	sSI	= (int)&_s_0_4;			
	AR	= 2
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	goto LF2D2B0F3_110;			
	jmp	LF2D2B0F3_110
; //LF2D2B0F3_110:;					
LF2D2B0F3_110:
; //_AA01D89BC_346:;				
_AA01D89BC_346:
; //	return;					
	AR	= 1
	BP	+= AR
	pop	AR
	rm[BP_SAVE]	= AR
	rets
; //_memset_sC3E11DB1_end:;				
_memset_sC3E11DB1_end:
; //_AA01D89BC_347:;				
_AA01D89BC_347:
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
; //_AA01D89BC_348:;				
_AA01D89BC_348:
; //	
; //_AA01D89BC_349:;				
_AA01D89BC_349:
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
; //LF2D2B0F3_116:;					
LF2D2B0F3_116:
; //_AA01D89BC_350:;				
_AA01D89BC_350:
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
; //	if(__jnz__)	goto LF2D2B0F3_117;	
	if NZ	jmp LF2D2B0F3_117
; //	goto	LF2D2B0F3_115;			
	jmp	LF2D2B0F3_115
; //LF2D2B0F3_117:;					
LF2D2B0F3_117:
; //_AA01D89BC_351:;				
_AA01D89BC_351:
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
; //_AA01D89BC_352:;				
_AA01D89BC_352:
; //	goto LF2D2B0F3_116;			
	jmp	LF2D2B0F3_116
; //LF2D2B0F3_115:;					
LF2D2B0F3_115:
; //_AA01D89BC_353:;				
_AA01D89BC_353:
; //	sSI	= (int)&_s_0_4;			
	AR	= 2
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	goto LF2D2B0F3_114;			
	jmp	LF2D2B0F3_114
; //LF2D2B0F3_114:;					
LF2D2B0F3_114:
; //_AA01D89BC_354:;				
_AA01D89BC_354:
; //	return;					
	AR	= 1
	BP	+= AR
	pop	AR
	rm[BP_SAVE]	= AR
	rets
; //_memset_rC7200006_end:;				
_memset_rC7200006_end:
; //_AA01D89BC_355:;				
_AA01D89BC_355:
; //}
; //
; //rcall rjmp void _memset5A9D755A(__int16 _s_0_4_0, __int16 _s_0_4_1, __int16 _c_0_8, __int16 _n_0_10)
_memset5A9D755A:
; //{						
	AR	= rm[BP_SAVE]
	push	AR
	AR	= BP
	rm[BP_SAVE]	= AR
; //_AA01D89BC_356:;				
_AA01D89BC_356:
; //	
; //_AA01D89BC_357:;				
_AA01D89BC_357:
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
; //	if(__jnz__)	goto LF2D2B0F3_120;	
	if NZ	jmp LF2D2B0F3_120
; //	goto	LF2D2B0F3_119;			
	jmp	LF2D2B0F3_119
; //LF2D2B0F3_120:;					
LF2D2B0F3_120:
; //_AA01D89BC_358:;				
_AA01D89BC_358:
; //_AA01D89BC_359:;				
_AA01D89BC_359:
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
; //	goto LF2D2B0F3_118;			
	jmp	LF2D2B0F3_118
; //LF2D2B0F3_119:;					
LF2D2B0F3_119:
; //_AA01D89BC_360:;				
_AA01D89BC_360:
; //_AA01D89BC_361:;				
_AA01D89BC_361:
; //_AA01D89BC_362:;				
_AA01D89BC_362:
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
; //	goto LF2D2B0F3_118;			
	jmp	LF2D2B0F3_118
; //LF2D2B0F3_118:;					
LF2D2B0F3_118:
; //_AA01D89BC_363:;				
_AA01D89BC_363:
; //	return;					
	pop	AR
	rm[BP_SAVE]	= AR
	rets
; //_memset5A9D755A_end:;				
_memset5A9D755A_end:
; //_AA01D89BC_364:;				
_AA01D89BC_364:
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
