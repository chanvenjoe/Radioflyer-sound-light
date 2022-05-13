; DEV1_0.C Code Start!!;
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
; //_AB07BB95F_0:;					
_AB07BB95F_0:
; //_AB07BB95F_1:;					
_AB07BB95F_1:
; //	asm	clr io[INTREQ].b0		
	clr io[INTREQ].b0
; //_AB07BB95F_2:;					
_AB07BB95F_2:
; //	asm	push AX				
	push AX
; //_AB07BB95F_3:;					
_AB07BB95F_3:
; //	asm	push I0				
	push I0
; //_AB07BB95F_4:;					
_AB07BB95F_4:
; //	asm	push I1				
	push I1
; //_AB07BB95F_5:;					
_AB07BB95F_5:
; //	asm	pop I1				
	pop I1
; //_AB07BB95F_6:;					
_AB07BB95F_6:
; //	asm	pop I0				
	pop I0
; //_AB07BB95F_7:;					
_AB07BB95F_7:
; //	asm	pop AX				
	pop AX
; //	
; //L13827D7C_2:;					
L13827D7C_2:
; //_AB07BB95F_8:;					
_AB07BB95F_8:
; //	return;					
	reti
; //_PWM99B23D7D_end:;				
_PWM99B23D7D_end:
; //_AB07BB95F_9:;					
_AB07BB95F_9:
; //}
; //
; //void _WakeupProc94A410F9()			
_WakeupProc94A410F9:
; //{
; //_AB07BB95F_10:;					
_AB07BB95F_10:
; //_AB07BB95F_11:;					
_AB07BB95F_11:
; //	asm	io[ClrWDT] = AR			
	io[ClrWDT] = AR
; //	
; //L13827D7C_3:;					
L13827D7C_3:
; //_AB07BB95F_12:;					
_AB07BB95F_12:
; //	return;					
	rets
; //_WakeupProc94A410F9_end:;			
_WakeupProc94A410F9_end:
; //_AB07BB95F_13:;					
_AB07BB95F_13:
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
; //_AB07BB95F_14:;					
_AB07BB95F_14:
; //_AB07BB95F_15:;					
_AB07BB95F_15:
; //	_i_1_2+0	= 0x00;			
	I1	= rm[BP_SAVE]
	AR	= 0x00
	rm[I1]	= AR
; //_AB07BB95F_16:;					
_AB07BB95F_16:
; //_AB07BB95F_17:;					
_AB07BB95F_17:
; //	_InitialDA4A7CC4();			
	pch	= _InitialDA4A7CC4
	lcall	_InitialDA4A7CC4
; //L13827D7C_6:;					
L13827D7C_6:
; //_AB07BB95F_18:;					
_AB07BB95F_18:
; //_AB07BB95F_19:;					
_AB07BB95F_19:
; //	asm	io[ClrWDT] = AR			
	io[ClrWDT] = AR
; //	
; //_AB07BB95F_20:;					
_AB07BB95F_20:
; //_AB07BB95F_21:;					
_AB07BB95F_21:
; //	sAX	= 0x0064;			
	AX	= 0x64
; //	PUSH(sAX);				
	push	AX
; //	_delay6F9F34ED(STACK[sSP + 0]);		
	pch	= _delay6F9F34ED
	lcall	_delay6F9F34ED
; //	RESTORESP(1);				
	pop	AR
; //_AB07BB95F_22:;					
_AB07BB95F_22:
; //_AB07BB95F_23:;					
_AB07BB95F_23:
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
; //_AB07BB95F_24:;					
_AB07BB95F_24:
; //	sSI	= (int)&_i_1_2;			
	I1	= rm[BP_SAVE]
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sCX	= 0x000F;			
	CX	= 0x0F
; //	sfx_CMP_AX_CX_JL();			
	pch	= sfx_CMP_AX_CX_JL
	lcall	sfx_CMP_AX_CX_JL
; //	if(__je__)	goto L13827D7C_8;	
	if ZR	jmp L13827D7C_8
; //	goto	L13827D7C_7;			
	pch =	L13827D7C_7
	ljmp	L13827D7C_7
; //L13827D7C_8:;					
L13827D7C_8:
; //_AB07BB95F_25:;					
_AB07BB95F_25:
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
; //	goto L13827D7C_9;			
	pch =	L13827D7C_9
	ljmp	L13827D7C_9
; //L13827D7C_7:;					
L13827D7C_7:
; //_AB07BB95F_26:;					
_AB07BB95F_26:
; //	_i_1_2+0	= 0x00;			
	I1	= rm[BP_SAVE]
	AR	= 0x00
	rm[I1]	= AR
; //L13827D7C_9:;					
L13827D7C_9:
; //_AB07BB95F_27:;					
_AB07BB95F_27:
; //	goto L13827D7C_6;			
	pch =	L13827D7C_6
	ljmp	L13827D7C_6
; //L13827D7C_5:;					
L13827D7C_5:
; //L13827D7C_4:;					
L13827D7C_4:
; //_AB07BB95F_28:;					
_AB07BB95F_28:
; //	return;					
	AR	= 1
	BP	+= AR
	pop	AR
	rm[BP_SAVE]	= AR
	rets
; //_main_end:;					
_main_end:
; //_AB07BB95F_29:;					
_AB07BB95F_29:
; //}
; //
; //void _InitialDA4A7CC4()				
_InitialDA4A7CC4:
; //{
; //_AB07BB95F_30:;					
_AB07BB95F_30:
; //	
; //_AB07BB95F_31:;					
_AB07BB95F_31:
; //_AB07BB95F_32:;					
_AB07BB95F_32:
; //	get_FLTO();				
	pch	= get_FLTO
	lcall	get_FLTO
; //	
; //_AB07BB95F_33:;					
_AB07BB95F_33:
; //	sAX	= 0x003F;			
	AX	= 0x3F
; //_AB07BB95F_34:;					
_AB07BB95F_34:
; //	asm	AR = AX				
	AR = AX
; //_AB07BB95F_35:;					
_AB07BB95F_35:
; //	asm	FLTG = AR			
	FLTG = AR
; //	
; //_AB07BB95F_36:;					
_AB07BB95F_36:
; //	sAX	= 0x1FFF;			
	AX	= 0x1FFF
; //_AB07BB95F_37:;					
_AB07BB95F_37:
; //	asm	AR = AX				
	AR = AX
; //_AB07BB95F_38:;					
_AB07BB95F_38:
; //	asm	FLTP = AR			
	FLTP = AR
; //	
; //_AB07BB95F_39:;					
_AB07BB95F_39:
; //	sAX	= 0x0008;			
	AX	= 0x08
; //_AB07BB95F_40:;					
_AB07BB95F_40:
; //	asm	AR = AX				
	AR = AX
; //_AB07BB95F_41:;					
_AB07BB95F_41:
; //	asm	CBL = AR			
	CBL = AR
; //_AB07BB95F_42:;					
_AB07BB95F_42:
; //	asm	set io[INTENA].b0		
	set io[INTENA].b0
; //_AB07BB95F_43:;					
_AB07BB95F_43:
; //	asm	eni				
	eni
; //	
; //_AB07BB95F_44:;					
_AB07BB95F_44:
; //	sAX	= 0x000F;			
	AX	= 0x0F
; //_AB07BB95F_45:;					
_AB07BB95F_45:
; //	asm	AR = AX				
	AR = AX
; //_AB07BB95F_46:;					
_AB07BB95F_46:
; //	asm	io[IOC_PA] = AR			
	io[IOC_PA] = AR
; //L13827D7C_10:;					
L13827D7C_10:
; //_AB07BB95F_47:;					
_AB07BB95F_47:
; //	return;					
	rets
; //_InitialDA4A7CC4_end:;				
_InitialDA4A7CC4_end:
; //_AB07BB95F_48:;					
_AB07BB95F_48:
; //}
; //
; //
; //
; //
.code
; //
; //
; //naked void ginit_code_DEV1_0_A8897B89_s(void)	
ginit_code_DEV1_0_A8897B89_s:
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
