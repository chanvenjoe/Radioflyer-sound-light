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
; //_AB97CD6AD_113:;				
_AB97CD6AD_113:
; //	
; //_AB97CD6AD_114:;				
_AB97CD6AD_114:
; //	asm clr io[0x04].b0;			
	clr io[0x04].b0//
; //_AB97CD6AD_115:;				
_AB97CD6AD_115:
; //	asm clr io[0x04].b1;			
	clr io[0x04].b1//
; //_AB97CD6AD_116:;				
_AB97CD6AD_116:
; //	asm clr io[0x04].b2;			
	clr io[0x04].b2//
; //_AB97CD6AD_117:;				
_AB97CD6AD_117:
; //	asm clr io[0x04].b3;			
	clr io[0x04].b3//
; //_AB97CD6AD_118:;				
_AB97CD6AD_118:
; //	io[0x1E]	= 0x0005;		
	AR	= 0x05
	io[0x1E]	= AR
; //_AB97CD6AD_119:;				
_AB97CD6AD_119:
; //	sAX	= 0x000F;			
	AX	= 0x0F
; //	sAX	= sAX | io[0x1F];		
	AR	= io[0x1F]
	AX	|= AR
; //	io[0x1F]	= sAX;			
	AR	= AX
	io[0x1F]	= AR
; //_AB97CD6AD_120:;				
_AB97CD6AD_120:
; //	sAX	= 0x0000;			
	AX	= 0x00
; //	sSI	= (int)&L5589D4CE_33;		
	I1	= L5589D4CE_33
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_AB97CD6AD_121:;				
_AB97CD6AD_121:
; //	sAX	= 0x0000;			
	AX	= 0x00
; //	sSI	= (int)&L5589D4CE_34;		
	I1	= L5589D4CE_34
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_AB97CD6AD_122:;				
_AB97CD6AD_122:
; //	sAX	= 0x0200;			
	AX	= 0x0200
; //	sSI	= (int)&L5589D4CE_35;		
	I1	= L5589D4CE_35
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //L5589D4CE_36:;					
L5589D4CE_36:
; //_AB97CD6AD_123:;				
_AB97CD6AD_123:
; //	return;					
	rets
; //_InitKey3C587B6D_end:;				
_InitKey3C587B6D_end:
; //_AB97CD6AD_124:;				
_AB97CD6AD_124:
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
; //_AB97CD6AD_125:;				
_AB97CD6AD_125:
; //_AB97CD6AD_126:;				
_AB97CD6AD_126:
; //	sAX	= 0x000F;			
	AX	= 0x0F
; //	sAX	= sAX & io[0x07];		
	AR	= io[0x07]
	AX	&= AR
; //	sSI	= (int)&_btn_1_2;		
	I1	= rm[BP_SAVE]
; //	*(__int16*)sSI	= sAX;			
	rm[I1]	= AX
; //_AB97CD6AD_127:;				
_AB97CD6AD_127:
; //	sSI	= (int)&_btn_1_2;		
	I1	= rm[BP_SAVE]
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	goto L5589D4CE_39;			
	jmp	L5589D4CE_39
; //L5589D4CE_39:;					
L5589D4CE_39:
; //_AB97CD6AD_128:;				
_AB97CD6AD_128:
; //	return;					
	AR	= 1
	BP	+= AR
	pop	AR
	rm[BP_SAVE]	= AR
	rets
; //L5589D4CE_37_end:;				
L5589D4CE_37_end:
; //_AB97CD6AD_129:;				
_AB97CD6AD_129:
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
; //_AB97CD6AD_130:;				
_AB97CD6AD_130:
; //_AB97CD6AD_131:;				
_AB97CD6AD_131:
; //_AB97CD6AD_132:;				
_AB97CD6AD_132:
; //	NEARCALL(L5589D4CE_37);			
	call	L5589D4CE_37
; //	sSI	= (int)&_keynow_1_2;		
	I1	= rm[BP_SAVE]
; //	*(__int16*)sSI	= sAX;			
	rm[I1]	= AX
; //_AB97CD6AD_133:;				
_AB97CD6AD_133:
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
; //_AB97CD6AD_134:;				
_AB97CD6AD_134:
; //	sSI	= (int)&_keynow_1_2;		
	I1	= rm[BP_SAVE]
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sSI	= (int)&L5589D4CE_33;		
	I1	= L5589D4CE_33
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_AB97CD6AD_135:;				
_AB97CD6AD_135:
; //	sAX	= 0x0200;			
	AX	= 0x0200
; //	sSI	= (int)&L5589D4CE_35;		
	I1	= L5589D4CE_35
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_AB97CD6AD_136:;				
_AB97CD6AD_136:
; //	goto L5589D4CE_40;			
	jmp	L5589D4CE_40
; //L5589D4CE_41:;					
L5589D4CE_41:
; //_AB97CD6AD_137:;				
_AB97CD6AD_137:
; //_AB97CD6AD_138:;				
_AB97CD6AD_138:
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
; //_AB97CD6AD_139:;				
_AB97CD6AD_139:
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
; //_AB97CD6AD_140:;				
_AB97CD6AD_140:
; //	goto L5589D4CE_40;			
	jmp	L5589D4CE_40
; //L5589D4CE_43:;					
L5589D4CE_43:
; //_AB97CD6AD_141:;				
_AB97CD6AD_141:
; //_AB97CD6AD_142:;				
_AB97CD6AD_142:
; //	asm AX = #_keyfuncF06F3D55+0;		
	AX = #_keyfuncF06F3D55+0//
; //	sSI	= (int)&_pkey_1_10;		
	AR	= -4
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	*(__int16*)sSI	= sAX;			
	rm[I1]	= AX
; //_AB97CD6AD_143:;				
_AB97CD6AD_143:
; //	sAX	= 0x0200;			
	AX	= 0x0200
; //	sSI	= (int)&L5589D4CE_35;		
	I1	= L5589D4CE_35
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_AB97CD6AD_144:;				
_AB97CD6AD_144:
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
; //_AB97CD6AD_145:;				
_AB97CD6AD_145:
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
; //_AB97CD6AD_146:;				
_AB97CD6AD_146:
; //	asm I1 = L5589D4CE_33+0;		
	I1 = L5589D4CE_33+0//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sSI	= (int)&L5589D4CE_34;		
	I1	= L5589D4CE_34
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_AB97CD6AD_147:;				
_AB97CD6AD_147:
; //	_i_1_4+0	= 0x05;			
	AR	= -1
	I1	= rm[BP_SAVE]
	I1	+= AR
	AR	= 0x05
	rm[I1]	= AR
; //L5589D4CE_46:;					
L5589D4CE_46:
; //_AB97CD6AD_148:;				
_AB97CD6AD_148:
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
; //_AB97CD6AD_149:;				
_AB97CD6AD_149:
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
; //_AB97CD6AD_150:;				
_AB97CD6AD_150:
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
; //_AB97CD6AD_151:;				
_AB97CD6AD_151:
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
; //_AB97CD6AD_152:;				
_AB97CD6AD_152:
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
; //_AB97CD6AD_153:;				
_AB97CD6AD_153:
; //	goto L5589D4CE_56;			
	jmp	L5589D4CE_56
; //L5589D4CE_51:;					
L5589D4CE_51:
; //	
; //_AB97CD6AD_154:;				
_AB97CD6AD_154:
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
; //_AB97CD6AD_155:;				
_AB97CD6AD_155:
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
; //_AB97CD6AD_156:;				
_AB97CD6AD_156:
; //L5589D4CE_56:;					
L5589D4CE_56:
; //_AB97CD6AD_157:;				
_AB97CD6AD_157:
; //	goto L5589D4CE_59;			
	jmp	L5589D4CE_59
; //L5589D4CE_48:;					
L5589D4CE_48:
; //	
; //_AB97CD6AD_158:;				
_AB97CD6AD_158:
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
; //_AB97CD6AD_159:;				
_AB97CD6AD_159:
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
; //_AB97CD6AD_160:;				
_AB97CD6AD_160:
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
; //_AB97CD6AD_161:;				
_AB97CD6AD_161:
; //L5589D4CE_60:;					
L5589D4CE_60:
; //_AB97CD6AD_162:;				
_AB97CD6AD_162:
; //L5589D4CE_59:;					
L5589D4CE_59:
; //_AB97CD6AD_163:;				
_AB97CD6AD_163:
; //_AB97CD6AD_164:;				
_AB97CD6AD_164:
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
; //_AB97CD6AD_165:;				
_AB97CD6AD_165:
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
; //_AB97CD6AD_166:;				
_AB97CD6AD_166:
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
; //_AB97CD6AD_167:;				
_AB97CD6AD_167:
; //	return;					
	AR	= 5
	BP	+= AR
	pop	AR
	rm[BP_SAVE]	= AR
	rets
; //_PollingKey3B90E3B1_end:;			
_PollingKey3B90E3B1_end:
; //_AB97CD6AD_168:;				
_AB97CD6AD_168:
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
