; DEV1_0.C Code Start!!;
VarRM[0:4095]={
  
};

; //
.code
; //
; //
; //interrupt void _PWM99B23D7D();
; //void _WakeupProc94A410F9();
; //void _main();
; //
; //
; //
; //
.code
; //interrupt void _PWM99B23D7D()			
_PWM99B23D7D:
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
; //_A7F83BA2A_0:;					
_A7F83BA2A_0:
; //_A7F83BA2A_1:;					
_A7F83BA2A_1:
; //	asm	clr io[INTREQ].b0		
	clr io[INTREQ].b0
; //_A7F83BA2A_2:;					
_A7F83BA2A_2:
; //	asm	push AX				
	push AX
; //_A7F83BA2A_3:;					
_A7F83BA2A_3:
; //	asm	push I0				
	push I0
; //_A7F83BA2A_4:;					
_A7F83BA2A_4:
; //	asm	push I1				
	push I1
; //_A7F83BA2A_5:;					
_A7F83BA2A_5:
; //	asm	pop I1				
	pop I1
; //_A7F83BA2A_6:;					
_A7F83BA2A_6:
; //	asm	pop I0				
	pop I0
; //_A7F83BA2A_7:;					
_A7F83BA2A_7:
; //	asm	pop AX				
	pop AX
; //	
; //L13827D7C_2:;					
L13827D7C_2:
; //_A7F83BA2A_8:;					
_A7F83BA2A_8:
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
; //_PWM99B23D7D_end:;				
_PWM99B23D7D_end:
; //_A7F83BA2A_9:;					
_A7F83BA2A_9:
; //}
; //
; //void _WakeupProc94A410F9()			
_WakeupProc94A410F9:
; //{
; //_A7F83BA2A_10:;					
_A7F83BA2A_10:
; //_A7F83BA2A_11:;					
_A7F83BA2A_11:
; //	asm	io[ClrWDT] = AR			
	io[ClrWDT] = AR
; //	
; //L13827D7C_3:;					
L13827D7C_3:
; //_A7F83BA2A_12:;					
_A7F83BA2A_12:
; //	return;					
	rets
; //_WakeupProc94A410F9_end:;			
_WakeupProc94A410F9_end:
; //_A7F83BA2A_13:;					
_A7F83BA2A_13:
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
; //_A7F83BA2A_14:;					
_A7F83BA2A_14:
; //	
; //_A7F83BA2A_15:;					
_A7F83BA2A_15:
; //	_i_1_2+0	= 0x00;			
	I1	= rm[BP_SAVE]
	AX	= 0x00
	rm[I1]	= AX
; //_A7F83BA2A_16:;					
_A7F83BA2A_16:
; //_A7F83BA2A_17:;					
_A7F83BA2A_17:
; //	_InitialDA4A7CC4();			
	pch	= _InitialDA4A7CC4
	lcall	_InitialDA4A7CC4
; //L13827D7C_6:;					
L13827D7C_6:
; //_A7F83BA2A_18:;					
_A7F83BA2A_18:
; //_A7F83BA2A_19:;					
_A7F83BA2A_19:
; //	asm	io[ClrWDT] = AR			
	io[ClrWDT] = AR
; //	
; //_A7F83BA2A_20:;					
_A7F83BA2A_20:
; //_A7F83BA2A_21:;					
_A7F83BA2A_21:
; //	sAX	= 0x0064;			
	AX	= 0x64
; //	PUSH(sAX);				
	push	AX
; //	_delay6F9F34ED(STACK[sSP + 0]);		
	pch	= _delay6F9F34ED
	lcall	_delay6F9F34ED
; //	RESTORESP(1);				
	pop	AR
; //_A7F83BA2A_22:;					
_A7F83BA2A_22:
; //_A7F83BA2A_23:;					
_A7F83BA2A_23:
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
; //_A7F83BA2A_24:;					
_A7F83BA2A_24:
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
; //_A7F83BA2A_25:;					
_A7F83BA2A_25:
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
; //_A7F83BA2A_26:;					
_A7F83BA2A_26:
; //	_i_1_2+0	= 0x00;			
	I1	= rm[BP_SAVE]
	AX	= 0x00
	rm[I1]	= AX
; //L13827D7C_9:;					
L13827D7C_9:
; //_A7F83BA2A_27:;					
_A7F83BA2A_27:
; //_A7F83BA2A_28:;					
_A7F83BA2A_28:
; //	goto L13827D7C_6;			
	pch =	L13827D7C_6
	ljmp	L13827D7C_6
; //L13827D7C_5:;					
L13827D7C_5:
; //L13827D7C_4:;					
L13827D7C_4:
; //_A7F83BA2A_29:;					
_A7F83BA2A_29:
; //	return;					
	AR	= 1
	BP	+= AR
	pop	AR
	rm[BP_SAVE]	= AR
	rets
; //_main_end:;					
_main_end:
; //_A7F83BA2A_30:;					
_A7F83BA2A_30:
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
