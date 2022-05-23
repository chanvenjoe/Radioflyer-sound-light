; sub3.c Code Start!!;
VarRM[0:4095]={
  
};

; //
.code
; //
; //
; //naked void MyData();
; //rjmp void _main();
; //rjmp void _InitSound5CCD501D();
; //rjmp void _INITIAL0C18377D();
; //
; //
; //
; //
.code
; //rjmp void _main()				
_main:
; //{
; //_A7F5C94F4_0:;					
_A7F5C94F4_0:
; //	
; //_A7F5C94F4_1:;					
_A7F5C94F4_1:
; //_A7F5C94F4_2:;					
_A7F5C94F4_2:
; //	F_ChangePWMVectTabletobank2();		
	pch	= F_ChangePWMVectTabletobank2
	lcall	F_ChangePWMVectTabletobank2
; //_A7F5C94F4_3:;					
_A7F5C94F4_3:
; //	sAX	= 0x0000;			
	AX	= 0x00
; //	asm I1 = _sub_vol980B1B83+0;		
	I1 = _sub_vol980B1B83+0//
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_A7F5C94F4_4:;					
_A7F5C94F4_4:
; //_A7F5C94F4_5:;					
_A7F5C94F4_5:
; //	_INITIAL0C18377D();			
	pch	= _INITIAL0C18377D
	lcall	_INITIAL0C18377D
; //_A7F5C94F4_6:;					
_A7F5C94F4_6:
; //_A7F5C94F4_7:;					
_A7F5C94F4_7:
; //	_ClearTickCount5DDE4003();		
	pch	= _ClearTickCount5DDE4003
	lcall	_ClearTickCount5DDE4003
; //_A7F5C94F4_8:;					
_A7F5C94F4_8:
; //_A7F5C94F4_9:;					
_A7F5C94F4_9:
; //	asm AX = #MyData+0;			
	AX = #MyData+0//
; //	asm DX = #MyData.n2			
	DX = #MyData.n2
; //	asm set DX.b11				
	set DX.b11
; //	PUSH(sDX);				
	push	DX
; //	PUSH(sAX);				
	push	AX
; //	_Sub3Play422CAD6D(STACK[sSP + 0], STACK[sSP + 1]);
	pch	= _Sub3Play422CAD6D
	lcall	_Sub3Play422CAD6D
; //	RESTORESP(2);				
	pop	AR
	pop	AR
; //LB6D5333B_4:;					
LB6D5333B_4:
; //_A7F5C94F4_10:;					
_A7F5C94F4_10:
; //_A7F5C94F4_11:;					
_A7F5C94F4_11:
; //	asm	io[ClrWDT] = AR			
	io[ClrWDT] = AR
; //	
; //_A7F5C94F4_12:;					
_A7F5C94F4_12:
; //_A7F5C94F4_13:;					
_A7F5C94F4_13:
; //	_RampUpFF7996DA();			
	pch	= _RampUpFF7996DA
	lcall	_RampUpFF7996DA
; //_A7F5C94F4_14:;					
_A7F5C94F4_14:
; //_A7F5C94F4_15:;					
_A7F5C94F4_15:
; //	Subb3_Dec();				
	pch	= Subb3_Dec
	lcall	Subb3_Dec
; //	sfx_CHECKZERO();			
	AR	= AX
; //	if(__jnz__)	goto LB6D5333B_6;	
	if NZ	jmp LB6D5333B_6
; //	goto	LB6D5333B_5;			
	jmp	LB6D5333B_5
; //LB6D5333B_6:;					
LB6D5333B_6:
; //_A7F5C94F4_16:;					
_A7F5C94F4_16:
; //_A7F5C94F4_17:;					
_A7F5C94F4_17:
; //	asm AX = #MyData+0;			
	AX = #MyData+0//
; //	asm DX = #MyData.n2			
	DX = #MyData.n2
; //	asm set DX.b11				
	set DX.b11
; //	PUSH(sDX);				
	push	DX
; //	PUSH(sAX);				
	push	AX
; //	_Sub3Play422CAD6D(STACK[sSP + 0], STACK[sSP + 1]);
	pch	= _Sub3Play422CAD6D
	lcall	_Sub3Play422CAD6D
; //	RESTORESP(2);				
	pop	AR
	pop	AR
; //LB6D5333B_5:;					
LB6D5333B_5:
; //_A7F5C94F4_18:;					
_A7F5C94F4_18:
; //_A7F5C94F4_19:;					
_A7F5C94F4_19:
; //	goto LB6D5333B_4;			
	jmp	LB6D5333B_4
; //LB6D5333B_3:;					
LB6D5333B_3:
; //LB6D5333B_2:;					
LB6D5333B_2:
; //_A7F5C94F4_20:;					
_A7F5C94F4_20:
; //	return;					
	rets
; //_main_end:;					
_main_end:
; //_A7F5C94F4_21:;					
_A7F5C94F4_21:
; //}
; //
; //rjmp void _InitSound5CCD501D()			
_InitSound5CCD501D:
; //{
; //_A7F5C94F4_22:;					
_A7F5C94F4_22:
; //	
; //_A7F5C94F4_23:;					
_A7F5C94F4_23:
; //	io[0x3E]	= 0x3FFF;		
	AR	= 0x3FFF
	io[0x3E]	= AR
; //_A7F5C94F4_24:;					
_A7F5C94F4_24:
; //	io[0x16]	= 0x0000;		
	AR	= 0x00
	io[0x16]	= AR
; //_A7F5C94F4_25:;					
_A7F5C94F4_25:
; //	io[0x16]	= 0x0000;		
	AR	= 0x00
	io[0x16]	= AR
; //_A7F5C94F4_26:;					
_A7F5C94F4_26:
; //	io[0x16]	= 0x0000;		
	AR	= 0x00
	io[0x16]	= AR
; //_A7F5C94F4_27:;					
_A7F5C94F4_27:
; //	io[0x16]	= 0x0000;		
	AR	= 0x00
	io[0x16]	= AR
; //_A7F5C94F4_28:;					
_A7F5C94F4_28:
; //	io[0x36]	= 0x0000;		
	AR	= 0x00
	io[0x36]	= AR
; //_A7F5C94F4_29:;					
_A7F5C94F4_29:
; //	io[0x36]	= 0x0000;		
	AR	= 0x00
	io[0x36]	= AR
; //_A7F5C94F4_30:;					
_A7F5C94F4_30:
; //	io[0x36]	= 0x0000;		
	AR	= 0x00
	io[0x36]	= AR
; //_A7F5C94F4_31:;					
_A7F5C94F4_31:
; //	io[0x36]	= 0x0000;		
	AR	= 0x00
	io[0x36]	= AR
; //_A7F5C94F4_32:;					
_A7F5C94F4_32:
; //	io[0x36]	= 0x0000;		
	AR	= 0x00
	io[0x36]	= AR
; //_A7F5C94F4_33:;					
_A7F5C94F4_33:
; //	io[0x36]	= 0x0000;		
	AR	= 0x00
	io[0x36]	= AR
; //_A7F5C94F4_34:;					
_A7F5C94F4_34:
; //	io[0x36]	= 0x0000;		
	AR	= 0x00
	io[0x36]	= AR
; //_A7F5C94F4_35:;					
_A7F5C94F4_35:
; //	io[0x36]	= 0x0000;		
	AR	= 0x00
	io[0x36]	= AR
; //_A7F5C94F4_36:;					
_A7F5C94F4_36:
; //	io[0x3C]	= 0x0000;		
	AR	= 0x00
	io[0x3C]	= AR
; //_A7F5C94F4_37:;					
_A7F5C94F4_37:
; //	sAX	= io[0x3C];			
	AR	= io[0x3C]
	AX	= AR
; //_A7F5C94F4_38:;					
_A7F5C94F4_38:
; //	asm	set io[MISC].b9			
	set io[MISC].b9
; //_A7F5C94F4_39:;					
_A7F5C94F4_39:
; //	asm	set io[MISC].b8			
	set io[MISC].b8
; //_A7F5C94F4_40:;					
_A7F5C94F4_40:
; //	asm	set io[MISC].b4			
	set io[MISC].b4
; //LB6D5333B_7:;					
LB6D5333B_7:
; //_A7F5C94F4_41:;					
_A7F5C94F4_41:
; //	return;					
	rets
; //_InitSound5CCD501D_end:;			
_InitSound5CCD501D_end:
; //_A7F5C94F4_42:;					
_A7F5C94F4_42:
; //}
; //
; //rjmp void _INITIAL0C18377D()			
_INITIAL0C18377D:
; //{
; //	__int16 _i_1_2;
; //						
	AR	= rm[BP_SAVE]
	push	AR
	AR	= BP
	rm[BP_SAVE]	= AR
	AR	 = -1
	BP	+= AR
; //_A7F5C94F4_43:;					
_A7F5C94F4_43:
; //	
; //_A7F5C94F4_44:;					
_A7F5C94F4_44:
; //_A7F5C94F4_45:;					
_A7F5C94F4_45:
; //	NEARCALL(_InitSound5CCD501D);		
	call	_InitSound5CCD501D
; //	
; //_A7F5C94F4_46:;					
_A7F5C94F4_46:
; //	asm AX = PCMY+0;			
	AX = PCMY+0//
; //_A7F5C94F4_47:;					
_A7F5C94F4_47:
; //	asm	AR = AX				
	AR = AX
; //_A7F5C94F4_48:;					
_A7F5C94F4_48:
; //	asm	I0 = AR				
	I0 = AR
; //	
; //_A7F5C94F4_49:;					
_A7F5C94F4_49:
; //	_i_1_2+0	= 0x0200;		
	I1	= rm[BP_SAVE]
	AX	= 0x0200
	rm[I1]	= AX
; //LB6D5333B_10:;					
LB6D5333B_10:
; //_A7F5C94F4_50:;					
_A7F5C94F4_50:
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
; //	asm rm[I1] = CX - AR;			
	rm[I1] = CX - AR//
; //	sfx_CHECKZERO();			
	AR	= AX
; //	if(__jnz__)	goto LB6D5333B_11;	
	if NZ	jmp LB6D5333B_11
; //	goto	LB6D5333B_9;			
	jmp	LB6D5333B_9
; //LB6D5333B_11:;					
LB6D5333B_11:
; //	
; //_A7F5C94F4_51:;					
_A7F5C94F4_51:
; //	sAX	= 0x0000;			
	AX	= 0x00
; //_A7F5C94F4_52:;					
_A7F5C94F4_52:
; //	asm	rm[I0++] = AX			
	rm[I0++] = AX
; //_A7F5C94F4_53:;					
_A7F5C94F4_53:
; //	goto LB6D5333B_10;			
	jmp	LB6D5333B_10
; //LB6D5333B_9:;					
LB6D5333B_9:
; //_A7F5C94F4_54:;					
_A7F5C94F4_54:
; //	asm AX = PCMY+0;			
	AX = PCMY+0//
; //	asm I1 = PCMYIN_PTR+0;			
	I1 = PCMYIN_PTR+0//
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_A7F5C94F4_55:;					
_A7F5C94F4_55:
; //	asm AX = PCMY+0;			
	AX = PCMY+0//
; //	asm I1 = PCMYOU_PTR+0;			
	I1 = PCMYOU_PTR+0//
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_A7F5C94F4_56:;					
_A7F5C94F4_56:
; //	asm I1 = _sub_vol980B1B83+0;		
	I1 = _sub_vol980B1B83+0//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	io[0x3C]	= sAX;			
	AR	= AX
	io[0x3C]	= AR
; //_A7F5C94F4_57:;					
_A7F5C94F4_57:
; //	io[0x3E]	= 0x1FFF;		
	AR	= 0x1FFF
	io[0x3E]	= AR
; //_A7F5C94F4_58:;					
_A7F5C94F4_58:
; //	io[0x3B]	= 0x0000;		
	AR	= 0x00
	io[0x3B]	= AR
; //LB6D5333B_8:;					
LB6D5333B_8:
; //_A7F5C94F4_59:;					
_A7F5C94F4_59:
; //	return;					
	AR	= 1
	BP	+= AR
	pop	AR
	rm[BP_SAVE]	= AR
	rets
; //_INITIAL0C18377D_end:;				
_INITIAL0C18377D_end:
; //_A7F5C94F4_60:;					
_A7F5C94F4_60:
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
; //naked void MyData()				
MyData:
; //{
; //	asm	DW "subband3\3104-Bounce-Count-Song@34K3bps.T3Z"
DW "subband3\3104-Bounce-Count-Song@34K3bps.T3Z"
; //}
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
