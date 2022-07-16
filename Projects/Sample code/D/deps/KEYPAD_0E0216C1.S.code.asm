; keypad.c Code Start!!;
VarRM[0:4095]={
 L5589D4CE_53,L5589D4CE_54,L5589D4CE_55 
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
; //_A0432E234_172:;				
_A0432E234_172:
; //	
; //_A0432E234_173:;				
_A0432E234_173:
; //	asm clr io[0x04].b0;			
	clr io[0x04].b0//
; //_A0432E234_174:;				
_A0432E234_174:
; //	asm clr io[0x04].b1;			
	clr io[0x04].b1//
; //_A0432E234_175:;				
_A0432E234_175:
; //	asm clr io[0x04].b2;			
	clr io[0x04].b2//
; //_A0432E234_176:;				
_A0432E234_176:
; //	asm clr io[0x04].b3;			
	clr io[0x04].b3//
; //_A0432E234_177:;				
_A0432E234_177:
; //	io[0x1E]	= 0x0005;		
	AR	= 0x05
	io[0x1E]	= AR
; //_A0432E234_178:;				
_A0432E234_178:
; //	sAX	= 0x000F;			
	AX	= 0x0F
; //	sAX	= sAX | io[0x1F];		
	AR	= io[0x1F]
	AX	|= AR
; //	io[0x1F]	= sAX;			
	AR	= AX
	io[0x1F]	= AR
; //_A0432E234_179:;				
_A0432E234_179:
; //	sAX	= 0x0000;			
	AX	= 0x00
; //	sSI	= (int)&L5589D4CE_53;		
	I1	= L5589D4CE_53
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_A0432E234_180:;				
_A0432E234_180:
; //	sAX	= 0x0000;			
	AX	= 0x00
; //	sSI	= (int)&L5589D4CE_54;		
	I1	= L5589D4CE_54
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_A0432E234_181:;				
_A0432E234_181:
; //	sAX	= 0x0200;			
	AX	= 0x0200
; //	sSI	= (int)&L5589D4CE_55;		
	I1	= L5589D4CE_55
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //L5589D4CE_56:;					
L5589D4CE_56:
; //_A0432E234_182:;				
_A0432E234_182:
; //	return;					
	rets
; //_InitKey3C587B6D_end:;				
_InitKey3C587B6D_end:
; //_A0432E234_183:;				
_A0432E234_183:
; //}
; //
; //rjmp void L5589D4CE_57()			
L5589D4CE_57:
; //{
; //	__int16 _btn_1_2;
; //						
	AR	= rm[BP_SAVE]
	push	AR
	AR	= BP
	rm[BP_SAVE]	= AR
	AR	 = -1
	BP	+= AR
; //_A0432E234_184:;				
_A0432E234_184:
; //	
; //_A0432E234_185:;				
_A0432E234_185:
; //	sAX	= 0x000F;			
	AX	= 0x0F
; //	sAX	= sAX & io[0x07];		
	AR	= io[0x07]
	AX	&= AR
; //	sSI	= (int)&_btn_1_2;		
	I1	= rm[BP_SAVE]
; //	*(__int16*)sSI	= sAX;			
	rm[I1]	= AX
; //_A0432E234_186:;				
_A0432E234_186:
; //	sSI	= (int)&_btn_1_2;		
	I1	= rm[BP_SAVE]
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	goto L5589D4CE_59;			
	jmp	L5589D4CE_59
; //L5589D4CE_59:;					
L5589D4CE_59:
; //_A0432E234_187:;				
_A0432E234_187:
; //	return;					
	AR	= 1
	BP	+= AR
	pop	AR
	rm[BP_SAVE]	= AR
	rets
; //L5589D4CE_57_end:;				
L5589D4CE_57_end:
; //_A0432E234_188:;				
_A0432E234_188:
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
; //_A0432E234_189:;				
_A0432E234_189:
; //	
; //_A0432E234_190:;				
_A0432E234_190:
; //_A0432E234_191:;				
_A0432E234_191:
; //	NEARCALL(L5589D4CE_57);			
	call	L5589D4CE_57
; //	sSI	= (int)&_keynow_1_2;		
	I1	= rm[BP_SAVE]
; //	*(__int16*)sSI	= sAX;			
	rm[I1]	= AX
; //_A0432E234_192:;				
_A0432E234_192:
; //	asm I1 = L5589D4CE_53+0;		
	I1 = L5589D4CE_53+0//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sSI	= (int)&_keynow_1_2;		
	I1	= rm[BP_SAVE]
; //	sCX	= *(__int16*)sSI;		
	CX	= rm[I1]
; //	sfx_CMP_AX_CX_JNE();			
	pch	= sfx_CMP_AX_CX_JNE
	lcall	sfx_CMP_AX_CX_JNE
; //	if(__je__)	goto L5589D4CE_62;	
	if ZR	jmp L5589D4CE_62
; //	goto	L5589D4CE_61;			
	jmp	L5589D4CE_61
; //L5589D4CE_62:;					
L5589D4CE_62:
; //	
; //_A0432E234_193:;				
_A0432E234_193:
; //	sSI	= (int)&_keynow_1_2;		
	I1	= rm[BP_SAVE]
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sSI	= (int)&L5589D4CE_53;		
	I1	= L5589D4CE_53
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_A0432E234_194:;				
_A0432E234_194:
; //	sAX	= 0x0200;			
	AX	= 0x0200
; //	sSI	= (int)&L5589D4CE_55;		
	I1	= L5589D4CE_55
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_A0432E234_195:;				
_A0432E234_195:
; //	goto L5589D4CE_60;			
	jmp	L5589D4CE_60
; //L5589D4CE_61:;					
L5589D4CE_61:
; //_A0432E234_196:;				
_A0432E234_196:
; //_A0432E234_197:;				
_A0432E234_197:
; //	asm I1 = L5589D4CE_55+0;		
	I1 = L5589D4CE_55+0//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sfx_CHECKZERO();			
	AR	= AX
; //	if(__jnz__)	goto L5589D4CE_64;	
	if NZ	jmp L5589D4CE_64
; //	goto	L5589D4CE_63;			
	jmp	L5589D4CE_63
; //L5589D4CE_64:;					
L5589D4CE_64:
; //	
; //_A0432E234_198:;				
_A0432E234_198:
; //	asm I1 = L5589D4CE_55+0;		
	I1 = L5589D4CE_55+0//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sCX	= 0x0001;			
	CX	= 0x01
; //	sAX	= sAX - sCX;			
	AR	= CX
	AX	-= AR
; //	sSI	= (int)&L5589D4CE_55;		
	I1	= L5589D4CE_55
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_A0432E234_199:;				
_A0432E234_199:
; //	goto L5589D4CE_60;			
	jmp	L5589D4CE_60
; //L5589D4CE_63:;					
L5589D4CE_63:
; //_A0432E234_200:;				
_A0432E234_200:
; //_A0432E234_201:;				
_A0432E234_201:
; //	asm AX = #_keyfuncF06F3D55+0;		
	AX = #_keyfuncF06F3D55+0//
; //	sSI	= (int)&_pkey_1_10;		
	AR	= -4
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	*(__int16*)sSI	= sAX;			
	rm[I1]	= AX
; //_A0432E234_202:;				
_A0432E234_202:
; //	sAX	= 0x0200;			
	AX	= 0x0200
; //	sSI	= (int)&L5589D4CE_55;		
	I1	= L5589D4CE_55
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_A0432E234_203:;				
_A0432E234_203:
; //	asm I1 = L5589D4CE_54+0;		
	I1 = L5589D4CE_54+0//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	asm I1 = L5589D4CE_53+0;		
	I1 = L5589D4CE_53+0//
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
; //_A0432E234_204:;				
_A0432E234_204:
; //	asm I1 = L5589D4CE_54+0;		
	I1 = L5589D4CE_54+0//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sSI	= (int)&_bitp_1_8;		
	AR	= -3
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	*(__int16*)sSI	= sAX;			
	rm[I1]	= AX
; //_A0432E234_205:;				
_A0432E234_205:
; //	asm I1 = L5589D4CE_53+0;		
	I1 = L5589D4CE_53+0//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sSI	= (int)&L5589D4CE_54;		
	I1	= L5589D4CE_54
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_A0432E234_206:;				
_A0432E234_206:
; //	_i_1_4+0	= 0x05;			
	AR	= -1
	I1	= rm[BP_SAVE]
	I1	+= AR
	AX	= 0x05
	rm[I1]	= AX
; //L5589D4CE_66:;					
L5589D4CE_66:
; //_A0432E234_207:;				
_A0432E234_207:
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
; //	if(__jnz__)	goto L5589D4CE_67;	
	if NZ	jmp L5589D4CE_67
; //	goto	L5589D4CE_65;			
	jmp	L5589D4CE_65
; //L5589D4CE_67:;					
L5589D4CE_67:
; //	
; //_A0432E234_208:;				
_A0432E234_208:
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
; //	if(__jz__) goto L5589D4CE_69;		
	if ZR	jmp L5589D4CE_69
; //	sAX	= 1;				
	AX	= 0x01
; //L5589D4CE_69:;					
L5589D4CE_69:
; //	sfx_CHECKZERO();			
	AR	= AX
; //	if(__jnz__)	goto L5589D4CE_70;	
	if NZ	jmp L5589D4CE_70
; //	goto	L5589D4CE_68;			
	jmp	L5589D4CE_68
; //L5589D4CE_70:;					
L5589D4CE_70:
; //	
; //_A0432E234_209:;				
_A0432E234_209:
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
; //	if(__jz__) goto L5589D4CE_72;		
	if ZR	jmp L5589D4CE_72
; //	sAX	= 1;				
	AX	= 0x01
; //L5589D4CE_72:;					
L5589D4CE_72:
; //	sfx_CHECKZERO();			
	AR	= AX
; //	if(__jnz__)	goto L5589D4CE_73;	
	if NZ	jmp L5589D4CE_73
; //	goto	L5589D4CE_71;			
	jmp	L5589D4CE_71
; //L5589D4CE_73:;					
L5589D4CE_73:
; //	
; //_A0432E234_210:;				
_A0432E234_210:
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
; //	if(__jnz__)	goto L5589D4CE_75;	
	if NZ	jmp L5589D4CE_75
; //	goto	L5589D4CE_74;			
	jmp	L5589D4CE_74
; //L5589D4CE_75:;					
L5589D4CE_75:
; //_A0432E234_211:;				
_A0432E234_211:
; //_A0432E234_212:;				
_A0432E234_212:
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
; //L5589D4CE_74:;					
L5589D4CE_74:
; //_A0432E234_213:;				
_A0432E234_213:
; //	goto L5589D4CE_76;			
	jmp	L5589D4CE_76
; //L5589D4CE_71:;					
L5589D4CE_71:
; //	
; //_A0432E234_214:;				
_A0432E234_214:
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
; //	if(__jnz__)	goto L5589D4CE_78;	
	if NZ	jmp L5589D4CE_78
; //	goto	L5589D4CE_77;			
	jmp	L5589D4CE_77
; //L5589D4CE_78:;					
L5589D4CE_78:
; //_A0432E234_215:;				
_A0432E234_215:
; //_A0432E234_216:;				
_A0432E234_216:
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
; //L5589D4CE_77:;					
L5589D4CE_77:
; //_A0432E234_217:;				
_A0432E234_217:
; //L5589D4CE_76:;					
L5589D4CE_76:
; //_A0432E234_218:;				
_A0432E234_218:
; //	goto L5589D4CE_79;			
	jmp	L5589D4CE_79
; //L5589D4CE_68:;					
L5589D4CE_68:
; //	
; //_A0432E234_219:;				
_A0432E234_219:
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
; //_A0432E234_220:;				
_A0432E234_220:
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
; //	if(__jnz__)	goto L5589D4CE_84;	
	if NZ	jmp L5589D4CE_84
; //	goto	L5589D4CE_83;			
	jmp	L5589D4CE_83
; //L5589D4CE_84:;					
L5589D4CE_84:
; //_A0432E234_221:;				
_A0432E234_221:
; //_A0432E234_222:;				
_A0432E234_222:
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
; //L5589D4CE_83:;					
L5589D4CE_83:
; //_A0432E234_223:;				
_A0432E234_223:
; //L5589D4CE_80:;					
L5589D4CE_80:
; //_A0432E234_224:;				
_A0432E234_224:
; //L5589D4CE_79:;					
L5589D4CE_79:
; //_A0432E234_225:;				
_A0432E234_225:
; //_A0432E234_226:;				
_A0432E234_226:
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
; //_A0432E234_227:;				
_A0432E234_227:
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
; //_A0432E234_228:;				
_A0432E234_228:
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
; //_A0432E234_229:;				
_A0432E234_229:
; //	goto L5589D4CE_66;			
	jmp	L5589D4CE_66
; //L5589D4CE_65:;					
L5589D4CE_65:
; //L5589D4CE_60:;					
L5589D4CE_60:
; //_A0432E234_230:;				
_A0432E234_230:
; //	return;					
	AR	= 5
	BP	+= AR
	pop	AR
	rm[BP_SAVE]	= AR
	rets
; //_PollingKey3B90E3B1_end:;			
_PollingKey3B90E3B1_end:
; //_A0432E234_231:;				
_A0432E234_231:
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
