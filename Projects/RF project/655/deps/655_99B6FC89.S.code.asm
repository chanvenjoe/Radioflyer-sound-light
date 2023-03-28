; 655.C Code Start!!;
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
; //_ADDF15A34_0:;					
_ADDF15A34_0:
; //_ADDF15A34_1:;					
_ADDF15A34_1:
; //	asm	clr io[INTREQ].b0		
	clr io[INTREQ].b0
; //_ADDF15A34_2:;					
_ADDF15A34_2:
; //	asm	push AX				
	push AX
; //_ADDF15A34_3:;					
_ADDF15A34_3:
; //	asm	push I0				
	push I0
; //_ADDF15A34_4:;					
_ADDF15A34_4:
; //	asm	push I1				
	push I1
; //_ADDF15A34_5:;					
_ADDF15A34_5:
; //	asm	pop I1				
	pop I1
; //_ADDF15A34_6:;					
_ADDF15A34_6:
; //	asm	pop I0				
	pop I0
; //_ADDF15A34_7:;					
_ADDF15A34_7:
; //	asm	pop AX				
	pop AX
; //	
; //LD1B663E8_2:;					
LD1B663E8_2:
; //_ADDF15A34_8:;					
_ADDF15A34_8:
; //	return;					
	reti
; //_PWM99B23D7D_end:;				
_PWM99B23D7D_end:
; //_ADDF15A34_9:;					
_ADDF15A34_9:
; //}
; //
; //void _WakeupProc94A410F9()			
_WakeupProc94A410F9:
; //{
; //_ADDF15A34_10:;					
_ADDF15A34_10:
; //_ADDF15A34_11:;					
_ADDF15A34_11:
; //	asm	io[ClrWDT] = AR			
	io[ClrWDT] = AR
; //	
; //LD1B663E8_3:;					
LD1B663E8_3:
; //_ADDF15A34_12:;					
_ADDF15A34_12:
; //	return;					
	rets
; //_WakeupProc94A410F9_end:;			
_WakeupProc94A410F9_end:
; //_ADDF15A34_13:;					
_ADDF15A34_13:
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
; //_ADDF15A34_14:;					
_ADDF15A34_14:
; //_ADDF15A34_15:;					
_ADDF15A34_15:
; //	_i_1_2+0	= 0x00;			
	I1	= rm[BP_SAVE]
	AR	= 0x00
	rm[I1]	= AR
; //_ADDF15A34_16:;					
_ADDF15A34_16:
; //_ADDF15A34_17:;					
_ADDF15A34_17:
; //	_InitialDA4A7CC4();			
	pch	= _InitialDA4A7CC4
	lcall	_InitialDA4A7CC4
; //LD1B663E8_6:;					
LD1B663E8_6:
; //_ADDF15A34_18:;					
_ADDF15A34_18:
; //_ADDF15A34_19:;					
_ADDF15A34_19:
; //	asm	io[ClrWDT] = AR			
	io[ClrWDT] = AR
; //	
; //_ADDF15A34_20:;					
_ADDF15A34_20:
; //_ADDF15A34_21:;					
_ADDF15A34_21:
; //	sAX	= 0x0064;			
	AX	= 0x64
; //	PUSH(sAX);				
	push	AX
; //	_delay6F9F34ED(STACK[sSP + 0]);		
	pch	= _delay6F9F34ED
	lcall	_delay6F9F34ED
; //	RESTORESP(1);				
	pop	AR
; //_ADDF15A34_22:;					
_ADDF15A34_22:
; //_ADDF15A34_23:;					
_ADDF15A34_23:
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
; //_ADDF15A34_24:;					
_ADDF15A34_24:
; //	sSI	= (int)&_i_1_2;			
	I1	= rm[BP_SAVE]
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sCX	= 0x000F;			
	CX	= 0x0F
; //	sfx_CMP_AX_CX_JL();			
	pch	= sfx_CMP_AX_CX_JL
	lcall	sfx_CMP_AX_CX_JL
; //	if(__je__)	goto LD1B663E8_8;	
	if ZR	jmp LD1B663E8_8
; //	goto	LD1B663E8_7;			
	pch =	LD1B663E8_7
	ljmp	LD1B663E8_7
; //LD1B663E8_8:;					
LD1B663E8_8:
; //_ADDF15A34_25:;					
_ADDF15A34_25:
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
; //	goto LD1B663E8_9;			
	pch =	LD1B663E8_9
	ljmp	LD1B663E8_9
; //LD1B663E8_7:;					
LD1B663E8_7:
; //_ADDF15A34_26:;					
_ADDF15A34_26:
; //	_i_1_2+0	= 0x00;			
	I1	= rm[BP_SAVE]
	AR	= 0x00
	rm[I1]	= AR
; //LD1B663E8_9:;					
LD1B663E8_9:
; //_ADDF15A34_27:;					
_ADDF15A34_27:
; //	goto LD1B663E8_6;			
	pch =	LD1B663E8_6
	ljmp	LD1B663E8_6
; //LD1B663E8_5:;					
LD1B663E8_5:
; //LD1B663E8_4:;					
LD1B663E8_4:
; //_ADDF15A34_28:;					
_ADDF15A34_28:
; //	return;					
	AR	= 1
	BP	+= AR
	pop	AR
	rm[BP_SAVE]	= AR
	rets
; //_main_end:;					
_main_end:
; //_ADDF15A34_29:;					
_ADDF15A34_29:
; //}
; //
; //void _InitialDA4A7CC4()				
_InitialDA4A7CC4:
; //{
; //_ADDF15A34_30:;					
_ADDF15A34_30:
; //	
; //_ADDF15A34_31:;					
_ADDF15A34_31:
; //	sAX	= 0x003F;			
	AX	= 0x3F
; //_ADDF15A34_32:;					
_ADDF15A34_32:
; //	asm	AR = AX				
	AR = AX
; //_ADDF15A34_33:;					
_ADDF15A34_33:
; //	asm	FLTG = AR			
	FLTG = AR
; //	
; //_ADDF15A34_34:;					
_ADDF15A34_34:
; //	sAX	= 0x1FFF;			
	AX	= 0x1FFF
; //_ADDF15A34_35:;					
_ADDF15A34_35:
; //	asm	AR = AX				
	AR = AX
; //_ADDF15A34_36:;					
_ADDF15A34_36:
; //	asm	FLTP = AR			
	FLTP = AR
; //	
; //_ADDF15A34_37:;					
_ADDF15A34_37:
; //	sAX	= 0x0008;			
	AX	= 0x08
; //_ADDF15A34_38:;					
_ADDF15A34_38:
; //	asm	AR = AX				
	AR = AX
; //_ADDF15A34_39:;					
_ADDF15A34_39:
; //	asm	CBL = AR			
	CBL = AR
; //_ADDF15A34_40:;					
_ADDF15A34_40:
; //	asm	set io[INTENA].b0		
	set io[INTENA].b0
; //_ADDF15A34_41:;					
_ADDF15A34_41:
; //	asm	eni				
	eni
; //	
; //_ADDF15A34_42:;					
_ADDF15A34_42:
; //	sAX	= 0x000F;			
	AX	= 0x0F
; //_ADDF15A34_43:;					
_ADDF15A34_43:
; //	asm	AR = AX				
	AR = AX
; //_ADDF15A34_44:;					
_ADDF15A34_44:
; //	asm	io[IOC_PA] = AR			
	io[IOC_PA] = AR
; //_ADDF15A34_45:;					
_ADDF15A34_45:
; //_ADDF15A34_46:;					
_ADDF15A34_46:
; //	_ClearTickCount5DDE4003();		
	pch	= _ClearTickCount5DDE4003
	lcall	_ClearTickCount5DDE4003
; //LD1B663E8_10:;					
LD1B663E8_10:
; //_ADDF15A34_47:;					
_ADDF15A34_47:
; //	return;					
	rets
; //_InitialDA4A7CC4_end:;				
_InitialDA4A7CC4_end:
; //_ADDF15A34_48:;					
_ADDF15A34_48:
; //}
; //
; //
; //
; //
.code
; //
; //
; //naked void ginit_code_655_99B6FC89_s(void)	
ginit_code_655_99B6FC89_s:
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
