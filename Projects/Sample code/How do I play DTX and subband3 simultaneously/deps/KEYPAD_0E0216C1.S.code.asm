; keypad.c Code Start!!;
VarRM[0:4095]={
 L5589D4CE_62,L5589D4CE_63,L5589D4CE_64 
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
; //_A5A7AA303_187:;				
_A5A7AA303_187:
; //	
; //_A5A7AA303_188:;				
_A5A7AA303_188:
; //	asm clr io[0x04].b0;			
	clr io[0x04].b0//
; //_A5A7AA303_189:;				
_A5A7AA303_189:
; //	asm clr io[0x04].b1;			
	clr io[0x04].b1//
; //_A5A7AA303_190:;				
_A5A7AA303_190:
; //	asm clr io[0x04].b2;			
	clr io[0x04].b2//
; //_A5A7AA303_191:;				
_A5A7AA303_191:
; //	asm clr io[0x04].b3;			
	clr io[0x04].b3//
; //_A5A7AA303_192:;				
_A5A7AA303_192:
; //	io[0x1E]	= 0x0005;		
	AR	= 0x05
	io[0x1E]	= AR
; //_A5A7AA303_193:;				
_A5A7AA303_193:
; //	sAX	= 0x000F;			
	AX	= 0x0F
; //	sAX	= sAX | io[0x1F];		
	AR	= io[0x1F]
	AX	|= AR
; //	io[0x1F]	= sAX;			
	AR	= AX
	io[0x1F]	= AR
; //_A5A7AA303_194:;				
_A5A7AA303_194:
; //	sAX	= 0x0000;			
	AX	= 0x00
; //	sSI	= (int)&L5589D4CE_62;		
	I1	= L5589D4CE_62
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_A5A7AA303_195:;				
_A5A7AA303_195:
; //	sAX	= 0x0000;			
	AX	= 0x00
; //	sSI	= (int)&L5589D4CE_63;		
	I1	= L5589D4CE_63
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_A5A7AA303_196:;				
_A5A7AA303_196:
; //	sAX	= 0x0200;			
	AX	= 0x0200
; //	sSI	= (int)&L5589D4CE_64;		
	I1	= L5589D4CE_64
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //L5589D4CE_65:;					
L5589D4CE_65:
; //_A5A7AA303_197:;				
_A5A7AA303_197:
; //	return;					
	rets
; //_InitKey3C587B6D_end:;				
_InitKey3C587B6D_end:
; //_A5A7AA303_198:;				
_A5A7AA303_198:
; //}
; //
; //rjmp void L5589D4CE_66()			
L5589D4CE_66:
; //{
; //	__int16 _btn_1_2;
; //						
	AR	= rm[BP_SAVE]
	push	AR
	AR	= BP
	rm[BP_SAVE]	= AR
	AR	 = -1
	BP	+= AR
; //_A5A7AA303_199:;				
_A5A7AA303_199:
; //_A5A7AA303_200:;				
_A5A7AA303_200:
; //	sAX	= 0x000F;			
	AX	= 0x0F
; //	sAX	= sAX & io[0x07];		
	AR	= io[0x07]
	AX	&= AR
; //	sSI	= (int)&_btn_1_2;		
	I1	= rm[BP_SAVE]
; //	*(__int16*)sSI	= sAX;			
	rm[I1]	= AX
; //_A5A7AA303_201:;				
_A5A7AA303_201:
; //	sSI	= (int)&_btn_1_2;		
	I1	= rm[BP_SAVE]
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	goto L5589D4CE_68;			
	jmp	L5589D4CE_68
; //L5589D4CE_68:;					
L5589D4CE_68:
; //_A5A7AA303_202:;				
_A5A7AA303_202:
; //	return;					
	AR	= 1
	BP	+= AR
	pop	AR
	rm[BP_SAVE]	= AR
	rets
; //L5589D4CE_66_end:;				
L5589D4CE_66_end:
; //_A5A7AA303_203:;				
_A5A7AA303_203:
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
; //_A5A7AA303_204:;				
_A5A7AA303_204:
; //_A5A7AA303_205:;				
_A5A7AA303_205:
; //_A5A7AA303_206:;				
_A5A7AA303_206:
; //	NEARCALL(L5589D4CE_66);			
	call	L5589D4CE_66
; //	sSI	= (int)&_keynow_1_2;		
	I1	= rm[BP_SAVE]
; //	*(__int16*)sSI	= sAX;			
	rm[I1]	= AX
; //_A5A7AA303_207:;				
_A5A7AA303_207:
; //	asm I1 = L5589D4CE_62+0;		
	I1 = L5589D4CE_62+0//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sSI	= (int)&_keynow_1_2;		
	I1	= rm[BP_SAVE]
; //	sCX	= *(__int16*)sSI;		
	CX	= rm[I1]
; //	sfx_CMP_AX_CX_JNE();			
	pch	= sfx_CMP_AX_CX_JNE
	lcall	sfx_CMP_AX_CX_JNE
; //	if(__je__)	goto L5589D4CE_71;	
	if ZR	jmp L5589D4CE_71
; //	goto	L5589D4CE_70;			
	jmp	L5589D4CE_70
; //L5589D4CE_71:;					
L5589D4CE_71:
; //	
; //_A5A7AA303_208:;				
_A5A7AA303_208:
; //	sSI	= (int)&_keynow_1_2;		
	I1	= rm[BP_SAVE]
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sSI	= (int)&L5589D4CE_62;		
	I1	= L5589D4CE_62
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_A5A7AA303_209:;				
_A5A7AA303_209:
; //	sAX	= 0x0200;			
	AX	= 0x0200
; //	sSI	= (int)&L5589D4CE_64;		
	I1	= L5589D4CE_64
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_A5A7AA303_210:;				
_A5A7AA303_210:
; //	goto L5589D4CE_69;			
	jmp	L5589D4CE_69
; //L5589D4CE_70:;					
L5589D4CE_70:
; //_A5A7AA303_211:;				
_A5A7AA303_211:
; //_A5A7AA303_212:;				
_A5A7AA303_212:
; //	asm I1 = L5589D4CE_64+0;		
	I1 = L5589D4CE_64+0//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sfx_CHECKZERO();			
	AR	= AX
; //	if(__jnz__)	goto L5589D4CE_73;	
	if NZ	jmp L5589D4CE_73
; //	goto	L5589D4CE_72;			
	jmp	L5589D4CE_72
; //L5589D4CE_73:;					
L5589D4CE_73:
; //	
; //_A5A7AA303_213:;				
_A5A7AA303_213:
; //	asm I1 = L5589D4CE_64+0;		
	I1 = L5589D4CE_64+0//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sCX	= 0x0001;			
	CX	= 0x01
; //	sAX	= sAX - sCX;			
	AR	= CX
	AX	-= AR
; //	sSI	= (int)&L5589D4CE_64;		
	I1	= L5589D4CE_64
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_A5A7AA303_214:;				
_A5A7AA303_214:
; //	goto L5589D4CE_69;			
	jmp	L5589D4CE_69
; //L5589D4CE_72:;					
L5589D4CE_72:
; //_A5A7AA303_215:;				
_A5A7AA303_215:
; //_A5A7AA303_216:;				
_A5A7AA303_216:
; //	asm AX = #_keyfuncF06F3D55+0;		
	AX = #_keyfuncF06F3D55+0//
; //	sSI	= (int)&_pkey_1_10;		
	AR	= -4
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	*(__int16*)sSI	= sAX;			
	rm[I1]	= AX
; //_A5A7AA303_217:;				
_A5A7AA303_217:
; //	sAX	= 0x0200;			
	AX	= 0x0200
; //	sSI	= (int)&L5589D4CE_64;		
	I1	= L5589D4CE_64
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_A5A7AA303_218:;				
_A5A7AA303_218:
; //	asm I1 = L5589D4CE_63+0;		
	I1 = L5589D4CE_63+0//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	asm I1 = L5589D4CE_62+0;		
	I1 = L5589D4CE_62+0//
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
; //_A5A7AA303_219:;				
_A5A7AA303_219:
; //	asm I1 = L5589D4CE_63+0;		
	I1 = L5589D4CE_63+0//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sSI	= (int)&_bitp_1_8;		
	AR	= -3
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	*(__int16*)sSI	= sAX;			
	rm[I1]	= AX
; //_A5A7AA303_220:;				
_A5A7AA303_220:
; //	asm I1 = L5589D4CE_62+0;		
	I1 = L5589D4CE_62+0//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sSI	= (int)&L5589D4CE_63;		
	I1	= L5589D4CE_63
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_A5A7AA303_221:;				
_A5A7AA303_221:
; //	_i_1_4+0	= 0x05;			
	AR	= -1
	I1	= rm[BP_SAVE]
	I1	+= AR
	AR	= 0x05
	rm[I1]	= AR
; //L5589D4CE_75:;					
L5589D4CE_75:
; //_A5A7AA303_222:;				
_A5A7AA303_222:
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
; //	if(__jnz__)	goto L5589D4CE_76;	
	if NZ	jmp L5589D4CE_76
; //	goto	L5589D4CE_74;			
	jmp	L5589D4CE_74
; //L5589D4CE_76:;					
L5589D4CE_76:
; //	
; //_A5A7AA303_223:;				
_A5A7AA303_223:
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
; //	if(__jz__) goto L5589D4CE_78;		
	if ZR	jmp L5589D4CE_78
; //	sAX	= 1;				
	AX	= 0x01
; //L5589D4CE_78:;					
L5589D4CE_78:
; //	sfx_CHECKZERO();			
	AR	= AX
; //	if(__jnz__)	goto L5589D4CE_79;	
	if NZ	jmp L5589D4CE_79
; //	goto	L5589D4CE_77;			
	jmp	L5589D4CE_77
; //L5589D4CE_79:;					
L5589D4CE_79:
; //	
; //_A5A7AA303_224:;				
_A5A7AA303_224:
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
; //	if(__jz__) goto L5589D4CE_81;		
	if ZR	jmp L5589D4CE_81
; //	sAX	= 1;				
	AX	= 0x01
; //L5589D4CE_81:;					
L5589D4CE_81:
; //	sfx_CHECKZERO();			
	AR	= AX
; //	if(__jnz__)	goto L5589D4CE_82;	
	if NZ	jmp L5589D4CE_82
; //	goto	L5589D4CE_80;			
	jmp	L5589D4CE_80
; //L5589D4CE_82:;					
L5589D4CE_82:
; //	
; //_A5A7AA303_225:;				
_A5A7AA303_225:
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
; //	if(__jnz__)	goto L5589D4CE_84;	
	if NZ	jmp L5589D4CE_84
; //	goto	L5589D4CE_83;			
	jmp	L5589D4CE_83
; //L5589D4CE_84:;					
L5589D4CE_84:
; //_A5A7AA303_226:;				
_A5A7AA303_226:
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
; //L5589D4CE_83:;					
L5589D4CE_83:
; //_A5A7AA303_227:;				
_A5A7AA303_227:
; //	goto L5589D4CE_85;			
	jmp	L5589D4CE_85
; //L5589D4CE_80:;					
L5589D4CE_80:
; //	
; //_A5A7AA303_228:;				
_A5A7AA303_228:
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
; //	if(__jnz__)	goto L5589D4CE_87;	
	if NZ	jmp L5589D4CE_87
; //	goto	L5589D4CE_86;			
	jmp	L5589D4CE_86
; //L5589D4CE_87:;					
L5589D4CE_87:
; //_A5A7AA303_229:;				
_A5A7AA303_229:
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
; //L5589D4CE_86:;					
L5589D4CE_86:
; //_A5A7AA303_230:;				
_A5A7AA303_230:
; //L5589D4CE_85:;					
L5589D4CE_85:
; //_A5A7AA303_231:;				
_A5A7AA303_231:
; //	goto L5589D4CE_88;			
	jmp	L5589D4CE_88
; //L5589D4CE_77:;					
L5589D4CE_77:
; //	
; //_A5A7AA303_232:;				
_A5A7AA303_232:
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
; //	if(__jz__) goto L5589D4CE_90;		
	if ZR	jmp L5589D4CE_90
; //	sAX	= 1;				
	AX	= 0x01
; //L5589D4CE_90:;					
L5589D4CE_90:
; //	sfx_CHECKZERO();			
	AR	= AX
; //	if(__jnz__)	goto L5589D4CE_91;	
	if NZ	jmp L5589D4CE_91
; //	goto	L5589D4CE_89;			
	jmp	L5589D4CE_89
; //L5589D4CE_91:;					
L5589D4CE_91:
; //	
; //_A5A7AA303_233:;				
_A5A7AA303_233:
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
; //	if(__jnz__)	goto L5589D4CE_93;	
	if NZ	jmp L5589D4CE_93
; //	goto	L5589D4CE_92;			
	jmp	L5589D4CE_92
; //L5589D4CE_93:;					
L5589D4CE_93:
; //_A5A7AA303_234:;				
_A5A7AA303_234:
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
; //L5589D4CE_92:;					
L5589D4CE_92:
; //_A5A7AA303_235:;				
_A5A7AA303_235:
; //L5589D4CE_89:;					
L5589D4CE_89:
; //_A5A7AA303_236:;				
_A5A7AA303_236:
; //L5589D4CE_88:;					
L5589D4CE_88:
; //_A5A7AA303_237:;				
_A5A7AA303_237:
; //_A5A7AA303_238:;				
_A5A7AA303_238:
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
; //_A5A7AA303_239:;				
_A5A7AA303_239:
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
; //_A5A7AA303_240:;				
_A5A7AA303_240:
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
; //	goto L5589D4CE_75;			
	jmp	L5589D4CE_75
; //L5589D4CE_74:;					
L5589D4CE_74:
; //L5589D4CE_69:;					
L5589D4CE_69:
; //_A5A7AA303_241:;				
_A5A7AA303_241:
; //	return;					
	AR	= 5
	BP	+= AR
	pop	AR
	rm[BP_SAVE]	= AR
	rets
; //_PollingKey3B90E3B1_end:;			
_PollingKey3B90E3B1_end:
; //_A5A7AA303_242:;				
_A5A7AA303_242:
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
; //
; //
; //
; //
; //
; //
; //
; //
