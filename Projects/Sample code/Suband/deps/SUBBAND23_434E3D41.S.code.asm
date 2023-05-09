; SUBBAND23.C Code Start!!;
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
; //_A0D289B83_0:;					
_A0D289B83_0:
; //	
; //_A0D289B83_1:;					
_A0D289B83_1:
; //_A0D289B83_2:;					
_A0D289B83_2:
; //	F_ChangePWMVectTabletobank2();		
	pch	= F_ChangePWMVectTabletobank2
	lcall	F_ChangePWMVectTabletobank2
; //_A0D289B83_3:;					
_A0D289B83_3:
; //	sAX	= 0x0000;			
	AX	= 0x00
; //	asm I1 = _sub_vol980B1B83+0;		
	I1 = _sub_vol980B1B83+0//
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_A0D289B83_4:;					
_A0D289B83_4:
; //_A0D289B83_5:;					
_A0D289B83_5:
; //	_INITIAL0C18377D();			
	pch	= _INITIAL0C18377D
	lcall	_INITIAL0C18377D
; //_A0D289B83_6:;					
_A0D289B83_6:
; //_A0D289B83_7:;					
_A0D289B83_7:
; //	_ClearTickCount5DDE4003();		
	pch	= _ClearTickCount5DDE4003
	lcall	_ClearTickCount5DDE4003
; //_A0D289B83_8:;					
_A0D289B83_8:
; //_A0D289B83_9:;					
_A0D289B83_9:
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
; //L2F31A265_4:;					
L2F31A265_4:
; //_A0D289B83_10:;					
_A0D289B83_10:
; //_A0D289B83_11:;					
_A0D289B83_11:
; //	asm	io[ClrWDT] = AR			
	io[ClrWDT] = AR
; //	
; //_A0D289B83_12:;					
_A0D289B83_12:
; //_A0D289B83_13:;					
_A0D289B83_13:
; //	_RampUpFF7996DA();			
	pch	= _RampUpFF7996DA
	lcall	_RampUpFF7996DA
; //_A0D289B83_14:;					
_A0D289B83_14:
; //_A0D289B83_15:;					
_A0D289B83_15:
; //	_WaitPCM_Empty_size53398B9D();		
	pch	= _WaitPCM_Empty_size53398B9D
	lcall	_WaitPCM_Empty_size53398B9D
; //	sCX	= 0x0000;			
	CX	= 0x00
; //	sfx_CMP_AX_CX_JL();			
	pch	= sfx_CMP_AX_CX_JL
	lcall	sfx_CMP_AX_CX_JL
; //	if(__je__)	goto L2F31A265_6;	
	if ZR	jmp L2F31A265_6
; //	goto	L2F31A265_5;			
	jmp	L2F31A265_5
; //L2F31A265_6:;					
L2F31A265_6:
; //_A0D289B83_16:;					
_A0D289B83_16:
; //	goto L2F31A265_4;			
	jmp	L2F31A265_4
; //L2F31A265_5:;					
L2F31A265_5:
; //_A0D289B83_17:;					
_A0D289B83_17:
; //_A0D289B83_18:;					
_A0D289B83_18:
; //_A0D289B83_19:;					
_A0D289B83_19:
; //	Subb3_Dec();				
	pch	= Subb3_Dec
	lcall	Subb3_Dec
; //	sfx_CHECKZERO();			
	AR	= AX
; //	if(__jnz__)	goto L2F31A265_8;	
	if NZ	jmp L2F31A265_8
; //	goto	L2F31A265_7;			
	jmp	L2F31A265_7
; //L2F31A265_8:;					
L2F31A265_8:
; //_A0D289B83_20:;					
_A0D289B83_20:
; //_A0D289B83_21:;					
_A0D289B83_21:
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
; //L2F31A265_7:;					
L2F31A265_7:
; //_A0D289B83_22:;					
_A0D289B83_22:
; //	goto L2F31A265_4;			
	jmp	L2F31A265_4
; //L2F31A265_3:;					
L2F31A265_3:
; //L2F31A265_2:;					
L2F31A265_2:
; //_A0D289B83_23:;					
_A0D289B83_23:
; //	return;					
	rets
; //_main_end:;					
_main_end:
; //_A0D289B83_24:;					
_A0D289B83_24:
; //}
; //
; //rjmp void _InitSound5CCD501D()			
_InitSound5CCD501D:
; //{
; //_A0D289B83_25:;					
_A0D289B83_25:
; //	
; //_A0D289B83_26:;					
_A0D289B83_26:
; //	io[0x3E]	= 0x3FFF;		
	AR	= 0x3FFF
	io[0x3E]	= AR
; //_A0D289B83_27:;					
_A0D289B83_27:
; //	io[0x16]	= 0x0000;		
	AR	= 0x00
	io[0x16]	= AR
; //_A0D289B83_28:;					
_A0D289B83_28:
; //	io[0x16]	= 0x0000;		
	AR	= 0x00
	io[0x16]	= AR
; //_A0D289B83_29:;					
_A0D289B83_29:
; //	io[0x16]	= 0x0000;		
	AR	= 0x00
	io[0x16]	= AR
; //_A0D289B83_30:;					
_A0D289B83_30:
; //	io[0x16]	= 0x0000;		
	AR	= 0x00
	io[0x16]	= AR
; //_A0D289B83_31:;					
_A0D289B83_31:
; //	io[0x36]	= 0x0000;		
	AR	= 0x00
	io[0x36]	= AR
; //_A0D289B83_32:;					
_A0D289B83_32:
; //	io[0x36]	= 0x0000;		
	AR	= 0x00
	io[0x36]	= AR
; //_A0D289B83_33:;					
_A0D289B83_33:
; //	io[0x36]	= 0x0000;		
	AR	= 0x00
	io[0x36]	= AR
; //_A0D289B83_34:;					
_A0D289B83_34:
; //	io[0x36]	= 0x0000;		
	AR	= 0x00
	io[0x36]	= AR
; //_A0D289B83_35:;					
_A0D289B83_35:
; //	io[0x36]	= 0x0000;		
	AR	= 0x00
	io[0x36]	= AR
; //_A0D289B83_36:;					
_A0D289B83_36:
; //	io[0x36]	= 0x0000;		
	AR	= 0x00
	io[0x36]	= AR
; //_A0D289B83_37:;					
_A0D289B83_37:
; //	io[0x36]	= 0x0000;		
	AR	= 0x00
	io[0x36]	= AR
; //_A0D289B83_38:;					
_A0D289B83_38:
; //	io[0x36]	= 0x0000;		
	AR	= 0x00
	io[0x36]	= AR
; //_A0D289B83_39:;					
_A0D289B83_39:
; //	io[0x3C]	= 0x0000;		
	AR	= 0x00
	io[0x3C]	= AR
; //_A0D289B83_40:;					
_A0D289B83_40:
; //	sAX	= io[0x3C];			
	AR	= io[0x3C]
	AX	= AR
; //_A0D289B83_41:;					
_A0D289B83_41:
; //	asm	set io[MISC].b9			
	set io[MISC].b9
; //_A0D289B83_42:;					
_A0D289B83_42:
; //	asm	set io[MISC].b8			
	set io[MISC].b8
; //_A0D289B83_43:;					
_A0D289B83_43:
; //	asm	set io[MISC].b4			
	set io[MISC].b4
; //L2F31A265_9:;					
L2F31A265_9:
; //_A0D289B83_44:;					
_A0D289B83_44:
; //	return;					
	rets
; //_InitSound5CCD501D_end:;			
_InitSound5CCD501D_end:
; //_A0D289B83_45:;					
_A0D289B83_45:
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
; //_A0D289B83_46:;					
_A0D289B83_46:
; //_A0D289B83_47:;					
_A0D289B83_47:
; //_A0D289B83_48:;					
_A0D289B83_48:
; //	NEARCALL(_InitSound5CCD501D);		
	call	_InitSound5CCD501D
; //	
; //_A0D289B83_49:;					
_A0D289B83_49:
; //	asm AX = PCMY+0;			
	AX = PCMY+0//
; //_A0D289B83_50:;					
_A0D289B83_50:
; //	asm	AR = AX				
	AR = AX
; //_A0D289B83_51:;					
_A0D289B83_51:
; //	asm	I0 = AR				
	I0 = AR
; //_A0D289B83_52:;					
_A0D289B83_52:
; //	_i_1_2+0	= 0x0200;		
	I1	= rm[BP_SAVE]
	AR	= 0x0200
	rm[I1]	= AR
; //L2F31A265_12:;					
L2F31A265_12:
; //_A0D289B83_53:;					
_A0D289B83_53:
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
; //	if(__jnz__)	goto L2F31A265_13;	
	if NZ	jmp L2F31A265_13
; //	goto	L2F31A265_11;			
	jmp	L2F31A265_11
; //L2F31A265_13:;					
L2F31A265_13:
; //	
; //_A0D289B83_54:;					
_A0D289B83_54:
; //	sAX	= 0x0000;			
	AX	= 0x00
; //_A0D289B83_55:;					
_A0D289B83_55:
; //	asm	rm[I0++] = AX			
	rm[I0++] = AX
; //	goto L2F31A265_12;			
	jmp	L2F31A265_12
; //L2F31A265_11:;					
L2F31A265_11:
; //_A0D289B83_56:;					
_A0D289B83_56:
; //	asm AX = PCMY+0;			
	AX = PCMY+0//
; //	asm I1 = PCMYIN_PTR+0;			
	I1 = PCMYIN_PTR+0//
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_A0D289B83_57:;					
_A0D289B83_57:
; //	asm AX = PCMY+0;			
	AX = PCMY+0//
; //	asm I1 = PCMYOU_PTR+0;			
	I1 = PCMYOU_PTR+0//
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_A0D289B83_58:;					
_A0D289B83_58:
; //	asm I1 = _sub_vol980B1B83+0;		
	I1 = _sub_vol980B1B83+0//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	io[0x3C]	= sAX;			
	AR	= AX
	io[0x3C]	= AR
; //_A0D289B83_59:;					
_A0D289B83_59:
; //	io[0x3E]	= 0x1FFF;		
	AR	= 0x1FFF
	io[0x3E]	= AR
; //_A0D289B83_60:;					
_A0D289B83_60:
; //	io[0x3B]	= 0x0000;		
	AR	= 0x00
	io[0x3B]	= AR
; //L2F31A265_10:;					
L2F31A265_10:
; //_A0D289B83_61:;					
_A0D289B83_61:
; //	return;					
	AR	= 1
	BP	+= AR
	pop	AR
	rm[BP_SAVE]	= AR
	rets
; //_INITIAL0C18377D_end:;				
_INITIAL0C18377D_end:
; //_A0D289B83_62:;					
_A0D289B83_62:
; //}
; //
; //
; //
; //
.code
; //
; //
; //naked void ginit_code_SUBBAND23_434E3D41_s(void)
ginit_code_SUBBAND23_434E3D41_s:
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
; //naked void MyData()				
MyData:
; //{
; //	asm	DW "subband3\baby_Silen@16K6bps.TZB"
DW "subband3\baby_Silen@16K6bps.TZB"
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
