; keypad.c Code Start!!;
VarRM[0:4095]={
 L5589D4CE_61,L5589D4CE_62,L5589D4CE_63 
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
; //_A2C562ABC_188:;				
_A2C562ABC_188:
; //	
; //_A2C562ABC_189:;				
_A2C562ABC_189:
; //	asm clr io[0x04].b0;			
	clr io[0x04].b0//
; //_A2C562ABC_190:;				
_A2C562ABC_190:
; //	asm clr io[0x04].b1;			
	clr io[0x04].b1//
; //_A2C562ABC_191:;				
_A2C562ABC_191:
; //	asm clr io[0x04].b2;			
	clr io[0x04].b2//
; //_A2C562ABC_192:;				
_A2C562ABC_192:
; //	asm clr io[0x04].b3;			
	clr io[0x04].b3//
; //_A2C562ABC_193:;				
_A2C562ABC_193:
; //	io[0x1E]	= 0x0005;		
	AR	= 0x05
	io[0x1E]	= AR
; //_A2C562ABC_194:;				
_A2C562ABC_194:
; //	sAX	= 0x000F;			
	AX	= 0x0F
; //	sAX	= sAX | io[0x1F];		
	AR	= io[0x1F]
	AX	|= AR
; //	io[0x1F]	= sAX;			
	AR	= AX
	io[0x1F]	= AR
; //_A2C562ABC_195:;				
_A2C562ABC_195:
; //	sAX	= 0x0000;			
	AX	= 0x00
; //	sSI	= (int)&L5589D4CE_61;		
	I1	= L5589D4CE_61
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_A2C562ABC_196:;				
_A2C562ABC_196:
; //	sAX	= 0x0000;			
	AX	= 0x00
; //	sSI	= (int)&L5589D4CE_62;		
	I1	= L5589D4CE_62
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_A2C562ABC_197:;				
_A2C562ABC_197:
; //	sAX	= 0x0200;			
	AX	= 0x0200
; //	sSI	= (int)&L5589D4CE_63;		
	I1	= L5589D4CE_63
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //L5589D4CE_64:;					
L5589D4CE_64:
; //_A2C562ABC_198:;				
_A2C562ABC_198:
; //	return;					
	rets
; //_InitKey3C587B6D_end:;				
_InitKey3C587B6D_end:
; //_A2C562ABC_199:;				
_A2C562ABC_199:
; //}
; //
; //rjmp void L5589D4CE_65()			
L5589D4CE_65:
; //{
; //	__int16 _btn_1_2;
; //						
	AR	= rm[BP_SAVE]
	push	AR
	AR	= BP
	rm[BP_SAVE]	= AR
	AR	 = -1
	BP	+= AR
; //_A2C562ABC_200:;				
_A2C562ABC_200:
; //	
; //_A2C562ABC_201:;				
_A2C562ABC_201:
; //	sAX	= 0x000F;			
	AX	= 0x0F
; //	sAX	= sAX & io[0x07];		
	AR	= io[0x07]
	AX	&= AR
; //	sSI	= (int)&_btn_1_2;		
	I1	= rm[BP_SAVE]
; //	*(__int16*)sSI	= sAX;			
	rm[I1]	= AX
; //_A2C562ABC_202:;				
_A2C562ABC_202:
; //	sSI	= (int)&_btn_1_2;		
	I1	= rm[BP_SAVE]
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	goto L5589D4CE_67;			
	jmp	L5589D4CE_67
; //L5589D4CE_67:;					
L5589D4CE_67:
; //_A2C562ABC_203:;				
_A2C562ABC_203:
; //	return;					
	AR	= 1
	BP	+= AR
	pop	AR
	rm[BP_SAVE]	= AR
	rets
; //L5589D4CE_65_end:;				
L5589D4CE_65_end:
; //_A2C562ABC_204:;				
_A2C562ABC_204:
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
; //_A2C562ABC_205:;				
_A2C562ABC_205:
; //	
; //_A2C562ABC_206:;				
_A2C562ABC_206:
; //_A2C562ABC_207:;				
_A2C562ABC_207:
; //	NEARCALL(L5589D4CE_65);			
	call	L5589D4CE_65
; //	sSI	= (int)&_keynow_1_2;		
	I1	= rm[BP_SAVE]
; //	*(__int16*)sSI	= sAX;			
	rm[I1]	= AX
; //_A2C562ABC_208:;				
_A2C562ABC_208:
; //	asm I1 = L5589D4CE_61+0;		
	I1 = L5589D4CE_61+0//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sSI	= (int)&_keynow_1_2;		
	I1	= rm[BP_SAVE]
; //	sCX	= *(__int16*)sSI;		
	CX	= rm[I1]
; //	sfx_CMP_AX_CX_JNE();			
	pch	= sfx_CMP_AX_CX_JNE
	lcall	sfx_CMP_AX_CX_JNE
; //	if(__je__)	goto L5589D4CE_70;	
	if ZR	jmp L5589D4CE_70
; //	goto	L5589D4CE_69;			
	jmp	L5589D4CE_69
; //L5589D4CE_70:;					
L5589D4CE_70:
; //	
; //_A2C562ABC_209:;				
_A2C562ABC_209:
; //	sSI	= (int)&_keynow_1_2;		
	I1	= rm[BP_SAVE]
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sSI	= (int)&L5589D4CE_61;		
	I1	= L5589D4CE_61
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_A2C562ABC_210:;				
_A2C562ABC_210:
; //	sAX	= 0x0200;			
	AX	= 0x0200
; //	sSI	= (int)&L5589D4CE_63;		
	I1	= L5589D4CE_63
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_A2C562ABC_211:;				
_A2C562ABC_211:
; //	goto L5589D4CE_68;			
	jmp	L5589D4CE_68
; //L5589D4CE_69:;					
L5589D4CE_69:
; //_A2C562ABC_212:;				
_A2C562ABC_212:
; //_A2C562ABC_213:;				
_A2C562ABC_213:
; //	asm I1 = L5589D4CE_63+0;		
	I1 = L5589D4CE_63+0//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sfx_CHECKZERO();			
	AR	= AX
; //	if(__jnz__)	goto L5589D4CE_72;	
	if NZ	jmp L5589D4CE_72
; //	goto	L5589D4CE_71;			
	jmp	L5589D4CE_71
; //L5589D4CE_72:;					
L5589D4CE_72:
; //	
; //_A2C562ABC_214:;				
_A2C562ABC_214:
; //	asm I1 = L5589D4CE_63+0;		
	I1 = L5589D4CE_63+0//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sCX	= 0x0001;			
	CX	= 0x01
; //	sAX	= sAX - sCX;			
	AR	= CX
	AX	-= AR
; //	sSI	= (int)&L5589D4CE_63;		
	I1	= L5589D4CE_63
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_A2C562ABC_215:;				
_A2C562ABC_215:
; //	goto L5589D4CE_68;			
	jmp	L5589D4CE_68
; //L5589D4CE_71:;					
L5589D4CE_71:
; //_A2C562ABC_216:;				
_A2C562ABC_216:
; //_A2C562ABC_217:;				
_A2C562ABC_217:
; //	asm AX = #_keyfuncF06F3D55+0;		
	AX = #_keyfuncF06F3D55+0//
; //	sSI	= (int)&_pkey_1_10;		
	AR	= -4
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	*(__int16*)sSI	= sAX;			
	rm[I1]	= AX
; //_A2C562ABC_218:;				
_A2C562ABC_218:
; //	sAX	= 0x0200;			
	AX	= 0x0200
; //	sSI	= (int)&L5589D4CE_63;		
	I1	= L5589D4CE_63
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_A2C562ABC_219:;				
_A2C562ABC_219:
; //	asm I1 = L5589D4CE_62+0;		
	I1 = L5589D4CE_62+0//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	asm I1 = L5589D4CE_61+0;		
	I1 = L5589D4CE_61+0//
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
; //_A2C562ABC_220:;				
_A2C562ABC_220:
; //	asm I1 = L5589D4CE_62+0;		
	I1 = L5589D4CE_62+0//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sSI	= (int)&_bitp_1_8;		
	AR	= -3
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	*(__int16*)sSI	= sAX;			
	rm[I1]	= AX
; //_A2C562ABC_221:;				
_A2C562ABC_221:
; //	asm I1 = L5589D4CE_61+0;		
	I1 = L5589D4CE_61+0//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sSI	= (int)&L5589D4CE_62;		
	I1	= L5589D4CE_62
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_A2C562ABC_222:;				
_A2C562ABC_222:
; //	_i_1_4+0	= 0x05;			
	AR	= -1
	I1	= rm[BP_SAVE]
	I1	+= AR
	AX	= 0x05
	rm[I1]	= AX
; //L5589D4CE_74:;					
L5589D4CE_74:
; //_A2C562ABC_223:;				
_A2C562ABC_223:
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
; //	if(__jnz__)	goto L5589D4CE_75;	
	if NZ	jmp L5589D4CE_75
; //	goto	L5589D4CE_73;			
	jmp	L5589D4CE_73
; //L5589D4CE_75:;					
L5589D4CE_75:
; //	
; //_A2C562ABC_224:;				
_A2C562ABC_224:
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
; //	if(__jz__) goto L5589D4CE_77;		
	if ZR	jmp L5589D4CE_77
; //	sAX	= 1;				
	AX	= 0x01
; //L5589D4CE_77:;					
L5589D4CE_77:
; //	sfx_CHECKZERO();			
	AR	= AX
; //	if(__jnz__)	goto L5589D4CE_78;	
	if NZ	jmp L5589D4CE_78
; //	goto	L5589D4CE_76;			
	jmp	L5589D4CE_76
; //L5589D4CE_78:;					
L5589D4CE_78:
; //	
; //_A2C562ABC_225:;				
_A2C562ABC_225:
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
; //	if(__jz__) goto L5589D4CE_80;		
	if ZR	jmp L5589D4CE_80
; //	sAX	= 1;				
	AX	= 0x01
; //L5589D4CE_80:;					
L5589D4CE_80:
; //	sfx_CHECKZERO();			
	AR	= AX
; //	if(__jnz__)	goto L5589D4CE_81;	
	if NZ	jmp L5589D4CE_81
; //	goto	L5589D4CE_79;			
	jmp	L5589D4CE_79
; //L5589D4CE_81:;					
L5589D4CE_81:
; //	
; //_A2C562ABC_226:;				
_A2C562ABC_226:
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
; //	if(__jnz__)	goto L5589D4CE_83;	
	if NZ	jmp L5589D4CE_83
; //	goto	L5589D4CE_82;			
	jmp	L5589D4CE_82
; //L5589D4CE_83:;					
L5589D4CE_83:
; //_A2C562ABC_227:;				
_A2C562ABC_227:
; //_A2C562ABC_228:;				
_A2C562ABC_228:
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
; //L5589D4CE_82:;					
L5589D4CE_82:
; //_A2C562ABC_229:;				
_A2C562ABC_229:
; //	goto L5589D4CE_84;			
	jmp	L5589D4CE_84
; //L5589D4CE_79:;					
L5589D4CE_79:
; //	
; //_A2C562ABC_230:;				
_A2C562ABC_230:
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
; //	if(__jnz__)	goto L5589D4CE_86;	
	if NZ	jmp L5589D4CE_86
; //	goto	L5589D4CE_85;			
	jmp	L5589D4CE_85
; //L5589D4CE_86:;					
L5589D4CE_86:
; //_A2C562ABC_231:;				
_A2C562ABC_231:
; //_A2C562ABC_232:;				
_A2C562ABC_232:
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
; //L5589D4CE_85:;					
L5589D4CE_85:
; //_A2C562ABC_233:;				
_A2C562ABC_233:
; //L5589D4CE_84:;					
L5589D4CE_84:
; //_A2C562ABC_234:;				
_A2C562ABC_234:
; //	goto L5589D4CE_87;			
	jmp	L5589D4CE_87
; //L5589D4CE_76:;					
L5589D4CE_76:
; //	
; //_A2C562ABC_235:;				
_A2C562ABC_235:
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
; //	if(__jz__) goto L5589D4CE_89;		
	if ZR	jmp L5589D4CE_89
; //	sAX	= 1;				
	AX	= 0x01
; //L5589D4CE_89:;					
L5589D4CE_89:
; //	sfx_CHECKZERO();			
	AR	= AX
; //	if(__jnz__)	goto L5589D4CE_90;	
	if NZ	jmp L5589D4CE_90
; //	goto	L5589D4CE_88;			
	jmp	L5589D4CE_88
; //L5589D4CE_90:;					
L5589D4CE_90:
; //	
; //_A2C562ABC_236:;				
_A2C562ABC_236:
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
; //	if(__jnz__)	goto L5589D4CE_92;	
	if NZ	jmp L5589D4CE_92
; //	goto	L5589D4CE_91;			
	jmp	L5589D4CE_91
; //L5589D4CE_92:;					
L5589D4CE_92:
; //_A2C562ABC_237:;				
_A2C562ABC_237:
; //_A2C562ABC_238:;				
_A2C562ABC_238:
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
; //L5589D4CE_91:;					
L5589D4CE_91:
; //_A2C562ABC_239:;				
_A2C562ABC_239:
; //L5589D4CE_88:;					
L5589D4CE_88:
; //_A2C562ABC_240:;				
_A2C562ABC_240:
; //L5589D4CE_87:;					
L5589D4CE_87:
; //_A2C562ABC_241:;				
_A2C562ABC_241:
; //_A2C562ABC_242:;				
_A2C562ABC_242:
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
; //_A2C562ABC_243:;				
_A2C562ABC_243:
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
; //_A2C562ABC_244:;				
_A2C562ABC_244:
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
; //_A2C562ABC_245:;				
_A2C562ABC_245:
; //	goto L5589D4CE_74;			
	jmp	L5589D4CE_74
; //L5589D4CE_73:;					
L5589D4CE_73:
; //L5589D4CE_68:;					
L5589D4CE_68:
; //_A2C562ABC_246:;				
_A2C562ABC_246:
; //	return;					
	AR	= 5
	BP	+= AR
	pop	AR
	rm[BP_SAVE]	= AR
	rets
; //_PollingKey3B90E3B1_end:;			
_PollingKey3B90E3B1_end:
; //_A2C562ABC_247:;				
_A2C562ABC_247:
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
