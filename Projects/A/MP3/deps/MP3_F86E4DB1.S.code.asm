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
; //_A927CDDA0_0:;					
_A927CDDA0_0:
; //_A927CDDA0_1:;					
_A927CDDA0_1:
; //	asm	clr io[INTREQ].b0		
	clr io[INTREQ].b0
; //_A927CDDA0_2:;					
_A927CDDA0_2:
; //	asm	push I0				
	push I0
; //_A927CDDA0_3:;					
_A927CDDA0_3:
; //	asm	push CBL			
	push CBL
; //	
; //_A927CDDA0_4:;					
_A927CDDA0_4:
; //	sAX	= 0x0009;			
	AX	= 0x09
; //_A927CDDA0_5:;					
_A927CDDA0_5:
; //	asm	AR = AX				
	AR = AX
; //_A927CDDA0_6:;					
_A927CDDA0_6:
; //	asm	CBL = AR			
	CBL = AR
; //	
; //	
; //_A927CDDA0_7:;					
_A927CDDA0_7:
; //	asm I1 = PCMYOU_PTR+0;			
	I1 = PCMYOU_PTR+0//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //_A927CDDA0_8:;					
_A927CDDA0_8:
; //	asm	AR = AX				
	AR = AX
; //_A927CDDA0_9:;					
_A927CDDA0_9:
; //	asm	I0 = AR				
	I0 = AR
; //	
; //	
; //_A927CDDA0_10:;					
_A927CDDA0_10:
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
; //_A927CDDA0_11:;					
_A927CDDA0_11:
; //_A927CDDA0_12:;					
_A927CDDA0_12:
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
; //_A927CDDA0_13:;					
_A927CDDA0_13:
; //_A927CDDA0_14:;					
_A927CDDA0_14:
; //	read_I0P();				
	AX	= rm[I0++]
; //_A927CDDA0_15:;					
_A927CDDA0_15:
; //	asm	AR = AX				
	AR = AX
; //_A927CDDA0_16:;					
_A927CDDA0_16:
; //	asm	FLTI = AR			
	FLTI = AR
; //	
; //	
; //LEAF7732F_8:;					
LEAF7732F_8:
; //_A927CDDA0_17:;					
_A927CDDA0_17:
; //	
; //_A927CDDA0_18:;					
_A927CDDA0_18:
; //_A927CDDA0_19:;					
_A927CDDA0_19:
; //	get_FLTO();				
	pch	= get_FLTO
	lcall	get_FLTO
; //_A927CDDA0_20:;					
_A927CDDA0_20:
; //	asm	AR = AX				
	AR = AX
; //_A927CDDA0_21:;					
_A927CDDA0_21:
; //	asm	io[DACL] = AR			
	io[DACL] = AR
; //	
; //_A927CDDA0_22:;					
_A927CDDA0_22:
; //	goto LEAF7732F_6;			
	pch =	LEAF7732F_6
	ljmp	LEAF7732F_6
; //LEAF7732F_5:;					
LEAF7732F_5:
; //_A927CDDA0_23:;					
_A927CDDA0_23:
; //_A927CDDA0_24:;					
_A927CDDA0_24:
; //	get_I0();				
	push	I0
	pop	AX
; //	asm I1 = PCMYOU_PTR+0;			
	I1 = PCMYOU_PTR+0//
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_A927CDDA0_25:;					
_A927CDDA0_25:
; //	asm	pop CBL				
	pop CBL
; //_A927CDDA0_26:;					
_A927CDDA0_26:
; //	asm	pop I0				
	pop I0
; //LEAF7732F_2:;					
LEAF7732F_2:
; //_A927CDDA0_27:;					
_A927CDDA0_27:
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
; //_A927CDDA0_28:;					
_A927CDDA0_28:
; //}
; //
; //void _main()					
_main:
; //{
; //_A927CDDA0_29:;					
_A927CDDA0_29:
; //	
; //_A927CDDA0_30:;					
_A927CDDA0_30:
; //_A927CDDA0_31:;					
_A927CDDA0_31:
; //	_INITIAL0C18377D();			
	pch	= _INITIAL0C18377D
	lcall	_INITIAL0C18377D
; //LEAF7732F_12:;					
LEAF7732F_12:
; //_A927CDDA0_32:;					
_A927CDDA0_32:
; //_A927CDDA0_33:;					
_A927CDDA0_33:
; //	asm	io[ClrWDT] = AR			
	io[ClrWDT] = AR
; //	
; //_A927CDDA0_34:;					
_A927CDDA0_34:
; //_A927CDDA0_35:;					
_A927CDDA0_35:
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
; //_A927CDDA0_36:;					
_A927CDDA0_36:
; //	goto LEAF7732F_12;			
	pch =	LEAF7732F_12
	ljmp	LEAF7732F_12
; //LEAF7732F_13:;					
LEAF7732F_13:
; //_A927CDDA0_37:;					
_A927CDDA0_37:
; //_A927CDDA0_38:;					
_A927CDDA0_38:
; //_A927CDDA0_39:;					
_A927CDDA0_39:
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
; //_A927CDDA0_40:;					
_A927CDDA0_40:
; //_A927CDDA0_41:;					
_A927CDDA0_41:
; //	_INITIAL0C18377D();			
	pch	= _INITIAL0C18377D
	lcall	_INITIAL0C18377D
; //LEAF7732F_15:;					
LEAF7732F_15:
; //_A927CDDA0_42:;					
_A927CDDA0_42:
; //_A927CDDA0_43:;					
_A927CDDA0_43:
; //	goto LEAF7732F_12;			
	pch =	LEAF7732F_12
	ljmp	LEAF7732F_12
; //LEAF7732F_11:;					
LEAF7732F_11:
; //LEAF7732F_10:;					
LEAF7732F_10:
; //_A927CDDA0_44:;					
_A927CDDA0_44:
; //	return;					
	rets
; //_main_end:;					
_main_end:
; //_A927CDDA0_45:;					
_A927CDDA0_45:
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
; //_A927CDDA0_46:;					
_A927CDDA0_46:
; //	
; //_A927CDDA0_47:;					
_A927CDDA0_47:
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
; //_A927CDDA0_48:;					
_A927CDDA0_48:
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
; //_A927CDDA0_49:;					
_A927CDDA0_49:
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
; //_A927CDDA0_50:;					
_A927CDDA0_50:
; //_A927CDDA0_51:;					
_A927CDDA0_51:
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
; //_A927CDDA0_52:;					
_A927CDDA0_52:
; //	sSI	= (int)&_x_1_2;			
	I1	= rm[BP_SAVE]
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	goto LEAF7732F_17;			
	pch =	LEAF7732F_17
	ljmp	LEAF7732F_17
; //LEAF7732F_17:;					
LEAF7732F_17:
; //_A927CDDA0_53:;					
_A927CDDA0_53:
; //	return;					
	AR	= 1
	BP	+= AR
	pop	AR
	rm[BP_SAVE]	= AR
	rets
; //_WaitPCM_Empty_size53398B9D_end:;		
_WaitPCM_Empty_size53398B9D_end:
; //_A927CDDA0_54:;					
_A927CDDA0_54:
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
; //_A927CDDA0_55:;					
_A927CDDA0_55:
; //	
; //_A927CDDA0_56:;					
_A927CDDA0_56:
; //	sAX	= 0x0000;			
	AX	= 0x00
; //_A927CDDA0_57:;					
_A927CDDA0_57:
; //	asm	AR = AX				
	AR = AX
; //_A927CDDA0_58:;					
_A927CDDA0_58:
; //	asm	FLTI = AR			
	FLTI = AR
; //	
; //	
; //_A927CDDA0_59:;					
_A927CDDA0_59:
; //	sAX	= 0x0000;			
	AX	= 0x00
; //_A927CDDA0_60:;					
_A927CDDA0_60:
; //	asm	AR = AX				
	AR = AX
; //_A927CDDA0_61:;					
_A927CDDA0_61:
; //	asm	FLTI = AR			
	FLTI = AR
; //	
; //	
; //_A927CDDA0_62:;					
_A927CDDA0_62:
; //	sAX	= 0x0000;			
	AX	= 0x00
; //_A927CDDA0_63:;					
_A927CDDA0_63:
; //	asm	AR = AX				
	AR = AX
; //_A927CDDA0_64:;					
_A927CDDA0_64:
; //	asm	FLTI = AR			
	FLTI = AR
; //	
; //	
; //_A927CDDA0_65:;					
_A927CDDA0_65:
; //	sAX	= 0x0000;			
	AX	= 0x00
; //_A927CDDA0_66:;					
_A927CDDA0_66:
; //	asm	AR = AX				
	AR = AX
; //_A927CDDA0_67:;					
_A927CDDA0_67:
; //	asm	FLTI = AR			
	FLTI = AR
; //	
; //	
; //_A927CDDA0_68:;					
_A927CDDA0_68:
; //	sAX	= 0x0000;			
	AX	= 0x00
; //_A927CDDA0_69:;					
_A927CDDA0_69:
; //	asm	AR = AX				
	AR = AX
; //_A927CDDA0_70:;					
_A927CDDA0_70:
; //	asm	FLTA = AR			
	FLTA = AR
; //	
; //	
; //_A927CDDA0_71:;					
_A927CDDA0_71:
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
; //_A927CDDA0_72:;					
_A927CDDA0_72:
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
; //_A927CDDA0_73:;					
_A927CDDA0_73:
; //	goto LEAF7732F_24;			
	pch =	LEAF7732F_24
	ljmp	LEAF7732F_24
; //LEAF7732F_23:;					
LEAF7732F_23:
; //_A927CDDA0_74:;					
_A927CDDA0_74:
; //	sAX	= 0x0000;			
	AX	= 0x00
; //	asm I1 = File_flag+0;			
	I1 = File_flag+0//
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_A927CDDA0_75:;					
_A927CDDA0_75:
; //	asm AX = #MyData+0;			
	AX = #MyData+0//
; //	asm I1 = _MyDataPnt+0;			
	I1 = _MyDataPnt+0//
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_A927CDDA0_76:;					
_A927CDDA0_76:
; //	asm AX = #MyData+0;			
	AX = #MyData+0//
; //	asm I1 = R_bts_ch0_get_ix+0;		
	I1 = R_bts_ch0_get_ix+0//
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_A927CDDA0_77:;					
_A927CDDA0_77:
; //	_i_1_2+0	= 0x01;			
	I1	= rm[BP_SAVE]
	AX	= 0x01
	rm[I1]	= AX
; //_A927CDDA0_78:;					
_A927CDDA0_78:
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
; //_A927CDDA0_79:;					
_A927CDDA0_79:
; //	asm	AR = PASR,0			
	AR = PASR,0
; //_A927CDDA0_80:;					
_A927CDDA0_80:
; //	asm AX = PCMY+0;			
	AX = PCMY+0//
; //	asm I1 = PCMYIN_PTR+0;			
	I1 = PCMYIN_PTR+0//
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_A927CDDA0_81:;					
_A927CDDA0_81:
; //	asm AX = PCMY+0;			
	AX = PCMY+0//
; //	asm I1 = PCMYOU_PTR+0;			
	I1 = PCMYOU_PTR+0//
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //	
; //_A927CDDA0_82:;					
_A927CDDA0_82:
; //	sAX	= 0x003F;			
	AX	= 0x3F
; //_A927CDDA0_83:;					
_A927CDDA0_83:
; //	asm	AR = AX				
	AR = AX
; //_A927CDDA0_84:;					
_A927CDDA0_84:
; //	asm	FLTG = AR			
	FLTG = AR
; //	
; //	
; //_A927CDDA0_85:;					
_A927CDDA0_85:
; //	sAX	= 0x1FFF;			
	AX	= 0x1FFF
; //_A927CDDA0_86:;					
_A927CDDA0_86:
; //	asm	AR = AX				
	AR = AX
; //_A927CDDA0_87:;					
_A927CDDA0_87:
; //	asm	FLTP = AR			
	FLTP = AR
; //	
; //	
; //_A927CDDA0_88:;					
_A927CDDA0_88:
; //	sAX	= 0x0000;			
	AX	= 0x00
; //_A927CDDA0_89:;					
_A927CDDA0_89:
; //	asm	AR = AX				
	AR = AX
; //_A927CDDA0_90:;					
_A927CDDA0_90:
; //	asm	CBL = AR			
	CBL = AR
; //	
; //_A927CDDA0_91:;					
_A927CDDA0_91:
; //_A927CDDA0_92:;					
_A927CDDA0_92:
; //	GetMp3data();				
	pch	= GetMp3data
	lcall	GetMp3data
; //_A927CDDA0_93:;					
_A927CDDA0_93:
; //_A927CDDA0_94:;					
_A927CDDA0_94:
; //	MP3_ch0InitV07();			
	pch	= MP3_ch0InitV07
	lcall	MP3_ch0InitV07
; //_A927CDDA0_95:;					
_A927CDDA0_95:
; //	asm	set io[INTENA].b0		
	set io[INTENA].b0
; //_A927CDDA0_96:;					
_A927CDDA0_96:
; //	asm	eni				
	eni
; //LEAF7732F_20:;					
LEAF7732F_20:
; //_A927CDDA0_97:;					
_A927CDDA0_97:
; //	return;					
	AR	= 1
	BP	+= AR
	pop	AR
	rm[BP_SAVE]	= AR
	rets
; //_INITIAL0C18377D_end:;				
_INITIAL0C18377D_end:
; //_A927CDDA0_98:;					
_A927CDDA0_98:
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
; //_A927CDDA0_99:;					
_A927CDDA0_99:
; //	
; //_A927CDDA0_100:;				
_A927CDDA0_100:
; //	asm AX = mp3Data+0;			
	AX = mp3Data+0//
; //	sSI	= (int)&_j_1_4;			
	AR	= -1
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	*(__int16*)sSI	= sAX;			
	rm[I1]	= AX
; //_A927CDDA0_101:;				
_A927CDDA0_101:
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
; //_A927CDDA0_102:;				
_A927CDDA0_102:
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
; //_A927CDDA0_103:;				
_A927CDDA0_103:
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
; //_A927CDDA0_104:;				
_A927CDDA0_104:
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
; //_A927CDDA0_105:;				
_A927CDDA0_105:
; //	goto LEAF7732F_30;			
	pch =	LEAF7732F_30
	ljmp	LEAF7732F_30
; //LEAF7732F_29:;					
LEAF7732F_29:
; //_A927CDDA0_106:;				
_A927CDDA0_106:
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
; //_A927CDDA0_107:;				
_A927CDDA0_107:
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
; //_A927CDDA0_108:;				
_A927CDDA0_108:
; //LEAF7732F_26:;					
LEAF7732F_26:
; //_A927CDDA0_109:;				
_A927CDDA0_109:
; //	return;					
	AR	= 2
	BP	+= AR
	pop	AR
	rm[BP_SAVE]	= AR
	rets
; //GetMp3data_end:;				
GetMp3data_end:
; //_A927CDDA0_110:;				
_A927CDDA0_110:
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
