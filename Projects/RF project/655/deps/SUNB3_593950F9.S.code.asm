; SUNB3.C Code Start!!;
VarRM[0:4095]={
 L2A70A9A2_2,L2A70A9A2_4,L2A70A9A2_3,_Key_press_flag14FFF825,_Play_flag71A588D5 
};

; //
.code
; //
; //
; //naked void MyData();
; //interrupt rjmp void _RTC24B6AA79();
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
; //interrupt rjmp void _RTC24B6AA79()		
_RTC24B6AA79:
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
; //_A8ADEC9C4_0:;					
_A8ADEC9C4_0:
; //_A8ADEC9C4_1:;					
_A8ADEC9C4_1:
; //	asm	clr io[INTREQ].b3		
	clr io[INTREQ].b3
; //	
; //_A8ADEC9C4_2:;					
_A8ADEC9C4_2:
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
; //	sCX	= 0x0000;			
	CX	= 0x00
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
; //	sSI	= (int)&L2A70A9A2_4;		
	I1	= L2A70A9A2_4
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_A8ADEC9C4_3:;					
_A8ADEC9C4_3:
; //	asm I1 = L2A70A9A2_3+0;			
	I1 = L2A70A9A2_3+0//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sCX	= 0x0000;			
	CX	= 0x00
; //	sfx_CMP_AX_CX_JE();			
	pch	= sfx_CMP_AX_CX_JE
	lcall	sfx_CMP_AX_CX_JE
; //	if(__je__)	goto L2A70A9A2_11;	
	if ZR	jmp L2A70A9A2_11
; //	goto	L2A70A9A2_10;			
	jmp	L2A70A9A2_10
; //L2A70A9A2_11:;					
L2A70A9A2_11:
; //	
; //_A8ADEC9C4_4:;					
_A8ADEC9C4_4:
; //_A8ADEC9C4_5:;					
_A8ADEC9C4_5:
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
; //_A8ADEC9C4_6:;					
_A8ADEC9C4_6:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //	goto L2A70A9A2_12;			
	jmp	L2A70A9A2_12
; //L2A70A9A2_10:;					
L2A70A9A2_10:
; //_A8ADEC9C4_7:;					
_A8ADEC9C4_7:
; //	asm I1 = L2A70A9A2_3+0;			
	I1 = L2A70A9A2_3+0//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sCX	= 0x0001;			
	CX	= 0x01
; //	sfx_CMP_AX_CX_JE();			
	pch	= sfx_CMP_AX_CX_JE
	lcall	sfx_CMP_AX_CX_JE
; //	if(__je__)	goto L2A70A9A2_14;	
	if ZR	jmp L2A70A9A2_14
; //	goto	L2A70A9A2_13;			
	jmp	L2A70A9A2_13
; //L2A70A9A2_14:;					
L2A70A9A2_14:
; //	
; //_A8ADEC9C4_8:;					
_A8ADEC9C4_8:
; //_A8ADEC9C4_9:;					
_A8ADEC9C4_9:
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
; //_A8ADEC9C4_10:;					
_A8ADEC9C4_10:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //	goto L2A70A9A2_15;			
	jmp	L2A70A9A2_15
; //L2A70A9A2_13:;					
L2A70A9A2_13:
; //_A8ADEC9C4_11:;					
_A8ADEC9C4_11:
; //	asm I1 = L2A70A9A2_3+0;			
	I1 = L2A70A9A2_3+0//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sCX	= 0x0002;			
	CX	= 0x02
; //	sfx_CMP_AX_CX_JE();			
	pch	= sfx_CMP_AX_CX_JE
	lcall	sfx_CMP_AX_CX_JE
; //	if(__je__)	goto L2A70A9A2_17;	
	if ZR	jmp L2A70A9A2_17
; //	goto	L2A70A9A2_16;			
	jmp	L2A70A9A2_16
; //L2A70A9A2_17:;					
L2A70A9A2_17:
; //	
; //_A8ADEC9C4_12:;					
_A8ADEC9C4_12:
; //_A8ADEC9C4_13:;					
_A8ADEC9C4_13:
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
; //_A8ADEC9C4_14:;					
_A8ADEC9C4_14:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //L2A70A9A2_16:;					
L2A70A9A2_16:
; //_A8ADEC9C4_15:;					
_A8ADEC9C4_15:
; //L2A70A9A2_15:;					
L2A70A9A2_15:
; //_A8ADEC9C4_16:;					
_A8ADEC9C4_16:
; //L2A70A9A2_12:;					
L2A70A9A2_12:
; //_A8ADEC9C4_17:;					
_A8ADEC9C4_17:
; //_A8ADEC9C4_18:;					
_A8ADEC9C4_18:
; //	asm I1 = L2A70A9A2_3+0;			
	I1 = L2A70A9A2_3+0//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sSI	= (int)&L2A70A9A2_3;		
	I1	= L2A70A9A2_3
; //	PUSH(sAX);				
	push	AX
; //	sAX	= 0x0001;			
	AX	= 0x01
; //	sCX	= *(__int16*)sSI;		
	CX	= rm[I1]
; //	sCX	= sCX + sAX;			
	AR	= AX
	CX	+= AR
; //	*(__int16*)sSI	= sCX;			
	rm[I1]	= CX
; //	sAX	= POP();			
	pop	AX
; //_A8ADEC9C4_19:;					
_A8ADEC9C4_19:
; //	asm I1 = L2A70A9A2_3+0;			
	I1 = L2A70A9A2_3+0//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sCX	= 0x0002;			
	CX	= 0x02
; //	sfx_CMP_AX_CX_JE();			
	pch	= sfx_CMP_AX_CX_JE
	lcall	sfx_CMP_AX_CX_JE
; //	if(__je__)	goto L2A70A9A2_19;	
	if ZR	jmp L2A70A9A2_19
; //	goto	L2A70A9A2_18;			
	jmp	L2A70A9A2_18
; //L2A70A9A2_19:;					
L2A70A9A2_19:
; //_A8ADEC9C4_20:;					
_A8ADEC9C4_20:
; //	sAX	= 0x0000;			
	AX	= 0x00
; //	sSI	= (int)&L2A70A9A2_3;		
	I1	= L2A70A9A2_3
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //L2A70A9A2_18:;					
L2A70A9A2_18:
; //_A8ADEC9C4_21:;					
_A8ADEC9C4_21:
; //L2A70A9A2_5:;					
L2A70A9A2_5:
; //_A8ADEC9C4_22:;					
_A8ADEC9C4_22:
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
; //_RTC24B6AA79_end:;				
_RTC24B6AA79_end:
; //_A8ADEC9C4_23:;					
_A8ADEC9C4_23:
; //}
; //
; //rjmp void _main()				
_main:
; //{
; //_A8ADEC9C4_24:;					
_A8ADEC9C4_24:
; //	
; //_A8ADEC9C4_25:;					
_A8ADEC9C4_25:
; //_A8ADEC9C4_26:;					
_A8ADEC9C4_26:
; //	F_ChangePWMVectTabletobank2();		
	pch	= F_ChangePWMVectTabletobank2
	lcall	F_ChangePWMVectTabletobank2
; //_A8ADEC9C4_27:;					
_A8ADEC9C4_27:
; //	sAX	= 0x0000;			
	AX	= 0x00
; //	asm I1 = _sub_vol980B1B83+0;		
	I1 = _sub_vol980B1B83+0//
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_A8ADEC9C4_28:;					
_A8ADEC9C4_28:
; //_A8ADEC9C4_29:;					
_A8ADEC9C4_29:
; //	_INITIAL0C18377D();			
	pch	= _INITIAL0C18377D
	lcall	_INITIAL0C18377D
; //_A8ADEC9C4_30:;					
_A8ADEC9C4_30:
; //_A8ADEC9C4_31:;					
_A8ADEC9C4_31:
; //	_InitialDA4A7CC4();			
	pch	= _InitialDA4A7CC4
	lcall	_InitialDA4A7CC4
; //_A8ADEC9C4_32:;					
_A8ADEC9C4_32:
; //_A8ADEC9C4_33:;					
_A8ADEC9C4_33:
; //	_ClearTickCount5DDE4003();		
	pch	= _ClearTickCount5DDE4003
	lcall	_ClearTickCount5DDE4003
; //_A8ADEC9C4_34:;					
_A8ADEC9C4_34:
; //_A8ADEC9C4_35:;					
_A8ADEC9C4_35:
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
; //L2A70A9A2_22:;					
L2A70A9A2_22:
; //_A8ADEC9C4_36:;					
_A8ADEC9C4_36:
; //_A8ADEC9C4_37:;					
_A8ADEC9C4_37:
; //	asm	io[ClrWDT] = AR			
	io[ClrWDT] = AR
; //	
; //	goto L2A70A9A2_22;			
	jmp	L2A70A9A2_22
; //L2A70A9A2_21:;					
L2A70A9A2_21:
; //L2A70A9A2_20:;					
L2A70A9A2_20:
; //_A8ADEC9C4_38:;					
_A8ADEC9C4_38:
; //	return;					
	rets
; //_main_end:;					
_main_end:
; //_A8ADEC9C4_39:;					
_A8ADEC9C4_39:
; //}
; //
; //rjmp void _InitSound5CCD501D()			
_InitSound5CCD501D:
; //{
; //_A8ADEC9C4_40:;					
_A8ADEC9C4_40:
; //	
; //_A8ADEC9C4_41:;					
_A8ADEC9C4_41:
; //	io[0x3E]	= 0x3FFF;		
	AR	= 0x3FFF
	io[0x3E]	= AR
; //_A8ADEC9C4_42:;					
_A8ADEC9C4_42:
; //	io[0x16]	= 0x0000;		
	AR	= 0x00
	io[0x16]	= AR
; //_A8ADEC9C4_43:;					
_A8ADEC9C4_43:
; //	io[0x16]	= 0x0000;		
	AR	= 0x00
	io[0x16]	= AR
; //_A8ADEC9C4_44:;					
_A8ADEC9C4_44:
; //	io[0x16]	= 0x0000;		
	AR	= 0x00
	io[0x16]	= AR
; //_A8ADEC9C4_45:;					
_A8ADEC9C4_45:
; //	io[0x16]	= 0x0000;		
	AR	= 0x00
	io[0x16]	= AR
; //_A8ADEC9C4_46:;					
_A8ADEC9C4_46:
; //	io[0x36]	= 0x0000;		
	AR	= 0x00
	io[0x36]	= AR
; //_A8ADEC9C4_47:;					
_A8ADEC9C4_47:
; //	io[0x36]	= 0x0000;		
	AR	= 0x00
	io[0x36]	= AR
; //_A8ADEC9C4_48:;					
_A8ADEC9C4_48:
; //	io[0x36]	= 0x0000;		
	AR	= 0x00
	io[0x36]	= AR
; //_A8ADEC9C4_49:;					
_A8ADEC9C4_49:
; //	io[0x36]	= 0x0000;		
	AR	= 0x00
	io[0x36]	= AR
; //_A8ADEC9C4_50:;					
_A8ADEC9C4_50:
; //	io[0x36]	= 0x0000;		
	AR	= 0x00
	io[0x36]	= AR
; //_A8ADEC9C4_51:;					
_A8ADEC9C4_51:
; //	io[0x36]	= 0x0000;		
	AR	= 0x00
	io[0x36]	= AR
; //_A8ADEC9C4_52:;					
_A8ADEC9C4_52:
; //	io[0x36]	= 0x0000;		
	AR	= 0x00
	io[0x36]	= AR
; //_A8ADEC9C4_53:;					
_A8ADEC9C4_53:
; //	io[0x36]	= 0x0000;		
	AR	= 0x00
	io[0x36]	= AR
; //_A8ADEC9C4_54:;					
_A8ADEC9C4_54:
; //	io[0x3C]	= 0x0000;		
	AR	= 0x00
	io[0x3C]	= AR
; //_A8ADEC9C4_55:;					
_A8ADEC9C4_55:
; //	sAX	= io[0x3C];			
	AR	= io[0x3C]
	AX	= AR
; //_A8ADEC9C4_56:;					
_A8ADEC9C4_56:
; //	asm	set io[MISC].b9			
	set io[MISC].b9
; //_A8ADEC9C4_57:;					
_A8ADEC9C4_57:
; //	asm	set io[MISC].b8			
	set io[MISC].b8
; //_A8ADEC9C4_58:;					
_A8ADEC9C4_58:
; //	asm	set io[MISC].b4			
	set io[MISC].b4
; //L2A70A9A2_23:;					
L2A70A9A2_23:
; //_A8ADEC9C4_59:;					
_A8ADEC9C4_59:
; //	return;					
	rets
; //_InitSound5CCD501D_end:;			
_InitSound5CCD501D_end:
; //_A8ADEC9C4_60:;					
_A8ADEC9C4_60:
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
; //_A8ADEC9C4_61:;					
_A8ADEC9C4_61:
; //_A8ADEC9C4_62:;					
_A8ADEC9C4_62:
; //_A8ADEC9C4_63:;					
_A8ADEC9C4_63:
; //	NEARCALL(_InitSound5CCD501D);		
	call	_InitSound5CCD501D
; //	
; //_A8ADEC9C4_64:;					
_A8ADEC9C4_64:
; //	asm AX = PCMY+0;			
	AX = PCMY+0//
; //_A8ADEC9C4_65:;					
_A8ADEC9C4_65:
; //	asm	AR = AX				
	AR = AX
; //_A8ADEC9C4_66:;					
_A8ADEC9C4_66:
; //	asm	I0 = AR				
	I0 = AR
; //_A8ADEC9C4_67:;					
_A8ADEC9C4_67:
; //	_i_1_2+0	= 0x0200;		
	I1	= rm[BP_SAVE]
	AR	= 0x0200
	rm[I1]	= AR
; //L2A70A9A2_26:;					
L2A70A9A2_26:
; //_A8ADEC9C4_68:;					
_A8ADEC9C4_68:
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
; //	if(__jnz__)	goto L2A70A9A2_27;	
	if NZ	jmp L2A70A9A2_27
; //	goto	L2A70A9A2_25;			
	jmp	L2A70A9A2_25
; //L2A70A9A2_27:;					
L2A70A9A2_27:
; //	
; //_A8ADEC9C4_69:;					
_A8ADEC9C4_69:
; //	sAX	= 0x0000;			
	AX	= 0x00
; //_A8ADEC9C4_70:;					
_A8ADEC9C4_70:
; //	asm	rm[I0++] = AX			
	rm[I0++] = AX
; //	goto L2A70A9A2_26;			
	jmp	L2A70A9A2_26
; //L2A70A9A2_25:;					
L2A70A9A2_25:
; //_A8ADEC9C4_71:;					
_A8ADEC9C4_71:
; //	asm AX = PCMY+0;			
	AX = PCMY+0//
; //	asm I1 = PCMYIN_PTR+0;			
	I1 = PCMYIN_PTR+0//
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_A8ADEC9C4_72:;					
_A8ADEC9C4_72:
; //	asm AX = PCMY+0;			
	AX = PCMY+0//
; //	asm I1 = PCMYOU_PTR+0;			
	I1 = PCMYOU_PTR+0//
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_A8ADEC9C4_73:;					
_A8ADEC9C4_73:
; //	asm I1 = _sub_vol980B1B83+0;		
	I1 = _sub_vol980B1B83+0//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	io[0x3C]	= sAX;			
	AR	= AX
	io[0x3C]	= AR
; //_A8ADEC9C4_74:;					
_A8ADEC9C4_74:
; //	io[0x3E]	= 0x1FFF;		
	AR	= 0x1FFF
	io[0x3E]	= AR
; //_A8ADEC9C4_75:;					
_A8ADEC9C4_75:
; //	io[0x3B]	= 0x0000;		
	AR	= 0x00
	io[0x3B]	= AR
; //L2A70A9A2_24:;					
L2A70A9A2_24:
; //_A8ADEC9C4_76:;					
_A8ADEC9C4_76:
; //	return;					
	AR	= 1
	BP	+= AR
	pop	AR
	rm[BP_SAVE]	= AR
	rets
; //_INITIAL0C18377D_end:;				
_INITIAL0C18377D_end:
; //_A8ADEC9C4_77:;					
_A8ADEC9C4_77:
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
; //	asm I1 = L2A70A9A2_4;			
	I1 = L2A70A9A2_4//
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
; //__int16 ginit_seg_SUNB3_593950F9_s[2] = {	
ginit_seg_SUNB3_593950F9_s:
; //						
DW 
; //	0x0000,					
DW 0x0000,
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
