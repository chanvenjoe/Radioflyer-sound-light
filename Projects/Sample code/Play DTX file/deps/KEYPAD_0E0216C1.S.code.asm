; keypad.c Code Start!!;
VarRM[0:4095]={
 L5589D4CE_33,L5589D4CE_34,L5589D4CE_35 
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
; //_A0EDC73FE_113:;				
_A0EDC73FE_113:
; //	
; //_A0EDC73FE_114:;				
_A0EDC73FE_114:
; //	asm clr io[0x04].b0;			
	clr io[0x04].b0//
; //_A0EDC73FE_115:;				
_A0EDC73FE_115:
; //	asm clr io[0x04].b1;			
	clr io[0x04].b1//
; //_A0EDC73FE_116:;				
_A0EDC73FE_116:
; //	asm clr io[0x04].b2;			
	clr io[0x04].b2//
; //_A0EDC73FE_117:;				
_A0EDC73FE_117:
; //	asm clr io[0x04].b3;			
	clr io[0x04].b3//
; //_A0EDC73FE_118:;				
_A0EDC73FE_118:
; //	io[0x1E]	= 0x0005;		
	AR	= 0x05
	io[0x1E]	= AR
; //_A0EDC73FE_119:;				
_A0EDC73FE_119:
; //	sAX	= 0x000F;			
	AX	= 0x0F
; //	sAX	= sAX | io[0x1F];		
	AR	= io[0x1F]
	AX	|= AR
; //	io[0x1F]	= sAX;			
	AR	= AX
	io[0x1F]	= AR
; //_A0EDC73FE_120:;				
_A0EDC73FE_120:
; //	sAX	= 0x0000;			
	AX	= 0x00
; //	sSI	= (int)&L5589D4CE_33;		
	I1	= L5589D4CE_33
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_A0EDC73FE_121:;				
_A0EDC73FE_121:
; //	sAX	= 0x0000;			
	AX	= 0x00
; //	sSI	= (int)&L5589D4CE_34;		
	I1	= L5589D4CE_34
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_A0EDC73FE_122:;				
_A0EDC73FE_122:
; //	sAX	= 0x0200;			
	AX	= 0x0200
; //	sSI	= (int)&L5589D4CE_35;		
	I1	= L5589D4CE_35
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //L5589D4CE_36:;					
L5589D4CE_36:
; //_A0EDC73FE_123:;				
_A0EDC73FE_123:
; //	return;					
	rets
; //_InitKey3C587B6D_end:;				
_InitKey3C587B6D_end:
; //_A0EDC73FE_124:;				
_A0EDC73FE_124:
; //}
; //
; //rjmp void L5589D4CE_37()			
L5589D4CE_37:
; //{
; //	__int16 _btn_1_2;
; //						
	AR	= rm[BP_SAVE]
	push	AR
	AR	= BP
	rm[BP_SAVE]	= AR
	AR	 = -1
	BP	+= AR
; //_A0EDC73FE_125:;				
_A0EDC73FE_125:
; //_A0EDC73FE_126:;				
_A0EDC73FE_126:
; //	sAX	= 0x000F;			
	AX	= 0x0F
; //	sAX	= sAX & io[0x07];		
	AR	= io[0x07]
	AX	&= AR
; //	sSI	= (int)&_btn_1_2;		
	I1	= rm[BP_SAVE]
; //	*(__int16*)sSI	= sAX;			
	rm[I1]	= AX
; //_A0EDC73FE_127:;				
_A0EDC73FE_127:
; //	sSI	= (int)&_btn_1_2;		
	I1	= rm[BP_SAVE]
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	goto L5589D4CE_39;			
	jmp	L5589D4CE_39
; //L5589D4CE_39:;					
L5589D4CE_39:
; //_A0EDC73FE_128:;				
_A0EDC73FE_128:
; //	return;					
	AR	= 1
	BP	+= AR
	pop	AR
	rm[BP_SAVE]	= AR
	rets
; //L5589D4CE_37_end:;				
L5589D4CE_37_end:
; //_A0EDC73FE_129:;				
_A0EDC73FE_129:
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
; //_A0EDC73FE_130:;				
_A0EDC73FE_130:
; //_A0EDC73FE_131:;				
_A0EDC73FE_131:
; //_A0EDC73FE_132:;				
_A0EDC73FE_132:
; //	NEARCALL(L5589D4CE_37);			
	call	L5589D4CE_37
; //	sSI	= (int)&_keynow_1_2;		
	I1	= rm[BP_SAVE]
; //	*(__int16*)sSI	= sAX;			
	rm[I1]	= AX
; //_A0EDC73FE_133:;				
_A0EDC73FE_133:
; //	asm I1 = L5589D4CE_33+0;		
	I1 = L5589D4CE_33+0//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sSI	= (int)&_keynow_1_2;		
	I1	= rm[BP_SAVE]
; //	sCX	= *(__int16*)sSI;		
	CX	= rm[I1]
; //	sfx_CMP_AX_CX_JNE();			
	pch	= sfx_CMP_AX_CX_JNE
	lcall	sfx_CMP_AX_CX_JNE
; //	if(__je__)	goto L5589D4CE_42;	
	if ZR	jmp L5589D4CE_42
; //	goto	L5589D4CE_41;			
	jmp	L5589D4CE_41
; //L5589D4CE_42:;					
L5589D4CE_42:
; //	
; //_A0EDC73FE_134:;				
_A0EDC73FE_134:
; //	sSI	= (int)&_keynow_1_2;		
	I1	= rm[BP_SAVE]
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sSI	= (int)&L5589D4CE_33;		
	I1	= L5589D4CE_33
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_A0EDC73FE_135:;				
_A0EDC73FE_135:
; //	sAX	= 0x0200;			
	AX	= 0x0200
; //	sSI	= (int)&L5589D4CE_35;		
	I1	= L5589D4CE_35
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_A0EDC73FE_136:;				
_A0EDC73FE_136:
; //	goto L5589D4CE_40;			
	jmp	L5589D4CE_40
; //L5589D4CE_41:;					
L5589D4CE_41:
; //_A0EDC73FE_137:;				
_A0EDC73FE_137:
; //_A0EDC73FE_138:;				
_A0EDC73FE_138:
; //	asm I1 = L5589D4CE_35+0;		
	I1 = L5589D4CE_35+0//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sfx_CHECKZERO();			
	AR	= AX
; //	if(__jnz__)	goto L5589D4CE_44;	
	if NZ	jmp L5589D4CE_44
; //	goto	L5589D4CE_43;			
	jmp	L5589D4CE_43
; //L5589D4CE_44:;					
L5589D4CE_44:
; //	
; //_A0EDC73FE_139:;				
_A0EDC73FE_139:
; //	asm I1 = L5589D4CE_35+0;		
	I1 = L5589D4CE_35+0//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sCX	= 0x0001;			
	CX	= 0x01
; //	sAX	= sAX - sCX;			
	AR	= CX
	AX	-= AR
; //	sSI	= (int)&L5589D4CE_35;		
	I1	= L5589D4CE_35
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_A0EDC73FE_140:;				
_A0EDC73FE_140:
; //	goto L5589D4CE_40;			
	jmp	L5589D4CE_40
; //L5589D4CE_43:;					
L5589D4CE_43:
; //_A0EDC73FE_141:;				
_A0EDC73FE_141:
; //_A0EDC73FE_142:;				
_A0EDC73FE_142:
; //	asm AX = #_keyfuncF06F3D55+0;		
	AX = #_keyfuncF06F3D55+0//
; //	sSI	= (int)&_pkey_1_10;		
	AR	= -4
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	*(__int16*)sSI	= sAX;			
	rm[I1]	= AX
; //_A0EDC73FE_143:;				
_A0EDC73FE_143:
; //	sAX	= 0x0200;			
	AX	= 0x0200
; //	sSI	= (int)&L5589D4CE_35;		
	I1	= L5589D4CE_35
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_A0EDC73FE_144:;				
_A0EDC73FE_144:
; //	asm I1 = L5589D4CE_34+0;		
	I1 = L5589D4CE_34+0//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	asm I1 = L5589D4CE_33+0;		
	I1 = L5589D4CE_33+0//
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
; //_A0EDC73FE_145:;				
_A0EDC73FE_145:
; //	asm I1 = L5589D4CE_34+0;		
	I1 = L5589D4CE_34+0//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sSI	= (int)&_bitp_1_8;		
	AR	= -3
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	*(__int16*)sSI	= sAX;			
	rm[I1]	= AX
; //_A0EDC73FE_146:;				
_A0EDC73FE_146:
; //	asm I1 = L5589D4CE_33+0;		
	I1 = L5589D4CE_33+0//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sSI	= (int)&L5589D4CE_34;		
	I1	= L5589D4CE_34
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_A0EDC73FE_147:;				
_A0EDC73FE_147:
; //	_i_1_4+0	= 0x05;			
	AR	= -1
	I1	= rm[BP_SAVE]
	I1	+= AR
	AR	= 0x05
	rm[I1]	= AR
; //L5589D4CE_46:;					
L5589D4CE_46:
; //_A0EDC73FE_148:;				
_A0EDC73FE_148:
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
; //	if(__jnz__)	goto L5589D4CE_47;	
	if NZ	jmp L5589D4CE_47
; //	goto	L5589D4CE_45;			
	jmp	L5589D4CE_45
; //L5589D4CE_47:;					
L5589D4CE_47:
; //	
; //_A0EDC73FE_149:;				
_A0EDC73FE_149:
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
; //	if(__jz__) goto L5589D4CE_49;		
	if ZR	jmp L5589D4CE_49
; //	sAX	= 1;				
	AX	= 0x01
; //L5589D4CE_49:;					
L5589D4CE_49:
; //	sfx_CHECKZERO();			
	AR	= AX
; //	if(__jnz__)	goto L5589D4CE_50;	
	if NZ	jmp L5589D4CE_50
; //	goto	L5589D4CE_48;			
	jmp	L5589D4CE_48
; //L5589D4CE_50:;					
L5589D4CE_50:
; //	
; //_A0EDC73FE_150:;				
_A0EDC73FE_150:
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
; //	if(__jz__) goto L5589D4CE_52;		
	if ZR	jmp L5589D4CE_52
; //	sAX	= 1;				
	AX	= 0x01
; //L5589D4CE_52:;					
L5589D4CE_52:
; //	sfx_CHECKZERO();			
	AR	= AX
; //	if(__jnz__)	goto L5589D4CE_53;	
	if NZ	jmp L5589D4CE_53
; //	goto	L5589D4CE_51;			
	jmp	L5589D4CE_51
; //L5589D4CE_53:;					
L5589D4CE_53:
; //	
; //_A0EDC73FE_151:;				
_A0EDC73FE_151:
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
; //	if(__jnz__)	goto L5589D4CE_55;	
	if NZ	jmp L5589D4CE_55
; //	goto	L5589D4CE_54;			
	jmp	L5589D4CE_54
; //L5589D4CE_55:;					
L5589D4CE_55:
; //_A0EDC73FE_152:;				
_A0EDC73FE_152:
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
; //L5589D4CE_54:;					
L5589D4CE_54:
; //_A0EDC73FE_153:;				
_A0EDC73FE_153:
; //	goto L5589D4CE_56;			
	jmp	L5589D4CE_56
; //L5589D4CE_51:;					
L5589D4CE_51:
; //	
; //_A0EDC73FE_154:;				
_A0EDC73FE_154:
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
; //	if(__jnz__)	goto L5589D4CE_58;	
	if NZ	jmp L5589D4CE_58
; //	goto	L5589D4CE_57;			
	jmp	L5589D4CE_57
; //L5589D4CE_58:;					
L5589D4CE_58:
; //_A0EDC73FE_155:;				
_A0EDC73FE_155:
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
; //L5589D4CE_57:;					
L5589D4CE_57:
; //_A0EDC73FE_156:;				
_A0EDC73FE_156:
; //L5589D4CE_56:;					
L5589D4CE_56:
; //_A0EDC73FE_157:;				
_A0EDC73FE_157:
; //	goto L5589D4CE_59;			
	jmp	L5589D4CE_59
; //L5589D4CE_48:;					
L5589D4CE_48:
; //	
; //_A0EDC73FE_158:;				
_A0EDC73FE_158:
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
; //	if(__jz__) goto L5589D4CE_61;		
	if ZR	jmp L5589D4CE_61
; //	sAX	= 1;				
	AX	= 0x01
; //L5589D4CE_61:;					
L5589D4CE_61:
; //	sfx_CHECKZERO();			
	AR	= AX
; //	if(__jnz__)	goto L5589D4CE_62;	
	if NZ	jmp L5589D4CE_62
; //	goto	L5589D4CE_60;			
	jmp	L5589D4CE_60
; //L5589D4CE_62:;					
L5589D4CE_62:
; //	
; //_A0EDC73FE_159:;				
_A0EDC73FE_159:
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
; //	if(__jnz__)	goto L5589D4CE_64;	
	if NZ	jmp L5589D4CE_64
; //	goto	L5589D4CE_63;			
	jmp	L5589D4CE_63
; //L5589D4CE_64:;					
L5589D4CE_64:
; //_A0EDC73FE_160:;				
_A0EDC73FE_160:
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
; //L5589D4CE_63:;					
L5589D4CE_63:
; //_A0EDC73FE_161:;				
_A0EDC73FE_161:
; //L5589D4CE_60:;					
L5589D4CE_60:
; //_A0EDC73FE_162:;				
_A0EDC73FE_162:
; //L5589D4CE_59:;					
L5589D4CE_59:
; //_A0EDC73FE_163:;				
_A0EDC73FE_163:
; //_A0EDC73FE_164:;				
_A0EDC73FE_164:
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
; //_A0EDC73FE_165:;				
_A0EDC73FE_165:
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
; //_A0EDC73FE_166:;				
_A0EDC73FE_166:
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
; //	goto L5589D4CE_46;			
	jmp	L5589D4CE_46
; //L5589D4CE_45:;					
L5589D4CE_45:
; //L5589D4CE_40:;					
L5589D4CE_40:
; //_A0EDC73FE_167:;				
_A0EDC73FE_167:
; //	return;					
	AR	= 5
	BP	+= AR
	pop	AR
	rm[BP_SAVE]	= AR
	rets
; //_PollingKey3B90E3B1_end:;			
_PollingKey3B90E3B1_end:
; //_A0EDC73FE_168:;				
_A0EDC73FE_168:
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
; //
