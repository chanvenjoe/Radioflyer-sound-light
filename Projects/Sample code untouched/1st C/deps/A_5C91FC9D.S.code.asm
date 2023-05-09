; A.C Code Start!!;
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
; //_A8048BFEF_0:;					
_A8048BFEF_0:
; //_A8048BFEF_1:;					
_A8048BFEF_1:
; //	asm	clr io[INTREQ].b0		
	clr io[INTREQ].b0
; //_A8048BFEF_2:;					
_A8048BFEF_2:
; //	asm	push AX				
	push AX
; //_A8048BFEF_3:;					
_A8048BFEF_3:
; //	asm	push I0				
	push I0
; //_A8048BFEF_4:;					
_A8048BFEF_4:
; //	asm	push I1				
	push I1
; //_A8048BFEF_5:;					
_A8048BFEF_5:
; //	asm	pop I1				
	pop I1
; //_A8048BFEF_6:;					
_A8048BFEF_6:
; //	asm	pop I0				
	pop I0
; //_A8048BFEF_7:;					
_A8048BFEF_7:
; //	asm	pop AX				
	pop AX
; //	
; //LC114AE18_2:;					
LC114AE18_2:
; //_A8048BFEF_8:;					
_A8048BFEF_8:
; //	return;					
	reti
; //_PWM99B23D7D_end:;				
_PWM99B23D7D_end:
; //_A8048BFEF_9:;					
_A8048BFEF_9:
; //}
; //
; //void _WakeupProc94A410F9()			
_WakeupProc94A410F9:
; //{
; //_A8048BFEF_10:;					
_A8048BFEF_10:
; //_A8048BFEF_11:;					
_A8048BFEF_11:
; //	asm	io[ClrWDT] = AR			
	io[ClrWDT] = AR
; //	
; //LC114AE18_3:;					
LC114AE18_3:
; //_A8048BFEF_12:;					
_A8048BFEF_12:
; //	return;					
	rets
; //_WakeupProc94A410F9_end:;			
_WakeupProc94A410F9_end:
; //_A8048BFEF_13:;					
_A8048BFEF_13:
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
; //_A8048BFEF_14:;					
_A8048BFEF_14:
; //_A8048BFEF_15:;					
_A8048BFEF_15:
; //	_i_1_2+0	= 0x00;			
	I1	= rm[BP_SAVE]
	AR	= 0x00
	rm[I1]	= AR
; //_A8048BFEF_16:;					
_A8048BFEF_16:
; //_A8048BFEF_17:;					
_A8048BFEF_17:
; //	_InitialDA4A7CC4();			
	pch	= _InitialDA4A7CC4
	lcall	_InitialDA4A7CC4
; //LC114AE18_6:;					
LC114AE18_6:
; //_A8048BFEF_18:;					
_A8048BFEF_18:
; //_A8048BFEF_19:;					
_A8048BFEF_19:
; //	asm	io[ClrWDT] = AR			
	io[ClrWDT] = AR
; //	
; //_A8048BFEF_20:;					
_A8048BFEF_20:
; //_A8048BFEF_21:;					
_A8048BFEF_21:
; //	sAX	= 0x0001;			
	AX	= 0x01
; //	PUSH(sAX);				
	push	AX
; //	_delay6F9F34ED(STACK[sSP + 0]);		
	pch	= _delay6F9F34ED
	lcall	_delay6F9F34ED
; //	RESTORESP(1);				
	pop	AR
; //_A8048BFEF_22:;					
_A8048BFEF_22:
; //_A8048BFEF_23:;					
_A8048BFEF_23:
; //	sSI	= (int)&_i_1_2;			
	I1	= rm[BP_SAVE]
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
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
; //_A8048BFEF_24:;					
_A8048BFEF_24:
; //	sSI	= (int)&_i_1_2;			
	I1	= rm[BP_SAVE]
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sCX	= 0x000F;			
	CX	= 0x0F
; //	sfx_CMP_AX_CX_JL();			
	pch	= sfx_CMP_AX_CX_JL
	lcall	sfx_CMP_AX_CX_JL
; //	if(__je__)	goto LC114AE18_8;	
	if ZR	jmp LC114AE18_8
; //	goto	LC114AE18_7;			
	pch =	LC114AE18_7
	ljmp	LC114AE18_7
; //LC114AE18_8:;					
LC114AE18_8:
; //_A8048BFEF_25:;					
_A8048BFEF_25:
; //	sSI	= (int)&_i_1_2;			
	I1	= rm[BP_SAVE]
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sSI	= (int)&_i_1_2;			
	I1	= rm[BP_SAVE]
; //	asm AR = 0x0001;			
	AR = 0x0001//
; //	sCX	= *(__int16*)sSI;		
	CX	= rm[I1]
; //	asm rm[I1] = CX + AR;			
	rm[I1] = CX + AR//
; //	goto LC114AE18_9;			
	pch =	LC114AE18_9
	ljmp	LC114AE18_9
; //LC114AE18_7:;					
LC114AE18_7:
; //_A8048BFEF_26:;					
_A8048BFEF_26:
; //	_i_1_2+0	= 0x00;			
	I1	= rm[BP_SAVE]
	AR	= 0x00
	rm[I1]	= AR
; //LC114AE18_9:;					
LC114AE18_9:
; //_A8048BFEF_27:;					
_A8048BFEF_27:
; //	goto LC114AE18_6;			
	pch =	LC114AE18_6
	ljmp	LC114AE18_6
; //LC114AE18_5:;					
LC114AE18_5:
; //LC114AE18_4:;					
LC114AE18_4:
; //_A8048BFEF_28:;					
_A8048BFEF_28:
; //	return;					
	AR	= 1
	BP	+= AR
	pop	AR
	rm[BP_SAVE]	= AR
	rets
; //_main_end:;					
_main_end:
; //_A8048BFEF_29:;					
_A8048BFEF_29:
; //}
; //
; //void _InitialDA4A7CC4()				
_InitialDA4A7CC4:
; //{
; //_A8048BFEF_30:;					
_A8048BFEF_30:
; //	
; //_A8048BFEF_31:;					
_A8048BFEF_31:
; //	sAX	= 0x003F;			
	AX	= 0x3F
; //_A8048BFEF_32:;					
_A8048BFEF_32:
; //	asm	AR = AX				
	AR = AX
; //_A8048BFEF_33:;					
_A8048BFEF_33:
; //	asm	FLTG = AR			
	FLTG = AR
; //	
; //_A8048BFEF_34:;					
_A8048BFEF_34:
; //	sAX	= 0x1FFF;			
	AX	= 0x1FFF
; //_A8048BFEF_35:;					
_A8048BFEF_35:
; //	asm	AR = AX				
	AR = AX
; //_A8048BFEF_36:;					
_A8048BFEF_36:
; //	asm	FLTP = AR			
	FLTP = AR
; //	
; //_A8048BFEF_37:;					
_A8048BFEF_37:
; //	sAX	= 0x0008;			
	AX	= 0x08
; //_A8048BFEF_38:;					
_A8048BFEF_38:
; //	asm	AR = AX				
	AR = AX
; //_A8048BFEF_39:;					
_A8048BFEF_39:
; //	asm	CBL = AR			
	CBL = AR
; //_A8048BFEF_40:;					
_A8048BFEF_40:
; //	asm	set io[INTENA].b0		
	set io[INTENA].b0
; //_A8048BFEF_41:;					
_A8048BFEF_41:
; //	asm	eni				
	eni
; //	
; //_A8048BFEF_42:;					
_A8048BFEF_42:
; //	sAX	= 0x000F;			
	AX	= 0x0F
; //_A8048BFEF_43:;					
_A8048BFEF_43:
; //	asm	AR = AX				
	AR = AX
; //_A8048BFEF_44:;					
_A8048BFEF_44:
; //	asm	io[IOC_PA] = AR			
	io[IOC_PA] = AR
; //_A8048BFEF_45:;					
_A8048BFEF_45:
; //_A8048BFEF_46:;					
_A8048BFEF_46:
; //	_ClearTickCount5DDE4003();		
	pch	= _ClearTickCount5DDE4003
	lcall	_ClearTickCount5DDE4003
; //LC114AE18_10:;					
LC114AE18_10:
; //_A8048BFEF_47:;					
_A8048BFEF_47:
; //	return;					
	rets
; //_InitialDA4A7CC4_end:;				
_InitialDA4A7CC4_end:
; //_A8048BFEF_48:;					
_A8048BFEF_48:
; //}
; //
; //
; //
; //
.code
; //
; //
; //naked void ginit_code_A_5C91FC9D_s(void)	
ginit_code_A_5C91FC9D_s:
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
