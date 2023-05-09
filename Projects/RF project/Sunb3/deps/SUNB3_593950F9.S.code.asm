; SUNB3.C Code Start!!;
VarRM[0:4095]={
 L2A70A9A2_2,_flagD698DD9D,_Key_press_flag14FFF825,_Play_flag71A588D5 
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
; //
; //
; //
.data
; //
; //
; //
.code
; //rjmp void _main()				
_main:
; //{
; //_A89F084ED_0:;					
_A89F084ED_0:
; //	
; //_A89F084ED_1:;					
_A89F084ED_1:
; //_A89F084ED_2:;					
_A89F084ED_2:
; //	F_ChangePWMVectTabletobank2();		
	pch	= F_ChangePWMVectTabletobank2
	lcall	F_ChangePWMVectTabletobank2
; //_A89F084ED_3:;					
_A89F084ED_3:
; //	sAX	= 0x0000;			
	AX	= 0x00
; //	asm I1 = _sub_vol980B1B83+0;		
	I1 = _sub_vol980B1B83+0//
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_A89F084ED_4:;					
_A89F084ED_4:
; //_A89F084ED_5:;					
_A89F084ED_5:
; //	_INITIAL0C18377D();			
	pch	= _INITIAL0C18377D
	lcall	_INITIAL0C18377D
; //_A89F084ED_6:;					
_A89F084ED_6:
; //_A89F084ED_7:;					
_A89F084ED_7:
; //	_InitialDA4A7CC4();			
	pch	= _InitialDA4A7CC4
	lcall	_InitialDA4A7CC4
; //_A89F084ED_8:;					
_A89F084ED_8:
; //_A89F084ED_9:;					
_A89F084ED_9:
; //	_ClearTickCount5DDE4003();		
	pch	= _ClearTickCount5DDE4003
	lcall	_ClearTickCount5DDE4003
; //_A89F084ED_10:;					
_A89F084ED_10:
; //_A89F084ED_11:;					
_A89F084ED_11:
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
; //L2A70A9A2_5:;					
L2A70A9A2_5:
; //_A89F084ED_12:;					
_A89F084ED_12:
; //_A89F084ED_13:;					
_A89F084ED_13:
; //	asm	io[ClrWDT] = AR			
	io[ClrWDT] = AR
; //	
; //_A89F084ED_14:;					
_A89F084ED_14:
; //	sAX	= 0;				
	AX	= 0x00
; //	asm test io[0x08].b2;			
	test io[0x08].b2//
; //	if(__jz__) goto L2A70A9A2_8;		
	if ZR	jmp L2A70A9A2_8
; //	sAX	= 1;				
	AX	= 0x01
; //L2A70A9A2_8:;					
L2A70A9A2_8:
; //	sCX	= 0x0001;			
	CX	= 0x01
; //	sfx_CMP_AX_CX_JE();			
	pch	= sfx_CMP_AX_CX_JE
	lcall	sfx_CMP_AX_CX_JE
; //	if(__je__)	goto L2A70A9A2_9;	
	if ZR	jmp L2A70A9A2_9
; //	goto	L2A70A9A2_6;			
	jmp	L2A70A9A2_6
; //L2A70A9A2_9:;					
L2A70A9A2_9:
; //	sAX	= 0x0001;			
	AX	= 0x01
; //	goto L2A70A9A2_7;			
	jmp	L2A70A9A2_7
; //L2A70A9A2_6:;					
L2A70A9A2_6:
; //	sAX	= 0x0000;			
	AX	= 0x00
; //L2A70A9A2_7:;					
L2A70A9A2_7:
; //	asm I1 = _Key_press_flag14FFF825+0;	
	I1 = _Key_press_flag14FFF825+0//
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_A89F084ED_15:;					
_A89F084ED_15:
; //	sAX	= 0;				
	AX	= 0x00
; //	asm test io[0x08].b2;			
	test io[0x08].b2//
; //	if(__jz__) goto L2A70A9A2_11;		
	if ZR	jmp L2A70A9A2_11
; //	sAX	= 1;				
	AX	= 0x01
; //L2A70A9A2_11:;					
L2A70A9A2_11:
; //	sCX	= 0x0001;			
	CX	= 0x01
; //	sfx_CMP_AX_CX_JNE();			
	pch	= sfx_CMP_AX_CX_JNE
	lcall	sfx_CMP_AX_CX_JNE
; //	if(__je__)	goto L2A70A9A2_12;	
	if ZR	jmp L2A70A9A2_12
; //	sAX	= 1;				
	AX	= 0x01
; //	goto	L2A70A9A2_13;			
	jmp	L2A70A9A2_13
; //L2A70A9A2_12:;					
L2A70A9A2_12:
; //	sAX	= 0;				
	AX	= 0x00
; //L2A70A9A2_13:;					
L2A70A9A2_13:
; //	sfx_CHECKZERO();			
	AR	= AX
; //	if(__jnz__)	goto L2A70A9A2_14;	
	if NZ	jmp L2A70A9A2_14
; //	goto	L2A70A9A2_10;			
	jmp	L2A70A9A2_10
; //L2A70A9A2_14:;					
L2A70A9A2_14:
; //	asm I1 = _Key_press_flag14FFF825+0;	
	I1 = _Key_press_flag14FFF825+0//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sCX	= 0x0001;			
	CX	= 0x01
; //	sfx_CMP_AX_CX_JNE();			
	pch	= sfx_CMP_AX_CX_JNE
	lcall	sfx_CMP_AX_CX_JNE
; //	if(__je__)	goto L2A70A9A2_15;	
	if ZR	jmp L2A70A9A2_15
; //	sAX	= 1;				
	AX	= 0x01
; //	goto	L2A70A9A2_16;			
	jmp	L2A70A9A2_16
; //L2A70A9A2_15:;					
L2A70A9A2_15:
; //	sAX	= 0;				
	AX	= 0x00
; //L2A70A9A2_16:;					
L2A70A9A2_16:
; //L2A70A9A2_10:;					
L2A70A9A2_10:
; //	sfx_CHECKZERO();			
	AR	= AX
; //	if(__jnz__)	goto L2A70A9A2_18;	
	if NZ	jmp L2A70A9A2_18
; //	goto	L2A70A9A2_17;			
	jmp	L2A70A9A2_17
; //L2A70A9A2_18:;					
L2A70A9A2_18:
; //	
; //_A89F084ED_16:;					
_A89F084ED_16:
; //	sAX	= 0x0000;			
	AX	= 0x00
; //	asm I1 = _Key_press_flag14FFF825+0;	
	I1 = _Key_press_flag14FFF825+0//
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_A89F084ED_17:;					
_A89F084ED_17:
; //	sAX	= 0x0001;			
	AX	= 0x01
; //	asm I1 = _Play_flag71A588D5+0;		
	I1 = _Play_flag71A588D5+0//
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_A89F084ED_18:;					
_A89F084ED_18:
; //	sAX	= 0;				
	AX	= 0x00
; //	asm test io[0x08].b2;			
	test io[0x08].b2//
; //	if(__jz__) goto L2A70A9A2_19;		
	if ZR	jmp L2A70A9A2_19
; //	sAX	= 1;				
	AX	= 0x01
; //L2A70A9A2_19:;					
L2A70A9A2_19:
; //	sCX	= 0x0001;			
	CX	= 0x01
; //	sfx_CMP_AX_CX_JE();			
	pch	= sfx_CMP_AX_CX_JE
	lcall	sfx_CMP_AX_CX_JE
; //	if(__je__)	goto L2A70A9A2_21;	
	if ZR	jmp L2A70A9A2_21
; //	goto	L2A70A9A2_20;			
	jmp	L2A70A9A2_20
; //L2A70A9A2_21:;					
L2A70A9A2_21:
; //	
; //_A89F084ED_19:;					
_A89F084ED_19:
; //	asm I1 = _flagD698DD9D+0;		
	I1 = _flagD698DD9D+0//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sCX	= 0x0000;			
	CX	= 0x00
; //	sfx_CMP_AX_CX_JE();			
	pch	= sfx_CMP_AX_CX_JE
	lcall	sfx_CMP_AX_CX_JE
; //	if(__je__)	goto L2A70A9A2_23;	
	if ZR	jmp L2A70A9A2_23
; //	goto	L2A70A9A2_22;			
	jmp	L2A70A9A2_22
; //L2A70A9A2_23:;					
L2A70A9A2_23:
; //	
; //_A89F084ED_20:;					
_A89F084ED_20:
; //_A89F084ED_21:;					
_A89F084ED_21:
; //	sAX	= 0x0003;			
	AX	= 0x03
; //	PUSH(sAX);				
	push	AX
; //	sAX	= 0x0005;			
	AX	= 0x05
; //	PUSH(sAX);				
	push	AX
; //	_WS_TRSF_color_setE1CC300C(STACK[sSP + 0], STACK[sSP + 1]);
	pch	= _WS_TRSF_color_setE1CC300C
	lcall	_WS_TRSF_color_setE1CC300C
; //	RESTORESP(2);				
	pop	AR
	pop	AR
; //_A89F084ED_22:;					
_A89F084ED_22:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //	goto L2A70A9A2_24;			
	jmp	L2A70A9A2_24
; //L2A70A9A2_22:;					
L2A70A9A2_22:
; //_A89F084ED_23:;					
_A89F084ED_23:
; //	asm I1 = _flagD698DD9D+0;		
	I1 = _flagD698DD9D+0//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sCX	= 0x0001;			
	CX	= 0x01
; //	sfx_CMP_AX_CX_JE();			
	pch	= sfx_CMP_AX_CX_JE
	lcall	sfx_CMP_AX_CX_JE
; //	if(__je__)	goto L2A70A9A2_26;	
	if ZR	jmp L2A70A9A2_26
; //	goto	L2A70A9A2_25;			
	jmp	L2A70A9A2_25
; //L2A70A9A2_26:;					
L2A70A9A2_26:
; //	
; //_A89F084ED_24:;					
_A89F084ED_24:
; //_A89F084ED_25:;					
_A89F084ED_25:
; //	sAX	= 0x0003;			
	AX	= 0x03
; //	PUSH(sAX);				
	push	AX
; //	sAX	= 0x0003;			
	AX	= 0x03
; //	PUSH(sAX);				
	push	AX
; //	_WS_TRSF_color_setE1CC300C(STACK[sSP + 0], STACK[sSP + 1]);
	pch	= _WS_TRSF_color_setE1CC300C
	lcall	_WS_TRSF_color_setE1CC300C
; //	RESTORESP(2);				
	pop	AR
	pop	AR
; //_A89F084ED_26:;					
_A89F084ED_26:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //L2A70A9A2_25:;					
L2A70A9A2_25:
; //_A89F084ED_27:;					
_A89F084ED_27:
; //L2A70A9A2_24:;					
L2A70A9A2_24:
; //_A89F084ED_28:;					
_A89F084ED_28:
; //_A89F084ED_29:;					
_A89F084ED_29:
; //	asm I1 = _flagD698DD9D+0;		
	I1 = _flagD698DD9D+0//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sCX	= 0x0002;			
	CX	= 0x02
; //	sfx_CMP_AX_CX_JE();			
	pch	= sfx_CMP_AX_CX_JE
	lcall	sfx_CMP_AX_CX_JE
; //	if(__je__)	goto L2A70A9A2_28;	
	if ZR	jmp L2A70A9A2_28
; //	goto	L2A70A9A2_27;			
	jmp	L2A70A9A2_27
; //L2A70A9A2_28:;					
L2A70A9A2_28:
; //	
; //_A89F084ED_30:;					
_A89F084ED_30:
; //_A89F084ED_31:;					
_A89F084ED_31:
; //	sAX	= 0x0003;			
	AX	= 0x03
; //	PUSH(sAX);				
	push	AX
; //	sAX	= 0x0004;			
	AX	= 0x04
; //	PUSH(sAX);				
	push	AX
; //	_WS_TRSF_color_setE1CC300C(STACK[sSP + 0], STACK[sSP + 1]);
	pch	= _WS_TRSF_color_setE1CC300C
	lcall	_WS_TRSF_color_setE1CC300C
; //	RESTORESP(2);				
	pop	AR
	pop	AR
; //_A89F084ED_32:;					
_A89F084ED_32:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //L2A70A9A2_27:;					
L2A70A9A2_27:
; //_A89F084ED_33:;					
_A89F084ED_33:
; //_A89F084ED_34:;					
_A89F084ED_34:
; //	sAX	= 0x0002;			
	AX	= 0x02
; //	asm I1 = _flagD698DD9D+0;		
	I1 = _flagD698DD9D+0//
; //	asm CX = rm[I1];			
	CX = rm[I1]//
; //	sfx_CMP_AX_CX_JE();			
	pch	= sfx_CMP_AX_CX_JE
	lcall	sfx_CMP_AX_CX_JE
; //	if(__je__)	goto L2A70A9A2_31;	
	if ZR	jmp L2A70A9A2_31
; //	goto	L2A70A9A2_29;			
	jmp	L2A70A9A2_29
; //L2A70A9A2_31:;					
L2A70A9A2_31:
; //	sAX	= 0x0000;			
	AX	= 0x00
; //	goto L2A70A9A2_30;			
	jmp	L2A70A9A2_30
; //L2A70A9A2_29:;					
L2A70A9A2_29:
; //	sAX	= 0x0001;			
	AX	= 0x01
; //	asm I1 = _flagD698DD9D+0;		
	I1 = _flagD698DD9D+0//
; //	sCX	= *(__int16*)sSI;		
	CX	= rm[I1]
; //	sAX	= sAX + sCX;			
	AR	= CX
	AX	+= AR
; //L2A70A9A2_30:;					
L2A70A9A2_30:
; //	asm I1 = _flagD698DD9D+0;		
	I1 = _flagD698DD9D+0//
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //L2A70A9A2_20:;					
L2A70A9A2_20:
; //_A89F084ED_35:;					
_A89F084ED_35:
; //L2A70A9A2_17:;					
L2A70A9A2_17:
; //_A89F084ED_36:;					
_A89F084ED_36:
; //_A89F084ED_37:;					
_A89F084ED_37:
; //	asm I1 = _flagD698DD9D+0;		
	I1 = _flagD698DD9D+0//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sCX	= 0x0000;			
	CX	= 0x00
; //	sfx_CMP_AX_CX_JE();			
	pch	= sfx_CMP_AX_CX_JE
	lcall	sfx_CMP_AX_CX_JE
; //	if(__je__)	goto L2A70A9A2_33;	
	if ZR	jmp L2A70A9A2_33
; //	goto	L2A70A9A2_32;			
	jmp	L2A70A9A2_32
; //L2A70A9A2_33:;					
L2A70A9A2_33:
; //	
; //_A89F084ED_38:;					
_A89F084ED_38:
; //_A89F084ED_39:;					
_A89F084ED_39:
; //	_RampUpFF7996DA();			
	pch	= _RampUpFF7996DA
	lcall	_RampUpFF7996DA
; //_A89F084ED_40:;					
_A89F084ED_40:
; //_A89F084ED_41:;					
_A89F084ED_41:
; //	_WaitPCM_Empty_size53398B9D();		
	pch	= _WaitPCM_Empty_size53398B9D
	lcall	_WaitPCM_Empty_size53398B9D
; //	sCX	= 0x0000;			
	CX	= 0x00
; //	sfx_CMP_AX_CX_JL();			
	pch	= sfx_CMP_AX_CX_JL
	lcall	sfx_CMP_AX_CX_JL
; //	if(__je__)	goto L2A70A9A2_35;	
	if ZR	jmp L2A70A9A2_35
; //	goto	L2A70A9A2_34;			
	jmp	L2A70A9A2_34
; //L2A70A9A2_35:;					
L2A70A9A2_35:
; //	
; //_A89F084ED_42:;					
_A89F084ED_42:
; //	goto L2A70A9A2_5;			
	jmp	L2A70A9A2_5
; //L2A70A9A2_34:;					
L2A70A9A2_34:
; //_A89F084ED_43:;					
_A89F084ED_43:
; //_A89F084ED_44:;					
_A89F084ED_44:
; //_A89F084ED_45:;					
_A89F084ED_45:
; //	Subb3_Dec();				
	pch	= Subb3_Dec
	lcall	Subb3_Dec
; //	sfx_CHECKZERO();			
	AR	= AX
; //	if(__jnz__)	goto L2A70A9A2_37;	
	if NZ	jmp L2A70A9A2_37
; //	goto	L2A70A9A2_36;			
	jmp	L2A70A9A2_36
; //L2A70A9A2_37:;					
L2A70A9A2_37:
; //_A89F084ED_46:;					
_A89F084ED_46:
; //_A89F084ED_47:;					
_A89F084ED_47:
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
; //L2A70A9A2_36:;					
L2A70A9A2_36:
; //_A89F084ED_48:;					
_A89F084ED_48:
; //	goto L2A70A9A2_38;			
	jmp	L2A70A9A2_38
; //L2A70A9A2_32:;					
L2A70A9A2_32:
; //_A89F084ED_49:;					
_A89F084ED_49:
; //_A89F084ED_50:;					
_A89F084ED_50:
; //	_Sub3ZeroFillABFF23AA();		
	pch	= _Sub3ZeroFillABFF23AA
	lcall	_Sub3ZeroFillABFF23AA
; //L2A70A9A2_38:;					
L2A70A9A2_38:
; //_A89F084ED_51:;					
_A89F084ED_51:
; //	goto L2A70A9A2_5;			
	jmp	L2A70A9A2_5
; //L2A70A9A2_4:;					
L2A70A9A2_4:
; //L2A70A9A2_3:;					
L2A70A9A2_3:
; //_A89F084ED_52:;					
_A89F084ED_52:
; //	return;					
	rets
; //_main_end:;					
_main_end:
; //_A89F084ED_53:;					
_A89F084ED_53:
; //}
; //
; //rjmp void _InitSound5CCD501D()			
_InitSound5CCD501D:
; //{
; //_A89F084ED_54:;					
_A89F084ED_54:
; //	
; //_A89F084ED_55:;					
_A89F084ED_55:
; //	io[0x3E]	= 0x3FFF;		
	AR	= 0x3FFF
	io[0x3E]	= AR
; //_A89F084ED_56:;					
_A89F084ED_56:
; //	io[0x16]	= 0x0000;		
	AR	= 0x00
	io[0x16]	= AR
; //_A89F084ED_57:;					
_A89F084ED_57:
; //	io[0x16]	= 0x0000;		
	AR	= 0x00
	io[0x16]	= AR
; //_A89F084ED_58:;					
_A89F084ED_58:
; //	io[0x16]	= 0x0000;		
	AR	= 0x00
	io[0x16]	= AR
; //_A89F084ED_59:;					
_A89F084ED_59:
; //	io[0x16]	= 0x0000;		
	AR	= 0x00
	io[0x16]	= AR
; //_A89F084ED_60:;					
_A89F084ED_60:
; //	io[0x36]	= 0x0000;		
	AR	= 0x00
	io[0x36]	= AR
; //_A89F084ED_61:;					
_A89F084ED_61:
; //	io[0x36]	= 0x0000;		
	AR	= 0x00
	io[0x36]	= AR
; //_A89F084ED_62:;					
_A89F084ED_62:
; //	io[0x36]	= 0x0000;		
	AR	= 0x00
	io[0x36]	= AR
; //_A89F084ED_63:;					
_A89F084ED_63:
; //	io[0x36]	= 0x0000;		
	AR	= 0x00
	io[0x36]	= AR
; //_A89F084ED_64:;					
_A89F084ED_64:
; //	io[0x36]	= 0x0000;		
	AR	= 0x00
	io[0x36]	= AR
; //_A89F084ED_65:;					
_A89F084ED_65:
; //	io[0x36]	= 0x0000;		
	AR	= 0x00
	io[0x36]	= AR
; //_A89F084ED_66:;					
_A89F084ED_66:
; //	io[0x36]	= 0x0000;		
	AR	= 0x00
	io[0x36]	= AR
; //_A89F084ED_67:;					
_A89F084ED_67:
; //	io[0x36]	= 0x0000;		
	AR	= 0x00
	io[0x36]	= AR
; //_A89F084ED_68:;					
_A89F084ED_68:
; //	io[0x3C]	= 0x0000;		
	AR	= 0x00
	io[0x3C]	= AR
; //_A89F084ED_69:;					
_A89F084ED_69:
; //	sAX	= io[0x3C];			
	AR	= io[0x3C]
	AX	= AR
; //_A89F084ED_70:;					
_A89F084ED_70:
; //	asm	set io[MISC].b9			
	set io[MISC].b9
; //_A89F084ED_71:;					
_A89F084ED_71:
; //	asm	set io[MISC].b8			
	set io[MISC].b8
; //_A89F084ED_72:;					
_A89F084ED_72:
; //	asm	set io[MISC].b4			
	set io[MISC].b4
; //L2A70A9A2_39:;					
L2A70A9A2_39:
; //_A89F084ED_73:;					
_A89F084ED_73:
; //	return;					
	rets
; //_InitSound5CCD501D_end:;			
_InitSound5CCD501D_end:
; //_A89F084ED_74:;					
_A89F084ED_74:
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
; //_A89F084ED_75:;					
_A89F084ED_75:
; //_A89F084ED_76:;					
_A89F084ED_76:
; //_A89F084ED_77:;					
_A89F084ED_77:
; //	NEARCALL(_InitSound5CCD501D);		
	call	_InitSound5CCD501D
; //	
; //_A89F084ED_78:;					
_A89F084ED_78:
; //	asm AX = PCMY+0;			
	AX = PCMY+0//
; //_A89F084ED_79:;					
_A89F084ED_79:
; //	asm	AR = AX				
	AR = AX
; //_A89F084ED_80:;					
_A89F084ED_80:
; //	asm	I0 = AR				
	I0 = AR
; //_A89F084ED_81:;					
_A89F084ED_81:
; //	_i_1_2+0	= 0x0200;		
	I1	= rm[BP_SAVE]
	AR	= 0x0200
	rm[I1]	= AR
; //L2A70A9A2_42:;					
L2A70A9A2_42:
; //_A89F084ED_82:;					
_A89F084ED_82:
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
; //	if(__jnz__)	goto L2A70A9A2_43;	
	if NZ	jmp L2A70A9A2_43
; //	goto	L2A70A9A2_41;			
	jmp	L2A70A9A2_41
; //L2A70A9A2_43:;					
L2A70A9A2_43:
; //	
; //_A89F084ED_83:;					
_A89F084ED_83:
; //	sAX	= 0x0000;			
	AX	= 0x00
; //_A89F084ED_84:;					
_A89F084ED_84:
; //	asm	rm[I0++] = AX			
	rm[I0++] = AX
; //	goto L2A70A9A2_42;			
	jmp	L2A70A9A2_42
; //L2A70A9A2_41:;					
L2A70A9A2_41:
; //_A89F084ED_85:;					
_A89F084ED_85:
; //	asm AX = PCMY+0;			
	AX = PCMY+0//
; //	asm I1 = PCMYIN_PTR+0;			
	I1 = PCMYIN_PTR+0//
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_A89F084ED_86:;					
_A89F084ED_86:
; //	asm AX = PCMY+0;			
	AX = PCMY+0//
; //	asm I1 = PCMYOU_PTR+0;			
	I1 = PCMYOU_PTR+0//
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_A89F084ED_87:;					
_A89F084ED_87:
; //	asm I1 = _sub_vol980B1B83+0;		
	I1 = _sub_vol980B1B83+0//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	io[0x3C]	= sAX;			
	AR	= AX
	io[0x3C]	= AR
; //_A89F084ED_88:;					
_A89F084ED_88:
; //	io[0x3E]	= 0x1FFF;		
	AR	= 0x1FFF
	io[0x3E]	= AR
; //_A89F084ED_89:;					
_A89F084ED_89:
; //	io[0x3B]	= 0x0000;		
	AR	= 0x00
	io[0x3B]	= AR
; //L2A70A9A2_40:;					
L2A70A9A2_40:
; //_A89F084ED_90:;					
_A89F084ED_90:
; //	return;					
	AR	= 1
	BP	+= AR
	pop	AR
	rm[BP_SAVE]	= AR
	rets
; //_INITIAL0C18377D_end:;				
_INITIAL0C18377D_end:
; //_A89F084ED_91:;					
_A89F084ED_91:
; //}
; //
; //
; //
; //
.code
; //
; //
; //naked void ginit_code_SUNB3_593950F9_s(void)	
ginit_code_SUNB3_593950F9_s:
; //{
; //	asm P1 = #ginit_seg_SUNB3_593950F9_s+0;	
	P1 = #ginit_seg_SUNB3_593950F9_s+0//
; //	asm I1 = L2A70A9A2_2;			
	I1 = L2A70A9A2_2//
; //	sCX = 1;				
	CX	= 0x01
; //	sfx_GLOBALINIT();			
	pch	= sfx_GLOBALINIT
	lcall	sfx_GLOBALINIT
; //
; //	asm P1 = #ginit_seg_SUNB3_593950F9_s+1;	
	P1 = #ginit_seg_SUNB3_593950F9_s+1//
; //	asm I1 = _flagD698DD9D;			
	I1 = _flagD698DD9D//
; //	sCX = 1;				
	CX	= 0x01
; //	sfx_GLOBALINIT();			
	pch	= sfx_GLOBALINIT
	lcall	sfx_GLOBALINIT
; //
; //	asm P1 = #ginit_seg_SUNB3_593950F9_s+2;	
	P1 = #ginit_seg_SUNB3_593950F9_s+2//
; //	asm I1 = _Key_press_flag14FFF825;	
	I1 = _Key_press_flag14FFF825//
; //	sCX = 1;				
	CX	= 0x01
; //	sfx_GLOBALINIT();			
	pch	= sfx_GLOBALINIT
	lcall	sfx_GLOBALINIT
; //
; //	asm P1 = #ginit_seg_SUNB3_593950F9_s+3;	
	P1 = #ginit_seg_SUNB3_593950F9_s+3//
; //	asm I1 = _Play_flag71A588D5;		
	I1 = _Play_flag71A588D5//
; //	sCX = 1;				
	CX	= 0x01
; //	sfx_GLOBALINIT();			
	pch	= sfx_GLOBALINIT
	lcall	sfx_GLOBALINIT
; //
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
.code
; //
; //
; //
; //
; //__int16 ginit_seg_SUNB3_593950F9_s[4] = {	
ginit_seg_SUNB3_593950F9_s:
; //						
DW 
; //	0x0000,					
DW 0x0000,
; //						
DW 
; //	0x0000,					
DW 0x0000,
; //						
DW 
; //	0x0001,					
DW 0x0001,
; //						
DW 
; //	0x0000					
DW 0x0000,
; //};
; //
; //
; //
; //
.data
; //
; //naked void MyData()				
MyData:
; //{
; //	asm	DW "subband3\Song_Scan_and_Sort_@11K7bps.T3Z"
DW "subband3\Song_Scan_and_Sort_@11K7bps.T3Z"
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
