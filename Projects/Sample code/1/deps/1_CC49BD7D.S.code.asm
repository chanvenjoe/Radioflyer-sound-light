; 1.C Code Start!!;
VarRM[0:4095]={
  
};

; //
.code
; //
; //
; //interrupt naked void _PWM99B23D7D();
; //void _WakeupProc94A410F9();
; //void _main();
; //void _InitialDA4A7CC4();
; //
; //
; //
; //
.code
; //interrupt naked void _PWM99B23D7D()		
_PWM99B23D7D:
; //{
; //	
; //L376D88D5_2:;					
L376D88D5_2:
; //_A515BFAD5_0:;					
_A515BFAD5_0:
; //	return;					
	reti
; //_PWM99B23D7D_end:;				
_PWM99B23D7D_end:
; //_A515BFAD5_1:;					
_A515BFAD5_1:
; //}
; //
; //void _WakeupProc94A410F9()			
_WakeupProc94A410F9:
; //{
; //_A515BFAD5_2:;					
_A515BFAD5_2:
; //_A515BFAD5_3:;					
_A515BFAD5_3:
; //	asm	io[ClrWDT] = AR			
	io[ClrWDT] = AR
; //	
; //L376D88D5_3:;					
L376D88D5_3:
; //_A515BFAD5_4:;					
_A515BFAD5_4:
; //	return;					
	rets
; //_WakeupProc94A410F9_end:;			
_WakeupProc94A410F9_end:
; //_A515BFAD5_5:;					
_A515BFAD5_5:
; //}
; //
; //void _main()					
_main:
; //{
; //	__int16 _i_1_2;
; //						
	AR	= rm[BP_SAVE]
	push	AR
	AR	= BP
	rm[BP_SAVE]	= AR
	AR	 = -1
	BP	+= AR
; //_A515BFAD5_6:;					
_A515BFAD5_6:
; //_A515BFAD5_7:;					
_A515BFAD5_7:
; //	_i_1_2+0	= 0x00;			
	I1	= rm[BP_SAVE]
	AR	= 0x00
	rm[I1]	= AR
; //_A515BFAD5_8:;					
_A515BFAD5_8:
; //_A515BFAD5_9:;					
_A515BFAD5_9:
; //	_InitialDA4A7CC4();			
	pch	= _InitialDA4A7CC4
	lcall	_InitialDA4A7CC4
; //L376D88D5_6:;					
L376D88D5_6:
; //_A515BFAD5_10:;					
_A515BFAD5_10:
; //_A515BFAD5_11:;					
_A515BFAD5_11:
; //	asm	io[ClrWDT] = AR			
	io[ClrWDT] = AR
; //	
; //_A515BFAD5_12:;					
_A515BFAD5_12:
; //_A515BFAD5_13:;					
_A515BFAD5_13:
; //	sAX	= 0x0064;			
	AX	= 0x64
; //	PUSH(sAX);				
	push	AX
; //	_delay6F9F34ED(STACK[sSP + 0]);		
	pch	= _delay6F9F34ED
	lcall	_delay6F9F34ED
; //	RESTORESP(1);				
	pop	AR
; //_A515BFAD5_14:;					
_A515BFAD5_14:
; //_A515BFAD5_15:;					
_A515BFAD5_15:
; //	sAX	= 0x0002;			
	AX	= 0x02
; //	PUSH(sAX);				
	push	AX
; //	sAX	= 0x0007;			
	AX	= 0x07
; //	PUSH(sAX);				
	push	AX
; //	outp(STACK[sSP + 0], STACK[sSP + 1]);	
	pch	= outp
	lcall	outp
; //	RESTORESP(2);				
	pop	AR
	pop	AR
; //	goto L376D88D5_6;			
	pch =	L376D88D5_6
	ljmp	L376D88D5_6
; //L376D88D5_5:;					
L376D88D5_5:
; //L376D88D5_4:;					
L376D88D5_4:
; //_A515BFAD5_16:;					
_A515BFAD5_16:
; //	return;					
	AR	= 1
	BP	+= AR
	pop	AR
	rm[BP_SAVE]	= AR
	rets
; //_main_end:;					
_main_end:
; //_A515BFAD5_17:;					
_A515BFAD5_17:
; //}
; //
; //void _InitialDA4A7CC4()				
_InitialDA4A7CC4:
; //{
; //_A515BFAD5_18:;					
_A515BFAD5_18:
; //	
; //_A515BFAD5_19:;					
_A515BFAD5_19:
; //	sAX	= 0x003F;			
	AX	= 0x3F
; //_A515BFAD5_20:;					
_A515BFAD5_20:
; //	asm	AR = AX				
	AR = AX
; //_A515BFAD5_21:;					
_A515BFAD5_21:
; //	asm	FLTG = AR			
	FLTG = AR
; //	
; //_A515BFAD5_22:;					
_A515BFAD5_22:
; //	sAX	= 0x1FFF;			
	AX	= 0x1FFF
; //_A515BFAD5_23:;					
_A515BFAD5_23:
; //	asm	AR = AX				
	AR = AX
; //_A515BFAD5_24:;					
_A515BFAD5_24:
; //	asm	FLTP = AR			
	FLTP = AR
; //	
; //_A515BFAD5_25:;					
_A515BFAD5_25:
; //	sAX	= 0x0008;			
	AX	= 0x08
; //_A515BFAD5_26:;					
_A515BFAD5_26:
; //	asm	AR = AX				
	AR = AX
; //_A515BFAD5_27:;					
_A515BFAD5_27:
; //	asm	CBL = AR			
	CBL = AR
; //_A515BFAD5_28:;					
_A515BFAD5_28:
; //	asm	set io[INTENA].b0		
	set io[INTENA].b0
; //_A515BFAD5_29:;					
_A515BFAD5_29:
; //	asm	eni				
	eni
; //	
; //_A515BFAD5_30:;					
_A515BFAD5_30:
; //	sAX	= 0x000F;			
	AX	= 0x0F
; //_A515BFAD5_31:;					
_A515BFAD5_31:
; //	asm	AR = AX				
	AR = AX
; //_A515BFAD5_32:;					
_A515BFAD5_32:
; //	asm	io[IOC_PA] = AR			
	io[IOC_PA] = AR
; //_A515BFAD5_33:;					
_A515BFAD5_33:
; //_A515BFAD5_34:;					
_A515BFAD5_34:
; //	_ClearTickCount5DDE4003();		
	pch	= _ClearTickCount5DDE4003
	lcall	_ClearTickCount5DDE4003
; //L376D88D5_7:;					
L376D88D5_7:
; //_A515BFAD5_35:;					
_A515BFAD5_35:
; //	return;					
	rets
; //_InitialDA4A7CC4_end:;				
_InitialDA4A7CC4_end:
; //_A515BFAD5_36:;					
_A515BFAD5_36:
; //}
; //
; //
; //
; //
.code
; //
; //
; //naked void ginit_code_1_CC49BD7D_s(void)	
ginit_code_1_CC49BD7D_s:
; //{
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
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
