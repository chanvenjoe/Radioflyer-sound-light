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
; //_A19163650_0:;					
_A19163650_0:
; //	
; //_A19163650_1:;					
_A19163650_1:
; //_A19163650_2:;					
_A19163650_2:
; //	F_ChangePWMVectTabletobank2();		
	pch	= F_ChangePWMVectTabletobank2
	lcall	F_ChangePWMVectTabletobank2
; //_A19163650_3:;					
_A19163650_3:
; //	sAX	= 0x0000;			
	AX	= 0x00
; //	asm I1 = _sub_vol980B1B83+0;		
	I1 = _sub_vol980B1B83+0//
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_A19163650_4:;					
_A19163650_4:
; //_A19163650_5:;					
_A19163650_5:
; //	_INITIAL0C18377D();			
	pch	= _INITIAL0C18377D
	lcall	_INITIAL0C18377D
; //_A19163650_6:;					
_A19163650_6:
; //_A19163650_7:;					
_A19163650_7:
; //	_ClearTickCount5DDE4003();		
	pch	= _ClearTickCount5DDE4003
	lcall	_ClearTickCount5DDE4003
; //_A19163650_8:;					
_A19163650_8:
; //_A19163650_9:;					
_A19163650_9:
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
; //_A19163650_10:;					
_A19163650_10:
; //_A19163650_11:;					
_A19163650_11:
; //	asm	io[ClrWDT] = AR			
	io[ClrWDT] = AR
; //	
; //_A19163650_12:;					
_A19163650_12:
; //_A19163650_13:;					
_A19163650_13:
; //	_RampUpFF7996DA();			
	pch	= _RampUpFF7996DA
	lcall	_RampUpFF7996DA
; //_A19163650_14:;					
_A19163650_14:
; //_A19163650_15:;					
_A19163650_15:
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
; //_A19163650_16:;					
_A19163650_16:
; //_A19163650_17:;					
_A19163650_17:
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
; //_A19163650_18:;					
_A19163650_18:
; //_A19163650_19:;					
_A19163650_19:
; //	goto LB6D5333B_4;			
	jmp	LB6D5333B_4
; //LB6D5333B_3:;					
LB6D5333B_3:
; //LB6D5333B_2:;					
LB6D5333B_2:
; //_A19163650_20:;					
_A19163650_20:
; //	return;					
	rets
; //_main_end:;					
_main_end:
; //_A19163650_21:;					
_A19163650_21:
; //}
; //
; //rjmp void _InitSound5CCD501D()			
_InitSound5CCD501D:
; //{
; //_A19163650_22:;					
_A19163650_22:
; //	
; //_A19163650_23:;					
_A19163650_23:
; //	io[0x3E]	= 0x3FFF;		
	AR	= 0x3FFF
	io[0x3E]	= AR
; //_A19163650_24:;					
_A19163650_24:
; //	io[0x16]	= 0x0000;		
	AR	= 0x00
	io[0x16]	= AR
; //_A19163650_25:;					
_A19163650_25:
; //	io[0x16]	= 0x0000;		
	AR	= 0x00
	io[0x16]	= AR
; //_A19163650_26:;					
_A19163650_26:
; //	io[0x16]	= 0x0000;		
	AR	= 0x00
	io[0x16]	= AR
; //_A19163650_27:;					
_A19163650_27:
; //	io[0x16]	= 0x0000;		
	AR	= 0x00
	io[0x16]	= AR
; //_A19163650_28:;					
_A19163650_28:
; //	io[0x36]	= 0x0000;		
	AR	= 0x00
	io[0x36]	= AR
; //_A19163650_29:;					
_A19163650_29:
; //	io[0x36]	= 0x0000;		
	AR	= 0x00
	io[0x36]	= AR
; //_A19163650_30:;					
_A19163650_30:
; //	io[0x36]	= 0x0000;		
	AR	= 0x00
	io[0x36]	= AR
; //_A19163650_31:;					
_A19163650_31:
; //	io[0x36]	= 0x0000;		
	AR	= 0x00
	io[0x36]	= AR
; //_A19163650_32:;					
_A19163650_32:
; //	io[0x36]	= 0x0000;		
	AR	= 0x00
	io[0x36]	= AR
; //_A19163650_33:;					
_A19163650_33:
; //	io[0x36]	= 0x0000;		
	AR	= 0x00
	io[0x36]	= AR
; //_A19163650_34:;					
_A19163650_34:
; //	io[0x36]	= 0x0000;		
	AR	= 0x00
	io[0x36]	= AR
; //_A19163650_35:;					
_A19163650_35:
; //	io[0x36]	= 0x0000;		
	AR	= 0x00
	io[0x36]	= AR
; //_A19163650_36:;					
_A19163650_36:
; //	io[0x3C]	= 0x0000;		
	AR	= 0x00
	io[0x3C]	= AR
; //_A19163650_37:;					
_A19163650_37:
; //	sAX	= io[0x3C];			
	AR	= io[0x3C]
	AX	= AR
; //_A19163650_38:;					
_A19163650_38:
; //	asm	set io[MISC].b9			
	set io[MISC].b9
; //_A19163650_39:;					
_A19163650_39:
; //	asm	set io[MISC].b8			
	set io[MISC].b8
; //_A19163650_40:;					
_A19163650_40:
; //	asm	set io[MISC].b4			
	set io[MISC].b4
; //LB6D5333B_7:;					
LB6D5333B_7:
; //_A19163650_41:;					
_A19163650_41:
; //	return;					
	rets
; //_InitSound5CCD501D_end:;			
_InitSound5CCD501D_end:
; //_A19163650_42:;					
_A19163650_42:
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
; //_A19163650_43:;					
_A19163650_43:
; //	
; //_A19163650_44:;					
_A19163650_44:
; //_A19163650_45:;					
_A19163650_45:
; //	NEARCALL(_InitSound5CCD501D);		
	call	_InitSound5CCD501D
; //	
; //_A19163650_46:;					
_A19163650_46:
; //	asm AX = PCMY+0;			
	AX = PCMY+0//
; //_A19163650_47:;					
_A19163650_47:
; //	asm	AR = AX				
	AR = AX
; //_A19163650_48:;					
_A19163650_48:
; //	asm	I0 = AR				
	I0 = AR
; //	
; //_A19163650_49:;					
_A19163650_49:
; //	_i_1_2+0	= 0x0200;		
	I1	= rm[BP_SAVE]
	AX	= 0x0200
	rm[I1]	= AX
; //LB6D5333B_10:;					
LB6D5333B_10:
; //_A19163650_50:;					
_A19163650_50:
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
; //_A19163650_51:;					
_A19163650_51:
; //	sAX	= 0x0000;			
	AX	= 0x00
; //_A19163650_52:;					
_A19163650_52:
; //	asm	rm[I0++] = AX			
	rm[I0++] = AX
; //_A19163650_53:;					
_A19163650_53:
; //	goto LB6D5333B_10;			
	jmp	LB6D5333B_10
; //LB6D5333B_9:;					
LB6D5333B_9:
; //_A19163650_54:;					
_A19163650_54:
; //	asm AX = PCMY+0;			
	AX = PCMY+0//
; //	asm I1 = PCMYIN_PTR+0;			
	I1 = PCMYIN_PTR+0//
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_A19163650_55:;					
_A19163650_55:
; //	asm AX = PCMY+0;			
	AX = PCMY+0//
; //	asm I1 = PCMYOU_PTR+0;			
	I1 = PCMYOU_PTR+0//
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_A19163650_56:;					
_A19163650_56:
; //	asm I1 = _sub_vol980B1B83+0;		
	I1 = _sub_vol980B1B83+0//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	io[0x3C]	= sAX;			
	AR	= AX
	io[0x3C]	= AR
; //_A19163650_57:;					
_A19163650_57:
; //	io[0x3E]	= 0x1FFF;		
	AR	= 0x1FFF
	io[0x3E]	= AR
; //_A19163650_58:;					
_A19163650_58:
; //	io[0x3B]	= 0x0000;		
	AR	= 0x00
	io[0x3B]	= AR
; //LB6D5333B_8:;					
LB6D5333B_8:
; //_A19163650_59:;					
_A19163650_59:
; //	return;					
	AR	= 1
	BP	+= AR
	pop	AR
	rm[BP_SAVE]	= AR
	rets
; //_INITIAL0C18377D_end:;				
_INITIAL0C18377D_end:
; //_A19163650_60:;					
_A19163650_60:
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
