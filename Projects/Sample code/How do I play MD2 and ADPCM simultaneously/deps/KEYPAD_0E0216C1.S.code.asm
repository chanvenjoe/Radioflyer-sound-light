; keypad.c Code Start!!;
VarRM[0:4095]={
 L5589D4CE_25,L5589D4CE_26,L5589D4CE_27 
};

; //
.code
; //
; //
; //rjmp void _InitKey3C587B6D();
; //rjmp void _PollingKey3B90E3B1();
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
; //rjmp void _InitKey3C587B6D()			
_InitKey3C587B6D:
; //{
; //_A149B8B01_74:;					
_A149B8B01_74:
; //	
; //_A149B8B01_75:;					
_A149B8B01_75:
; //	asm clr io[0x04].b0;			
	clr io[0x04].b0//
; //_A149B8B01_76:;					
_A149B8B01_76:
; //	asm clr io[0x04].b1;			
	clr io[0x04].b1//
; //_A149B8B01_77:;					
_A149B8B01_77:
; //	asm clr io[0x04].b2;			
	clr io[0x04].b2//
; //_A149B8B01_78:;					
_A149B8B01_78:
; //	asm clr io[0x04].b3;			
	clr io[0x04].b3//
; //_A149B8B01_79:;					
_A149B8B01_79:
; //	io[0x1E]	= 0x0005;		
	AR	= 0x05
	io[0x1E]	= AR
; //_A149B8B01_80:;					
_A149B8B01_80:
; //	sAX	= 0x000F;			
	AX	= 0x0F
; //	sAX	= sAX | io[0x1F];		
	AR	= io[0x1F]
	AX	|= AR
; //	io[0x1F]	= sAX;			
	AR	= AX
	io[0x1F]	= AR
; //_A149B8B01_81:;					
_A149B8B01_81:
; //	sAX	= 0x0000;			
	AX	= 0x00
; //	sSI	= (int)&L5589D4CE_25;		
	I1	= L5589D4CE_25
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_A149B8B01_82:;					
_A149B8B01_82:
; //	sAX	= 0x0000;			
	AX	= 0x00
; //	sSI	= (int)&L5589D4CE_26;		
	I1	= L5589D4CE_26
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_A149B8B01_83:;					
_A149B8B01_83:
; //	sAX	= 0x0200;			
	AX	= 0x0200
; //	sSI	= (int)&L5589D4CE_27;		
	I1	= L5589D4CE_27
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //L5589D4CE_28:;					
L5589D4CE_28:
; //_A149B8B01_84:;					
_A149B8B01_84:
; //	return;					
	rets
; //_InitKey3C587B6D_end:;				
_InitKey3C587B6D_end:
; //_A149B8B01_85:;					
_A149B8B01_85:
; //}
; //
; //rjmp void L5589D4CE_29()			
L5589D4CE_29:
; //{
; //	__int16 _btn_1_2;
; //						
	AR	= rm[BP_SAVE]
	push	AR
	AR	= BP
	rm[BP_SAVE]	= AR
	AR	 = -1
	BP	+= AR
; //_A149B8B01_86:;					
_A149B8B01_86:
; //_A149B8B01_87:;					
_A149B8B01_87:
; //	sAX	= 0x000F;			
	AX	= 0x0F
; //	sAX	= sAX & io[0x07];		
	AR	= io[0x07]
	AX	&= AR
; //	sSI	= (int)&_btn_1_2;		
	I1	= rm[BP_SAVE]
; //	*(__int16*)sSI	= sAX;			
	rm[I1]	= AX
; //_A149B8B01_88:;					
_A149B8B01_88:
; //	sSI	= (int)&_btn_1_2;		
	I1	= rm[BP_SAVE]
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	goto L5589D4CE_31;			
	jmp	L5589D4CE_31
; //L5589D4CE_31:;					
L5589D4CE_31:
; //_A149B8B01_89:;					
_A149B8B01_89:
; //	return;					
	AR	= 1
	BP	+= AR
	pop	AR
	rm[BP_SAVE]	= AR
	rets
; //L5589D4CE_29_end:;				
L5589D4CE_29_end:
; //_A149B8B01_90:;					
_A149B8B01_90:
; //}
; //
; //rjmp void _PollingKey3B90E3B1()			
_PollingKey3B90E3B1:
; //{
; //	__int16 _keynow_1_2;
; //	__int16 _i_1_4;
; //	__int16 _bits_1_6;
; //	__int16 _bitp_1_8;
; //	__int16 _pkey_1_10;
; //						
	AR	= rm[BP_SAVE]
	push	AR
	AR	= BP
	rm[BP_SAVE]	= AR
	AR	 = -5
	BP	+= AR
; //_A149B8B01_91:;					
_A149B8B01_91:
; //_A149B8B01_92:;					
_A149B8B01_92:
; //_A149B8B01_93:;					
_A149B8B01_93:
; //	NEARCALL(L5589D4CE_29);			
	call	L5589D4CE_29
; //	sSI	= (int)&_keynow_1_2;		
	I1	= rm[BP_SAVE]
; //	*(__int16*)sSI	= sAX;			
	rm[I1]	= AX
; //_A149B8B01_94:;					
_A149B8B01_94:
; //	asm I1 = L5589D4CE_25+0;		
	I1 = L5589D4CE_25+0//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sSI	= (int)&_keynow_1_2;		
	I1	= rm[BP_SAVE]
; //	sCX	= *(__int16*)sSI;		
	CX	= rm[I1]
; //	sfx_CMP_AX_CX_JNE();			
	pch	= sfx_CMP_AX_CX_JNE
	lcall	sfx_CMP_AX_CX_JNE
; //	if(__je__)	goto L5589D4CE_34;	
	if ZR	jmp L5589D4CE_34
; //	goto	L5589D4CE_33;			
	jmp	L5589D4CE_33
; //L5589D4CE_34:;					
L5589D4CE_34:
; //	
; //_A149B8B01_95:;					
_A149B8B01_95:
; //	sSI	= (int)&_keynow_1_2;		
	I1	= rm[BP_SAVE]
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sSI	= (int)&L5589D4CE_25;		
	I1	= L5589D4CE_25
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_A149B8B01_96:;					
_A149B8B01_96:
; //	sAX	= 0x0200;			
	AX	= 0x0200
; //	sSI	= (int)&L5589D4CE_27;		
	I1	= L5589D4CE_27
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_A149B8B01_97:;					
_A149B8B01_97:
; //	goto L5589D4CE_32;			
	jmp	L5589D4CE_32
; //L5589D4CE_33:;					
L5589D4CE_33:
; //_A149B8B01_98:;					
_A149B8B01_98:
; //_A149B8B01_99:;					
_A149B8B01_99:
; //	asm I1 = L5589D4CE_27+0;		
	I1 = L5589D4CE_27+0//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sfx_CHECKZERO();			
	AR	= AX
; //	if(__jnz__)	goto L5589D4CE_36;	
	if NZ	jmp L5589D4CE_36
; //	goto	L5589D4CE_35;			
	jmp	L5589D4CE_35
; //L5589D4CE_36:;					
L5589D4CE_36:
; //	
; //_A149B8B01_100:;				
_A149B8B01_100:
; //	asm I1 = L5589D4CE_27+0;		
	I1 = L5589D4CE_27+0//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sCX	= 0x0001;			
	CX	= 0x01
; //	sAX	= sAX - sCX;			
	AR	= CX
	AX	-= AR
; //	sSI	= (int)&L5589D4CE_27;		
	I1	= L5589D4CE_27
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_A149B8B01_101:;				
_A149B8B01_101:
; //	goto L5589D4CE_32;			
	jmp	L5589D4CE_32
; //L5589D4CE_35:;					
L5589D4CE_35:
; //_A149B8B01_102:;				
_A149B8B01_102:
; //_A149B8B01_103:;				
_A149B8B01_103:
; //	asm AX = #_keyfuncF06F3D55+0;		
	AX = #_keyfuncF06F3D55+0//
; //	sSI	= (int)&_pkey_1_10;		
	AR	= -4
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	*(__int16*)sSI	= sAX;			
	rm[I1]	= AX
; //_A149B8B01_104:;				
_A149B8B01_104:
; //	sAX	= 0x0200;			
	AX	= 0x0200
; //	sSI	= (int)&L5589D4CE_27;		
	I1	= L5589D4CE_27
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_A149B8B01_105:;				
_A149B8B01_105:
; //	asm I1 = L5589D4CE_26+0;		
	I1 = L5589D4CE_26+0//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	asm I1 = L5589D4CE_25+0;		
	I1 = L5589D4CE_25+0//
; //	asm AR = rm[I1];			
	AR = rm[I1]//
; //	asm AX = AX ^ AR;			
	AX = AX ^ AR//
; //	sSI	= (int)&_bits_1_6;		
	AR	= -2
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	*(__int16*)sSI	= sAX;			
	rm[I1]	= AX
; //_A149B8B01_106:;				
_A149B8B01_106:
; //	asm I1 = L5589D4CE_26+0;		
	I1 = L5589D4CE_26+0//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sSI	= (int)&_bitp_1_8;		
	AR	= -3
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	*(__int16*)sSI	= sAX;			
	rm[I1]	= AX
; //_A149B8B01_107:;				
_A149B8B01_107:
; //	asm I1 = L5589D4CE_25+0;		
	I1 = L5589D4CE_25+0//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sSI	= (int)&L5589D4CE_26;		
	I1	= L5589D4CE_26
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_A149B8B01_108:;				
_A149B8B01_108:
; //	_i_1_4+0	= 0x05;			
	AR	= -1
	I1	= rm[BP_SAVE]
	I1	+= AR
	AR	= 0x05
	rm[I1]	= AR
; //L5589D4CE_38:;					
L5589D4CE_38:
; //_A149B8B01_109:;				
_A149B8B01_109:
; //	sSI	= (int)&_i_1_4;			
	AR	= -1
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sSI	= (int)&_i_1_4;			
	AR	= -1
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	asm AR = 0x0001;			
	AR = 0x0001//
; //	sCX	= *(__int16*)sSI;		
	CX	= rm[I1]
; //	asm rm[I1] = CX - AR;			
	rm[I1] = CX - AR//
; //	sfx_CHECKZERO();			
	AR	= AX
; //	if(__jnz__)	goto L5589D4CE_39;	
	if NZ	jmp L5589D4CE_39
; //	goto	L5589D4CE_37;			
	jmp	L5589D4CE_37
; //L5589D4CE_39:;					
L5589D4CE_39:
; //	
; //_A149B8B01_110:;				
_A149B8B01_110:
; //	sAX	= 0;				
	AX	= 0x00
; //	sSI	= (int)&_bits_1_6+0;		
	AR	= -2
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	asm AR = rm[I1];			
	AR = rm[I1]//
; //	asm test AR.b0;				
	test AR.b0//
; //	if(__jz__) goto L5589D4CE_41;		
	if ZR	jmp L5589D4CE_41
; //	sAX	= 1;				
	AX	= 0x01
; //L5589D4CE_41:;					
L5589D4CE_41:
; //	sfx_CHECKZERO();			
	AR	= AX
; //	if(__jnz__)	goto L5589D4CE_42;	
	if NZ	jmp L5589D4CE_42
; //	goto	L5589D4CE_40;			
	jmp	L5589D4CE_40
; //L5589D4CE_42:;					
L5589D4CE_42:
; //	
; //_A149B8B01_111:;				
_A149B8B01_111:
; //	sAX	= 0;				
	AX	= 0x00
; //	sSI	= (int)&_bitp_1_8+0;		
	AR	= -3
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	asm AR = rm[I1];			
	AR = rm[I1]//
; //	asm test AR.b0;				
	test AR.b0//
; //	if(__jz__) goto L5589D4CE_44;		
	if ZR	jmp L5589D4CE_44
; //	sAX	= 1;				
	AX	= 0x01
; //L5589D4CE_44:;					
L5589D4CE_44:
; //	sfx_CHECKZERO();			
	AR	= AX
; //	if(__jnz__)	goto L5589D4CE_45;	
	if NZ	jmp L5589D4CE_45
; //	goto	L5589D4CE_43;			
	jmp	L5589D4CE_43
; //L5589D4CE_45:;					
L5589D4CE_45:
; //	
; //_A149B8B01_112:;				
_A149B8B01_112:
; //	sSI	= (int)&_pkey_1_10;		
	AR	= -4
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sCX	= 0x0002;			
	CX	= 0x02
; //	sAX	= sAX + sCX;			
	AR	= CX
	AX	+= AR
; //	sDI	= sAX;				
	AR	= AX
	P1	= AR
; //	sAX	= *(__int16*)sDI;		
	AX	= pm[P1]
; //	sfx_CHECKZERO();			
	AR	= AX
; //	if(__jnz__)	goto L5589D4CE_47;	
	if NZ	jmp L5589D4CE_47
; //	goto	L5589D4CE_46;			
	jmp	L5589D4CE_46
; //L5589D4CE_47:;					
L5589D4CE_47:
; //_A149B8B01_113:;				
_A149B8B01_113:
; //	sSI	= (int)&_pkey_1_10;		
	AR	= -4
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sCX	= 0x0002;			
	CX	= 0x02
; //	sAX	= sAX + sCX;			
	AR	= CX
	AX	+= AR
; //	sDI	= sAX;				
	AR	= AX
	P1	= AR
; //	sAX	= *(__int16*)sDI;		
	AX	= pm[P1]
; //	sfx_CALL_BY_AX();			
	AR	= AX
	P1	= AR
	P1.hh	= 0
	fcall	pm[P1]
; //L5589D4CE_46:;					
L5589D4CE_46:
; //_A149B8B01_114:;				
_A149B8B01_114:
; //	goto L5589D4CE_48;			
	jmp	L5589D4CE_48
; //L5589D4CE_43:;					
L5589D4CE_43:
; //	
; //_A149B8B01_115:;				
_A149B8B01_115:
; //	sSI	= (int)&_pkey_1_10;		
	AR	= -4
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sDI	= sAX;				
	AR	= AX
	P1	= AR
; //	sAX	= *(__int16*)sDI;		
	AX	= pm[P1]
; //	sfx_CHECKZERO();			
	AR	= AX
; //	if(__jnz__)	goto L5589D4CE_50;	
	if NZ	jmp L5589D4CE_50
; //	goto	L5589D4CE_49;			
	jmp	L5589D4CE_49
; //L5589D4CE_50:;					
L5589D4CE_50:
; //_A149B8B01_116:;				
_A149B8B01_116:
; //	sSI	= (int)&_pkey_1_10;		
	AR	= -4
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sDI	= sAX;				
	AR	= AX
	P1	= AR
; //	sAX	= *(__int16*)sDI;		
	AX	= pm[P1]
; //	sfx_CALL_BY_AX();			
	AR	= AX
	P1	= AR
	P1.hh	= 0
	fcall	pm[P1]
; //L5589D4CE_49:;					
L5589D4CE_49:
; //_A149B8B01_117:;				
_A149B8B01_117:
; //L5589D4CE_48:;					
L5589D4CE_48:
; //_A149B8B01_118:;				
_A149B8B01_118:
; //	goto L5589D4CE_51;			
	jmp	L5589D4CE_51
; //L5589D4CE_40:;					
L5589D4CE_40:
; //	
; //_A149B8B01_119:;				
_A149B8B01_119:
; //	sAX	= 0;				
	AX	= 0x00
; //	sSI	= (int)&_bitp_1_8+0;		
	AR	= -3
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	asm AR = rm[I1];			
	AR = rm[I1]//
; //	asm test AR.b0;				
	test AR.b0//
; //	if(__jz__) goto L5589D4CE_53;		
	if ZR	jmp L5589D4CE_53
; //	sAX	= 1;				
	AX	= 0x01
; //L5589D4CE_53:;					
L5589D4CE_53:
; //	sfx_CHECKZERO();			
	AR	= AX
; //	if(__jnz__)	goto L5589D4CE_54;	
	if NZ	jmp L5589D4CE_54
; //	goto	L5589D4CE_52;			
	jmp	L5589D4CE_52
; //L5589D4CE_54:;					
L5589D4CE_54:
; //	
; //_A149B8B01_120:;				
_A149B8B01_120:
; //	sSI	= (int)&_pkey_1_10;		
	AR	= -4
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sCX	= 0x0001;			
	CX	= 0x01
; //	sAX	= sAX + sCX;			
	AR	= CX
	AX	+= AR
; //	sDI	= sAX;				
	AR	= AX
	P1	= AR
; //	sAX	= *(__int16*)sDI;		
	AX	= pm[P1]
; //	sfx_CHECKZERO();			
	AR	= AX
; //	if(__jnz__)	goto L5589D4CE_56;	
	if NZ	jmp L5589D4CE_56
; //	goto	L5589D4CE_55;			
	jmp	L5589D4CE_55
; //L5589D4CE_56:;					
L5589D4CE_56:
; //_A149B8B01_121:;				
_A149B8B01_121:
; //	sSI	= (int)&_pkey_1_10;		
	AR	= -4
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sCX	= 0x0001;			
	CX	= 0x01
; //	sAX	= sAX + sCX;			
	AR	= CX
	AX	+= AR
; //	sDI	= sAX;				
	AR	= AX
	P1	= AR
; //	sAX	= *(__int16*)sDI;		
	AX	= pm[P1]
; //	sfx_CALL_BY_AX();			
	AR	= AX
	P1	= AR
	P1.hh	= 0
	fcall	pm[P1]
; //L5589D4CE_55:;					
L5589D4CE_55:
; //_A149B8B01_122:;				
_A149B8B01_122:
; //L5589D4CE_52:;					
L5589D4CE_52:
; //_A149B8B01_123:;				
_A149B8B01_123:
; //L5589D4CE_51:;					
L5589D4CE_51:
; //_A149B8B01_124:;				
_A149B8B01_124:
; //_A149B8B01_125:;				
_A149B8B01_125:
; //	sSI	= (int)&_bits_1_6;		
	AR	= -2
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	asm sra AX, 1;				
	sra AX, 1//
; //	sSI	= (int)&_bits_1_6;		
	AR	= -2
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	*(__int16*)sSI	= sAX;			
	rm[I1]	= AX
; //_A149B8B01_126:;				
_A149B8B01_126:
; //	sSI	= (int)&_bitp_1_8;		
	AR	= -3
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	asm sra AX, 1;				
	sra AX, 1//
; //	sSI	= (int)&_bitp_1_8;		
	AR	= -3
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	*(__int16*)sSI	= sAX;			
	rm[I1]	= AX
; //_A149B8B01_127:;				
_A149B8B01_127:
; //	sSI	= (int)&_pkey_1_10;		
	AR	= -4
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sSI	= (int)&_pkey_1_10;		
	AR	= -4
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	asm AR = 0x0003;			
	AR = 0x0003//
; //	sCX	= *(__int16*)sSI;		
	CX	= rm[I1]
; //	asm rm[I1] = CX + AR;			
	rm[I1] = CX + AR//
; //	goto L5589D4CE_38;			
	jmp	L5589D4CE_38
; //L5589D4CE_37:;					
L5589D4CE_37:
; //L5589D4CE_32:;					
L5589D4CE_32:
; //_A149B8B01_128:;				
_A149B8B01_128:
; //	return;					
	AR	= 5
	BP	+= AR
	pop	AR
	rm[BP_SAVE]	= AR
	rets
; //_PollingKey3B90E3B1_end:;			
_PollingKey3B90E3B1_end:
; //_A149B8B01_129:;				
_A149B8B01_129:
; //}
; //
; //
; //
; //
.code
; //
; //
; //naked void ginit_code_keypad_0E0216C1_s(void)	
ginit_code_keypad_0E0216C1_s:
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
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
