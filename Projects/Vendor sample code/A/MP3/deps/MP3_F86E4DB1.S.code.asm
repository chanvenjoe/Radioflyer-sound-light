; MP3.C Code Start!!;
VarRM[0:4095]={
 _MyDataPnt,MyEnd,R_bts_ch0_get_ix,PCMYIN_PTR,PCMYOU_PTR,PCMIN,BaseOn512#PCMY[512] 
};

; //
.code
; //
; //
; //naked void MyData();
; //interrupt void _PWM99B23D7D();
; //void _main();
; //void _WaitPCM_Empty_size53398B9D();
; //void _INITIAL0C18377D();
; //void GetMp3data();
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
; //interrupt void _PWM99B23D7D()			
_PWM99B23D7D:
; //{
; //	__int16 _i_1_2;
; //						
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
	AR	= rm[BP_SAVE]
	push	AR
	AR	= BP
	rm[BP_SAVE]	= AR
	AR	 = -1
	BP	+= AR
; //_AAD201390_0:;					
_AAD201390_0:
; //_AAD201390_1:;					
_AAD201390_1:
; //	asm	clr io[INTREQ].b0		
	clr io[INTREQ].b0
; //_AAD201390_2:;					
_AAD201390_2:
; //	asm	push I0				
	push I0
; //_AAD201390_3:;					
_AAD201390_3:
; //	asm	push CBL			
	push CBL
; //	
; //_AAD201390_4:;					
_AAD201390_4:
; //	sAX	= 0x0009;			
	AX	= 0x09
; //_AAD201390_5:;					
_AAD201390_5:
; //	asm	AR = AX				
	AR = AX
; //_AAD201390_6:;					
_AAD201390_6:
; //	asm	CBL = AR			
	CBL = AR
; //	
; //_AAD201390_7:;					
_AAD201390_7:
; //	asm I1 = PCMYOU_PTR+0;			
	I1 = PCMYOU_PTR+0//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //_AAD201390_8:;					
_AAD201390_8:
; //	asm	AR = AX				
	AR = AX
; //_AAD201390_9:;					
_AAD201390_9:
; //	asm	I0 = AR				
	I0 = AR
; //_AAD201390_10:;					
_AAD201390_10:
; //	_i_1_2+0	= 0x00;			
	I1	= rm[BP_SAVE]
	AR	= 0x00
	rm[I1]	= AR
; //LEAF7732F_3:;					
LEAF7732F_3:
; //	sSI	= (int)&_i_1_2;			
	I1	= rm[BP_SAVE]
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sCX	= 0x0004;			
	CX	= 0x04
; //	sfx_CMP_AX_CX_JL();			
	pch	= sfx_CMP_AX_CX_JL
	lcall	sfx_CMP_AX_CX_JL
; //	if(__je__)	goto LEAF7732F_7;	
	if ZR	jmp LEAF7732F_7
; //	goto	LEAF7732F_5;			
	pch =	LEAF7732F_5
	ljmp	LEAF7732F_5
; //LEAF7732F_7:;					
LEAF7732F_7:
; //	goto LEAF7732F_4;			
	pch =	LEAF7732F_4
	ljmp	LEAF7732F_4
; //LEAF7732F_6:;					
LEAF7732F_6:
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
; //	goto LEAF7732F_3;			
	pch =	LEAF7732F_3
	ljmp	LEAF7732F_3
; //LEAF7732F_4:;					
LEAF7732F_4:
; //	
; //_AAD201390_11:;					
_AAD201390_11:
; //_AAD201390_12:;					
_AAD201390_12:
; //	FA();					
	pch	= FA
	lcall	FA
; //	sfx_CHECKZERO();			
	AR	= AX
; //	if(__jz__)	goto LEAF7732F_9;	
	if ZR	jmp LEAF7732F_9
; //	goto	LEAF7732F_8;			
	pch =	LEAF7732F_8
	ljmp	LEAF7732F_8
; //LEAF7732F_9:;					
LEAF7732F_9:
; //	
; //_AAD201390_13:;					
_AAD201390_13:
; //_AAD201390_14:;					
_AAD201390_14:
; //	read_I0P();				
	AX	= rm[I0++]
; //_AAD201390_15:;					
_AAD201390_15:
; //	asm	AR = AX				
	AR = AX
; //_AAD201390_16:;					
_AAD201390_16:
; //	asm	FLTI = AR			
	FLTI = AR
; //LEAF7732F_8:;					
LEAF7732F_8:
; //_AAD201390_17:;					
_AAD201390_17:
; //	
; //_AAD201390_18:;					
_AAD201390_18:
; //_AAD201390_19:;					
_AAD201390_19:
; //	get_FLTO();				
	pch	= get_FLTO
	lcall	get_FLTO
; //_AAD201390_20:;					
_AAD201390_20:
; //	asm	AR = AX				
	AR = AX
; //_AAD201390_21:;					
_AAD201390_21:
; //	asm	io[DACL] = AR			
	io[DACL] = AR
; //	goto LEAF7732F_6;			
	pch =	LEAF7732F_6
	ljmp	LEAF7732F_6
; //LEAF7732F_5:;					
LEAF7732F_5:
; //_AAD201390_22:;					
_AAD201390_22:
; //_AAD201390_23:;					
_AAD201390_23:
; //_AAD201390_24:;					
_AAD201390_24:
; //	get_I0();				
	push	I0
	pop	AX
; //	asm I1 = PCMYOU_PTR+0;			
	I1 = PCMYOU_PTR+0//
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_AAD201390_25:;					
_AAD201390_25:
; //	asm	pop CBL				
	pop CBL
; //_AAD201390_26:;					
_AAD201390_26:
; //	asm	pop I0				
	pop I0
; //LEAF7732F_2:;					
LEAF7732F_2:
; //_AAD201390_27:;					
_AAD201390_27:
; //	return;					
	AR	= 1
	BP	+= AR
	pop	AR
	rm[BP_SAVE]	= AR
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
; //_AAD201390_28:;					
_AAD201390_28:
; //}
; //
; //void _main()					
_main:
; //{
; //_AAD201390_29:;					
_AAD201390_29:
; //	
; //_AAD201390_30:;					
_AAD201390_30:
; //_AAD201390_31:;					
_AAD201390_31:
; //	_INITIAL0C18377D();			
	pch	= _INITIAL0C18377D
	lcall	_INITIAL0C18377D
; //LEAF7732F_12:;					
LEAF7732F_12:
; //_AAD201390_32:;					
_AAD201390_32:
; //_AAD201390_33:;					
_AAD201390_33:
; //	asm	io[ClrWDT] = AR			
	io[ClrWDT] = AR
; //	
; //_AAD201390_34:;					
_AAD201390_34:
; //_AAD201390_35:;					
_AAD201390_35:
; //	_WaitPCM_Empty_size53398B9D();		
	pch	= _WaitPCM_Empty_size53398B9D
	lcall	_WaitPCM_Empty_size53398B9D
; //	sCX	= 0x0000;			
	CX	= 0x00
; //	sfx_CMP_AX_CX_JL();			
	pch	= sfx_CMP_AX_CX_JL
	lcall	sfx_CMP_AX_CX_JL
; //	if(__je__)	goto LEAF7732F_14;	
	if ZR	jmp LEAF7732F_14
; //	goto	LEAF7732F_13;			
	pch =	LEAF7732F_13
	ljmp	LEAF7732F_13
; //LEAF7732F_14:;					
LEAF7732F_14:
; //_AAD201390_36:;					
_AAD201390_36:
; //	goto LEAF7732F_12;			
	pch =	LEAF7732F_12
	ljmp	LEAF7732F_12
; //LEAF7732F_13:;					
LEAF7732F_13:
; //_AAD201390_37:;					
_AAD201390_37:
; //_AAD201390_38:;					
_AAD201390_38:
; //_AAD201390_39:;					
_AAD201390_39:
; //	MP3_Ch0dec();				
	pch	= MP3_Ch0dec
	lcall	MP3_Ch0dec
; //	sfx_CHECKZERO();			
	AR	= AX
; //	if(__jnz__)	goto LEAF7732F_16;	
	if NZ	jmp LEAF7732F_16
; //	goto	LEAF7732F_15;			
	pch =	LEAF7732F_15
	ljmp	LEAF7732F_15
; //LEAF7732F_16:;					
LEAF7732F_16:
; //_AAD201390_40:;					
_AAD201390_40:
; //_AAD201390_41:;					
_AAD201390_41:
; //	_INITIAL0C18377D();			
	pch	= _INITIAL0C18377D
	lcall	_INITIAL0C18377D
; //LEAF7732F_15:;					
LEAF7732F_15:
; //_AAD201390_42:;					
_AAD201390_42:
; //	goto LEAF7732F_12;			
	pch =	LEAF7732F_12
	ljmp	LEAF7732F_12
; //LEAF7732F_11:;					
LEAF7732F_11:
; //LEAF7732F_10:;					
LEAF7732F_10:
; //_AAD201390_43:;					
_AAD201390_43:
; //	return;					
	rets
; //_main_end:;					
_main_end:
; //_AAD201390_44:;					
_AAD201390_44:
; //}
; //
; //void _WaitPCM_Empty_size53398B9D()		
_WaitPCM_Empty_size53398B9D:
; //{
; //	__int16 _x_1_2;
; //						
	AR	= rm[BP_SAVE]
	push	AR
	AR	= BP
	rm[BP_SAVE]	= AR
	AR	 = -1
	BP	+= AR
; //_AAD201390_45:;					
_AAD201390_45:
; //_AAD201390_46:;					
_AAD201390_46:
; //	asm I1 = PCMYOU_PTR+0;			
	I1 = PCMYOU_PTR+0//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	asm I1 = PCMYIN_PTR+0;			
	I1 = PCMYIN_PTR+0//
; //	sCX	= *(__int16*)sSI;		
	CX	= rm[I1]
; //	sAX	= sAX - sCX;			
	AR	= CX
	AX	-= AR
; //	
; //	sSI	= (int)&_x_1_2;			
	I1	= rm[BP_SAVE]
; //	*(__int16*)sSI	= sAX;			
	rm[I1]	= AX
; //_AAD201390_47:;					
_AAD201390_47:
; //	sSI	= (int)&_x_1_2;			
	I1	= rm[BP_SAVE]
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sCX	= 0x0000;			
	CX	= 0x00
; //	sfx_CMP_AX_CX_JL();			
	pch	= sfx_CMP_AX_CX_JL
	lcall	sfx_CMP_AX_CX_JL
; //	if(__je__)	goto LEAF7732F_19;	
	if ZR	jmp LEAF7732F_19
; //	goto	LEAF7732F_18;			
	pch =	LEAF7732F_18
	ljmp	LEAF7732F_18
; //LEAF7732F_19:;					
LEAF7732F_19:
; //	
; //_AAD201390_48:;					
_AAD201390_48:
; //	sAX	= 0x01FF;			
	AX	= 0x01FF
; //	sSI	= (int)&_x_1_2;			
	I1	= rm[BP_SAVE]
; //	sCX	= *(__int16*)sSI;		
	CX	= rm[I1]
; //	sAX	= sAX & sCX;			
	AR	= CX
	AX	&= AR
; //	sSI	= (int)&_x_1_2;			
	I1	= rm[BP_SAVE]
; //	*(__int16*)sSI	= sAX;			
	rm[I1]	= AX
; //LEAF7732F_18:;					
LEAF7732F_18:
; //_AAD201390_49:;					
_AAD201390_49:
; //_AAD201390_50:;					
_AAD201390_50:
; //	sSI	= (int)&_x_1_2;			
	I1	= rm[BP_SAVE]
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sCX	= 0x0121;			
	CX	= 0x0121
; //	sAX	= sAX - sCX;			
	AR	= CX
	AX	-= AR
; //	sSI	= (int)&_x_1_2;			
	I1	= rm[BP_SAVE]
; //	*(__int16*)sSI	= sAX;			
	rm[I1]	= AX
; //_AAD201390_51:;					
_AAD201390_51:
; //	sSI	= (int)&_x_1_2;			
	I1	= rm[BP_SAVE]
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	goto LEAF7732F_17;			
	pch =	LEAF7732F_17
	ljmp	LEAF7732F_17
; //LEAF7732F_17:;					
LEAF7732F_17:
; //_AAD201390_52:;					
_AAD201390_52:
; //	return;					
	AR	= 1
	BP	+= AR
	pop	AR
	rm[BP_SAVE]	= AR
	rets
; //_WaitPCM_Empty_size53398B9D_end:;		
_WaitPCM_Empty_size53398B9D_end:
; //_AAD201390_53:;					
_AAD201390_53:
; //}
; //
; //void _INITIAL0C18377D()				
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
; //_AAD201390_54:;					
_AAD201390_54:
; //	
; //_AAD201390_55:;					
_AAD201390_55:
; //	sAX	= 0x0000;			
	AX	= 0x00
; //_AAD201390_56:;					
_AAD201390_56:
; //	asm	AR = AX				
	AR = AX
; //_AAD201390_57:;					
_AAD201390_57:
; //	asm	FLTI = AR			
	FLTI = AR
; //	
; //_AAD201390_58:;					
_AAD201390_58:
; //	sAX	= 0x0000;			
	AX	= 0x00
; //_AAD201390_59:;					
_AAD201390_59:
; //	asm	AR = AX				
	AR = AX
; //_AAD201390_60:;					
_AAD201390_60:
; //	asm	FLTI = AR			
	FLTI = AR
; //	
; //_AAD201390_61:;					
_AAD201390_61:
; //	sAX	= 0x0000;			
	AX	= 0x00
; //_AAD201390_62:;					
_AAD201390_62:
; //	asm	AR = AX				
	AR = AX
; //_AAD201390_63:;					
_AAD201390_63:
; //	asm	FLTI = AR			
	FLTI = AR
; //	
; //_AAD201390_64:;					
_AAD201390_64:
; //	sAX	= 0x0000;			
	AX	= 0x00
; //_AAD201390_65:;					
_AAD201390_65:
; //	asm	AR = AX				
	AR = AX
; //_AAD201390_66:;					
_AAD201390_66:
; //	asm	FLTI = AR			
	FLTI = AR
; //	
; //_AAD201390_67:;					
_AAD201390_67:
; //	sAX	= 0x0000;			
	AX	= 0x00
; //_AAD201390_68:;					
_AAD201390_68:
; //	asm	AR = AX				
	AR = AX
; //_AAD201390_69:;					
_AAD201390_69:
; //	asm	FLTA = AR			
	FLTA = AR
; //_AAD201390_70:;					
_AAD201390_70:
; //	_i_1_2+0	= 0x00;			
	I1	= rm[BP_SAVE]
	AR	= 0x00
	rm[I1]	= AR
; //LEAF7732F_21:;					
LEAF7732F_21:
; //	sSI	= (int)&_i_1_2;			
	I1	= rm[BP_SAVE]
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sCX	= 0x0200;			
	CX	= 0x0200
; //	sfx_CMP_AX_CX_JL();			
	pch	= sfx_CMP_AX_CX_JL
	lcall	sfx_CMP_AX_CX_JL
; //	if(__je__)	goto LEAF7732F_25;	
	if ZR	jmp LEAF7732F_25
; //	goto	LEAF7732F_23;			
	pch =	LEAF7732F_23
	ljmp	LEAF7732F_23
; //LEAF7732F_25:;					
LEAF7732F_25:
; //	goto LEAF7732F_22;			
	pch =	LEAF7732F_22
	ljmp	LEAF7732F_22
; //LEAF7732F_24:;					
LEAF7732F_24:
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
; //	goto LEAF7732F_21;			
	pch =	LEAF7732F_21
	ljmp	LEAF7732F_21
; //LEAF7732F_22:;					
LEAF7732F_22:
; //_AAD201390_71:;					
_AAD201390_71:
; //	asm AX = PCMY+0;			
	AX = PCMY+0//
; //	PUSH(sAX);				
	push	AX
; //	sSI	= (int)&_i_1_2;			
	I1	= rm[BP_SAVE]
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	
; //	sCX	= POP();			
	pop	CX
; //	sAX	= sAX + sCX;			
	AR	= CX
	AX	+= AR
; //	PUSH(sAX);				
	push	AX
; //	sAX	= 0x0000;			
	AX	= 0x00
; //	sSI	= POP();			
	pop	I1
; //	*(__int16*)sSI	= sAX;			
	rm[I1]	= AX
; //	goto LEAF7732F_24;			
	pch =	LEAF7732F_24
	ljmp	LEAF7732F_24
; //LEAF7732F_23:;					
LEAF7732F_23:
; //_AAD201390_72:;					
_AAD201390_72:
; //_AAD201390_73:;					
_AAD201390_73:
; //	sAX	= 0x0000;			
	AX	= 0x00
; //	asm I1 = File_flag+0;			
	I1 = File_flag+0//
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_AAD201390_74:;					
_AAD201390_74:
; //	asm AX = #MyData+0;			
	AX = #MyData+0//
; //	asm I1 = _MyDataPnt+0;			
	I1 = _MyDataPnt+0//
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_AAD201390_75:;					
_AAD201390_75:
; //	asm AX = #MyData+0;			
	AX = #MyData+0//
; //	asm I1 = R_bts_ch0_get_ix+0;		
	I1 = R_bts_ch0_get_ix+0//
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_AAD201390_76:;					
_AAD201390_76:
; //	_i_1_2+0	= 0x3616;		
	I1	= rm[BP_SAVE]
	AR	= 0x3616
	rm[I1]	= AR
; //_AAD201390_77:;					
_AAD201390_77:
; //	asm I1 = _MyDataPnt+0;			
	I1 = _MyDataPnt+0//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sSI	= (int)&_i_1_2;			
	I1	= rm[BP_SAVE]
; //	sCX	= *(__int16*)sSI;		
	CX	= rm[I1]
; //	
; //	sAX	= sAX + sCX;			
	AR	= CX
	AX	+= AR
; //	asm I1 = MyEnd+0;			
	I1 = MyEnd+0//
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_AAD201390_78:;					
_AAD201390_78:
; //	asm	AR = PASR,0			
	AR = PASR,0
; //_AAD201390_79:;					
_AAD201390_79:
; //	asm AX = PCMY+0;			
	AX = PCMY+0//
; //	asm I1 = PCMYIN_PTR+0;			
	I1 = PCMYIN_PTR+0//
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_AAD201390_80:;					
_AAD201390_80:
; //	asm AX = PCMY+0;			
	AX = PCMY+0//
; //	asm I1 = PCMYOU_PTR+0;			
	I1 = PCMYOU_PTR+0//
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //	
; //_AAD201390_81:;					
_AAD201390_81:
; //	sAX	= 0x003F;			
	AX	= 0x3F
; //_AAD201390_82:;					
_AAD201390_82:
; //	asm	AR = AX				
	AR = AX
; //_AAD201390_83:;					
_AAD201390_83:
; //	asm	FLTG = AR			
	FLTG = AR
; //	
; //_AAD201390_84:;					
_AAD201390_84:
; //	sAX	= 0x1FFF;			
	AX	= 0x1FFF
; //_AAD201390_85:;					
_AAD201390_85:
; //	asm	AR = AX				
	AR = AX
; //_AAD201390_86:;					
_AAD201390_86:
; //	asm	FLTP = AR			
	FLTP = AR
; //	
; //_AAD201390_87:;					
_AAD201390_87:
; //	sAX	= 0x0000;			
	AX	= 0x00
; //_AAD201390_88:;					
_AAD201390_88:
; //	asm	AR = AX				
	AR = AX
; //_AAD201390_89:;					
_AAD201390_89:
; //	asm	CBL = AR			
	CBL = AR
; //_AAD201390_90:;					
_AAD201390_90:
; //_AAD201390_91:;					
_AAD201390_91:
; //	GetMp3data();				
	pch	= GetMp3data
	lcall	GetMp3data
; //_AAD201390_92:;					
_AAD201390_92:
; //_AAD201390_93:;					
_AAD201390_93:
; //	MP3_ch0InitV07();			
	pch	= MP3_ch0InitV07
	lcall	MP3_ch0InitV07
; //_AAD201390_94:;					
_AAD201390_94:
; //	asm	set io[INTENA].b0		
	set io[INTENA].b0
; //_AAD201390_95:;					
_AAD201390_95:
; //	asm	eni				
	eni
; //LEAF7732F_20:;					
LEAF7732F_20:
; //_AAD201390_96:;					
_AAD201390_96:
; //	return;					
	AR	= 1
	BP	+= AR
	pop	AR
	rm[BP_SAVE]	= AR
	rets
; //_INITIAL0C18377D_end:;				
_INITIAL0C18377D_end:
; //_AAD201390_97:;					
_AAD201390_97:
; //}
; //
; //void GetMp3data()				
GetMp3data:
; //{
; //	__int16 _i_1_2;
; //	__int16 _j_1_4;
; //						
	AR	= rm[BP_SAVE]
	push	AR
	AR	= BP
	rm[BP_SAVE]	= AR
	AR	 = -2
	BP	+= AR
; //_AAD201390_98:;					
_AAD201390_98:
; //_AAD201390_99:;					
_AAD201390_99:
; //	asm AX = mp3Data+0;			
	AX = mp3Data+0//
; //	sSI	= (int)&_j_1_4;			
	AR	= -1
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	*(__int16*)sSI	= sAX;			
	rm[I1]	= AX
; //_AAD201390_100:;				
_AAD201390_100:
; //	sSI	= (int)&_j_1_4;			
	AR	= -1
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sCX	= 0x0005;			
	CX	= 0x05
; //	
; //	sAX	= sAX + sCX;			
	AR	= CX
	AX	+= AR
; //	sSI	= (int)&_j_1_4;			
	AR	= -1
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	*(__int16*)sSI	= sAX;			
	rm[I1]	= AX
; //_AAD201390_101:;				
_AAD201390_101:
; //	sSI	= (int)&_j_1_4;			
	AR	= -1
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	asm I1 = PCMIN1_PTR+0;			
	I1 = PCMIN1_PTR+0//
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_AAD201390_102:;				
_AAD201390_102:
; //	_i_1_2+0	= 0x00;			
	I1	= rm[BP_SAVE]
	AR	= 0x00
	rm[I1]	= AR
; //LEAF7732F_27:;					
LEAF7732F_27:
; //	sSI	= (int)&_i_1_2;			
	I1	= rm[BP_SAVE]
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sCX	= 0x0100;			
	CX	= 0x0100
; //	sfx_CMP_AX_CX_JL();			
	pch	= sfx_CMP_AX_CX_JL
	lcall	sfx_CMP_AX_CX_JL
; //	if(__je__)	goto LEAF7732F_31;	
	if ZR	jmp LEAF7732F_31
; //	goto	LEAF7732F_29;			
	pch =	LEAF7732F_29
	ljmp	LEAF7732F_29
; //LEAF7732F_31:;					
LEAF7732F_31:
; //	goto LEAF7732F_28;			
	pch =	LEAF7732F_28
	ljmp	LEAF7732F_28
; //LEAF7732F_30:;					
LEAF7732F_30:
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
; //	goto LEAF7732F_27;			
	pch =	LEAF7732F_27
	ljmp	LEAF7732F_27
; //LEAF7732F_28:;					
LEAF7732F_28:
; //	
; //_AAD201390_103:;				
_AAD201390_103:
; //	sSI	= (int)&_j_1_4;			
	AR	= -1
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	PUSH(sAX);				
	push	AX
; //	asm I1 = _MyDataPnt+0;			
	I1 = _MyDataPnt+0//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sSI	= (int)&_MyDataPnt;		
	I1	= _MyDataPnt
; //	sCX	= *(__int16*)sSI;		
	CX	= rm[I1]
; //	sCX++;					
	CX++
; //	*(__int16*)sSI	= sCX;			
	rm[I1]	= CX
; //	sDI	= sAX;				
	AR	= AX
	P1	= AR
; //	sAX	= *(__int16*)sDI;		
	AX	= pm[P1]
; //	sSI	= POP();			
	pop	I1
; //	*(__int16*)sSI	= sAX;			
	rm[I1]	= AX
; //	sSI	= (int)&_j_1_4;			
	AR	= -1
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	asm AR = 0x0001;			
	AR = 0x0001//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	asm rm[I1] = AX + AR;			
	rm[I1] = AX + AR//
; //	goto LEAF7732F_30;			
	pch =	LEAF7732F_30
	ljmp	LEAF7732F_30
; //LEAF7732F_29:;					
LEAF7732F_29:
; //_AAD201390_104:;				
_AAD201390_104:
; //_AAD201390_105:;				
_AAD201390_105:
; //	asm I1 = _MyDataPnt+0;			
	I1 = _MyDataPnt+0//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	asm I1 = MyEnd+0;			
	I1 = MyEnd+0//
; //	asm CX = rm[I1];			
	CX = rm[I1]//
; //	sfx_CMP_AX_CX_JA();			
	pch	= sfx_CMP_AX_CX_JA
	lcall	sfx_CMP_AX_CX_JA
; //	if(__je__)	goto LEAF7732F_33;	
	if ZR	jmp LEAF7732F_33
; //	goto	LEAF7732F_32;			
	pch =	LEAF7732F_32
	ljmp	LEAF7732F_32
; //LEAF7732F_33:;					
LEAF7732F_33:
; //	
; //_AAD201390_106:;				
_AAD201390_106:
; //	sAX	= 0x0008;			
	AX	= 0x08
; //	asm I1 = File_flag+0;			
	I1 = File_flag+0//
; //	asm AR = rm[I1];			
	AR = rm[I1]//
; //	asm AX = AX | AR;			
	AX = AX | AR//
; //	asm I1 = File_flag+0;			
	I1 = File_flag+0//
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //LEAF7732F_32:;					
LEAF7732F_32:
; //_AAD201390_107:;				
_AAD201390_107:
; //LEAF7732F_26:;					
LEAF7732F_26:
; //_AAD201390_108:;				
_AAD201390_108:
; //	return;					
	AR	= 2
	BP	+= AR
	pop	AR
	rm[BP_SAVE]	= AR
	rets
; //GetMp3data_end:;				
GetMp3data_end:
; //_AAD201390_109:;				
_AAD201390_109:
; //}
; //
; //
; //
; //
.code
; //
; //
; //naked void ginit_code_MP3_F86E4DB1_s(void)	
ginit_code_MP3_F86E4DB1_s:
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
; //	asm	DW "demo.mp3"			
DW "demo.mp3"
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
