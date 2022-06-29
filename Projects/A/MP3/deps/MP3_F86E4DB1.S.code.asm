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
; //_A92306520_0:;					
_A92306520_0:
; //_A92306520_1:;					
_A92306520_1:
; //	asm	clr io[INTREQ].b0		
	clr io[INTREQ].b0
; //_A92306520_2:;					
_A92306520_2:
; //	asm	push I0				
	push I0
; //_A92306520_3:;					
_A92306520_3:
; //	asm	push CBL			
	push CBL
; //	
; //_A92306520_4:;					
_A92306520_4:
; //	sAX	= 0x0009;			
	AX	= 0x09
; //_A92306520_5:;					
_A92306520_5:
; //	asm	AR = AX				
	AR = AX
; //_A92306520_6:;					
_A92306520_6:
; //	asm	CBL = AR			
	CBL = AR
; //	
; //	
; //_A92306520_7:;					
_A92306520_7:
; //	asm I1 = PCMYOU_PTR+0;			
	I1 = PCMYOU_PTR+0//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //_A92306520_8:;					
_A92306520_8:
; //	asm	AR = AX				
	AR = AX
; //_A92306520_9:;					
_A92306520_9:
; //	asm	I0 = AR				
	I0 = AR
; //	
; //	
; //_A92306520_10:;					
_A92306520_10:
; //	_i_1_2+0	= 0x00;			
	I1	= rm[BP_SAVE]
	AX	= 0x00
	rm[I1]	= AX
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
; //_A92306520_11:;					
_A92306520_11:
; //_A92306520_12:;					
_A92306520_12:
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
; //_A92306520_13:;					
_A92306520_13:
; //_A92306520_14:;					
_A92306520_14:
; //	read_I0P();				
	AX	= rm[I0++]
; //_A92306520_15:;					
_A92306520_15:
; //	asm	AR = AX				
	AR = AX
; //_A92306520_16:;					
_A92306520_16:
; //	asm	FLTI = AR			
	FLTI = AR
; //	
; //	
; //LEAF7732F_8:;					
LEAF7732F_8:
; //_A92306520_17:;					
_A92306520_17:
; //	
; //_A92306520_18:;					
_A92306520_18:
; //_A92306520_19:;					
_A92306520_19:
; //	get_FLTO();				
	pch	= get_FLTO
	lcall	get_FLTO
; //_A92306520_20:;					
_A92306520_20:
; //	asm	AR = AX				
	AR = AX
; //_A92306520_21:;					
_A92306520_21:
; //	asm	io[DACL] = AR			
	io[DACL] = AR
; //	
; //_A92306520_22:;					
_A92306520_22:
; //	goto LEAF7732F_6;			
	pch =	LEAF7732F_6
	ljmp	LEAF7732F_6
; //LEAF7732F_5:;					
LEAF7732F_5:
; //_A92306520_23:;					
_A92306520_23:
; //_A92306520_24:;					
_A92306520_24:
; //	get_I0();				
	push	I0
	pop	AX
; //	asm I1 = PCMYOU_PTR+0;			
	I1 = PCMYOU_PTR+0//
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_A92306520_25:;					
_A92306520_25:
; //	asm	pop CBL				
	pop CBL
; //_A92306520_26:;					
_A92306520_26:
; //	asm	pop I0				
	pop I0
; //LEAF7732F_2:;					
LEAF7732F_2:
; //_A92306520_27:;					
_A92306520_27:
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
; //_A92306520_28:;					
_A92306520_28:
; //}
; //
; //void _main()					
_main:
; //{
; //_A92306520_29:;					
_A92306520_29:
; //	
; //_A92306520_30:;					
_A92306520_30:
; //_A92306520_31:;					
_A92306520_31:
; //	_INITIAL0C18377D();			
	pch	= _INITIAL0C18377D
	lcall	_INITIAL0C18377D
; //LEAF7732F_12:;					
LEAF7732F_12:
; //_A92306520_32:;					
_A92306520_32:
; //_A92306520_33:;					
_A92306520_33:
; //	asm	io[ClrWDT] = AR			
	io[ClrWDT] = AR
; //	
; //_A92306520_34:;					
_A92306520_34:
; //_A92306520_35:;					
_A92306520_35:
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
; //_A92306520_36:;					
_A92306520_36:
; //	goto LEAF7732F_12;			
	pch =	LEAF7732F_12
	ljmp	LEAF7732F_12
; //LEAF7732F_13:;					
LEAF7732F_13:
; //_A92306520_37:;					
_A92306520_37:
; //_A92306520_38:;					
_A92306520_38:
; //_A92306520_39:;					
_A92306520_39:
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
; //_A92306520_40:;					
_A92306520_40:
; //_A92306520_41:;					
_A92306520_41:
; //	_INITIAL0C18377D();			
	pch	= _INITIAL0C18377D
	lcall	_INITIAL0C18377D
; //LEAF7732F_15:;					
LEAF7732F_15:
; //_A92306520_42:;					
_A92306520_42:
; //_A92306520_43:;					
_A92306520_43:
; //	goto LEAF7732F_12;			
	pch =	LEAF7732F_12
	ljmp	LEAF7732F_12
; //LEAF7732F_11:;					
LEAF7732F_11:
; //LEAF7732F_10:;					
LEAF7732F_10:
; //_A92306520_44:;					
_A92306520_44:
; //	return;					
	rets
; //_main_end:;					
_main_end:
; //_A92306520_45:;					
_A92306520_45:
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
; //_A92306520_46:;					
_A92306520_46:
; //	
; //_A92306520_47:;					
_A92306520_47:
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
; //_A92306520_48:;					
_A92306520_48:
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
; //_A92306520_49:;					
_A92306520_49:
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
; //_A92306520_50:;					
_A92306520_50:
; //_A92306520_51:;					
_A92306520_51:
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
; //_A92306520_52:;					
_A92306520_52:
; //	sSI	= (int)&_x_1_2;			
	I1	= rm[BP_SAVE]
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	goto LEAF7732F_17;			
	pch =	LEAF7732F_17
	ljmp	LEAF7732F_17
; //LEAF7732F_17:;					
LEAF7732F_17:
; //_A92306520_53:;					
_A92306520_53:
; //	return;					
	AR	= 1
	BP	+= AR
	pop	AR
	rm[BP_SAVE]	= AR
	rets
; //_WaitPCM_Empty_size53398B9D_end:;		
_WaitPCM_Empty_size53398B9D_end:
; //_A92306520_54:;					
_A92306520_54:
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
; //_A92306520_55:;					
_A92306520_55:
; //	
; //_A92306520_56:;					
_A92306520_56:
; //	sAX	= 0x0000;			
	AX	= 0x00
; //_A92306520_57:;					
_A92306520_57:
; //	asm	AR = AX				
	AR = AX
; //_A92306520_58:;					
_A92306520_58:
; //	asm	FLTI = AR			
	FLTI = AR
; //	
; //	
; //_A92306520_59:;					
_A92306520_59:
; //	sAX	= 0x0000;			
	AX	= 0x00
; //_A92306520_60:;					
_A92306520_60:
; //	asm	AR = AX				
	AR = AX
; //_A92306520_61:;					
_A92306520_61:
; //	asm	FLTI = AR			
	FLTI = AR
; //	
; //	
; //_A92306520_62:;					
_A92306520_62:
; //	sAX	= 0x0000;			
	AX	= 0x00
; //_A92306520_63:;					
_A92306520_63:
; //	asm	AR = AX				
	AR = AX
; //_A92306520_64:;					
_A92306520_64:
; //	asm	FLTI = AR			
	FLTI = AR
; //	
; //	
; //_A92306520_65:;					
_A92306520_65:
; //	sAX	= 0x0000;			
	AX	= 0x00
; //_A92306520_66:;					
_A92306520_66:
; //	asm	AR = AX				
	AR = AX
; //_A92306520_67:;					
_A92306520_67:
; //	asm	FLTI = AR			
	FLTI = AR
; //	
; //	
; //_A92306520_68:;					
_A92306520_68:
; //	sAX	= 0x0000;			
	AX	= 0x00
; //_A92306520_69:;					
_A92306520_69:
; //	asm	AR = AX				
	AR = AX
; //_A92306520_70:;					
_A92306520_70:
; //	asm	FLTA = AR			
	FLTA = AR
; //	
; //	
; //_A92306520_71:;					
_A92306520_71:
; //	_i_1_2+0	= 0x00;			
	I1	= rm[BP_SAVE]
	AX	= 0x00
	rm[I1]	= AX
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
; //_A92306520_72:;					
_A92306520_72:
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
; //_A92306520_73:;					
_A92306520_73:
; //	goto LEAF7732F_24;			
	pch =	LEAF7732F_24
	ljmp	LEAF7732F_24
; //LEAF7732F_23:;					
LEAF7732F_23:
; //_A92306520_74:;					
_A92306520_74:
; //	sAX	= 0x0000;			
	AX	= 0x00
; //	asm I1 = File_flag+0;			
	I1 = File_flag+0//
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_A92306520_75:;					
_A92306520_75:
; //	asm AX = #MyData+0;			
	AX = #MyData+0//
; //	asm I1 = _MyDataPnt+0;			
	I1 = _MyDataPnt+0//
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_A92306520_76:;					
_A92306520_76:
; //	asm AX = #MyData+0;			
	AX = #MyData+0//
; //	asm I1 = R_bts_ch0_get_ix+0;		
	I1 = R_bts_ch0_get_ix+0//
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_A92306520_77:;					
_A92306520_77:
; //	_i_1_2+0	= 0x01;			
	I1	= rm[BP_SAVE]
	AX	= 0x01
	rm[I1]	= AX
; //_A92306520_78:;					
_A92306520_78:
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
; //_A92306520_79:;					
_A92306520_79:
; //	asm	AR = PASR,0			
	AR = PASR,0
; //_A92306520_80:;					
_A92306520_80:
; //	asm AX = PCMY+0;			
	AX = PCMY+0//
; //	asm I1 = PCMYIN_PTR+0;			
	I1 = PCMYIN_PTR+0//
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_A92306520_81:;					
_A92306520_81:
; //	asm AX = PCMY+0;			
	AX = PCMY+0//
; //	asm I1 = PCMYOU_PTR+0;			
	I1 = PCMYOU_PTR+0//
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //	
; //_A92306520_82:;					
_A92306520_82:
; //	sAX	= 0x003F;			
	AX	= 0x3F
; //_A92306520_83:;					
_A92306520_83:
; //	asm	AR = AX				
	AR = AX
; //_A92306520_84:;					
_A92306520_84:
; //	asm	FLTG = AR			
	FLTG = AR
; //	
; //	
; //_A92306520_85:;					
_A92306520_85:
; //	sAX	= 0x1FFF;			
	AX	= 0x1FFF
; //_A92306520_86:;					
_A92306520_86:
; //	asm	AR = AX				
	AR = AX
; //_A92306520_87:;					
_A92306520_87:
; //	asm	FLTP = AR			
	FLTP = AR
; //	
; //	
; //_A92306520_88:;					
_A92306520_88:
; //	sAX	= 0x0000;			
	AX	= 0x00
; //_A92306520_89:;					
_A92306520_89:
; //	asm	AR = AX				
	AR = AX
; //_A92306520_90:;					
_A92306520_90:
; //	asm	CBL = AR			
	CBL = AR
; //	
; //_A92306520_91:;					
_A92306520_91:
; //_A92306520_92:;					
_A92306520_92:
; //	GetMp3data();				
	pch	= GetMp3data
	lcall	GetMp3data
; //_A92306520_93:;					
_A92306520_93:
; //_A92306520_94:;					
_A92306520_94:
; //	MP3_ch0InitV07();			
	pch	= MP3_ch0InitV07
	lcall	MP3_ch0InitV07
; //_A92306520_95:;					
_A92306520_95:
; //	asm	set io[INTENA].b0		
	set io[INTENA].b0
; //_A92306520_96:;					
_A92306520_96:
; //	asm	eni				
	eni
; //LEAF7732F_20:;					
LEAF7732F_20:
; //_A92306520_97:;					
_A92306520_97:
; //	return;					
	AR	= 1
	BP	+= AR
	pop	AR
	rm[BP_SAVE]	= AR
	rets
; //_INITIAL0C18377D_end:;				
_INITIAL0C18377D_end:
; //_A92306520_98:;					
_A92306520_98:
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
; //_A92306520_99:;					
_A92306520_99:
; //	
; //_A92306520_100:;				
_A92306520_100:
; //	asm AX = mp3Data+0;			
	AX = mp3Data+0//
; //	sSI	= (int)&_j_1_4;			
	AR	= -1
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	*(__int16*)sSI	= sAX;			
	rm[I1]	= AX
; //_A92306520_101:;				
_A92306520_101:
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
; //_A92306520_102:;				
_A92306520_102:
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
; //_A92306520_103:;				
_A92306520_103:
; //	_i_1_2+0	= 0x00;			
	I1	= rm[BP_SAVE]
	AX	= 0x00
	rm[I1]	= AX
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
; //_A92306520_104:;				
_A92306520_104:
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
; //_A92306520_105:;				
_A92306520_105:
; //	goto LEAF7732F_30;			
	pch =	LEAF7732F_30
	ljmp	LEAF7732F_30
; //LEAF7732F_29:;					
LEAF7732F_29:
; //_A92306520_106:;				
_A92306520_106:
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
; //_A92306520_107:;				
_A92306520_107:
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
; //_A92306520_108:;				
_A92306520_108:
; //LEAF7732F_26:;					
LEAF7732F_26:
; //_A92306520_109:;				
_A92306520_109:
; //	return;					
	AR	= 2
	BP	+= AR
	pop	AR
	rm[BP_SAVE]	= AR
	rets
; //GetMp3data_end:;				
GetMp3data_end:
; //_A92306520_110:;				
_A92306520_110:
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
