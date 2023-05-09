; WS2811.c Code Start!!;
VarRM[0:4095]={
 LD63FD439_73,LD63FD439_130,_LED_Buf98A4A35A[20],_sum6BC8EB73,LD63FD439_86 
};

; //
.code
; //
; //
; //void _WS_Send24bits851C5C55(__int16 _color_0_4);
; //void _WS_Color_copyADB1DFED(__int16 _No_0_4, __int16 _color_0_6);
; //void _WS_ColorSet_LEDCA3DEB8C(__int16 _from_0_4, __int16 _to_0_6, __int16 _color_0_8);
; //void _WS_TRSF_color_setE1CC300C(__int16 _color_0_4, __int16 _Led_num_0_6);
; //void _WS_RefreshAD7B99B1();
; //void _WS_Key_RGBC5B96B6D();
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
; //void _WS_Send24bits851C5C55(__int16 _color_0_4)	
_WS_Send24bits851C5C55:
; //{
; //	__int16 _i_1_2;
; //						
	AR	= rm[BP_SAVE]
	push	AR
	AR	= BP
	rm[BP_SAVE]	= AR
	AR	 = -1
	BP	+= AR
; //_A89F084ED_210:;				
_A89F084ED_210:
; //_A89F084ED_211:;				
_A89F084ED_211:
; //	_i_1_2+0	= 0x00;			
	I1	= rm[BP_SAVE]
	AR	= 0x00
	rm[I1]	= AR
; //LD63FD439_76:;					
LD63FD439_76:
; //	sSI	= (int)&_i_1_2;			
	I1	= rm[BP_SAVE]
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sCX	= 0x0018;			
	CX	= 0x18
; //	sfx_CMP_AX_CX_JB();			
	pch	= sfx_CMP_AX_CX_JB
	lcall	sfx_CMP_AX_CX_JB
; //	if(__je__)	goto LD63FD439_80;	
	if ZR	jmp LD63FD439_80
; //	goto	LD63FD439_78;			
	pch =	LD63FD439_78
	ljmp	LD63FD439_78
; //LD63FD439_80:;					
LD63FD439_80:
; //	goto LD63FD439_77;			
	pch =	LD63FD439_77
	ljmp	LD63FD439_77
; //LD63FD439_79:;					
LD63FD439_79:
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
; //	goto LD63FD439_76;			
	pch =	LD63FD439_76
	ljmp	LD63FD439_76
; //LD63FD439_77:;					
LD63FD439_77:
; //	
; //_A89F084ED_212:;				
_A89F084ED_212:
; //	sSI	= (int)&_color_0_4;		
	AR	= 2
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	asm AR = 0x0000;			
	AR = 0x0000//
; //	asm AX = AX & AR;			
	AX = AX & AR//
; //	sfx_CHECKZERO();			
	AR	= AX
; //	if(__jnz__)	goto LD63FD439_82;	
	if NZ	jmp LD63FD439_82
; //	goto	LD63FD439_81;			
	pch =	LD63FD439_81
	ljmp	LD63FD439_81
; //LD63FD439_82:;					
LD63FD439_82:
; //	
; //_A89F084ED_213:;				
_A89F084ED_213:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_214:;				
_A89F084ED_214:
; //	asm	nop				
	nop
; //_A89F084ED_215:;				
_A89F084ED_215:
; //	asm	nop				
	nop
; //_A89F084ED_216:;				
_A89F084ED_216:
; //	asm	nop				
	nop
; //_A89F084ED_217:;				
_A89F084ED_217:
; //	asm	nop				
	nop
; //_A89F084ED_218:;				
_A89F084ED_218:
; //	asm	nop				
	nop
; //_A89F084ED_219:;				
_A89F084ED_219:
; //	asm	nop				
	nop
; //_A89F084ED_220:;				
_A89F084ED_220:
; //	asm	nop				
	nop
; //_A89F084ED_221:;				
_A89F084ED_221:
; //	asm	nop				
	nop
; //_A89F084ED_222:;				
_A89F084ED_222:
; //	asm	nop				
	nop
; //_A89F084ED_223:;				
_A89F084ED_223:
; //	asm	nop				
	nop
; //_A89F084ED_224:;				
_A89F084ED_224:
; //	asm	nop				
	nop
; //_A89F084ED_225:;				
_A89F084ED_225:
; //	asm	nop				
	nop
; //_A89F084ED_226:;				
_A89F084ED_226:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_227:;				
_A89F084ED_227:
; //	asm	nop				
	nop
; //_A89F084ED_228:;				
_A89F084ED_228:
; //	asm	nop				
	nop
; //_A89F084ED_229:;				
_A89F084ED_229:
; //	asm	nop				
	nop
; //	goto LD63FD439_83;			
	pch =	LD63FD439_83
	ljmp	LD63FD439_83
; //LD63FD439_81:;					
LD63FD439_81:
; //_A89F084ED_230:;				
_A89F084ED_230:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //LD63FD439_83:;					
LD63FD439_83:
; //_A89F084ED_231:;				
_A89F084ED_231:
; //_A89F084ED_232:;				
_A89F084ED_232:
; //	asm	nop				
	nop
; //_A89F084ED_233:;				
_A89F084ED_233:
; //	asm	nop				
	nop
; //_A89F084ED_234:;				
_A89F084ED_234:
; //	asm	nop				
	nop
; //_A89F084ED_235:;				
_A89F084ED_235:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_236:;				
_A89F084ED_236:
; //	asm	nop				
	nop
; //_A89F084ED_237:;				
_A89F084ED_237:
; //	asm	nop				
	nop
; //_A89F084ED_238:;				
_A89F084ED_238:
; //	asm	nop				
	nop
; //_A89F084ED_239:;				
_A89F084ED_239:
; //	asm	nop				
	nop
; //_A89F084ED_240:;				
_A89F084ED_240:
; //	asm	nop				
	nop
; //_A89F084ED_241:;				
_A89F084ED_241:
; //	asm	nop				
	nop
; //_A89F084ED_242:;				
_A89F084ED_242:
; //	asm	nop				
	nop
; //_A89F084ED_243:;				
_A89F084ED_243:
; //	asm	nop				
	nop
; //_A89F084ED_244:;				
_A89F084ED_244:
; //	asm	nop				
	nop
; //_A89F084ED_245:;				
_A89F084ED_245:
; //	asm	nop				
	nop
; //_A89F084ED_246:;				
_A89F084ED_246:
; //	asm	nop				
	nop
; //_A89F084ED_247:;				
_A89F084ED_247:
; //	asm	nop				
	nop
; //_A89F084ED_248:;				
_A89F084ED_248:
; //	sSI	= (int)&_color_0_4;		
	AR	= 2
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	asm slz AX, 1;				
	slz AX, 1//
; //	sSI	= (int)&_color_0_4;		
	AR	= 2
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	*(__int16*)sSI	= sAX;			
	rm[I1]	= AX
; //	goto LD63FD439_79;			
	pch =	LD63FD439_79
	ljmp	LD63FD439_79
; //LD63FD439_78:;					
LD63FD439_78:
; //_A89F084ED_249:;				
_A89F084ED_249:
; //LD63FD439_75:;					
LD63FD439_75:
; //_A89F084ED_250:;				
_A89F084ED_250:
; //	return;					
	AR	= 1
	BP	+= AR
	pop	AR
	rm[BP_SAVE]	= AR
	rets
; //_WS_Send24bits851C5C55_end:;			
_WS_Send24bits851C5C55_end:
; //_A89F084ED_251:;				
_A89F084ED_251:
; //}
; //
; //void _WS_Color_copyADB1DFED(__int16 _No_0_4, __int16 _color_0_6)
_WS_Color_copyADB1DFED:
; //{						
	AR	= rm[BP_SAVE]
	push	AR
	AR	= BP
	rm[BP_SAVE]	= AR
; //_A89F084ED_252:;				
_A89F084ED_252:
; //	
; //_A89F084ED_253:;				
_A89F084ED_253:
; //	asm AX = _LED_Buf98A4A35A+0;		
	AX = _LED_Buf98A4A35A+0//
; //	PUSH(sAX);				
	push	AX
; //	sSI	= (int)&_No_0_4;		
	AR	= 2
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sCX	= 0x0005;			
	CX	= 0x05
; //	sfx_IMUL_AX_CX();			
	pch	= sfx_IMUL_AX_CX
	lcall	sfx_IMUL_AX_CX
; //	sCX	= POP();			
	pop	CX
; //	sAX	= sAX + sCX;			
	AR	= CX
	AX	+= AR
; //	PUSH(sAX);				
	push	AX
; //	sSI	= (int)&_color_0_6;		
	AR	= 3
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sfx_UINT2ULONG_AX();			
	DX	= 0
; //	sSI	= POP();			
	pop	I1
; //	sfx_STORSILONG();			
	rm[I1++]	= AX
	rm[I1--]	= DX
; //LD63FD439_84:;					
LD63FD439_84:
; //_A89F084ED_254:;				
_A89F084ED_254:
; //	return;					
	pop	AR
	rm[BP_SAVE]	= AR
	rets
; //_WS_Color_copyADB1DFED_end:;			
_WS_Color_copyADB1DFED_end:
; //_A89F084ED_255:;				
_A89F084ED_255:
; //}
; //
; //void _WS_ColorSet_LEDCA3DEB8C(__int16 _from_0_4, __int16 _to_0_6, __int16 _color_0_8)
_WS_ColorSet_LEDCA3DEB8C:
; //{						
	AR	= rm[BP_SAVE]
	push	AR
	AR	= BP
	rm[BP_SAVE]	= AR
; //_A89F084ED_256:;				
_A89F084ED_256:
; //	
; //_A89F084ED_257:;				
_A89F084ED_257:
; //	sSI	= (int)&_to_0_6;		
	AR	= 3
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sCX	= 0x0003;			
	CX	= 0x03
; //	sfx_CMP_AX_CX_JBE();			
	pch	= sfx_CMP_AX_CX_JBE
	lcall	sfx_CMP_AX_CX_JBE
; //	if(__je__)	goto LD63FD439_88;	
	if ZR	jmp LD63FD439_88
; //	sAX	= 1;				
	AX	= 0x01
; //	goto	LD63FD439_89;			
	pch =	LD63FD439_89
	ljmp	LD63FD439_89
; //LD63FD439_88:;					
LD63FD439_88:
; //	sAX	= 0;				
	AX	= 0x00
; //LD63FD439_89:;					
LD63FD439_89:
; //	sfx_CHECKZERO();			
	AR	= AX
; //	if(__jz__)	goto LD63FD439_90;	
	if ZR	jmp LD63FD439_90
; //	goto	LD63FD439_87;			
	pch =	LD63FD439_87
	ljmp	LD63FD439_87
; //LD63FD439_90:;					
LD63FD439_90:
; //	sSI	= (int)&_from_0_4;		
	AR	= 2
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sCX	= 0x0000;			
	CX	= 0x00
; //	sfx_CMP_AX_CX_JAE();			
	pch	= sfx_CMP_AX_CX_JAE
	lcall	sfx_CMP_AX_CX_JAE
; //	if(__je__)	goto LD63FD439_91;	
	if ZR	jmp LD63FD439_91
; //	sAX	= 1;				
	AX	= 0x01
; //	goto	LD63FD439_92;			
	pch =	LD63FD439_92
	ljmp	LD63FD439_92
; //LD63FD439_91:;					
LD63FD439_91:
; //	sAX	= 0;				
	AX	= 0x00
; //LD63FD439_92:;					
LD63FD439_92:
; //LD63FD439_87:;					
LD63FD439_87:
; //	sfx_CHECKZERO();			
	AR	= AX
; //	if(__jnz__)	goto LD63FD439_94;	
	if NZ	jmp LD63FD439_94
; //	goto	LD63FD439_93;			
	pch =	LD63FD439_93
	ljmp	LD63FD439_93
; //LD63FD439_94:;					
LD63FD439_94:
; //	
; //_A89F084ED_258:;				
_A89F084ED_258:
; //	_to_0_6+0	= 0x03;			
	AR	= 3
	I1	= rm[BP_SAVE]
	I1	+= AR
	AR	= 0x03
	rm[I1]	= AR
; //_A89F084ED_259:;				
_A89F084ED_259:
; //	_from_0_4+0	= 0x00;			
	AR	= 2
	I1	= rm[BP_SAVE]
	I1	+= AR
	AR	= 0x00
	rm[I1]	= AR
; //LD63FD439_93:;					
LD63FD439_93:
; //_A89F084ED_260:;				
_A89F084ED_260:
; //_A89F084ED_261:;				
_A89F084ED_261:
; //	sAX	= 0xFFFF;			
	AX	= 0xFFFF
; //	sSI	= (int)&_color_0_8;		
	AR	= 4
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	sCX	= *(__int16*)sSI;		
	CX	= rm[I1]
; //	sAX	= sAX & sCX;			
	AR	= CX
	AX	&= AR
; //	sSI	= (int)&_color_0_8;		
	AR	= 4
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	*(__int16*)sSI	= sAX;			
	rm[I1]	= AX
; //_A89F084ED_262:;				
_A89F084ED_262:
; //	sSI	= (int)&_from_0_4;		
	AR	= 2
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sSI	= (int)&_to_0_6;		
	AR	= 3
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	sCX	= *(__int16*)sSI;		
	CX	= rm[I1]
; //	sfx_CMP_AX_CX_JA();			
	pch	= sfx_CMP_AX_CX_JA
	lcall	sfx_CMP_AX_CX_JA
; //	if(__je__)	goto LD63FD439_96;	
	if ZR	jmp LD63FD439_96
; //	goto	LD63FD439_95;			
	pch =	LD63FD439_95
	ljmp	LD63FD439_95
; //LD63FD439_96:;					
LD63FD439_96:
; //	
; //_A89F084ED_263:;				
_A89F084ED_263:
; //	sSI	= (int)&_from_0_4;		
	AR	= 2
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sSI	= (int)&LD63FD439_86;		
	I1	= LD63FD439_86
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_A89F084ED_264:;				
_A89F084ED_264:
; //	sSI	= (int)&_to_0_6;		
	AR	= 3
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sSI	= (int)&_from_0_4;		
	AR	= 2
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	*(__int16*)sSI	= sAX;			
	rm[I1]	= AX
; //_A89F084ED_265:;				
_A89F084ED_265:
; //	asm I1 = LD63FD439_86+0;		
	I1 = LD63FD439_86+0//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sSI	= (int)&_to_0_6;		
	AR	= 3
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	*(__int16*)sSI	= sAX;			
	rm[I1]	= AX
; //LD63FD439_95:;					
LD63FD439_95:
; //_A89F084ED_266:;				
_A89F084ED_266:
; //_A89F084ED_267:;				
_A89F084ED_267:
; //	sSI	= (int)&_from_0_4;		
	AR	= 2
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sSI	= (int)&LD63FD439_86;		
	I1	= LD63FD439_86
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //LD63FD439_97:;					
LD63FD439_97:
; //	asm I1 = LD63FD439_86+0;		
	I1 = LD63FD439_86+0//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sSI	= (int)&_to_0_6;		
	AR	= 3
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	sCX	= *(__int16*)sSI;		
	CX	= rm[I1]
; //	sfx_CMP_AX_CX_JLE();			
	pch	= sfx_CMP_AX_CX_JLE
	lcall	sfx_CMP_AX_CX_JLE
; //	if(__je__)	goto LD63FD439_101;	
	if ZR	jmp LD63FD439_101
; //	goto	LD63FD439_99;			
	pch =	LD63FD439_99
	ljmp	LD63FD439_99
; //LD63FD439_101:;					
LD63FD439_101:
; //	goto LD63FD439_98;			
	pch =	LD63FD439_98
	ljmp	LD63FD439_98
; //LD63FD439_100:;					
LD63FD439_100:
; //	asm I1 = LD63FD439_86+0;		
	I1 = LD63FD439_86+0//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sSI	= (int)&LD63FD439_86;		
	I1	= LD63FD439_86
; //	PUSH(sAX);				
	push	AX
; //	sAX	= 0x0001;			
	AX	= 0x01
; //	sCX	= *(__int16*)sSI;		
	CX	= rm[I1]
; //	sCX	= sCX + sAX;			
	AR	= AX
	CX	+= AR
; //	*(__int16*)sSI	= sCX;			
	rm[I1]	= CX
; //	sAX	= POP();			
	pop	AX
; //	goto LD63FD439_97;			
	pch =	LD63FD439_97
	ljmp	LD63FD439_97
; //LD63FD439_98:;					
LD63FD439_98:
; //	
; //_A89F084ED_268:;				
_A89F084ED_268:
; //_A89F084ED_269:;				
_A89F084ED_269:
; //	sSI	= (int)&_color_0_8;		
	AR	= 4
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	PUSH(sAX);				
	push	AX
; //	asm I1 = LD63FD439_86+0;		
	I1 = LD63FD439_86+0//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	PUSH(sAX);				
	push	AX
; //	_WS_Color_copyADB1DFED(STACK[sSP + 0], STACK[sSP + 1]);
	pch	= _WS_Color_copyADB1DFED
	lcall	_WS_Color_copyADB1DFED
; //	RESTORESP(2);				
	pop	AR
	pop	AR
; //	goto LD63FD439_100;			
	pch =	LD63FD439_100
	ljmp	LD63FD439_100
; //LD63FD439_99:;					
LD63FD439_99:
; //_A89F084ED_270:;				
_A89F084ED_270:
; //LD63FD439_85:;					
LD63FD439_85:
; //_A89F084ED_271:;				
_A89F084ED_271:
; //	return;					
	pop	AR
	rm[BP_SAVE]	= AR
	rets
; //_WS_ColorSet_LEDCA3DEB8C_end:;			
_WS_ColorSet_LEDCA3DEB8C_end:
; //_A89F084ED_272:;				
_A89F084ED_272:
; //}
; //
; //void _WS_TRSF_color_setE1CC300C(__int16 _color_0_4, __int16 _Led_num_0_6)
_WS_TRSF_color_setE1CC300C:
; //{
; //	__int16 _i_1_2;
; //						
	AR	= rm[BP_SAVE]
	push	AR
	AR	= BP
	rm[BP_SAVE]	= AR
	AR	 = -1
	BP	+= AR
; //_A89F084ED_273:;				
_A89F084ED_273:
; //_A89F084ED_274:;				
_A89F084ED_274:
; //	_i_1_2+0	= 0x00;			
	I1	= rm[BP_SAVE]
	AR	= 0x00
	rm[I1]	= AR
; //LD63FD439_103:;					
LD63FD439_103:
; //	sSI	= (int)&_i_1_2;			
	I1	= rm[BP_SAVE]
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sSI	= (int)&_Led_num_0_6;		
	AR	= 3
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	sCX	= *(__int16*)sSI;		
	CX	= rm[I1]
; //	sfx_CMP_AX_CX_JB();			
	pch	= sfx_CMP_AX_CX_JB
	lcall	sfx_CMP_AX_CX_JB
; //	if(__je__)	goto LD63FD439_107;	
	if ZR	jmp LD63FD439_107
; //	goto	LD63FD439_105;			
	pch =	LD63FD439_105
	ljmp	LD63FD439_105
; //LD63FD439_107:;					
LD63FD439_107:
; //	goto LD63FD439_104;			
	pch =	LD63FD439_104
	ljmp	LD63FD439_104
; //LD63FD439_106:;					
LD63FD439_106:
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
; //	goto LD63FD439_103;			
	pch =	LD63FD439_103
	ljmp	LD63FD439_103
; //LD63FD439_104:;					
LD63FD439_104:
; //	
; //_A89F084ED_275:;				
_A89F084ED_275:
; //	sSI	= (int)&_color_0_4;		
	AR	= 2
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	goto LD63FD439_109;			
	pch =	LD63FD439_109
	ljmp	LD63FD439_109
; //LD63FD439_110:;					
LD63FD439_110:
; //_A89F084ED_276:;				
_A89F084ED_276:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_277:;				
_A89F084ED_277:
; //	asm	nop				
	nop
; //_A89F084ED_278:;				
_A89F084ED_278:
; //	asm	nop				
	nop
; //_A89F084ED_279:;				
_A89F084ED_279:
; //	asm	nop				
	nop
; //_A89F084ED_280:;				
_A89F084ED_280:
; //	asm	nop				
	nop
; //_A89F084ED_281:;				
_A89F084ED_281:
; //	asm	nop				
	nop
; //_A89F084ED_282:;				
_A89F084ED_282:
; //	asm	nop				
	nop
; //_A89F084ED_283:;				
_A89F084ED_283:
; //	asm	nop				
	nop
; //_A89F084ED_284:;				
_A89F084ED_284:
; //	asm	nop				
	nop
; //_A89F084ED_285:;				
_A89F084ED_285:
; //	asm	nop				
	nop
; //_A89F084ED_286:;				
_A89F084ED_286:
; //	asm	nop				
	nop
; //_A89F084ED_287:;				
_A89F084ED_287:
; //	asm	nop				
	nop
; //_A89F084ED_288:;				
_A89F084ED_288:
; //	asm	nop				
	nop
; //_A89F084ED_289:;				
_A89F084ED_289:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_290:;				
_A89F084ED_290:
; //	asm	nop				
	nop
; //_A89F084ED_291:;				
_A89F084ED_291:
; //	asm	nop				
	nop
; //_A89F084ED_292:;				
_A89F084ED_292:
; //	asm	nop				
	nop
; //_A89F084ED_293:;				
_A89F084ED_293:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_294:;				
_A89F084ED_294:
; //	asm	nop				
	nop
; //_A89F084ED_295:;				
_A89F084ED_295:
; //	asm	nop				
	nop
; //_A89F084ED_296:;				
_A89F084ED_296:
; //	asm	nop				
	nop
; //_A89F084ED_297:;				
_A89F084ED_297:
; //	asm	nop				
	nop
; //_A89F084ED_298:;				
_A89F084ED_298:
; //	asm	nop				
	nop
; //_A89F084ED_299:;				
_A89F084ED_299:
; //	asm	nop				
	nop
; //_A89F084ED_300:;				
_A89F084ED_300:
; //	asm	nop				
	nop
; //_A89F084ED_301:;				
_A89F084ED_301:
; //	asm	nop				
	nop
; //_A89F084ED_302:;				
_A89F084ED_302:
; //	asm	nop				
	nop
; //_A89F084ED_303:;				
_A89F084ED_303:
; //	asm	nop				
	nop
; //_A89F084ED_304:;				
_A89F084ED_304:
; //	asm	nop				
	nop
; //_A89F084ED_305:;				
_A89F084ED_305:
; //	asm	nop				
	nop
; //_A89F084ED_306:;				
_A89F084ED_306:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_307:;				
_A89F084ED_307:
; //	asm	nop				
	nop
; //_A89F084ED_308:;				
_A89F084ED_308:
; //	asm	nop				
	nop
; //_A89F084ED_309:;				
_A89F084ED_309:
; //	asm	nop				
	nop
; //_A89F084ED_310:;				
_A89F084ED_310:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_311:;				
_A89F084ED_311:
; //	asm	nop				
	nop
; //_A89F084ED_312:;				
_A89F084ED_312:
; //	asm	nop				
	nop
; //_A89F084ED_313:;				
_A89F084ED_313:
; //	asm	nop				
	nop
; //_A89F084ED_314:;				
_A89F084ED_314:
; //	asm	nop				
	nop
; //_A89F084ED_315:;				
_A89F084ED_315:
; //	asm	nop				
	nop
; //_A89F084ED_316:;				
_A89F084ED_316:
; //	asm	nop				
	nop
; //_A89F084ED_317:;				
_A89F084ED_317:
; //	asm	nop				
	nop
; //_A89F084ED_318:;				
_A89F084ED_318:
; //	asm	nop				
	nop
; //_A89F084ED_319:;				
_A89F084ED_319:
; //	asm	nop				
	nop
; //_A89F084ED_320:;				
_A89F084ED_320:
; //	asm	nop				
	nop
; //_A89F084ED_321:;				
_A89F084ED_321:
; //	asm	nop				
	nop
; //_A89F084ED_322:;				
_A89F084ED_322:
; //	asm	nop				
	nop
; //_A89F084ED_323:;				
_A89F084ED_323:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_324:;				
_A89F084ED_324:
; //	asm	nop				
	nop
; //_A89F084ED_325:;				
_A89F084ED_325:
; //	asm	nop				
	nop
; //_A89F084ED_326:;				
_A89F084ED_326:
; //	asm	nop				
	nop
; //_A89F084ED_327:;				
_A89F084ED_327:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_328:;				
_A89F084ED_328:
; //	asm	nop				
	nop
; //_A89F084ED_329:;				
_A89F084ED_329:
; //	asm	nop				
	nop
; //_A89F084ED_330:;				
_A89F084ED_330:
; //	asm	nop				
	nop
; //_A89F084ED_331:;				
_A89F084ED_331:
; //	asm	nop				
	nop
; //_A89F084ED_332:;				
_A89F084ED_332:
; //	asm	nop				
	nop
; //_A89F084ED_333:;				
_A89F084ED_333:
; //	asm	nop				
	nop
; //_A89F084ED_334:;				
_A89F084ED_334:
; //	asm	nop				
	nop
; //_A89F084ED_335:;				
_A89F084ED_335:
; //	asm	nop				
	nop
; //_A89F084ED_336:;				
_A89F084ED_336:
; //	asm	nop				
	nop
; //_A89F084ED_337:;				
_A89F084ED_337:
; //	asm	nop				
	nop
; //_A89F084ED_338:;				
_A89F084ED_338:
; //	asm	nop				
	nop
; //_A89F084ED_339:;				
_A89F084ED_339:
; //	asm	nop				
	nop
; //_A89F084ED_340:;				
_A89F084ED_340:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_341:;				
_A89F084ED_341:
; //	asm	nop				
	nop
; //_A89F084ED_342:;				
_A89F084ED_342:
; //	asm	nop				
	nop
; //_A89F084ED_343:;				
_A89F084ED_343:
; //	asm	nop				
	nop
; //_A89F084ED_344:;				
_A89F084ED_344:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_345:;				
_A89F084ED_345:
; //	asm	nop				
	nop
; //_A89F084ED_346:;				
_A89F084ED_346:
; //	asm	nop				
	nop
; //_A89F084ED_347:;				
_A89F084ED_347:
; //	asm	nop				
	nop
; //_A89F084ED_348:;				
_A89F084ED_348:
; //	asm	nop				
	nop
; //_A89F084ED_349:;				
_A89F084ED_349:
; //	asm	nop				
	nop
; //_A89F084ED_350:;				
_A89F084ED_350:
; //	asm	nop				
	nop
; //_A89F084ED_351:;				
_A89F084ED_351:
; //	asm	nop				
	nop
; //_A89F084ED_352:;				
_A89F084ED_352:
; //	asm	nop				
	nop
; //_A89F084ED_353:;				
_A89F084ED_353:
; //	asm	nop				
	nop
; //_A89F084ED_354:;				
_A89F084ED_354:
; //	asm	nop				
	nop
; //_A89F084ED_355:;				
_A89F084ED_355:
; //	asm	nop				
	nop
; //_A89F084ED_356:;				
_A89F084ED_356:
; //	asm	nop				
	nop
; //_A89F084ED_357:;				
_A89F084ED_357:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_358:;				
_A89F084ED_358:
; //	asm	nop				
	nop
; //_A89F084ED_359:;				
_A89F084ED_359:
; //	asm	nop				
	nop
; //_A89F084ED_360:;				
_A89F084ED_360:
; //	asm	nop				
	nop
; //_A89F084ED_361:;				
_A89F084ED_361:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_362:;				
_A89F084ED_362:
; //	asm	nop				
	nop
; //_A89F084ED_363:;				
_A89F084ED_363:
; //	asm	nop				
	nop
; //_A89F084ED_364:;				
_A89F084ED_364:
; //	asm	nop				
	nop
; //_A89F084ED_365:;				
_A89F084ED_365:
; //	asm	nop				
	nop
; //_A89F084ED_366:;				
_A89F084ED_366:
; //	asm	nop				
	nop
; //_A89F084ED_367:;				
_A89F084ED_367:
; //	asm	nop				
	nop
; //_A89F084ED_368:;				
_A89F084ED_368:
; //	asm	nop				
	nop
; //_A89F084ED_369:;				
_A89F084ED_369:
; //	asm	nop				
	nop
; //_A89F084ED_370:;				
_A89F084ED_370:
; //	asm	nop				
	nop
; //_A89F084ED_371:;				
_A89F084ED_371:
; //	asm	nop				
	nop
; //_A89F084ED_372:;				
_A89F084ED_372:
; //	asm	nop				
	nop
; //_A89F084ED_373:;				
_A89F084ED_373:
; //	asm	nop				
	nop
; //_A89F084ED_374:;				
_A89F084ED_374:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_375:;				
_A89F084ED_375:
; //	asm	nop				
	nop
; //_A89F084ED_376:;				
_A89F084ED_376:
; //	asm	nop				
	nop
; //_A89F084ED_377:;				
_A89F084ED_377:
; //	asm	nop				
	nop
; //_A89F084ED_378:;				
_A89F084ED_378:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_379:;				
_A89F084ED_379:
; //	asm	nop				
	nop
; //_A89F084ED_380:;				
_A89F084ED_380:
; //	asm	nop				
	nop
; //_A89F084ED_381:;				
_A89F084ED_381:
; //	asm	nop				
	nop
; //_A89F084ED_382:;				
_A89F084ED_382:
; //	asm	nop				
	nop
; //_A89F084ED_383:;				
_A89F084ED_383:
; //	asm	nop				
	nop
; //_A89F084ED_384:;				
_A89F084ED_384:
; //	asm	nop				
	nop
; //_A89F084ED_385:;				
_A89F084ED_385:
; //	asm	nop				
	nop
; //_A89F084ED_386:;				
_A89F084ED_386:
; //	asm	nop				
	nop
; //_A89F084ED_387:;				
_A89F084ED_387:
; //	asm	nop				
	nop
; //_A89F084ED_388:;				
_A89F084ED_388:
; //	asm	nop				
	nop
; //_A89F084ED_389:;				
_A89F084ED_389:
; //	asm	nop				
	nop
; //_A89F084ED_390:;				
_A89F084ED_390:
; //	asm	nop				
	nop
; //_A89F084ED_391:;				
_A89F084ED_391:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_392:;				
_A89F084ED_392:
; //	asm	nop				
	nop
; //_A89F084ED_393:;				
_A89F084ED_393:
; //	asm	nop				
	nop
; //_A89F084ED_394:;				
_A89F084ED_394:
; //	asm	nop				
	nop
; //_A89F084ED_395:;				
_A89F084ED_395:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_396:;				
_A89F084ED_396:
; //	asm	nop				
	nop
; //_A89F084ED_397:;				
_A89F084ED_397:
; //	asm	nop				
	nop
; //_A89F084ED_398:;				
_A89F084ED_398:
; //	asm	nop				
	nop
; //_A89F084ED_399:;				
_A89F084ED_399:
; //	asm	nop				
	nop
; //_A89F084ED_400:;				
_A89F084ED_400:
; //	asm	nop				
	nop
; //_A89F084ED_401:;				
_A89F084ED_401:
; //	asm	nop				
	nop
; //_A89F084ED_402:;				
_A89F084ED_402:
; //	asm	nop				
	nop
; //_A89F084ED_403:;				
_A89F084ED_403:
; //	asm	nop				
	nop
; //_A89F084ED_404:;				
_A89F084ED_404:
; //	asm	nop				
	nop
; //_A89F084ED_405:;				
_A89F084ED_405:
; //	asm	nop				
	nop
; //_A89F084ED_406:;				
_A89F084ED_406:
; //	asm	nop				
	nop
; //_A89F084ED_407:;				
_A89F084ED_407:
; //	asm	nop				
	nop
; //_A89F084ED_408:;				
_A89F084ED_408:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_409:;				
_A89F084ED_409:
; //	asm	nop				
	nop
; //_A89F084ED_410:;				
_A89F084ED_410:
; //	asm	nop				
	nop
; //_A89F084ED_411:;				
_A89F084ED_411:
; //	asm	nop				
	nop
; //_A89F084ED_412:;				
_A89F084ED_412:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_413:;				
_A89F084ED_413:
; //	asm	nop				
	nop
; //_A89F084ED_414:;				
_A89F084ED_414:
; //	asm	nop				
	nop
; //_A89F084ED_415:;				
_A89F084ED_415:
; //	asm	nop				
	nop
; //_A89F084ED_416:;				
_A89F084ED_416:
; //	asm	nop				
	nop
; //_A89F084ED_417:;				
_A89F084ED_417:
; //	asm	nop				
	nop
; //_A89F084ED_418:;				
_A89F084ED_418:
; //	asm	nop				
	nop
; //_A89F084ED_419:;				
_A89F084ED_419:
; //	asm	nop				
	nop
; //_A89F084ED_420:;				
_A89F084ED_420:
; //	asm	nop				
	nop
; //_A89F084ED_421:;				
_A89F084ED_421:
; //	asm	nop				
	nop
; //_A89F084ED_422:;				
_A89F084ED_422:
; //	asm	nop				
	nop
; //_A89F084ED_423:;				
_A89F084ED_423:
; //	asm	nop				
	nop
; //_A89F084ED_424:;				
_A89F084ED_424:
; //	asm	nop				
	nop
; //_A89F084ED_425:;				
_A89F084ED_425:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_426:;				
_A89F084ED_426:
; //	asm	nop				
	nop
; //_A89F084ED_427:;				
_A89F084ED_427:
; //	asm	nop				
	nop
; //_A89F084ED_428:;				
_A89F084ED_428:
; //	asm	nop				
	nop
; //_A89F084ED_429:;				
_A89F084ED_429:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_430:;				
_A89F084ED_430:
; //	asm	nop				
	nop
; //_A89F084ED_431:;				
_A89F084ED_431:
; //	asm	nop				
	nop
; //_A89F084ED_432:;				
_A89F084ED_432:
; //	asm	nop				
	nop
; //_A89F084ED_433:;				
_A89F084ED_433:
; //	asm	nop				
	nop
; //_A89F084ED_434:;				
_A89F084ED_434:
; //	asm	nop				
	nop
; //_A89F084ED_435:;				
_A89F084ED_435:
; //	asm	nop				
	nop
; //_A89F084ED_436:;				
_A89F084ED_436:
; //	asm	nop				
	nop
; //_A89F084ED_437:;				
_A89F084ED_437:
; //	asm	nop				
	nop
; //_A89F084ED_438:;				
_A89F084ED_438:
; //	asm	nop				
	nop
; //_A89F084ED_439:;				
_A89F084ED_439:
; //	asm	nop				
	nop
; //_A89F084ED_440:;				
_A89F084ED_440:
; //	asm	nop				
	nop
; //_A89F084ED_441:;				
_A89F084ED_441:
; //	asm	nop				
	nop
; //_A89F084ED_442:;				
_A89F084ED_442:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_443:;				
_A89F084ED_443:
; //	asm	nop				
	nop
; //_A89F084ED_444:;				
_A89F084ED_444:
; //	asm	nop				
	nop
; //_A89F084ED_445:;				
_A89F084ED_445:
; //	asm	nop				
	nop
; //_A89F084ED_446:;				
_A89F084ED_446:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_447:;				
_A89F084ED_447:
; //	asm	nop				
	nop
; //_A89F084ED_448:;				
_A89F084ED_448:
; //	asm	nop				
	nop
; //_A89F084ED_449:;				
_A89F084ED_449:
; //	asm	nop				
	nop
; //_A89F084ED_450:;				
_A89F084ED_450:
; //	asm	nop				
	nop
; //_A89F084ED_451:;				
_A89F084ED_451:
; //	asm	nop				
	nop
; //_A89F084ED_452:;				
_A89F084ED_452:
; //	asm	nop				
	nop
; //_A89F084ED_453:;				
_A89F084ED_453:
; //	asm	nop				
	nop
; //_A89F084ED_454:;				
_A89F084ED_454:
; //	asm	nop				
	nop
; //_A89F084ED_455:;				
_A89F084ED_455:
; //	asm	nop				
	nop
; //_A89F084ED_456:;				
_A89F084ED_456:
; //	asm	nop				
	nop
; //_A89F084ED_457:;				
_A89F084ED_457:
; //	asm	nop				
	nop
; //_A89F084ED_458:;				
_A89F084ED_458:
; //	asm	nop				
	nop
; //_A89F084ED_459:;				
_A89F084ED_459:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_460:;				
_A89F084ED_460:
; //	asm	nop				
	nop
; //_A89F084ED_461:;				
_A89F084ED_461:
; //	asm	nop				
	nop
; //_A89F084ED_462:;				
_A89F084ED_462:
; //	asm	nop				
	nop
; //_A89F084ED_463:;				
_A89F084ED_463:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_464:;				
_A89F084ED_464:
; //	asm	nop				
	nop
; //_A89F084ED_465:;				
_A89F084ED_465:
; //	asm	nop				
	nop
; //_A89F084ED_466:;				
_A89F084ED_466:
; //	asm	nop				
	nop
; //_A89F084ED_467:;				
_A89F084ED_467:
; //	asm	nop				
	nop
; //_A89F084ED_468:;				
_A89F084ED_468:
; //	asm	nop				
	nop
; //_A89F084ED_469:;				
_A89F084ED_469:
; //	asm	nop				
	nop
; //_A89F084ED_470:;				
_A89F084ED_470:
; //	asm	nop				
	nop
; //_A89F084ED_471:;				
_A89F084ED_471:
; //	asm	nop				
	nop
; //_A89F084ED_472:;				
_A89F084ED_472:
; //	asm	nop				
	nop
; //_A89F084ED_473:;				
_A89F084ED_473:
; //	asm	nop				
	nop
; //_A89F084ED_474:;				
_A89F084ED_474:
; //	asm	nop				
	nop
; //_A89F084ED_475:;				
_A89F084ED_475:
; //	asm	nop				
	nop
; //_A89F084ED_476:;				
_A89F084ED_476:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_477:;				
_A89F084ED_477:
; //	asm	nop				
	nop
; //_A89F084ED_478:;				
_A89F084ED_478:
; //	asm	nop				
	nop
; //_A89F084ED_479:;				
_A89F084ED_479:
; //	asm	nop				
	nop
; //_A89F084ED_480:;				
_A89F084ED_480:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_481:;				
_A89F084ED_481:
; //	asm	nop				
	nop
; //_A89F084ED_482:;				
_A89F084ED_482:
; //	asm	nop				
	nop
; //_A89F084ED_483:;				
_A89F084ED_483:
; //	asm	nop				
	nop
; //_A89F084ED_484:;				
_A89F084ED_484:
; //	asm	nop				
	nop
; //_A89F084ED_485:;				
_A89F084ED_485:
; //	asm	nop				
	nop
; //_A89F084ED_486:;				
_A89F084ED_486:
; //	asm	nop				
	nop
; //_A89F084ED_487:;				
_A89F084ED_487:
; //	asm	nop				
	nop
; //_A89F084ED_488:;				
_A89F084ED_488:
; //	asm	nop				
	nop
; //_A89F084ED_489:;				
_A89F084ED_489:
; //	asm	nop				
	nop
; //_A89F084ED_490:;				
_A89F084ED_490:
; //	asm	nop				
	nop
; //_A89F084ED_491:;				
_A89F084ED_491:
; //	asm	nop				
	nop
; //_A89F084ED_492:;				
_A89F084ED_492:
; //	asm	nop				
	nop
; //_A89F084ED_493:;				
_A89F084ED_493:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_494:;				
_A89F084ED_494:
; //	asm	nop				
	nop
; //_A89F084ED_495:;				
_A89F084ED_495:
; //	asm	nop				
	nop
; //_A89F084ED_496:;				
_A89F084ED_496:
; //	asm	nop				
	nop
; //_A89F084ED_497:;				
_A89F084ED_497:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_498:;				
_A89F084ED_498:
; //	asm	nop				
	nop
; //_A89F084ED_499:;				
_A89F084ED_499:
; //	asm	nop				
	nop
; //_A89F084ED_500:;				
_A89F084ED_500:
; //	asm	nop				
	nop
; //_A89F084ED_501:;				
_A89F084ED_501:
; //	asm	nop				
	nop
; //_A89F084ED_502:;				
_A89F084ED_502:
; //	asm	nop				
	nop
; //_A89F084ED_503:;				
_A89F084ED_503:
; //	asm	nop				
	nop
; //_A89F084ED_504:;				
_A89F084ED_504:
; //	asm	nop				
	nop
; //_A89F084ED_505:;				
_A89F084ED_505:
; //	asm	nop				
	nop
; //_A89F084ED_506:;				
_A89F084ED_506:
; //	asm	nop				
	nop
; //_A89F084ED_507:;				
_A89F084ED_507:
; //	asm	nop				
	nop
; //_A89F084ED_508:;				
_A89F084ED_508:
; //	asm	nop				
	nop
; //_A89F084ED_509:;				
_A89F084ED_509:
; //	asm	nop				
	nop
; //_A89F084ED_510:;				
_A89F084ED_510:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_511:;				
_A89F084ED_511:
; //	asm	nop				
	nop
; //_A89F084ED_512:;				
_A89F084ED_512:
; //	asm	nop				
	nop
; //_A89F084ED_513:;				
_A89F084ED_513:
; //	asm	nop				
	nop
; //_A89F084ED_514:;				
_A89F084ED_514:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_515:;				
_A89F084ED_515:
; //	asm	nop				
	nop
; //_A89F084ED_516:;				
_A89F084ED_516:
; //	asm	nop				
	nop
; //_A89F084ED_517:;				
_A89F084ED_517:
; //	asm	nop				
	nop
; //_A89F084ED_518:;				
_A89F084ED_518:
; //	asm	nop				
	nop
; //_A89F084ED_519:;				
_A89F084ED_519:
; //	asm	nop				
	nop
; //_A89F084ED_520:;				
_A89F084ED_520:
; //	asm	nop				
	nop
; //_A89F084ED_521:;				
_A89F084ED_521:
; //	asm	nop				
	nop
; //_A89F084ED_522:;				
_A89F084ED_522:
; //	asm	nop				
	nop
; //_A89F084ED_523:;				
_A89F084ED_523:
; //	asm	nop				
	nop
; //_A89F084ED_524:;				
_A89F084ED_524:
; //	asm	nop				
	nop
; //_A89F084ED_525:;				
_A89F084ED_525:
; //	asm	nop				
	nop
; //_A89F084ED_526:;				
_A89F084ED_526:
; //	asm	nop				
	nop
; //_A89F084ED_527:;				
_A89F084ED_527:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_528:;				
_A89F084ED_528:
; //	asm	nop				
	nop
; //_A89F084ED_529:;				
_A89F084ED_529:
; //	asm	nop				
	nop
; //_A89F084ED_530:;				
_A89F084ED_530:
; //	asm	nop				
	nop
; //_A89F084ED_531:;				
_A89F084ED_531:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_532:;				
_A89F084ED_532:
; //	asm	nop				
	nop
; //_A89F084ED_533:;				
_A89F084ED_533:
; //	asm	nop				
	nop
; //_A89F084ED_534:;				
_A89F084ED_534:
; //	asm	nop				
	nop
; //_A89F084ED_535:;				
_A89F084ED_535:
; //	asm	nop				
	nop
; //_A89F084ED_536:;				
_A89F084ED_536:
; //	asm	nop				
	nop
; //_A89F084ED_537:;				
_A89F084ED_537:
; //	asm	nop				
	nop
; //_A89F084ED_538:;				
_A89F084ED_538:
; //	asm	nop				
	nop
; //_A89F084ED_539:;				
_A89F084ED_539:
; //	asm	nop				
	nop
; //_A89F084ED_540:;				
_A89F084ED_540:
; //	asm	nop				
	nop
; //_A89F084ED_541:;				
_A89F084ED_541:
; //	asm	nop				
	nop
; //_A89F084ED_542:;				
_A89F084ED_542:
; //	asm	nop				
	nop
; //_A89F084ED_543:;				
_A89F084ED_543:
; //	asm	nop				
	nop
; //_A89F084ED_544:;				
_A89F084ED_544:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_545:;				
_A89F084ED_545:
; //	asm	nop				
	nop
; //_A89F084ED_546:;				
_A89F084ED_546:
; //	asm	nop				
	nop
; //_A89F084ED_547:;				
_A89F084ED_547:
; //	asm	nop				
	nop
; //_A89F084ED_548:;				
_A89F084ED_548:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_549:;				
_A89F084ED_549:
; //	asm	nop				
	nop
; //_A89F084ED_550:;				
_A89F084ED_550:
; //	asm	nop				
	nop
; //_A89F084ED_551:;				
_A89F084ED_551:
; //	asm	nop				
	nop
; //_A89F084ED_552:;				
_A89F084ED_552:
; //	asm	nop				
	nop
; //_A89F084ED_553:;				
_A89F084ED_553:
; //	asm	nop				
	nop
; //_A89F084ED_554:;				
_A89F084ED_554:
; //	asm	nop				
	nop
; //_A89F084ED_555:;				
_A89F084ED_555:
; //	asm	nop				
	nop
; //_A89F084ED_556:;				
_A89F084ED_556:
; //	asm	nop				
	nop
; //_A89F084ED_557:;				
_A89F084ED_557:
; //	asm	nop				
	nop
; //_A89F084ED_558:;				
_A89F084ED_558:
; //	asm	nop				
	nop
; //_A89F084ED_559:;				
_A89F084ED_559:
; //	asm	nop				
	nop
; //_A89F084ED_560:;				
_A89F084ED_560:
; //	asm	nop				
	nop
; //_A89F084ED_561:;				
_A89F084ED_561:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_562:;				
_A89F084ED_562:
; //	asm	nop				
	nop
; //_A89F084ED_563:;				
_A89F084ED_563:
; //	asm	nop				
	nop
; //_A89F084ED_564:;				
_A89F084ED_564:
; //	asm	nop				
	nop
; //_A89F084ED_565:;				
_A89F084ED_565:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_566:;				
_A89F084ED_566:
; //	asm	nop				
	nop
; //_A89F084ED_567:;				
_A89F084ED_567:
; //	asm	nop				
	nop
; //_A89F084ED_568:;				
_A89F084ED_568:
; //	asm	nop				
	nop
; //_A89F084ED_569:;				
_A89F084ED_569:
; //	asm	nop				
	nop
; //_A89F084ED_570:;				
_A89F084ED_570:
; //	asm	nop				
	nop
; //_A89F084ED_571:;				
_A89F084ED_571:
; //	asm	nop				
	nop
; //_A89F084ED_572:;				
_A89F084ED_572:
; //	asm	nop				
	nop
; //_A89F084ED_573:;				
_A89F084ED_573:
; //	asm	nop				
	nop
; //_A89F084ED_574:;				
_A89F084ED_574:
; //	asm	nop				
	nop
; //_A89F084ED_575:;				
_A89F084ED_575:
; //	asm	nop				
	nop
; //_A89F084ED_576:;				
_A89F084ED_576:
; //	asm	nop				
	nop
; //_A89F084ED_577:;				
_A89F084ED_577:
; //	asm	nop				
	nop
; //_A89F084ED_578:;				
_A89F084ED_578:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_579:;				
_A89F084ED_579:
; //	asm	nop				
	nop
; //_A89F084ED_580:;				
_A89F084ED_580:
; //	asm	nop				
	nop
; //_A89F084ED_581:;				
_A89F084ED_581:
; //	asm	nop				
	nop
; //_A89F084ED_582:;				
_A89F084ED_582:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_583:;				
_A89F084ED_583:
; //	asm	nop				
	nop
; //_A89F084ED_584:;				
_A89F084ED_584:
; //	asm	nop				
	nop
; //_A89F084ED_585:;				
_A89F084ED_585:
; //	asm	nop				
	nop
; //_A89F084ED_586:;				
_A89F084ED_586:
; //	asm	nop				
	nop
; //_A89F084ED_587:;				
_A89F084ED_587:
; //	asm	nop				
	nop
; //_A89F084ED_588:;				
_A89F084ED_588:
; //	asm	nop				
	nop
; //_A89F084ED_589:;				
_A89F084ED_589:
; //	asm	nop				
	nop
; //_A89F084ED_590:;				
_A89F084ED_590:
; //	asm	nop				
	nop
; //_A89F084ED_591:;				
_A89F084ED_591:
; //	asm	nop				
	nop
; //_A89F084ED_592:;				
_A89F084ED_592:
; //	asm	nop				
	nop
; //_A89F084ED_593:;				
_A89F084ED_593:
; //	asm	nop				
	nop
; //_A89F084ED_594:;				
_A89F084ED_594:
; //	asm	nop				
	nop
; //_A89F084ED_595:;				
_A89F084ED_595:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_596:;				
_A89F084ED_596:
; //	asm	nop				
	nop
; //_A89F084ED_597:;				
_A89F084ED_597:
; //	asm	nop				
	nop
; //_A89F084ED_598:;				
_A89F084ED_598:
; //	asm	nop				
	nop
; //_A89F084ED_599:;				
_A89F084ED_599:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_600:;				
_A89F084ED_600:
; //	asm	nop				
	nop
; //_A89F084ED_601:;				
_A89F084ED_601:
; //	asm	nop				
	nop
; //_A89F084ED_602:;				
_A89F084ED_602:
; //	asm	nop				
	nop
; //_A89F084ED_603:;				
_A89F084ED_603:
; //	asm	nop				
	nop
; //_A89F084ED_604:;				
_A89F084ED_604:
; //	asm	nop				
	nop
; //_A89F084ED_605:;				
_A89F084ED_605:
; //	asm	nop				
	nop
; //_A89F084ED_606:;				
_A89F084ED_606:
; //	asm	nop				
	nop
; //_A89F084ED_607:;				
_A89F084ED_607:
; //	asm	nop				
	nop
; //_A89F084ED_608:;				
_A89F084ED_608:
; //	asm	nop				
	nop
; //_A89F084ED_609:;				
_A89F084ED_609:
; //	asm	nop				
	nop
; //_A89F084ED_610:;				
_A89F084ED_610:
; //	asm	nop				
	nop
; //_A89F084ED_611:;				
_A89F084ED_611:
; //	asm	nop				
	nop
; //_A89F084ED_612:;				
_A89F084ED_612:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_613:;				
_A89F084ED_613:
; //	asm	nop				
	nop
; //_A89F084ED_614:;				
_A89F084ED_614:
; //	asm	nop				
	nop
; //_A89F084ED_615:;				
_A89F084ED_615:
; //	asm	nop				
	nop
; //_A89F084ED_616:;				
_A89F084ED_616:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_617:;				
_A89F084ED_617:
; //	asm	nop				
	nop
; //_A89F084ED_618:;				
_A89F084ED_618:
; //	asm	nop				
	nop
; //_A89F084ED_619:;				
_A89F084ED_619:
; //	asm	nop				
	nop
; //_A89F084ED_620:;				
_A89F084ED_620:
; //	asm	nop				
	nop
; //_A89F084ED_621:;				
_A89F084ED_621:
; //	asm	nop				
	nop
; //_A89F084ED_622:;				
_A89F084ED_622:
; //	asm	nop				
	nop
; //_A89F084ED_623:;				
_A89F084ED_623:
; //	asm	nop				
	nop
; //_A89F084ED_624:;				
_A89F084ED_624:
; //	asm	nop				
	nop
; //_A89F084ED_625:;				
_A89F084ED_625:
; //	asm	nop				
	nop
; //_A89F084ED_626:;				
_A89F084ED_626:
; //	asm	nop				
	nop
; //_A89F084ED_627:;				
_A89F084ED_627:
; //	asm	nop				
	nop
; //_A89F084ED_628:;				
_A89F084ED_628:
; //	asm	nop				
	nop
; //_A89F084ED_629:;				
_A89F084ED_629:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_630:;				
_A89F084ED_630:
; //	asm	nop				
	nop
; //_A89F084ED_631:;				
_A89F084ED_631:
; //	asm	nop				
	nop
; //_A89F084ED_632:;				
_A89F084ED_632:
; //	asm	nop				
	nop
; //_A89F084ED_633:;				
_A89F084ED_633:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_634:;				
_A89F084ED_634:
; //	asm	nop				
	nop
; //_A89F084ED_635:;				
_A89F084ED_635:
; //	asm	nop				
	nop
; //_A89F084ED_636:;				
_A89F084ED_636:
; //	asm	nop				
	nop
; //_A89F084ED_637:;				
_A89F084ED_637:
; //	asm	nop				
	nop
; //_A89F084ED_638:;				
_A89F084ED_638:
; //	asm	nop				
	nop
; //_A89F084ED_639:;				
_A89F084ED_639:
; //	asm	nop				
	nop
; //_A89F084ED_640:;				
_A89F084ED_640:
; //	asm	nop				
	nop
; //_A89F084ED_641:;				
_A89F084ED_641:
; //	asm	nop				
	nop
; //_A89F084ED_642:;				
_A89F084ED_642:
; //	asm	nop				
	nop
; //_A89F084ED_643:;				
_A89F084ED_643:
; //	asm	nop				
	nop
; //_A89F084ED_644:;				
_A89F084ED_644:
; //	asm	nop				
	nop
; //_A89F084ED_645:;				
_A89F084ED_645:
; //	asm	nop				
	nop
; //_A89F084ED_646:;				
_A89F084ED_646:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_647:;				
_A89F084ED_647:
; //	asm	nop				
	nop
; //_A89F084ED_648:;				
_A89F084ED_648:
; //	asm	nop				
	nop
; //_A89F084ED_649:;				
_A89F084ED_649:
; //	asm	nop				
	nop
; //_A89F084ED_650:;				
_A89F084ED_650:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_651:;				
_A89F084ED_651:
; //	asm	nop				
	nop
; //_A89F084ED_652:;				
_A89F084ED_652:
; //	asm	nop				
	nop
; //_A89F084ED_653:;				
_A89F084ED_653:
; //	asm	nop				
	nop
; //_A89F084ED_654:;				
_A89F084ED_654:
; //	asm	nop				
	nop
; //_A89F084ED_655:;				
_A89F084ED_655:
; //	asm	nop				
	nop
; //_A89F084ED_656:;				
_A89F084ED_656:
; //	asm	nop				
	nop
; //_A89F084ED_657:;				
_A89F084ED_657:
; //	asm	nop				
	nop
; //_A89F084ED_658:;				
_A89F084ED_658:
; //	asm	nop				
	nop
; //_A89F084ED_659:;				
_A89F084ED_659:
; //	asm	nop				
	nop
; //_A89F084ED_660:;				
_A89F084ED_660:
; //	asm	nop				
	nop
; //_A89F084ED_661:;				
_A89F084ED_661:
; //	asm	nop				
	nop
; //_A89F084ED_662:;				
_A89F084ED_662:
; //	asm	nop				
	nop
; //_A89F084ED_663:;				
_A89F084ED_663:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_664:;				
_A89F084ED_664:
; //	asm	nop				
	nop
; //_A89F084ED_665:;				
_A89F084ED_665:
; //	asm	nop				
	nop
; //_A89F084ED_666:;				
_A89F084ED_666:
; //	asm	nop				
	nop
; //_A89F084ED_667:;				
_A89F084ED_667:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_668:;				
_A89F084ED_668:
; //	asm	nop				
	nop
; //_A89F084ED_669:;				
_A89F084ED_669:
; //	asm	nop				
	nop
; //_A89F084ED_670:;				
_A89F084ED_670:
; //	asm	nop				
	nop
; //_A89F084ED_671:;				
_A89F084ED_671:
; //	asm	nop				
	nop
; //_A89F084ED_672:;				
_A89F084ED_672:
; //	asm	nop				
	nop
; //_A89F084ED_673:;				
_A89F084ED_673:
; //	asm	nop				
	nop
; //_A89F084ED_674:;				
_A89F084ED_674:
; //	asm	nop				
	nop
; //_A89F084ED_675:;				
_A89F084ED_675:
; //	asm	nop				
	nop
; //_A89F084ED_676:;				
_A89F084ED_676:
; //	asm	nop				
	nop
; //_A89F084ED_677:;				
_A89F084ED_677:
; //	asm	nop				
	nop
; //_A89F084ED_678:;				
_A89F084ED_678:
; //	asm	nop				
	nop
; //_A89F084ED_679:;				
_A89F084ED_679:
; //	asm	nop				
	nop
; //_A89F084ED_680:;				
_A89F084ED_680:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_681:;				
_A89F084ED_681:
; //	asm	nop				
	nop
; //_A89F084ED_682:;				
_A89F084ED_682:
; //	asm	nop				
	nop
; //_A89F084ED_683:;				
_A89F084ED_683:
; //	asm	nop				
	nop
; //_A89F084ED_684:;				
_A89F084ED_684:
; //	goto LD63FD439_108;			
	pch =	LD63FD439_108
	ljmp	LD63FD439_108
; //LD63FD439_111:;					
LD63FD439_111:
; //_A89F084ED_685:;				
_A89F084ED_685:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_686:;				
_A89F084ED_686:
; //	asm	nop				
	nop
; //_A89F084ED_687:;				
_A89F084ED_687:
; //	asm	nop				
	nop
; //_A89F084ED_688:;				
_A89F084ED_688:
; //	asm	nop				
	nop
; //_A89F084ED_689:;				
_A89F084ED_689:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_690:;				
_A89F084ED_690:
; //	asm	nop				
	nop
; //_A89F084ED_691:;				
_A89F084ED_691:
; //	asm	nop				
	nop
; //_A89F084ED_692:;				
_A89F084ED_692:
; //	asm	nop				
	nop
; //_A89F084ED_693:;				
_A89F084ED_693:
; //	asm	nop				
	nop
; //_A89F084ED_694:;				
_A89F084ED_694:
; //	asm	nop				
	nop
; //_A89F084ED_695:;				
_A89F084ED_695:
; //	asm	nop				
	nop
; //_A89F084ED_696:;				
_A89F084ED_696:
; //	asm	nop				
	nop
; //_A89F084ED_697:;				
_A89F084ED_697:
; //	asm	nop				
	nop
; //_A89F084ED_698:;				
_A89F084ED_698:
; //	asm	nop				
	nop
; //_A89F084ED_699:;				
_A89F084ED_699:
; //	asm	nop				
	nop
; //_A89F084ED_700:;				
_A89F084ED_700:
; //	asm	nop				
	nop
; //_A89F084ED_701:;				
_A89F084ED_701:
; //	asm	nop				
	nop
; //_A89F084ED_702:;				
_A89F084ED_702:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_703:;				
_A89F084ED_703:
; //	asm	nop				
	nop
; //_A89F084ED_704:;				
_A89F084ED_704:
; //	asm	nop				
	nop
; //_A89F084ED_705:;				
_A89F084ED_705:
; //	asm	nop				
	nop
; //_A89F084ED_706:;				
_A89F084ED_706:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_707:;				
_A89F084ED_707:
; //	asm	nop				
	nop
; //_A89F084ED_708:;				
_A89F084ED_708:
; //	asm	nop				
	nop
; //_A89F084ED_709:;				
_A89F084ED_709:
; //	asm	nop				
	nop
; //_A89F084ED_710:;				
_A89F084ED_710:
; //	asm	nop				
	nop
; //_A89F084ED_711:;				
_A89F084ED_711:
; //	asm	nop				
	nop
; //_A89F084ED_712:;				
_A89F084ED_712:
; //	asm	nop				
	nop
; //_A89F084ED_713:;				
_A89F084ED_713:
; //	asm	nop				
	nop
; //_A89F084ED_714:;				
_A89F084ED_714:
; //	asm	nop				
	nop
; //_A89F084ED_715:;				
_A89F084ED_715:
; //	asm	nop				
	nop
; //_A89F084ED_716:;				
_A89F084ED_716:
; //	asm	nop				
	nop
; //_A89F084ED_717:;				
_A89F084ED_717:
; //	asm	nop				
	nop
; //_A89F084ED_718:;				
_A89F084ED_718:
; //	asm	nop				
	nop
; //_A89F084ED_719:;				
_A89F084ED_719:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_720:;				
_A89F084ED_720:
; //	asm	nop				
	nop
; //_A89F084ED_721:;				
_A89F084ED_721:
; //	asm	nop				
	nop
; //_A89F084ED_722:;				
_A89F084ED_722:
; //	asm	nop				
	nop
; //_A89F084ED_723:;				
_A89F084ED_723:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_724:;				
_A89F084ED_724:
; //	asm	nop				
	nop
; //_A89F084ED_725:;				
_A89F084ED_725:
; //	asm	nop				
	nop
; //_A89F084ED_726:;				
_A89F084ED_726:
; //	asm	nop				
	nop
; //_A89F084ED_727:;				
_A89F084ED_727:
; //	asm	nop				
	nop
; //_A89F084ED_728:;				
_A89F084ED_728:
; //	asm	nop				
	nop
; //_A89F084ED_729:;				
_A89F084ED_729:
; //	asm	nop				
	nop
; //_A89F084ED_730:;				
_A89F084ED_730:
; //	asm	nop				
	nop
; //_A89F084ED_731:;				
_A89F084ED_731:
; //	asm	nop				
	nop
; //_A89F084ED_732:;				
_A89F084ED_732:
; //	asm	nop				
	nop
; //_A89F084ED_733:;				
_A89F084ED_733:
; //	asm	nop				
	nop
; //_A89F084ED_734:;				
_A89F084ED_734:
; //	asm	nop				
	nop
; //_A89F084ED_735:;				
_A89F084ED_735:
; //	asm	nop				
	nop
; //_A89F084ED_736:;				
_A89F084ED_736:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_737:;				
_A89F084ED_737:
; //	asm	nop				
	nop
; //_A89F084ED_738:;				
_A89F084ED_738:
; //	asm	nop				
	nop
; //_A89F084ED_739:;				
_A89F084ED_739:
; //	asm	nop				
	nop
; //_A89F084ED_740:;				
_A89F084ED_740:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_741:;				
_A89F084ED_741:
; //	asm	nop				
	nop
; //_A89F084ED_742:;				
_A89F084ED_742:
; //	asm	nop				
	nop
; //_A89F084ED_743:;				
_A89F084ED_743:
; //	asm	nop				
	nop
; //_A89F084ED_744:;				
_A89F084ED_744:
; //	asm	nop				
	nop
; //_A89F084ED_745:;				
_A89F084ED_745:
; //	asm	nop				
	nop
; //_A89F084ED_746:;				
_A89F084ED_746:
; //	asm	nop				
	nop
; //_A89F084ED_747:;				
_A89F084ED_747:
; //	asm	nop				
	nop
; //_A89F084ED_748:;				
_A89F084ED_748:
; //	asm	nop				
	nop
; //_A89F084ED_749:;				
_A89F084ED_749:
; //	asm	nop				
	nop
; //_A89F084ED_750:;				
_A89F084ED_750:
; //	asm	nop				
	nop
; //_A89F084ED_751:;				
_A89F084ED_751:
; //	asm	nop				
	nop
; //_A89F084ED_752:;				
_A89F084ED_752:
; //	asm	nop				
	nop
; //_A89F084ED_753:;				
_A89F084ED_753:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_754:;				
_A89F084ED_754:
; //	asm	nop				
	nop
; //_A89F084ED_755:;				
_A89F084ED_755:
; //	asm	nop				
	nop
; //_A89F084ED_756:;				
_A89F084ED_756:
; //	asm	nop				
	nop
; //_A89F084ED_757:;				
_A89F084ED_757:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_758:;				
_A89F084ED_758:
; //	asm	nop				
	nop
; //_A89F084ED_759:;				
_A89F084ED_759:
; //	asm	nop				
	nop
; //_A89F084ED_760:;				
_A89F084ED_760:
; //	asm	nop				
	nop
; //_A89F084ED_761:;				
_A89F084ED_761:
; //	asm	nop				
	nop
; //_A89F084ED_762:;				
_A89F084ED_762:
; //	asm	nop				
	nop
; //_A89F084ED_763:;				
_A89F084ED_763:
; //	asm	nop				
	nop
; //_A89F084ED_764:;				
_A89F084ED_764:
; //	asm	nop				
	nop
; //_A89F084ED_765:;				
_A89F084ED_765:
; //	asm	nop				
	nop
; //_A89F084ED_766:;				
_A89F084ED_766:
; //	asm	nop				
	nop
; //_A89F084ED_767:;				
_A89F084ED_767:
; //	asm	nop				
	nop
; //_A89F084ED_768:;				
_A89F084ED_768:
; //	asm	nop				
	nop
; //_A89F084ED_769:;				
_A89F084ED_769:
; //	asm	nop				
	nop
; //_A89F084ED_770:;				
_A89F084ED_770:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_771:;				
_A89F084ED_771:
; //	asm	nop				
	nop
; //_A89F084ED_772:;				
_A89F084ED_772:
; //	asm	nop				
	nop
; //_A89F084ED_773:;				
_A89F084ED_773:
; //	asm	nop				
	nop
; //_A89F084ED_774:;				
_A89F084ED_774:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_775:;				
_A89F084ED_775:
; //	asm	nop				
	nop
; //_A89F084ED_776:;				
_A89F084ED_776:
; //	asm	nop				
	nop
; //_A89F084ED_777:;				
_A89F084ED_777:
; //	asm	nop				
	nop
; //_A89F084ED_778:;				
_A89F084ED_778:
; //	asm	nop				
	nop
; //_A89F084ED_779:;				
_A89F084ED_779:
; //	asm	nop				
	nop
; //_A89F084ED_780:;				
_A89F084ED_780:
; //	asm	nop				
	nop
; //_A89F084ED_781:;				
_A89F084ED_781:
; //	asm	nop				
	nop
; //_A89F084ED_782:;				
_A89F084ED_782:
; //	asm	nop				
	nop
; //_A89F084ED_783:;				
_A89F084ED_783:
; //	asm	nop				
	nop
; //_A89F084ED_784:;				
_A89F084ED_784:
; //	asm	nop				
	nop
; //_A89F084ED_785:;				
_A89F084ED_785:
; //	asm	nop				
	nop
; //_A89F084ED_786:;				
_A89F084ED_786:
; //	asm	nop				
	nop
; //_A89F084ED_787:;				
_A89F084ED_787:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_788:;				
_A89F084ED_788:
; //	asm	nop				
	nop
; //_A89F084ED_789:;				
_A89F084ED_789:
; //	asm	nop				
	nop
; //_A89F084ED_790:;				
_A89F084ED_790:
; //	asm	nop				
	nop
; //_A89F084ED_791:;				
_A89F084ED_791:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_792:;				
_A89F084ED_792:
; //	asm	nop				
	nop
; //_A89F084ED_793:;				
_A89F084ED_793:
; //	asm	nop				
	nop
; //_A89F084ED_794:;				
_A89F084ED_794:
; //	asm	nop				
	nop
; //_A89F084ED_795:;				
_A89F084ED_795:
; //	asm	nop				
	nop
; //_A89F084ED_796:;				
_A89F084ED_796:
; //	asm	nop				
	nop
; //_A89F084ED_797:;				
_A89F084ED_797:
; //	asm	nop				
	nop
; //_A89F084ED_798:;				
_A89F084ED_798:
; //	asm	nop				
	nop
; //_A89F084ED_799:;				
_A89F084ED_799:
; //	asm	nop				
	nop
; //_A89F084ED_800:;				
_A89F084ED_800:
; //	asm	nop				
	nop
; //_A89F084ED_801:;				
_A89F084ED_801:
; //	asm	nop				
	nop
; //_A89F084ED_802:;				
_A89F084ED_802:
; //	asm	nop				
	nop
; //_A89F084ED_803:;				
_A89F084ED_803:
; //	asm	nop				
	nop
; //_A89F084ED_804:;				
_A89F084ED_804:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_805:;				
_A89F084ED_805:
; //	asm	nop				
	nop
; //_A89F084ED_806:;				
_A89F084ED_806:
; //	asm	nop				
	nop
; //_A89F084ED_807:;				
_A89F084ED_807:
; //	asm	nop				
	nop
; //_A89F084ED_808:;				
_A89F084ED_808:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_809:;				
_A89F084ED_809:
; //	asm	nop				
	nop
; //_A89F084ED_810:;				
_A89F084ED_810:
; //	asm	nop				
	nop
; //_A89F084ED_811:;				
_A89F084ED_811:
; //	asm	nop				
	nop
; //_A89F084ED_812:;				
_A89F084ED_812:
; //	asm	nop				
	nop
; //_A89F084ED_813:;				
_A89F084ED_813:
; //	asm	nop				
	nop
; //_A89F084ED_814:;				
_A89F084ED_814:
; //	asm	nop				
	nop
; //_A89F084ED_815:;				
_A89F084ED_815:
; //	asm	nop				
	nop
; //_A89F084ED_816:;				
_A89F084ED_816:
; //	asm	nop				
	nop
; //_A89F084ED_817:;				
_A89F084ED_817:
; //	asm	nop				
	nop
; //_A89F084ED_818:;				
_A89F084ED_818:
; //	asm	nop				
	nop
; //_A89F084ED_819:;				
_A89F084ED_819:
; //	asm	nop				
	nop
; //_A89F084ED_820:;				
_A89F084ED_820:
; //	asm	nop				
	nop
; //_A89F084ED_821:;				
_A89F084ED_821:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_822:;				
_A89F084ED_822:
; //	asm	nop				
	nop
; //_A89F084ED_823:;				
_A89F084ED_823:
; //	asm	nop				
	nop
; //_A89F084ED_824:;				
_A89F084ED_824:
; //	asm	nop				
	nop
; //_A89F084ED_825:;				
_A89F084ED_825:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_826:;				
_A89F084ED_826:
; //	asm	nop				
	nop
; //_A89F084ED_827:;				
_A89F084ED_827:
; //	asm	nop				
	nop
; //_A89F084ED_828:;				
_A89F084ED_828:
; //	asm	nop				
	nop
; //_A89F084ED_829:;				
_A89F084ED_829:
; //	asm	nop				
	nop
; //_A89F084ED_830:;				
_A89F084ED_830:
; //	asm	nop				
	nop
; //_A89F084ED_831:;				
_A89F084ED_831:
; //	asm	nop				
	nop
; //_A89F084ED_832:;				
_A89F084ED_832:
; //	asm	nop				
	nop
; //_A89F084ED_833:;				
_A89F084ED_833:
; //	asm	nop				
	nop
; //_A89F084ED_834:;				
_A89F084ED_834:
; //	asm	nop				
	nop
; //_A89F084ED_835:;				
_A89F084ED_835:
; //	asm	nop				
	nop
; //_A89F084ED_836:;				
_A89F084ED_836:
; //	asm	nop				
	nop
; //_A89F084ED_837:;				
_A89F084ED_837:
; //	asm	nop				
	nop
; //_A89F084ED_838:;				
_A89F084ED_838:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_839:;				
_A89F084ED_839:
; //	asm	nop				
	nop
; //_A89F084ED_840:;				
_A89F084ED_840:
; //	asm	nop				
	nop
; //_A89F084ED_841:;				
_A89F084ED_841:
; //	asm	nop				
	nop
; //_A89F084ED_842:;				
_A89F084ED_842:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_843:;				
_A89F084ED_843:
; //	asm	nop				
	nop
; //_A89F084ED_844:;				
_A89F084ED_844:
; //	asm	nop				
	nop
; //_A89F084ED_845:;				
_A89F084ED_845:
; //	asm	nop				
	nop
; //_A89F084ED_846:;				
_A89F084ED_846:
; //	asm	nop				
	nop
; //_A89F084ED_847:;				
_A89F084ED_847:
; //	asm	nop				
	nop
; //_A89F084ED_848:;				
_A89F084ED_848:
; //	asm	nop				
	nop
; //_A89F084ED_849:;				
_A89F084ED_849:
; //	asm	nop				
	nop
; //_A89F084ED_850:;				
_A89F084ED_850:
; //	asm	nop				
	nop
; //_A89F084ED_851:;				
_A89F084ED_851:
; //	asm	nop				
	nop
; //_A89F084ED_852:;				
_A89F084ED_852:
; //	asm	nop				
	nop
; //_A89F084ED_853:;				
_A89F084ED_853:
; //	asm	nop				
	nop
; //_A89F084ED_854:;				
_A89F084ED_854:
; //	asm	nop				
	nop
; //_A89F084ED_855:;				
_A89F084ED_855:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_856:;				
_A89F084ED_856:
; //	asm	nop				
	nop
; //_A89F084ED_857:;				
_A89F084ED_857:
; //	asm	nop				
	nop
; //_A89F084ED_858:;				
_A89F084ED_858:
; //	asm	nop				
	nop
; //_A89F084ED_859:;				
_A89F084ED_859:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_860:;				
_A89F084ED_860:
; //	asm	nop				
	nop
; //_A89F084ED_861:;				
_A89F084ED_861:
; //	asm	nop				
	nop
; //_A89F084ED_862:;				
_A89F084ED_862:
; //	asm	nop				
	nop
; //_A89F084ED_863:;				
_A89F084ED_863:
; //	asm	nop				
	nop
; //_A89F084ED_864:;				
_A89F084ED_864:
; //	asm	nop				
	nop
; //_A89F084ED_865:;				
_A89F084ED_865:
; //	asm	nop				
	nop
; //_A89F084ED_866:;				
_A89F084ED_866:
; //	asm	nop				
	nop
; //_A89F084ED_867:;				
_A89F084ED_867:
; //	asm	nop				
	nop
; //_A89F084ED_868:;				
_A89F084ED_868:
; //	asm	nop				
	nop
; //_A89F084ED_869:;				
_A89F084ED_869:
; //	asm	nop				
	nop
; //_A89F084ED_870:;				
_A89F084ED_870:
; //	asm	nop				
	nop
; //_A89F084ED_871:;				
_A89F084ED_871:
; //	asm	nop				
	nop
; //_A89F084ED_872:;				
_A89F084ED_872:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_873:;				
_A89F084ED_873:
; //	asm	nop				
	nop
; //_A89F084ED_874:;				
_A89F084ED_874:
; //	asm	nop				
	nop
; //_A89F084ED_875:;				
_A89F084ED_875:
; //	asm	nop				
	nop
; //_A89F084ED_876:;				
_A89F084ED_876:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_877:;				
_A89F084ED_877:
; //	asm	nop				
	nop
; //_A89F084ED_878:;				
_A89F084ED_878:
; //	asm	nop				
	nop
; //_A89F084ED_879:;				
_A89F084ED_879:
; //	asm	nop				
	nop
; //_A89F084ED_880:;				
_A89F084ED_880:
; //	asm	nop				
	nop
; //_A89F084ED_881:;				
_A89F084ED_881:
; //	asm	nop				
	nop
; //_A89F084ED_882:;				
_A89F084ED_882:
; //	asm	nop				
	nop
; //_A89F084ED_883:;				
_A89F084ED_883:
; //	asm	nop				
	nop
; //_A89F084ED_884:;				
_A89F084ED_884:
; //	asm	nop				
	nop
; //_A89F084ED_885:;				
_A89F084ED_885:
; //	asm	nop				
	nop
; //_A89F084ED_886:;				
_A89F084ED_886:
; //	asm	nop				
	nop
; //_A89F084ED_887:;				
_A89F084ED_887:
; //	asm	nop				
	nop
; //_A89F084ED_888:;				
_A89F084ED_888:
; //	asm	nop				
	nop
; //_A89F084ED_889:;				
_A89F084ED_889:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_890:;				
_A89F084ED_890:
; //	asm	nop				
	nop
; //_A89F084ED_891:;				
_A89F084ED_891:
; //	asm	nop				
	nop
; //_A89F084ED_892:;				
_A89F084ED_892:
; //	asm	nop				
	nop
; //_A89F084ED_893:;				
_A89F084ED_893:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_894:;				
_A89F084ED_894:
; //	asm	nop				
	nop
; //_A89F084ED_895:;				
_A89F084ED_895:
; //	asm	nop				
	nop
; //_A89F084ED_896:;				
_A89F084ED_896:
; //	asm	nop				
	nop
; //_A89F084ED_897:;				
_A89F084ED_897:
; //	asm	nop				
	nop
; //_A89F084ED_898:;				
_A89F084ED_898:
; //	asm	nop				
	nop
; //_A89F084ED_899:;				
_A89F084ED_899:
; //	asm	nop				
	nop
; //_A89F084ED_900:;				
_A89F084ED_900:
; //	asm	nop				
	nop
; //_A89F084ED_901:;				
_A89F084ED_901:
; //	asm	nop				
	nop
; //_A89F084ED_902:;				
_A89F084ED_902:
; //	asm	nop				
	nop
; //_A89F084ED_903:;				
_A89F084ED_903:
; //	asm	nop				
	nop
; //_A89F084ED_904:;				
_A89F084ED_904:
; //	asm	nop				
	nop
; //_A89F084ED_905:;				
_A89F084ED_905:
; //	asm	nop				
	nop
; //_A89F084ED_906:;				
_A89F084ED_906:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_907:;				
_A89F084ED_907:
; //	asm	nop				
	nop
; //_A89F084ED_908:;				
_A89F084ED_908:
; //	asm	nop				
	nop
; //_A89F084ED_909:;				
_A89F084ED_909:
; //	asm	nop				
	nop
; //_A89F084ED_910:;				
_A89F084ED_910:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_911:;				
_A89F084ED_911:
; //	asm	nop				
	nop
; //_A89F084ED_912:;				
_A89F084ED_912:
; //	asm	nop				
	nop
; //_A89F084ED_913:;				
_A89F084ED_913:
; //	asm	nop				
	nop
; //_A89F084ED_914:;				
_A89F084ED_914:
; //	asm	nop				
	nop
; //_A89F084ED_915:;				
_A89F084ED_915:
; //	asm	nop				
	nop
; //_A89F084ED_916:;				
_A89F084ED_916:
; //	asm	nop				
	nop
; //_A89F084ED_917:;				
_A89F084ED_917:
; //	asm	nop				
	nop
; //_A89F084ED_918:;				
_A89F084ED_918:
; //	asm	nop				
	nop
; //_A89F084ED_919:;				
_A89F084ED_919:
; //	asm	nop				
	nop
; //_A89F084ED_920:;				
_A89F084ED_920:
; //	asm	nop				
	nop
; //_A89F084ED_921:;				
_A89F084ED_921:
; //	asm	nop				
	nop
; //_A89F084ED_922:;				
_A89F084ED_922:
; //	asm	nop				
	nop
; //_A89F084ED_923:;				
_A89F084ED_923:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_924:;				
_A89F084ED_924:
; //	asm	nop				
	nop
; //_A89F084ED_925:;				
_A89F084ED_925:
; //	asm	nop				
	nop
; //_A89F084ED_926:;				
_A89F084ED_926:
; //	asm	nop				
	nop
; //_A89F084ED_927:;				
_A89F084ED_927:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_928:;				
_A89F084ED_928:
; //	asm	nop				
	nop
; //_A89F084ED_929:;				
_A89F084ED_929:
; //	asm	nop				
	nop
; //_A89F084ED_930:;				
_A89F084ED_930:
; //	asm	nop				
	nop
; //_A89F084ED_931:;				
_A89F084ED_931:
; //	asm	nop				
	nop
; //_A89F084ED_932:;				
_A89F084ED_932:
; //	asm	nop				
	nop
; //_A89F084ED_933:;				
_A89F084ED_933:
; //	asm	nop				
	nop
; //_A89F084ED_934:;				
_A89F084ED_934:
; //	asm	nop				
	nop
; //_A89F084ED_935:;				
_A89F084ED_935:
; //	asm	nop				
	nop
; //_A89F084ED_936:;				
_A89F084ED_936:
; //	asm	nop				
	nop
; //_A89F084ED_937:;				
_A89F084ED_937:
; //	asm	nop				
	nop
; //_A89F084ED_938:;				
_A89F084ED_938:
; //	asm	nop				
	nop
; //_A89F084ED_939:;				
_A89F084ED_939:
; //	asm	nop				
	nop
; //_A89F084ED_940:;				
_A89F084ED_940:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_941:;				
_A89F084ED_941:
; //	asm	nop				
	nop
; //_A89F084ED_942:;				
_A89F084ED_942:
; //	asm	nop				
	nop
; //_A89F084ED_943:;				
_A89F084ED_943:
; //	asm	nop				
	nop
; //_A89F084ED_944:;				
_A89F084ED_944:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_945:;				
_A89F084ED_945:
; //	asm	nop				
	nop
; //_A89F084ED_946:;				
_A89F084ED_946:
; //	asm	nop				
	nop
; //_A89F084ED_947:;				
_A89F084ED_947:
; //	asm	nop				
	nop
; //_A89F084ED_948:;				
_A89F084ED_948:
; //	asm	nop				
	nop
; //_A89F084ED_949:;				
_A89F084ED_949:
; //	asm	nop				
	nop
; //_A89F084ED_950:;				
_A89F084ED_950:
; //	asm	nop				
	nop
; //_A89F084ED_951:;				
_A89F084ED_951:
; //	asm	nop				
	nop
; //_A89F084ED_952:;				
_A89F084ED_952:
; //	asm	nop				
	nop
; //_A89F084ED_953:;				
_A89F084ED_953:
; //	asm	nop				
	nop
; //_A89F084ED_954:;				
_A89F084ED_954:
; //	asm	nop				
	nop
; //_A89F084ED_955:;				
_A89F084ED_955:
; //	asm	nop				
	nop
; //_A89F084ED_956:;				
_A89F084ED_956:
; //	asm	nop				
	nop
; //_A89F084ED_957:;				
_A89F084ED_957:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_958:;				
_A89F084ED_958:
; //	asm	nop				
	nop
; //_A89F084ED_959:;				
_A89F084ED_959:
; //	asm	nop				
	nop
; //_A89F084ED_960:;				
_A89F084ED_960:
; //	asm	nop				
	nop
; //_A89F084ED_961:;				
_A89F084ED_961:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_962:;				
_A89F084ED_962:
; //	asm	nop				
	nop
; //_A89F084ED_963:;				
_A89F084ED_963:
; //	asm	nop				
	nop
; //_A89F084ED_964:;				
_A89F084ED_964:
; //	asm	nop				
	nop
; //_A89F084ED_965:;				
_A89F084ED_965:
; //	asm	nop				
	nop
; //_A89F084ED_966:;				
_A89F084ED_966:
; //	asm	nop				
	nop
; //_A89F084ED_967:;				
_A89F084ED_967:
; //	asm	nop				
	nop
; //_A89F084ED_968:;				
_A89F084ED_968:
; //	asm	nop				
	nop
; //_A89F084ED_969:;				
_A89F084ED_969:
; //	asm	nop				
	nop
; //_A89F084ED_970:;				
_A89F084ED_970:
; //	asm	nop				
	nop
; //_A89F084ED_971:;				
_A89F084ED_971:
; //	asm	nop				
	nop
; //_A89F084ED_972:;				
_A89F084ED_972:
; //	asm	nop				
	nop
; //_A89F084ED_973:;				
_A89F084ED_973:
; //	asm	nop				
	nop
; //_A89F084ED_974:;				
_A89F084ED_974:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_975:;				
_A89F084ED_975:
; //	asm	nop				
	nop
; //_A89F084ED_976:;				
_A89F084ED_976:
; //	asm	nop				
	nop
; //_A89F084ED_977:;				
_A89F084ED_977:
; //	asm	nop				
	nop
; //_A89F084ED_978:;				
_A89F084ED_978:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_979:;				
_A89F084ED_979:
; //	asm	nop				
	nop
; //_A89F084ED_980:;				
_A89F084ED_980:
; //	asm	nop				
	nop
; //_A89F084ED_981:;				
_A89F084ED_981:
; //	asm	nop				
	nop
; //_A89F084ED_982:;				
_A89F084ED_982:
; //	asm	nop				
	nop
; //_A89F084ED_983:;				
_A89F084ED_983:
; //	asm	nop				
	nop
; //_A89F084ED_984:;				
_A89F084ED_984:
; //	asm	nop				
	nop
; //_A89F084ED_985:;				
_A89F084ED_985:
; //	asm	nop				
	nop
; //_A89F084ED_986:;				
_A89F084ED_986:
; //	asm	nop				
	nop
; //_A89F084ED_987:;				
_A89F084ED_987:
; //	asm	nop				
	nop
; //_A89F084ED_988:;				
_A89F084ED_988:
; //	asm	nop				
	nop
; //_A89F084ED_989:;				
_A89F084ED_989:
; //	asm	nop				
	nop
; //_A89F084ED_990:;				
_A89F084ED_990:
; //	asm	nop				
	nop
; //_A89F084ED_991:;				
_A89F084ED_991:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_992:;				
_A89F084ED_992:
; //	asm	nop				
	nop
; //_A89F084ED_993:;				
_A89F084ED_993:
; //	asm	nop				
	nop
; //_A89F084ED_994:;				
_A89F084ED_994:
; //	asm	nop				
	nop
; //_A89F084ED_995:;				
_A89F084ED_995:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_996:;				
_A89F084ED_996:
; //	asm	nop				
	nop
; //_A89F084ED_997:;				
_A89F084ED_997:
; //	asm	nop				
	nop
; //_A89F084ED_998:;				
_A89F084ED_998:
; //	asm	nop				
	nop
; //_A89F084ED_999:;				
_A89F084ED_999:
; //	asm	nop				
	nop
; //_A89F084ED_1000:;				
_A89F084ED_1000:
; //	asm	nop				
	nop
; //_A89F084ED_1001:;				
_A89F084ED_1001:
; //	asm	nop				
	nop
; //_A89F084ED_1002:;				
_A89F084ED_1002:
; //	asm	nop				
	nop
; //_A89F084ED_1003:;				
_A89F084ED_1003:
; //	asm	nop				
	nop
; //_A89F084ED_1004:;				
_A89F084ED_1004:
; //	asm	nop				
	nop
; //_A89F084ED_1005:;				
_A89F084ED_1005:
; //	asm	nop				
	nop
; //_A89F084ED_1006:;				
_A89F084ED_1006:
; //	asm	nop				
	nop
; //_A89F084ED_1007:;				
_A89F084ED_1007:
; //	asm	nop				
	nop
; //_A89F084ED_1008:;				
_A89F084ED_1008:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_1009:;				
_A89F084ED_1009:
; //	asm	nop				
	nop
; //_A89F084ED_1010:;				
_A89F084ED_1010:
; //	asm	nop				
	nop
; //_A89F084ED_1011:;				
_A89F084ED_1011:
; //	asm	nop				
	nop
; //_A89F084ED_1012:;				
_A89F084ED_1012:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_1013:;				
_A89F084ED_1013:
; //	asm	nop				
	nop
; //_A89F084ED_1014:;				
_A89F084ED_1014:
; //	asm	nop				
	nop
; //_A89F084ED_1015:;				
_A89F084ED_1015:
; //	asm	nop				
	nop
; //_A89F084ED_1016:;				
_A89F084ED_1016:
; //	asm	nop				
	nop
; //_A89F084ED_1017:;				
_A89F084ED_1017:
; //	asm	nop				
	nop
; //_A89F084ED_1018:;				
_A89F084ED_1018:
; //	asm	nop				
	nop
; //_A89F084ED_1019:;				
_A89F084ED_1019:
; //	asm	nop				
	nop
; //_A89F084ED_1020:;				
_A89F084ED_1020:
; //	asm	nop				
	nop
; //_A89F084ED_1021:;				
_A89F084ED_1021:
; //	asm	nop				
	nop
; //_A89F084ED_1022:;				
_A89F084ED_1022:
; //	asm	nop				
	nop
; //_A89F084ED_1023:;				
_A89F084ED_1023:
; //	asm	nop				
	nop
; //_A89F084ED_1024:;				
_A89F084ED_1024:
; //	asm	nop				
	nop
; //_A89F084ED_1025:;				
_A89F084ED_1025:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_1026:;				
_A89F084ED_1026:
; //	asm	nop				
	nop
; //_A89F084ED_1027:;				
_A89F084ED_1027:
; //	asm	nop				
	nop
; //_A89F084ED_1028:;				
_A89F084ED_1028:
; //	asm	nop				
	nop
; //_A89F084ED_1029:;				
_A89F084ED_1029:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_1030:;				
_A89F084ED_1030:
; //	asm	nop				
	nop
; //_A89F084ED_1031:;				
_A89F084ED_1031:
; //	asm	nop				
	nop
; //_A89F084ED_1032:;				
_A89F084ED_1032:
; //	asm	nop				
	nop
; //_A89F084ED_1033:;				
_A89F084ED_1033:
; //	asm	nop				
	nop
; //_A89F084ED_1034:;				
_A89F084ED_1034:
; //	asm	nop				
	nop
; //_A89F084ED_1035:;				
_A89F084ED_1035:
; //	asm	nop				
	nop
; //_A89F084ED_1036:;				
_A89F084ED_1036:
; //	asm	nop				
	nop
; //_A89F084ED_1037:;				
_A89F084ED_1037:
; //	asm	nop				
	nop
; //_A89F084ED_1038:;				
_A89F084ED_1038:
; //	asm	nop				
	nop
; //_A89F084ED_1039:;				
_A89F084ED_1039:
; //	asm	nop				
	nop
; //_A89F084ED_1040:;				
_A89F084ED_1040:
; //	asm	nop				
	nop
; //_A89F084ED_1041:;				
_A89F084ED_1041:
; //	asm	nop				
	nop
; //_A89F084ED_1042:;				
_A89F084ED_1042:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_1043:;				
_A89F084ED_1043:
; //	asm	nop				
	nop
; //_A89F084ED_1044:;				
_A89F084ED_1044:
; //	asm	nop				
	nop
; //_A89F084ED_1045:;				
_A89F084ED_1045:
; //	asm	nop				
	nop
; //_A89F084ED_1046:;				
_A89F084ED_1046:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_1047:;				
_A89F084ED_1047:
; //	asm	nop				
	nop
; //_A89F084ED_1048:;				
_A89F084ED_1048:
; //	asm	nop				
	nop
; //_A89F084ED_1049:;				
_A89F084ED_1049:
; //	asm	nop				
	nop
; //_A89F084ED_1050:;				
_A89F084ED_1050:
; //	asm	nop				
	nop
; //_A89F084ED_1051:;				
_A89F084ED_1051:
; //	asm	nop				
	nop
; //_A89F084ED_1052:;				
_A89F084ED_1052:
; //	asm	nop				
	nop
; //_A89F084ED_1053:;				
_A89F084ED_1053:
; //	asm	nop				
	nop
; //_A89F084ED_1054:;				
_A89F084ED_1054:
; //	asm	nop				
	nop
; //_A89F084ED_1055:;				
_A89F084ED_1055:
; //	asm	nop				
	nop
; //_A89F084ED_1056:;				
_A89F084ED_1056:
; //	asm	nop				
	nop
; //_A89F084ED_1057:;				
_A89F084ED_1057:
; //	asm	nop				
	nop
; //_A89F084ED_1058:;				
_A89F084ED_1058:
; //	asm	nop				
	nop
; //_A89F084ED_1059:;				
_A89F084ED_1059:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_1060:;				
_A89F084ED_1060:
; //	asm	nop				
	nop
; //_A89F084ED_1061:;				
_A89F084ED_1061:
; //	asm	nop				
	nop
; //_A89F084ED_1062:;				
_A89F084ED_1062:
; //	asm	nop				
	nop
; //_A89F084ED_1063:;				
_A89F084ED_1063:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_1064:;				
_A89F084ED_1064:
; //	asm	nop				
	nop
; //_A89F084ED_1065:;				
_A89F084ED_1065:
; //	asm	nop				
	nop
; //_A89F084ED_1066:;				
_A89F084ED_1066:
; //	asm	nop				
	nop
; //_A89F084ED_1067:;				
_A89F084ED_1067:
; //	asm	nop				
	nop
; //_A89F084ED_1068:;				
_A89F084ED_1068:
; //	asm	nop				
	nop
; //_A89F084ED_1069:;				
_A89F084ED_1069:
; //	asm	nop				
	nop
; //_A89F084ED_1070:;				
_A89F084ED_1070:
; //	asm	nop				
	nop
; //_A89F084ED_1071:;				
_A89F084ED_1071:
; //	asm	nop				
	nop
; //_A89F084ED_1072:;				
_A89F084ED_1072:
; //	asm	nop				
	nop
; //_A89F084ED_1073:;				
_A89F084ED_1073:
; //	asm	nop				
	nop
; //_A89F084ED_1074:;				
_A89F084ED_1074:
; //	asm	nop				
	nop
; //_A89F084ED_1075:;				
_A89F084ED_1075:
; //	asm	nop				
	nop
; //_A89F084ED_1076:;				
_A89F084ED_1076:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_1077:;				
_A89F084ED_1077:
; //	asm	nop				
	nop
; //_A89F084ED_1078:;				
_A89F084ED_1078:
; //	asm	nop				
	nop
; //_A89F084ED_1079:;				
_A89F084ED_1079:
; //	asm	nop				
	nop
; //_A89F084ED_1080:;				
_A89F084ED_1080:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_1081:;				
_A89F084ED_1081:
; //	asm	nop				
	nop
; //_A89F084ED_1082:;				
_A89F084ED_1082:
; //	asm	nop				
	nop
; //_A89F084ED_1083:;				
_A89F084ED_1083:
; //	asm	nop				
	nop
; //_A89F084ED_1084:;				
_A89F084ED_1084:
; //	asm	nop				
	nop
; //_A89F084ED_1085:;				
_A89F084ED_1085:
; //	asm	nop				
	nop
; //_A89F084ED_1086:;				
_A89F084ED_1086:
; //	asm	nop				
	nop
; //_A89F084ED_1087:;				
_A89F084ED_1087:
; //	asm	nop				
	nop
; //_A89F084ED_1088:;				
_A89F084ED_1088:
; //	asm	nop				
	nop
; //_A89F084ED_1089:;				
_A89F084ED_1089:
; //	asm	nop				
	nop
; //_A89F084ED_1090:;				
_A89F084ED_1090:
; //	asm	nop				
	nop
; //_A89F084ED_1091:;				
_A89F084ED_1091:
; //	asm	nop				
	nop
; //_A89F084ED_1092:;				
_A89F084ED_1092:
; //	asm	nop				
	nop
; //_A89F084ED_1093:;				
_A89F084ED_1093:
; //	goto LD63FD439_108;			
	pch =	LD63FD439_108
	ljmp	LD63FD439_108
; //LD63FD439_112:;					
LD63FD439_112:
; //_A89F084ED_1094:;				
_A89F084ED_1094:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_1095:;				
_A89F084ED_1095:
; //	asm	nop				
	nop
; //_A89F084ED_1096:;				
_A89F084ED_1096:
; //	asm	nop				
	nop
; //_A89F084ED_1097:;				
_A89F084ED_1097:
; //	asm	nop				
	nop
; //_A89F084ED_1098:;				
_A89F084ED_1098:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_1099:;				
_A89F084ED_1099:
; //	asm	nop				
	nop
; //_A89F084ED_1100:;				
_A89F084ED_1100:
; //	asm	nop				
	nop
; //_A89F084ED_1101:;				
_A89F084ED_1101:
; //	asm	nop				
	nop
; //_A89F084ED_1102:;				
_A89F084ED_1102:
; //	asm	nop				
	nop
; //_A89F084ED_1103:;				
_A89F084ED_1103:
; //	asm	nop				
	nop
; //_A89F084ED_1104:;				
_A89F084ED_1104:
; //	asm	nop				
	nop
; //_A89F084ED_1105:;				
_A89F084ED_1105:
; //	asm	nop				
	nop
; //_A89F084ED_1106:;				
_A89F084ED_1106:
; //	asm	nop				
	nop
; //_A89F084ED_1107:;				
_A89F084ED_1107:
; //	asm	nop				
	nop
; //_A89F084ED_1108:;				
_A89F084ED_1108:
; //	asm	nop				
	nop
; //_A89F084ED_1109:;				
_A89F084ED_1109:
; //	asm	nop				
	nop
; //_A89F084ED_1110:;				
_A89F084ED_1110:
; //	asm	nop				
	nop
; //_A89F084ED_1111:;				
_A89F084ED_1111:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_1112:;				
_A89F084ED_1112:
; //	asm	nop				
	nop
; //_A89F084ED_1113:;				
_A89F084ED_1113:
; //	asm	nop				
	nop
; //_A89F084ED_1114:;				
_A89F084ED_1114:
; //	asm	nop				
	nop
; //_A89F084ED_1115:;				
_A89F084ED_1115:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_1116:;				
_A89F084ED_1116:
; //	asm	nop				
	nop
; //_A89F084ED_1117:;				
_A89F084ED_1117:
; //	asm	nop				
	nop
; //_A89F084ED_1118:;				
_A89F084ED_1118:
; //	asm	nop				
	nop
; //_A89F084ED_1119:;				
_A89F084ED_1119:
; //	asm	nop				
	nop
; //_A89F084ED_1120:;				
_A89F084ED_1120:
; //	asm	nop				
	nop
; //_A89F084ED_1121:;				
_A89F084ED_1121:
; //	asm	nop				
	nop
; //_A89F084ED_1122:;				
_A89F084ED_1122:
; //	asm	nop				
	nop
; //_A89F084ED_1123:;				
_A89F084ED_1123:
; //	asm	nop				
	nop
; //_A89F084ED_1124:;				
_A89F084ED_1124:
; //	asm	nop				
	nop
; //_A89F084ED_1125:;				
_A89F084ED_1125:
; //	asm	nop				
	nop
; //_A89F084ED_1126:;				
_A89F084ED_1126:
; //	asm	nop				
	nop
; //_A89F084ED_1127:;				
_A89F084ED_1127:
; //	asm	nop				
	nop
; //_A89F084ED_1128:;				
_A89F084ED_1128:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_1129:;				
_A89F084ED_1129:
; //	asm	nop				
	nop
; //_A89F084ED_1130:;				
_A89F084ED_1130:
; //	asm	nop				
	nop
; //_A89F084ED_1131:;				
_A89F084ED_1131:
; //	asm	nop				
	nop
; //_A89F084ED_1132:;				
_A89F084ED_1132:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_1133:;				
_A89F084ED_1133:
; //	asm	nop				
	nop
; //_A89F084ED_1134:;				
_A89F084ED_1134:
; //	asm	nop				
	nop
; //_A89F084ED_1135:;				
_A89F084ED_1135:
; //	asm	nop				
	nop
; //_A89F084ED_1136:;				
_A89F084ED_1136:
; //	asm	nop				
	nop
; //_A89F084ED_1137:;				
_A89F084ED_1137:
; //	asm	nop				
	nop
; //_A89F084ED_1138:;				
_A89F084ED_1138:
; //	asm	nop				
	nop
; //_A89F084ED_1139:;				
_A89F084ED_1139:
; //	asm	nop				
	nop
; //_A89F084ED_1140:;				
_A89F084ED_1140:
; //	asm	nop				
	nop
; //_A89F084ED_1141:;				
_A89F084ED_1141:
; //	asm	nop				
	nop
; //_A89F084ED_1142:;				
_A89F084ED_1142:
; //	asm	nop				
	nop
; //_A89F084ED_1143:;				
_A89F084ED_1143:
; //	asm	nop				
	nop
; //_A89F084ED_1144:;				
_A89F084ED_1144:
; //	asm	nop				
	nop
; //_A89F084ED_1145:;				
_A89F084ED_1145:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_1146:;				
_A89F084ED_1146:
; //	asm	nop				
	nop
; //_A89F084ED_1147:;				
_A89F084ED_1147:
; //	asm	nop				
	nop
; //_A89F084ED_1148:;				
_A89F084ED_1148:
; //	asm	nop				
	nop
; //_A89F084ED_1149:;				
_A89F084ED_1149:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_1150:;				
_A89F084ED_1150:
; //	asm	nop				
	nop
; //_A89F084ED_1151:;				
_A89F084ED_1151:
; //	asm	nop				
	nop
; //_A89F084ED_1152:;				
_A89F084ED_1152:
; //	asm	nop				
	nop
; //_A89F084ED_1153:;				
_A89F084ED_1153:
; //	asm	nop				
	nop
; //_A89F084ED_1154:;				
_A89F084ED_1154:
; //	asm	nop				
	nop
; //_A89F084ED_1155:;				
_A89F084ED_1155:
; //	asm	nop				
	nop
; //_A89F084ED_1156:;				
_A89F084ED_1156:
; //	asm	nop				
	nop
; //_A89F084ED_1157:;				
_A89F084ED_1157:
; //	asm	nop				
	nop
; //_A89F084ED_1158:;				
_A89F084ED_1158:
; //	asm	nop				
	nop
; //_A89F084ED_1159:;				
_A89F084ED_1159:
; //	asm	nop				
	nop
; //_A89F084ED_1160:;				
_A89F084ED_1160:
; //	asm	nop				
	nop
; //_A89F084ED_1161:;				
_A89F084ED_1161:
; //	asm	nop				
	nop
; //_A89F084ED_1162:;				
_A89F084ED_1162:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_1163:;				
_A89F084ED_1163:
; //	asm	nop				
	nop
; //_A89F084ED_1164:;				
_A89F084ED_1164:
; //	asm	nop				
	nop
; //_A89F084ED_1165:;				
_A89F084ED_1165:
; //	asm	nop				
	nop
; //_A89F084ED_1166:;				
_A89F084ED_1166:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_1167:;				
_A89F084ED_1167:
; //	asm	nop				
	nop
; //_A89F084ED_1168:;				
_A89F084ED_1168:
; //	asm	nop				
	nop
; //_A89F084ED_1169:;				
_A89F084ED_1169:
; //	asm	nop				
	nop
; //_A89F084ED_1170:;				
_A89F084ED_1170:
; //	asm	nop				
	nop
; //_A89F084ED_1171:;				
_A89F084ED_1171:
; //	asm	nop				
	nop
; //_A89F084ED_1172:;				
_A89F084ED_1172:
; //	asm	nop				
	nop
; //_A89F084ED_1173:;				
_A89F084ED_1173:
; //	asm	nop				
	nop
; //_A89F084ED_1174:;				
_A89F084ED_1174:
; //	asm	nop				
	nop
; //_A89F084ED_1175:;				
_A89F084ED_1175:
; //	asm	nop				
	nop
; //_A89F084ED_1176:;				
_A89F084ED_1176:
; //	asm	nop				
	nop
; //_A89F084ED_1177:;				
_A89F084ED_1177:
; //	asm	nop				
	nop
; //_A89F084ED_1178:;				
_A89F084ED_1178:
; //	asm	nop				
	nop
; //_A89F084ED_1179:;				
_A89F084ED_1179:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_1180:;				
_A89F084ED_1180:
; //	asm	nop				
	nop
; //_A89F084ED_1181:;				
_A89F084ED_1181:
; //	asm	nop				
	nop
; //_A89F084ED_1182:;				
_A89F084ED_1182:
; //	asm	nop				
	nop
; //_A89F084ED_1183:;				
_A89F084ED_1183:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_1184:;				
_A89F084ED_1184:
; //	asm	nop				
	nop
; //_A89F084ED_1185:;				
_A89F084ED_1185:
; //	asm	nop				
	nop
; //_A89F084ED_1186:;				
_A89F084ED_1186:
; //	asm	nop				
	nop
; //_A89F084ED_1187:;				
_A89F084ED_1187:
; //	asm	nop				
	nop
; //_A89F084ED_1188:;				
_A89F084ED_1188:
; //	asm	nop				
	nop
; //_A89F084ED_1189:;				
_A89F084ED_1189:
; //	asm	nop				
	nop
; //_A89F084ED_1190:;				
_A89F084ED_1190:
; //	asm	nop				
	nop
; //_A89F084ED_1191:;				
_A89F084ED_1191:
; //	asm	nop				
	nop
; //_A89F084ED_1192:;				
_A89F084ED_1192:
; //	asm	nop				
	nop
; //_A89F084ED_1193:;				
_A89F084ED_1193:
; //	asm	nop				
	nop
; //_A89F084ED_1194:;				
_A89F084ED_1194:
; //	asm	nop				
	nop
; //_A89F084ED_1195:;				
_A89F084ED_1195:
; //	asm	nop				
	nop
; //_A89F084ED_1196:;				
_A89F084ED_1196:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_1197:;				
_A89F084ED_1197:
; //	asm	nop				
	nop
; //_A89F084ED_1198:;				
_A89F084ED_1198:
; //	asm	nop				
	nop
; //_A89F084ED_1199:;				
_A89F084ED_1199:
; //	asm	nop				
	nop
; //_A89F084ED_1200:;				
_A89F084ED_1200:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_1201:;				
_A89F084ED_1201:
; //	asm	nop				
	nop
; //_A89F084ED_1202:;				
_A89F084ED_1202:
; //	asm	nop				
	nop
; //_A89F084ED_1203:;				
_A89F084ED_1203:
; //	asm	nop				
	nop
; //_A89F084ED_1204:;				
_A89F084ED_1204:
; //	asm	nop				
	nop
; //_A89F084ED_1205:;				
_A89F084ED_1205:
; //	asm	nop				
	nop
; //_A89F084ED_1206:;				
_A89F084ED_1206:
; //	asm	nop				
	nop
; //_A89F084ED_1207:;				
_A89F084ED_1207:
; //	asm	nop				
	nop
; //_A89F084ED_1208:;				
_A89F084ED_1208:
; //	asm	nop				
	nop
; //_A89F084ED_1209:;				
_A89F084ED_1209:
; //	asm	nop				
	nop
; //_A89F084ED_1210:;				
_A89F084ED_1210:
; //	asm	nop				
	nop
; //_A89F084ED_1211:;				
_A89F084ED_1211:
; //	asm	nop				
	nop
; //_A89F084ED_1212:;				
_A89F084ED_1212:
; //	asm	nop				
	nop
; //_A89F084ED_1213:;				
_A89F084ED_1213:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_1214:;				
_A89F084ED_1214:
; //	asm	nop				
	nop
; //_A89F084ED_1215:;				
_A89F084ED_1215:
; //	asm	nop				
	nop
; //_A89F084ED_1216:;				
_A89F084ED_1216:
; //	asm	nop				
	nop
; //_A89F084ED_1217:;				
_A89F084ED_1217:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_1218:;				
_A89F084ED_1218:
; //	asm	nop				
	nop
; //_A89F084ED_1219:;				
_A89F084ED_1219:
; //	asm	nop				
	nop
; //_A89F084ED_1220:;				
_A89F084ED_1220:
; //	asm	nop				
	nop
; //_A89F084ED_1221:;				
_A89F084ED_1221:
; //	asm	nop				
	nop
; //_A89F084ED_1222:;				
_A89F084ED_1222:
; //	asm	nop				
	nop
; //_A89F084ED_1223:;				
_A89F084ED_1223:
; //	asm	nop				
	nop
; //_A89F084ED_1224:;				
_A89F084ED_1224:
; //	asm	nop				
	nop
; //_A89F084ED_1225:;				
_A89F084ED_1225:
; //	asm	nop				
	nop
; //_A89F084ED_1226:;				
_A89F084ED_1226:
; //	asm	nop				
	nop
; //_A89F084ED_1227:;				
_A89F084ED_1227:
; //	asm	nop				
	nop
; //_A89F084ED_1228:;				
_A89F084ED_1228:
; //	asm	nop				
	nop
; //_A89F084ED_1229:;				
_A89F084ED_1229:
; //	asm	nop				
	nop
; //_A89F084ED_1230:;				
_A89F084ED_1230:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_1231:;				
_A89F084ED_1231:
; //	asm	nop				
	nop
; //_A89F084ED_1232:;				
_A89F084ED_1232:
; //	asm	nop				
	nop
; //_A89F084ED_1233:;				
_A89F084ED_1233:
; //	asm	nop				
	nop
; //_A89F084ED_1234:;				
_A89F084ED_1234:
; //	asm	nop				
	nop
; //_A89F084ED_1235:;				
_A89F084ED_1235:
; //	asm	nop				
	nop
; //_A89F084ED_1236:;				
_A89F084ED_1236:
; //	asm	nop				
	nop
; //_A89F084ED_1237:;				
_A89F084ED_1237:
; //	asm	nop				
	nop
; //_A89F084ED_1238:;				
_A89F084ED_1238:
; //	asm	nop				
	nop
; //_A89F084ED_1239:;				
_A89F084ED_1239:
; //	asm	nop				
	nop
; //_A89F084ED_1240:;				
_A89F084ED_1240:
; //	asm	nop				
	nop
; //_A89F084ED_1241:;				
_A89F084ED_1241:
; //	asm	nop				
	nop
; //_A89F084ED_1242:;				
_A89F084ED_1242:
; //	asm	nop				
	nop
; //_A89F084ED_1243:;				
_A89F084ED_1243:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_1244:;				
_A89F084ED_1244:
; //	asm	nop				
	nop
; //_A89F084ED_1245:;				
_A89F084ED_1245:
; //	asm	nop				
	nop
; //_A89F084ED_1246:;				
_A89F084ED_1246:
; //	asm	nop				
	nop
; //_A89F084ED_1247:;				
_A89F084ED_1247:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_1248:;				
_A89F084ED_1248:
; //	asm	nop				
	nop
; //_A89F084ED_1249:;				
_A89F084ED_1249:
; //	asm	nop				
	nop
; //_A89F084ED_1250:;				
_A89F084ED_1250:
; //	asm	nop				
	nop
; //_A89F084ED_1251:;				
_A89F084ED_1251:
; //	asm	nop				
	nop
; //_A89F084ED_1252:;				
_A89F084ED_1252:
; //	asm	nop				
	nop
; //_A89F084ED_1253:;				
_A89F084ED_1253:
; //	asm	nop				
	nop
; //_A89F084ED_1254:;				
_A89F084ED_1254:
; //	asm	nop				
	nop
; //_A89F084ED_1255:;				
_A89F084ED_1255:
; //	asm	nop				
	nop
; //_A89F084ED_1256:;				
_A89F084ED_1256:
; //	asm	nop				
	nop
; //_A89F084ED_1257:;				
_A89F084ED_1257:
; //	asm	nop				
	nop
; //_A89F084ED_1258:;				
_A89F084ED_1258:
; //	asm	nop				
	nop
; //_A89F084ED_1259:;				
_A89F084ED_1259:
; //	asm	nop				
	nop
; //_A89F084ED_1260:;				
_A89F084ED_1260:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_1261:;				
_A89F084ED_1261:
; //	asm	nop				
	nop
; //_A89F084ED_1262:;				
_A89F084ED_1262:
; //	asm	nop				
	nop
; //_A89F084ED_1263:;				
_A89F084ED_1263:
; //	asm	nop				
	nop
; //_A89F084ED_1264:;				
_A89F084ED_1264:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_1265:;				
_A89F084ED_1265:
; //	asm	nop				
	nop
; //_A89F084ED_1266:;				
_A89F084ED_1266:
; //	asm	nop				
	nop
; //_A89F084ED_1267:;				
_A89F084ED_1267:
; //	asm	nop				
	nop
; //_A89F084ED_1268:;				
_A89F084ED_1268:
; //	asm	nop				
	nop
; //_A89F084ED_1269:;				
_A89F084ED_1269:
; //	asm	nop				
	nop
; //_A89F084ED_1270:;				
_A89F084ED_1270:
; //	asm	nop				
	nop
; //_A89F084ED_1271:;				
_A89F084ED_1271:
; //	asm	nop				
	nop
; //_A89F084ED_1272:;				
_A89F084ED_1272:
; //	asm	nop				
	nop
; //_A89F084ED_1273:;				
_A89F084ED_1273:
; //	asm	nop				
	nop
; //_A89F084ED_1274:;				
_A89F084ED_1274:
; //	asm	nop				
	nop
; //_A89F084ED_1275:;				
_A89F084ED_1275:
; //	asm	nop				
	nop
; //_A89F084ED_1276:;				
_A89F084ED_1276:
; //	asm	nop				
	nop
; //_A89F084ED_1277:;				
_A89F084ED_1277:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_1278:;				
_A89F084ED_1278:
; //	asm	nop				
	nop
; //_A89F084ED_1279:;				
_A89F084ED_1279:
; //	asm	nop				
	nop
; //_A89F084ED_1280:;				
_A89F084ED_1280:
; //	asm	nop				
	nop
; //_A89F084ED_1281:;				
_A89F084ED_1281:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_1282:;				
_A89F084ED_1282:
; //	asm	nop				
	nop
; //_A89F084ED_1283:;				
_A89F084ED_1283:
; //	asm	nop				
	nop
; //_A89F084ED_1284:;				
_A89F084ED_1284:
; //	asm	nop				
	nop
; //_A89F084ED_1285:;				
_A89F084ED_1285:
; //	asm	nop				
	nop
; //_A89F084ED_1286:;				
_A89F084ED_1286:
; //	asm	nop				
	nop
; //_A89F084ED_1287:;				
_A89F084ED_1287:
; //	asm	nop				
	nop
; //_A89F084ED_1288:;				
_A89F084ED_1288:
; //	asm	nop				
	nop
; //_A89F084ED_1289:;				
_A89F084ED_1289:
; //	asm	nop				
	nop
; //_A89F084ED_1290:;				
_A89F084ED_1290:
; //	asm	nop				
	nop
; //_A89F084ED_1291:;				
_A89F084ED_1291:
; //	asm	nop				
	nop
; //_A89F084ED_1292:;				
_A89F084ED_1292:
; //	asm	nop				
	nop
; //_A89F084ED_1293:;				
_A89F084ED_1293:
; //	asm	nop				
	nop
; //_A89F084ED_1294:;				
_A89F084ED_1294:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_1295:;				
_A89F084ED_1295:
; //	asm	nop				
	nop
; //_A89F084ED_1296:;				
_A89F084ED_1296:
; //	asm	nop				
	nop
; //_A89F084ED_1297:;				
_A89F084ED_1297:
; //	asm	nop				
	nop
; //_A89F084ED_1298:;				
_A89F084ED_1298:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_1299:;				
_A89F084ED_1299:
; //	asm	nop				
	nop
; //_A89F084ED_1300:;				
_A89F084ED_1300:
; //	asm	nop				
	nop
; //_A89F084ED_1301:;				
_A89F084ED_1301:
; //	asm	nop				
	nop
; //_A89F084ED_1302:;				
_A89F084ED_1302:
; //	asm	nop				
	nop
; //_A89F084ED_1303:;				
_A89F084ED_1303:
; //	asm	nop				
	nop
; //_A89F084ED_1304:;				
_A89F084ED_1304:
; //	asm	nop				
	nop
; //_A89F084ED_1305:;				
_A89F084ED_1305:
; //	asm	nop				
	nop
; //_A89F084ED_1306:;				
_A89F084ED_1306:
; //	asm	nop				
	nop
; //_A89F084ED_1307:;				
_A89F084ED_1307:
; //	asm	nop				
	nop
; //_A89F084ED_1308:;				
_A89F084ED_1308:
; //	asm	nop				
	nop
; //_A89F084ED_1309:;				
_A89F084ED_1309:
; //	asm	nop				
	nop
; //_A89F084ED_1310:;				
_A89F084ED_1310:
; //	asm	nop				
	nop
; //_A89F084ED_1311:;				
_A89F084ED_1311:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_1312:;				
_A89F084ED_1312:
; //	asm	nop				
	nop
; //_A89F084ED_1313:;				
_A89F084ED_1313:
; //	asm	nop				
	nop
; //_A89F084ED_1314:;				
_A89F084ED_1314:
; //	asm	nop				
	nop
; //_A89F084ED_1315:;				
_A89F084ED_1315:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_1316:;				
_A89F084ED_1316:
; //	asm	nop				
	nop
; //_A89F084ED_1317:;				
_A89F084ED_1317:
; //	asm	nop				
	nop
; //_A89F084ED_1318:;				
_A89F084ED_1318:
; //	asm	nop				
	nop
; //_A89F084ED_1319:;				
_A89F084ED_1319:
; //	asm	nop				
	nop
; //_A89F084ED_1320:;				
_A89F084ED_1320:
; //	asm	nop				
	nop
; //_A89F084ED_1321:;				
_A89F084ED_1321:
; //	asm	nop				
	nop
; //_A89F084ED_1322:;				
_A89F084ED_1322:
; //	asm	nop				
	nop
; //_A89F084ED_1323:;				
_A89F084ED_1323:
; //	asm	nop				
	nop
; //_A89F084ED_1324:;				
_A89F084ED_1324:
; //	asm	nop				
	nop
; //_A89F084ED_1325:;				
_A89F084ED_1325:
; //	asm	nop				
	nop
; //_A89F084ED_1326:;				
_A89F084ED_1326:
; //	asm	nop				
	nop
; //_A89F084ED_1327:;				
_A89F084ED_1327:
; //	asm	nop				
	nop
; //_A89F084ED_1328:;				
_A89F084ED_1328:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_1329:;				
_A89F084ED_1329:
; //	asm	nop				
	nop
; //_A89F084ED_1330:;				
_A89F084ED_1330:
; //	asm	nop				
	nop
; //_A89F084ED_1331:;				
_A89F084ED_1331:
; //	asm	nop				
	nop
; //_A89F084ED_1332:;				
_A89F084ED_1332:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_1333:;				
_A89F084ED_1333:
; //	asm	nop				
	nop
; //_A89F084ED_1334:;				
_A89F084ED_1334:
; //	asm	nop				
	nop
; //_A89F084ED_1335:;				
_A89F084ED_1335:
; //	asm	nop				
	nop
; //_A89F084ED_1336:;				
_A89F084ED_1336:
; //	asm	nop				
	nop
; //_A89F084ED_1337:;				
_A89F084ED_1337:
; //	asm	nop				
	nop
; //_A89F084ED_1338:;				
_A89F084ED_1338:
; //	asm	nop				
	nop
; //_A89F084ED_1339:;				
_A89F084ED_1339:
; //	asm	nop				
	nop
; //_A89F084ED_1340:;				
_A89F084ED_1340:
; //	asm	nop				
	nop
; //_A89F084ED_1341:;				
_A89F084ED_1341:
; //	asm	nop				
	nop
; //_A89F084ED_1342:;				
_A89F084ED_1342:
; //	asm	nop				
	nop
; //_A89F084ED_1343:;				
_A89F084ED_1343:
; //	asm	nop				
	nop
; //_A89F084ED_1344:;				
_A89F084ED_1344:
; //	asm	nop				
	nop
; //_A89F084ED_1345:;				
_A89F084ED_1345:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_1346:;				
_A89F084ED_1346:
; //	asm	nop				
	nop
; //_A89F084ED_1347:;				
_A89F084ED_1347:
; //	asm	nop				
	nop
; //_A89F084ED_1348:;				
_A89F084ED_1348:
; //	asm	nop				
	nop
; //_A89F084ED_1349:;				
_A89F084ED_1349:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_1350:;				
_A89F084ED_1350:
; //	asm	nop				
	nop
; //_A89F084ED_1351:;				
_A89F084ED_1351:
; //	asm	nop				
	nop
; //_A89F084ED_1352:;				
_A89F084ED_1352:
; //	asm	nop				
	nop
; //_A89F084ED_1353:;				
_A89F084ED_1353:
; //	asm	nop				
	nop
; //_A89F084ED_1354:;				
_A89F084ED_1354:
; //	asm	nop				
	nop
; //_A89F084ED_1355:;				
_A89F084ED_1355:
; //	asm	nop				
	nop
; //_A89F084ED_1356:;				
_A89F084ED_1356:
; //	asm	nop				
	nop
; //_A89F084ED_1357:;				
_A89F084ED_1357:
; //	asm	nop				
	nop
; //_A89F084ED_1358:;				
_A89F084ED_1358:
; //	asm	nop				
	nop
; //_A89F084ED_1359:;				
_A89F084ED_1359:
; //	asm	nop				
	nop
; //_A89F084ED_1360:;				
_A89F084ED_1360:
; //	asm	nop				
	nop
; //_A89F084ED_1361:;				
_A89F084ED_1361:
; //	asm	nop				
	nop
; //_A89F084ED_1362:;				
_A89F084ED_1362:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_1363:;				
_A89F084ED_1363:
; //	asm	nop				
	nop
; //_A89F084ED_1364:;				
_A89F084ED_1364:
; //	asm	nop				
	nop
; //_A89F084ED_1365:;				
_A89F084ED_1365:
; //	asm	nop				
	nop
; //_A89F084ED_1366:;				
_A89F084ED_1366:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_1367:;				
_A89F084ED_1367:
; //	asm	nop				
	nop
; //_A89F084ED_1368:;				
_A89F084ED_1368:
; //	asm	nop				
	nop
; //_A89F084ED_1369:;				
_A89F084ED_1369:
; //	asm	nop				
	nop
; //_A89F084ED_1370:;				
_A89F084ED_1370:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_1371:;				
_A89F084ED_1371:
; //	asm	nop				
	nop
; //_A89F084ED_1372:;				
_A89F084ED_1372:
; //	asm	nop				
	nop
; //_A89F084ED_1373:;				
_A89F084ED_1373:
; //	asm	nop				
	nop
; //_A89F084ED_1374:;				
_A89F084ED_1374:
; //	asm	nop				
	nop
; //_A89F084ED_1375:;				
_A89F084ED_1375:
; //	asm	nop				
	nop
; //_A89F084ED_1376:;				
_A89F084ED_1376:
; //	asm	nop				
	nop
; //_A89F084ED_1377:;				
_A89F084ED_1377:
; //	asm	nop				
	nop
; //_A89F084ED_1378:;				
_A89F084ED_1378:
; //	asm	nop				
	nop
; //_A89F084ED_1379:;				
_A89F084ED_1379:
; //	asm	nop				
	nop
; //_A89F084ED_1380:;				
_A89F084ED_1380:
; //	asm	nop				
	nop
; //_A89F084ED_1381:;				
_A89F084ED_1381:
; //	asm	nop				
	nop
; //_A89F084ED_1382:;				
_A89F084ED_1382:
; //	asm	nop				
	nop
; //_A89F084ED_1383:;				
_A89F084ED_1383:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_1384:;				
_A89F084ED_1384:
; //	asm	nop				
	nop
; //_A89F084ED_1385:;				
_A89F084ED_1385:
; //	asm	nop				
	nop
; //_A89F084ED_1386:;				
_A89F084ED_1386:
; //	asm	nop				
	nop
; //_A89F084ED_1387:;				
_A89F084ED_1387:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_1388:;				
_A89F084ED_1388:
; //	asm	nop				
	nop
; //_A89F084ED_1389:;				
_A89F084ED_1389:
; //	asm	nop				
	nop
; //_A89F084ED_1390:;				
_A89F084ED_1390:
; //	asm	nop				
	nop
; //_A89F084ED_1391:;				
_A89F084ED_1391:
; //	asm	nop				
	nop
; //_A89F084ED_1392:;				
_A89F084ED_1392:
; //	asm	nop				
	nop
; //_A89F084ED_1393:;				
_A89F084ED_1393:
; //	asm	nop				
	nop
; //_A89F084ED_1394:;				
_A89F084ED_1394:
; //	asm	nop				
	nop
; //_A89F084ED_1395:;				
_A89F084ED_1395:
; //	asm	nop				
	nop
; //_A89F084ED_1396:;				
_A89F084ED_1396:
; //	asm	nop				
	nop
; //_A89F084ED_1397:;				
_A89F084ED_1397:
; //	asm	nop				
	nop
; //_A89F084ED_1398:;				
_A89F084ED_1398:
; //	asm	nop				
	nop
; //_A89F084ED_1399:;				
_A89F084ED_1399:
; //	asm	nop				
	nop
; //_A89F084ED_1400:;				
_A89F084ED_1400:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_1401:;				
_A89F084ED_1401:
; //	asm	nop				
	nop
; //_A89F084ED_1402:;				
_A89F084ED_1402:
; //	asm	nop				
	nop
; //_A89F084ED_1403:;				
_A89F084ED_1403:
; //	asm	nop				
	nop
; //_A89F084ED_1404:;				
_A89F084ED_1404:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_1405:;				
_A89F084ED_1405:
; //	asm	nop				
	nop
; //_A89F084ED_1406:;				
_A89F084ED_1406:
; //	asm	nop				
	nop
; //_A89F084ED_1407:;				
_A89F084ED_1407:
; //	asm	nop				
	nop
; //_A89F084ED_1408:;				
_A89F084ED_1408:
; //	asm	nop				
	nop
; //_A89F084ED_1409:;				
_A89F084ED_1409:
; //	asm	nop				
	nop
; //_A89F084ED_1410:;				
_A89F084ED_1410:
; //	asm	nop				
	nop
; //_A89F084ED_1411:;				
_A89F084ED_1411:
; //	asm	nop				
	nop
; //_A89F084ED_1412:;				
_A89F084ED_1412:
; //	asm	nop				
	nop
; //_A89F084ED_1413:;				
_A89F084ED_1413:
; //	asm	nop				
	nop
; //_A89F084ED_1414:;				
_A89F084ED_1414:
; //	asm	nop				
	nop
; //_A89F084ED_1415:;				
_A89F084ED_1415:
; //	asm	nop				
	nop
; //_A89F084ED_1416:;				
_A89F084ED_1416:
; //	asm	nop				
	nop
; //_A89F084ED_1417:;				
_A89F084ED_1417:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_1418:;				
_A89F084ED_1418:
; //	asm	nop				
	nop
; //_A89F084ED_1419:;				
_A89F084ED_1419:
; //	asm	nop				
	nop
; //_A89F084ED_1420:;				
_A89F084ED_1420:
; //	asm	nop				
	nop
; //_A89F084ED_1421:;				
_A89F084ED_1421:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_1422:;				
_A89F084ED_1422:
; //	asm	nop				
	nop
; //_A89F084ED_1423:;				
_A89F084ED_1423:
; //	asm	nop				
	nop
; //_A89F084ED_1424:;				
_A89F084ED_1424:
; //	asm	nop				
	nop
; //_A89F084ED_1425:;				
_A89F084ED_1425:
; //	asm	nop				
	nop
; //_A89F084ED_1426:;				
_A89F084ED_1426:
; //	asm	nop				
	nop
; //_A89F084ED_1427:;				
_A89F084ED_1427:
; //	asm	nop				
	nop
; //_A89F084ED_1428:;				
_A89F084ED_1428:
; //	asm	nop				
	nop
; //_A89F084ED_1429:;				
_A89F084ED_1429:
; //	asm	nop				
	nop
; //_A89F084ED_1430:;				
_A89F084ED_1430:
; //	asm	nop				
	nop
; //_A89F084ED_1431:;				
_A89F084ED_1431:
; //	asm	nop				
	nop
; //_A89F084ED_1432:;				
_A89F084ED_1432:
; //	asm	nop				
	nop
; //_A89F084ED_1433:;				
_A89F084ED_1433:
; //	asm	nop				
	nop
; //_A89F084ED_1434:;				
_A89F084ED_1434:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_1435:;				
_A89F084ED_1435:
; //	asm	nop				
	nop
; //_A89F084ED_1436:;				
_A89F084ED_1436:
; //	asm	nop				
	nop
; //_A89F084ED_1437:;				
_A89F084ED_1437:
; //	asm	nop				
	nop
; //_A89F084ED_1438:;				
_A89F084ED_1438:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_1439:;				
_A89F084ED_1439:
; //	asm	nop				
	nop
; //_A89F084ED_1440:;				
_A89F084ED_1440:
; //	asm	nop				
	nop
; //_A89F084ED_1441:;				
_A89F084ED_1441:
; //	asm	nop				
	nop
; //_A89F084ED_1442:;				
_A89F084ED_1442:
; //	asm	nop				
	nop
; //_A89F084ED_1443:;				
_A89F084ED_1443:
; //	asm	nop				
	nop
; //_A89F084ED_1444:;				
_A89F084ED_1444:
; //	asm	nop				
	nop
; //_A89F084ED_1445:;				
_A89F084ED_1445:
; //	asm	nop				
	nop
; //_A89F084ED_1446:;				
_A89F084ED_1446:
; //	asm	nop				
	nop
; //_A89F084ED_1447:;				
_A89F084ED_1447:
; //	asm	nop				
	nop
; //_A89F084ED_1448:;				
_A89F084ED_1448:
; //	asm	nop				
	nop
; //_A89F084ED_1449:;				
_A89F084ED_1449:
; //	asm	nop				
	nop
; //_A89F084ED_1450:;				
_A89F084ED_1450:
; //	asm	nop				
	nop
; //_A89F084ED_1451:;				
_A89F084ED_1451:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_1452:;				
_A89F084ED_1452:
; //	asm	nop				
	nop
; //_A89F084ED_1453:;				
_A89F084ED_1453:
; //	asm	nop				
	nop
; //_A89F084ED_1454:;				
_A89F084ED_1454:
; //	asm	nop				
	nop
; //_A89F084ED_1455:;				
_A89F084ED_1455:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_1456:;				
_A89F084ED_1456:
; //	asm	nop				
	nop
; //_A89F084ED_1457:;				
_A89F084ED_1457:
; //	asm	nop				
	nop
; //_A89F084ED_1458:;				
_A89F084ED_1458:
; //	asm	nop				
	nop
; //_A89F084ED_1459:;				
_A89F084ED_1459:
; //	asm	nop				
	nop
; //_A89F084ED_1460:;				
_A89F084ED_1460:
; //	asm	nop				
	nop
; //_A89F084ED_1461:;				
_A89F084ED_1461:
; //	asm	nop				
	nop
; //_A89F084ED_1462:;				
_A89F084ED_1462:
; //	asm	nop				
	nop
; //_A89F084ED_1463:;				
_A89F084ED_1463:
; //	asm	nop				
	nop
; //_A89F084ED_1464:;				
_A89F084ED_1464:
; //	asm	nop				
	nop
; //_A89F084ED_1465:;				
_A89F084ED_1465:
; //	asm	nop				
	nop
; //_A89F084ED_1466:;				
_A89F084ED_1466:
; //	asm	nop				
	nop
; //_A89F084ED_1467:;				
_A89F084ED_1467:
; //	asm	nop				
	nop
; //_A89F084ED_1468:;				
_A89F084ED_1468:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_1469:;				
_A89F084ED_1469:
; //	asm	nop				
	nop
; //_A89F084ED_1470:;				
_A89F084ED_1470:
; //	asm	nop				
	nop
; //_A89F084ED_1471:;				
_A89F084ED_1471:
; //	asm	nop				
	nop
; //_A89F084ED_1472:;				
_A89F084ED_1472:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_1473:;				
_A89F084ED_1473:
; //	asm	nop				
	nop
; //_A89F084ED_1474:;				
_A89F084ED_1474:
; //	asm	nop				
	nop
; //_A89F084ED_1475:;				
_A89F084ED_1475:
; //	asm	nop				
	nop
; //_A89F084ED_1476:;				
_A89F084ED_1476:
; //	asm	nop				
	nop
; //_A89F084ED_1477:;				
_A89F084ED_1477:
; //	asm	nop				
	nop
; //_A89F084ED_1478:;				
_A89F084ED_1478:
; //	asm	nop				
	nop
; //_A89F084ED_1479:;				
_A89F084ED_1479:
; //	asm	nop				
	nop
; //_A89F084ED_1480:;				
_A89F084ED_1480:
; //	asm	nop				
	nop
; //_A89F084ED_1481:;				
_A89F084ED_1481:
; //	asm	nop				
	nop
; //_A89F084ED_1482:;				
_A89F084ED_1482:
; //	asm	nop				
	nop
; //_A89F084ED_1483:;				
_A89F084ED_1483:
; //	asm	nop				
	nop
; //_A89F084ED_1484:;				
_A89F084ED_1484:
; //	asm	nop				
	nop
; //_A89F084ED_1485:;				
_A89F084ED_1485:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_1486:;				
_A89F084ED_1486:
; //	asm	nop				
	nop
; //_A89F084ED_1487:;				
_A89F084ED_1487:
; //	asm	nop				
	nop
; //_A89F084ED_1488:;				
_A89F084ED_1488:
; //	asm	nop				
	nop
; //_A89F084ED_1489:;				
_A89F084ED_1489:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_1490:;				
_A89F084ED_1490:
; //	asm	nop				
	nop
; //_A89F084ED_1491:;				
_A89F084ED_1491:
; //	asm	nop				
	nop
; //_A89F084ED_1492:;				
_A89F084ED_1492:
; //	asm	nop				
	nop
; //_A89F084ED_1493:;				
_A89F084ED_1493:
; //	asm	nop				
	nop
; //_A89F084ED_1494:;				
_A89F084ED_1494:
; //	asm	nop				
	nop
; //_A89F084ED_1495:;				
_A89F084ED_1495:
; //	asm	nop				
	nop
; //_A89F084ED_1496:;				
_A89F084ED_1496:
; //	asm	nop				
	nop
; //_A89F084ED_1497:;				
_A89F084ED_1497:
; //	asm	nop				
	nop
; //_A89F084ED_1498:;				
_A89F084ED_1498:
; //	asm	nop				
	nop
; //_A89F084ED_1499:;				
_A89F084ED_1499:
; //	asm	nop				
	nop
; //_A89F084ED_1500:;				
_A89F084ED_1500:
; //	asm	nop				
	nop
; //_A89F084ED_1501:;				
_A89F084ED_1501:
; //	asm	nop				
	nop
; //_A89F084ED_1502:;				
_A89F084ED_1502:
; //	goto LD63FD439_108;			
	pch =	LD63FD439_108
	ljmp	LD63FD439_108
; //LD63FD439_113:;					
LD63FD439_113:
; //_A89F084ED_1503:;				
_A89F084ED_1503:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_1504:;				
_A89F084ED_1504:
; //	asm	nop				
	nop
; //_A89F084ED_1505:;				
_A89F084ED_1505:
; //	asm	nop				
	nop
; //_A89F084ED_1506:;				
_A89F084ED_1506:
; //	asm	nop				
	nop
; //_A89F084ED_1507:;				
_A89F084ED_1507:
; //	asm	nop				
	nop
; //_A89F084ED_1508:;				
_A89F084ED_1508:
; //	asm	nop				
	nop
; //_A89F084ED_1509:;				
_A89F084ED_1509:
; //	asm	nop				
	nop
; //_A89F084ED_1510:;				
_A89F084ED_1510:
; //	asm	nop				
	nop
; //_A89F084ED_1511:;				
_A89F084ED_1511:
; //	asm	nop				
	nop
; //_A89F084ED_1512:;				
_A89F084ED_1512:
; //	asm	nop				
	nop
; //_A89F084ED_1513:;				
_A89F084ED_1513:
; //	asm	nop				
	nop
; //_A89F084ED_1514:;				
_A89F084ED_1514:
; //	asm	nop				
	nop
; //_A89F084ED_1515:;				
_A89F084ED_1515:
; //	asm	nop				
	nop
; //_A89F084ED_1516:;				
_A89F084ED_1516:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_1517:;				
_A89F084ED_1517:
; //	asm	nop				
	nop
; //_A89F084ED_1518:;				
_A89F084ED_1518:
; //	asm	nop				
	nop
; //_A89F084ED_1519:;				
_A89F084ED_1519:
; //	asm	nop				
	nop
; //_A89F084ED_1520:;				
_A89F084ED_1520:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_1521:;				
_A89F084ED_1521:
; //	asm	nop				
	nop
; //_A89F084ED_1522:;				
_A89F084ED_1522:
; //	asm	nop				
	nop
; //_A89F084ED_1523:;				
_A89F084ED_1523:
; //	asm	nop				
	nop
; //_A89F084ED_1524:;				
_A89F084ED_1524:
; //	asm	nop				
	nop
; //_A89F084ED_1525:;				
_A89F084ED_1525:
; //	asm	nop				
	nop
; //_A89F084ED_1526:;				
_A89F084ED_1526:
; //	asm	nop				
	nop
; //_A89F084ED_1527:;				
_A89F084ED_1527:
; //	asm	nop				
	nop
; //_A89F084ED_1528:;				
_A89F084ED_1528:
; //	asm	nop				
	nop
; //_A89F084ED_1529:;				
_A89F084ED_1529:
; //	asm	nop				
	nop
; //_A89F084ED_1530:;				
_A89F084ED_1530:
; //	asm	nop				
	nop
; //_A89F084ED_1531:;				
_A89F084ED_1531:
; //	asm	nop				
	nop
; //_A89F084ED_1532:;				
_A89F084ED_1532:
; //	asm	nop				
	nop
; //_A89F084ED_1533:;				
_A89F084ED_1533:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_1534:;				
_A89F084ED_1534:
; //	asm	nop				
	nop
; //_A89F084ED_1535:;				
_A89F084ED_1535:
; //	asm	nop				
	nop
; //_A89F084ED_1536:;				
_A89F084ED_1536:
; //	asm	nop				
	nop
; //_A89F084ED_1537:;				
_A89F084ED_1537:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_1538:;				
_A89F084ED_1538:
; //	asm	nop				
	nop
; //_A89F084ED_1539:;				
_A89F084ED_1539:
; //	asm	nop				
	nop
; //_A89F084ED_1540:;				
_A89F084ED_1540:
; //	asm	nop				
	nop
; //_A89F084ED_1541:;				
_A89F084ED_1541:
; //	asm	nop				
	nop
; //_A89F084ED_1542:;				
_A89F084ED_1542:
; //	asm	nop				
	nop
; //_A89F084ED_1543:;				
_A89F084ED_1543:
; //	asm	nop				
	nop
; //_A89F084ED_1544:;				
_A89F084ED_1544:
; //	asm	nop				
	nop
; //_A89F084ED_1545:;				
_A89F084ED_1545:
; //	asm	nop				
	nop
; //_A89F084ED_1546:;				
_A89F084ED_1546:
; //	asm	nop				
	nop
; //_A89F084ED_1547:;				
_A89F084ED_1547:
; //	asm	nop				
	nop
; //_A89F084ED_1548:;				
_A89F084ED_1548:
; //	asm	nop				
	nop
; //_A89F084ED_1549:;				
_A89F084ED_1549:
; //	asm	nop				
	nop
; //_A89F084ED_1550:;				
_A89F084ED_1550:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_1551:;				
_A89F084ED_1551:
; //	asm	nop				
	nop
; //_A89F084ED_1552:;				
_A89F084ED_1552:
; //	asm	nop				
	nop
; //_A89F084ED_1553:;				
_A89F084ED_1553:
; //	asm	nop				
	nop
; //_A89F084ED_1554:;				
_A89F084ED_1554:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_1555:;				
_A89F084ED_1555:
; //	asm	nop				
	nop
; //_A89F084ED_1556:;				
_A89F084ED_1556:
; //	asm	nop				
	nop
; //_A89F084ED_1557:;				
_A89F084ED_1557:
; //	asm	nop				
	nop
; //_A89F084ED_1558:;				
_A89F084ED_1558:
; //	asm	nop				
	nop
; //_A89F084ED_1559:;				
_A89F084ED_1559:
; //	asm	nop				
	nop
; //_A89F084ED_1560:;				
_A89F084ED_1560:
; //	asm	nop				
	nop
; //_A89F084ED_1561:;				
_A89F084ED_1561:
; //	asm	nop				
	nop
; //_A89F084ED_1562:;				
_A89F084ED_1562:
; //	asm	nop				
	nop
; //_A89F084ED_1563:;				
_A89F084ED_1563:
; //	asm	nop				
	nop
; //_A89F084ED_1564:;				
_A89F084ED_1564:
; //	asm	nop				
	nop
; //_A89F084ED_1565:;				
_A89F084ED_1565:
; //	asm	nop				
	nop
; //_A89F084ED_1566:;				
_A89F084ED_1566:
; //	asm	nop				
	nop
; //_A89F084ED_1567:;				
_A89F084ED_1567:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_1568:;				
_A89F084ED_1568:
; //	asm	nop				
	nop
; //_A89F084ED_1569:;				
_A89F084ED_1569:
; //	asm	nop				
	nop
; //_A89F084ED_1570:;				
_A89F084ED_1570:
; //	asm	nop				
	nop
; //_A89F084ED_1571:;				
_A89F084ED_1571:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_1572:;				
_A89F084ED_1572:
; //	asm	nop				
	nop
; //_A89F084ED_1573:;				
_A89F084ED_1573:
; //	asm	nop				
	nop
; //_A89F084ED_1574:;				
_A89F084ED_1574:
; //	asm	nop				
	nop
; //_A89F084ED_1575:;				
_A89F084ED_1575:
; //	asm	nop				
	nop
; //_A89F084ED_1576:;				
_A89F084ED_1576:
; //	asm	nop				
	nop
; //_A89F084ED_1577:;				
_A89F084ED_1577:
; //	asm	nop				
	nop
; //_A89F084ED_1578:;				
_A89F084ED_1578:
; //	asm	nop				
	nop
; //_A89F084ED_1579:;				
_A89F084ED_1579:
; //	asm	nop				
	nop
; //_A89F084ED_1580:;				
_A89F084ED_1580:
; //	asm	nop				
	nop
; //_A89F084ED_1581:;				
_A89F084ED_1581:
; //	asm	nop				
	nop
; //_A89F084ED_1582:;				
_A89F084ED_1582:
; //	asm	nop				
	nop
; //_A89F084ED_1583:;				
_A89F084ED_1583:
; //	asm	nop				
	nop
; //_A89F084ED_1584:;				
_A89F084ED_1584:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_1585:;				
_A89F084ED_1585:
; //	asm	nop				
	nop
; //_A89F084ED_1586:;				
_A89F084ED_1586:
; //	asm	nop				
	nop
; //_A89F084ED_1587:;				
_A89F084ED_1587:
; //	asm	nop				
	nop
; //_A89F084ED_1588:;				
_A89F084ED_1588:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_1589:;				
_A89F084ED_1589:
; //	asm	nop				
	nop
; //_A89F084ED_1590:;				
_A89F084ED_1590:
; //	asm	nop				
	nop
; //_A89F084ED_1591:;				
_A89F084ED_1591:
; //	asm	nop				
	nop
; //_A89F084ED_1592:;				
_A89F084ED_1592:
; //	asm	nop				
	nop
; //_A89F084ED_1593:;				
_A89F084ED_1593:
; //	asm	nop				
	nop
; //_A89F084ED_1594:;				
_A89F084ED_1594:
; //	asm	nop				
	nop
; //_A89F084ED_1595:;				
_A89F084ED_1595:
; //	asm	nop				
	nop
; //_A89F084ED_1596:;				
_A89F084ED_1596:
; //	asm	nop				
	nop
; //_A89F084ED_1597:;				
_A89F084ED_1597:
; //	asm	nop				
	nop
; //_A89F084ED_1598:;				
_A89F084ED_1598:
; //	asm	nop				
	nop
; //_A89F084ED_1599:;				
_A89F084ED_1599:
; //	asm	nop				
	nop
; //_A89F084ED_1600:;				
_A89F084ED_1600:
; //	asm	nop				
	nop
; //_A89F084ED_1601:;				
_A89F084ED_1601:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_1602:;				
_A89F084ED_1602:
; //	asm	nop				
	nop
; //_A89F084ED_1603:;				
_A89F084ED_1603:
; //	asm	nop				
	nop
; //_A89F084ED_1604:;				
_A89F084ED_1604:
; //	asm	nop				
	nop
; //_A89F084ED_1605:;				
_A89F084ED_1605:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_1606:;				
_A89F084ED_1606:
; //	asm	nop				
	nop
; //_A89F084ED_1607:;				
_A89F084ED_1607:
; //	asm	nop				
	nop
; //_A89F084ED_1608:;				
_A89F084ED_1608:
; //	asm	nop				
	nop
; //_A89F084ED_1609:;				
_A89F084ED_1609:
; //	asm	nop				
	nop
; //_A89F084ED_1610:;				
_A89F084ED_1610:
; //	asm	nop				
	nop
; //_A89F084ED_1611:;				
_A89F084ED_1611:
; //	asm	nop				
	nop
; //_A89F084ED_1612:;				
_A89F084ED_1612:
; //	asm	nop				
	nop
; //_A89F084ED_1613:;				
_A89F084ED_1613:
; //	asm	nop				
	nop
; //_A89F084ED_1614:;				
_A89F084ED_1614:
; //	asm	nop				
	nop
; //_A89F084ED_1615:;				
_A89F084ED_1615:
; //	asm	nop				
	nop
; //_A89F084ED_1616:;				
_A89F084ED_1616:
; //	asm	nop				
	nop
; //_A89F084ED_1617:;				
_A89F084ED_1617:
; //	asm	nop				
	nop
; //_A89F084ED_1618:;				
_A89F084ED_1618:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_1619:;				
_A89F084ED_1619:
; //	asm	nop				
	nop
; //_A89F084ED_1620:;				
_A89F084ED_1620:
; //	asm	nop				
	nop
; //_A89F084ED_1621:;				
_A89F084ED_1621:
; //	asm	nop				
	nop
; //_A89F084ED_1622:;				
_A89F084ED_1622:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_1623:;				
_A89F084ED_1623:
; //	asm	nop				
	nop
; //_A89F084ED_1624:;				
_A89F084ED_1624:
; //	asm	nop				
	nop
; //_A89F084ED_1625:;				
_A89F084ED_1625:
; //	asm	nop				
	nop
; //_A89F084ED_1626:;				
_A89F084ED_1626:
; //	asm	nop				
	nop
; //_A89F084ED_1627:;				
_A89F084ED_1627:
; //	asm	nop				
	nop
; //_A89F084ED_1628:;				
_A89F084ED_1628:
; //	asm	nop				
	nop
; //_A89F084ED_1629:;				
_A89F084ED_1629:
; //	asm	nop				
	nop
; //_A89F084ED_1630:;				
_A89F084ED_1630:
; //	asm	nop				
	nop
; //_A89F084ED_1631:;				
_A89F084ED_1631:
; //	asm	nop				
	nop
; //_A89F084ED_1632:;				
_A89F084ED_1632:
; //	asm	nop				
	nop
; //_A89F084ED_1633:;				
_A89F084ED_1633:
; //	asm	nop				
	nop
; //_A89F084ED_1634:;				
_A89F084ED_1634:
; //	asm	nop				
	nop
; //_A89F084ED_1635:;				
_A89F084ED_1635:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_1636:;				
_A89F084ED_1636:
; //	asm	nop				
	nop
; //_A89F084ED_1637:;				
_A89F084ED_1637:
; //	asm	nop				
	nop
; //_A89F084ED_1638:;				
_A89F084ED_1638:
; //	asm	nop				
	nop
; //_A89F084ED_1639:;				
_A89F084ED_1639:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_1640:;				
_A89F084ED_1640:
; //	asm	nop				
	nop
; //_A89F084ED_1641:;				
_A89F084ED_1641:
; //	asm	nop				
	nop
; //_A89F084ED_1642:;				
_A89F084ED_1642:
; //	asm	nop				
	nop
; //_A89F084ED_1643:;				
_A89F084ED_1643:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_1644:;				
_A89F084ED_1644:
; //	asm	nop				
	nop
; //_A89F084ED_1645:;				
_A89F084ED_1645:
; //	asm	nop				
	nop
; //_A89F084ED_1646:;				
_A89F084ED_1646:
; //	asm	nop				
	nop
; //_A89F084ED_1647:;				
_A89F084ED_1647:
; //	asm	nop				
	nop
; //_A89F084ED_1648:;				
_A89F084ED_1648:
; //	asm	nop				
	nop
; //_A89F084ED_1649:;				
_A89F084ED_1649:
; //	asm	nop				
	nop
; //_A89F084ED_1650:;				
_A89F084ED_1650:
; //	asm	nop				
	nop
; //_A89F084ED_1651:;				
_A89F084ED_1651:
; //	asm	nop				
	nop
; //_A89F084ED_1652:;				
_A89F084ED_1652:
; //	asm	nop				
	nop
; //_A89F084ED_1653:;				
_A89F084ED_1653:
; //	asm	nop				
	nop
; //_A89F084ED_1654:;				
_A89F084ED_1654:
; //	asm	nop				
	nop
; //_A89F084ED_1655:;				
_A89F084ED_1655:
; //	asm	nop				
	nop
; //_A89F084ED_1656:;				
_A89F084ED_1656:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_1657:;				
_A89F084ED_1657:
; //	asm	nop				
	nop
; //_A89F084ED_1658:;				
_A89F084ED_1658:
; //	asm	nop				
	nop
; //_A89F084ED_1659:;				
_A89F084ED_1659:
; //	asm	nop				
	nop
; //_A89F084ED_1660:;				
_A89F084ED_1660:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_1661:;				
_A89F084ED_1661:
; //	asm	nop				
	nop
; //_A89F084ED_1662:;				
_A89F084ED_1662:
; //	asm	nop				
	nop
; //_A89F084ED_1663:;				
_A89F084ED_1663:
; //	asm	nop				
	nop
; //_A89F084ED_1664:;				
_A89F084ED_1664:
; //	asm	nop				
	nop
; //_A89F084ED_1665:;				
_A89F084ED_1665:
; //	asm	nop				
	nop
; //_A89F084ED_1666:;				
_A89F084ED_1666:
; //	asm	nop				
	nop
; //_A89F084ED_1667:;				
_A89F084ED_1667:
; //	asm	nop				
	nop
; //_A89F084ED_1668:;				
_A89F084ED_1668:
; //	asm	nop				
	nop
; //_A89F084ED_1669:;				
_A89F084ED_1669:
; //	asm	nop				
	nop
; //_A89F084ED_1670:;				
_A89F084ED_1670:
; //	asm	nop				
	nop
; //_A89F084ED_1671:;				
_A89F084ED_1671:
; //	asm	nop				
	nop
; //_A89F084ED_1672:;				
_A89F084ED_1672:
; //	asm	nop				
	nop
; //_A89F084ED_1673:;				
_A89F084ED_1673:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_1674:;				
_A89F084ED_1674:
; //	asm	nop				
	nop
; //_A89F084ED_1675:;				
_A89F084ED_1675:
; //	asm	nop				
	nop
; //_A89F084ED_1676:;				
_A89F084ED_1676:
; //	asm	nop				
	nop
; //_A89F084ED_1677:;				
_A89F084ED_1677:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_1678:;				
_A89F084ED_1678:
; //	asm	nop				
	nop
; //_A89F084ED_1679:;				
_A89F084ED_1679:
; //	asm	nop				
	nop
; //_A89F084ED_1680:;				
_A89F084ED_1680:
; //	asm	nop				
	nop
; //_A89F084ED_1681:;				
_A89F084ED_1681:
; //	asm	nop				
	nop
; //_A89F084ED_1682:;				
_A89F084ED_1682:
; //	asm	nop				
	nop
; //_A89F084ED_1683:;				
_A89F084ED_1683:
; //	asm	nop				
	nop
; //_A89F084ED_1684:;				
_A89F084ED_1684:
; //	asm	nop				
	nop
; //_A89F084ED_1685:;				
_A89F084ED_1685:
; //	asm	nop				
	nop
; //_A89F084ED_1686:;				
_A89F084ED_1686:
; //	asm	nop				
	nop
; //_A89F084ED_1687:;				
_A89F084ED_1687:
; //	asm	nop				
	nop
; //_A89F084ED_1688:;				
_A89F084ED_1688:
; //	asm	nop				
	nop
; //_A89F084ED_1689:;				
_A89F084ED_1689:
; //	asm	nop				
	nop
; //_A89F084ED_1690:;				
_A89F084ED_1690:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_1691:;				
_A89F084ED_1691:
; //	asm	nop				
	nop
; //_A89F084ED_1692:;				
_A89F084ED_1692:
; //	asm	nop				
	nop
; //_A89F084ED_1693:;				
_A89F084ED_1693:
; //	asm	nop				
	nop
; //_A89F084ED_1694:;				
_A89F084ED_1694:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_1695:;				
_A89F084ED_1695:
; //	asm	nop				
	nop
; //_A89F084ED_1696:;				
_A89F084ED_1696:
; //	asm	nop				
	nop
; //_A89F084ED_1697:;				
_A89F084ED_1697:
; //	asm	nop				
	nop
; //_A89F084ED_1698:;				
_A89F084ED_1698:
; //	asm	nop				
	nop
; //_A89F084ED_1699:;				
_A89F084ED_1699:
; //	asm	nop				
	nop
; //_A89F084ED_1700:;				
_A89F084ED_1700:
; //	asm	nop				
	nop
; //_A89F084ED_1701:;				
_A89F084ED_1701:
; //	asm	nop				
	nop
; //_A89F084ED_1702:;				
_A89F084ED_1702:
; //	asm	nop				
	nop
; //_A89F084ED_1703:;				
_A89F084ED_1703:
; //	asm	nop				
	nop
; //_A89F084ED_1704:;				
_A89F084ED_1704:
; //	asm	nop				
	nop
; //_A89F084ED_1705:;				
_A89F084ED_1705:
; //	asm	nop				
	nop
; //_A89F084ED_1706:;				
_A89F084ED_1706:
; //	asm	nop				
	nop
; //_A89F084ED_1707:;				
_A89F084ED_1707:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_1708:;				
_A89F084ED_1708:
; //	asm	nop				
	nop
; //_A89F084ED_1709:;				
_A89F084ED_1709:
; //	asm	nop				
	nop
; //_A89F084ED_1710:;				
_A89F084ED_1710:
; //	asm	nop				
	nop
; //_A89F084ED_1711:;				
_A89F084ED_1711:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_1712:;				
_A89F084ED_1712:
; //	asm	nop				
	nop
; //_A89F084ED_1713:;				
_A89F084ED_1713:
; //	asm	nop				
	nop
; //_A89F084ED_1714:;				
_A89F084ED_1714:
; //	asm	nop				
	nop
; //_A89F084ED_1715:;				
_A89F084ED_1715:
; //	asm	nop				
	nop
; //_A89F084ED_1716:;				
_A89F084ED_1716:
; //	asm	nop				
	nop
; //_A89F084ED_1717:;				
_A89F084ED_1717:
; //	asm	nop				
	nop
; //_A89F084ED_1718:;				
_A89F084ED_1718:
; //	asm	nop				
	nop
; //_A89F084ED_1719:;				
_A89F084ED_1719:
; //	asm	nop				
	nop
; //_A89F084ED_1720:;				
_A89F084ED_1720:
; //	asm	nop				
	nop
; //_A89F084ED_1721:;				
_A89F084ED_1721:
; //	asm	nop				
	nop
; //_A89F084ED_1722:;				
_A89F084ED_1722:
; //	asm	nop				
	nop
; //_A89F084ED_1723:;				
_A89F084ED_1723:
; //	asm	nop				
	nop
; //_A89F084ED_1724:;				
_A89F084ED_1724:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_1725:;				
_A89F084ED_1725:
; //	asm	nop				
	nop
; //_A89F084ED_1726:;				
_A89F084ED_1726:
; //	asm	nop				
	nop
; //_A89F084ED_1727:;				
_A89F084ED_1727:
; //	asm	nop				
	nop
; //_A89F084ED_1728:;				
_A89F084ED_1728:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_1729:;				
_A89F084ED_1729:
; //	asm	nop				
	nop
; //_A89F084ED_1730:;				
_A89F084ED_1730:
; //	asm	nop				
	nop
; //_A89F084ED_1731:;				
_A89F084ED_1731:
; //	asm	nop				
	nop
; //_A89F084ED_1732:;				
_A89F084ED_1732:
; //	asm	nop				
	nop
; //_A89F084ED_1733:;				
_A89F084ED_1733:
; //	asm	nop				
	nop
; //_A89F084ED_1734:;				
_A89F084ED_1734:
; //	asm	nop				
	nop
; //_A89F084ED_1735:;				
_A89F084ED_1735:
; //	asm	nop				
	nop
; //_A89F084ED_1736:;				
_A89F084ED_1736:
; //	asm	nop				
	nop
; //_A89F084ED_1737:;				
_A89F084ED_1737:
; //	asm	nop				
	nop
; //_A89F084ED_1738:;				
_A89F084ED_1738:
; //	asm	nop				
	nop
; //_A89F084ED_1739:;				
_A89F084ED_1739:
; //	asm	nop				
	nop
; //_A89F084ED_1740:;				
_A89F084ED_1740:
; //	asm	nop				
	nop
; //_A89F084ED_1741:;				
_A89F084ED_1741:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_1742:;				
_A89F084ED_1742:
; //	asm	nop				
	nop
; //_A89F084ED_1743:;				
_A89F084ED_1743:
; //	asm	nop				
	nop
; //_A89F084ED_1744:;				
_A89F084ED_1744:
; //	asm	nop				
	nop
; //_A89F084ED_1745:;				
_A89F084ED_1745:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_1746:;				
_A89F084ED_1746:
; //	asm	nop				
	nop
; //_A89F084ED_1747:;				
_A89F084ED_1747:
; //	asm	nop				
	nop
; //_A89F084ED_1748:;				
_A89F084ED_1748:
; //	asm	nop				
	nop
; //_A89F084ED_1749:;				
_A89F084ED_1749:
; //	asm	nop				
	nop
; //_A89F084ED_1750:;				
_A89F084ED_1750:
; //	asm	nop				
	nop
; //_A89F084ED_1751:;				
_A89F084ED_1751:
; //	asm	nop				
	nop
; //_A89F084ED_1752:;				
_A89F084ED_1752:
; //	asm	nop				
	nop
; //_A89F084ED_1753:;				
_A89F084ED_1753:
; //	asm	nop				
	nop
; //_A89F084ED_1754:;				
_A89F084ED_1754:
; //	asm	nop				
	nop
; //_A89F084ED_1755:;				
_A89F084ED_1755:
; //	asm	nop				
	nop
; //_A89F084ED_1756:;				
_A89F084ED_1756:
; //	asm	nop				
	nop
; //_A89F084ED_1757:;				
_A89F084ED_1757:
; //	asm	nop				
	nop
; //_A89F084ED_1758:;				
_A89F084ED_1758:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_1759:;				
_A89F084ED_1759:
; //	asm	nop				
	nop
; //_A89F084ED_1760:;				
_A89F084ED_1760:
; //	asm	nop				
	nop
; //_A89F084ED_1761:;				
_A89F084ED_1761:
; //	asm	nop				
	nop
; //_A89F084ED_1762:;				
_A89F084ED_1762:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_1763:;				
_A89F084ED_1763:
; //	asm	nop				
	nop
; //_A89F084ED_1764:;				
_A89F084ED_1764:
; //	asm	nop				
	nop
; //_A89F084ED_1765:;				
_A89F084ED_1765:
; //	asm	nop				
	nop
; //_A89F084ED_1766:;				
_A89F084ED_1766:
; //	asm	nop				
	nop
; //_A89F084ED_1767:;				
_A89F084ED_1767:
; //	asm	nop				
	nop
; //_A89F084ED_1768:;				
_A89F084ED_1768:
; //	asm	nop				
	nop
; //_A89F084ED_1769:;				
_A89F084ED_1769:
; //	asm	nop				
	nop
; //_A89F084ED_1770:;				
_A89F084ED_1770:
; //	asm	nop				
	nop
; //_A89F084ED_1771:;				
_A89F084ED_1771:
; //	asm	nop				
	nop
; //_A89F084ED_1772:;				
_A89F084ED_1772:
; //	asm	nop				
	nop
; //_A89F084ED_1773:;				
_A89F084ED_1773:
; //	asm	nop				
	nop
; //_A89F084ED_1774:;				
_A89F084ED_1774:
; //	asm	nop				
	nop
; //_A89F084ED_1775:;				
_A89F084ED_1775:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_1776:;				
_A89F084ED_1776:
; //	asm	nop				
	nop
; //_A89F084ED_1777:;				
_A89F084ED_1777:
; //	asm	nop				
	nop
; //_A89F084ED_1778:;				
_A89F084ED_1778:
; //	asm	nop				
	nop
; //_A89F084ED_1779:;				
_A89F084ED_1779:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_1780:;				
_A89F084ED_1780:
; //	asm	nop				
	nop
; //_A89F084ED_1781:;				
_A89F084ED_1781:
; //	asm	nop				
	nop
; //_A89F084ED_1782:;				
_A89F084ED_1782:
; //	asm	nop				
	nop
; //_A89F084ED_1783:;				
_A89F084ED_1783:
; //	asm	nop				
	nop
; //_A89F084ED_1784:;				
_A89F084ED_1784:
; //	asm	nop				
	nop
; //_A89F084ED_1785:;				
_A89F084ED_1785:
; //	asm	nop				
	nop
; //_A89F084ED_1786:;				
_A89F084ED_1786:
; //	asm	nop				
	nop
; //_A89F084ED_1787:;				
_A89F084ED_1787:
; //	asm	nop				
	nop
; //_A89F084ED_1788:;				
_A89F084ED_1788:
; //	asm	nop				
	nop
; //_A89F084ED_1789:;				
_A89F084ED_1789:
; //	asm	nop				
	nop
; //_A89F084ED_1790:;				
_A89F084ED_1790:
; //	asm	nop				
	nop
; //_A89F084ED_1791:;				
_A89F084ED_1791:
; //	asm	nop				
	nop
; //_A89F084ED_1792:;				
_A89F084ED_1792:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_1793:;				
_A89F084ED_1793:
; //	asm	nop				
	nop
; //_A89F084ED_1794:;				
_A89F084ED_1794:
; //	asm	nop				
	nop
; //_A89F084ED_1795:;				
_A89F084ED_1795:
; //	asm	nop				
	nop
; //_A89F084ED_1796:;				
_A89F084ED_1796:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_1797:;				
_A89F084ED_1797:
; //	asm	nop				
	nop
; //_A89F084ED_1798:;				
_A89F084ED_1798:
; //	asm	nop				
	nop
; //_A89F084ED_1799:;				
_A89F084ED_1799:
; //	asm	nop				
	nop
; //_A89F084ED_1800:;				
_A89F084ED_1800:
; //	asm	nop				
	nop
; //_A89F084ED_1801:;				
_A89F084ED_1801:
; //	asm	nop				
	nop
; //_A89F084ED_1802:;				
_A89F084ED_1802:
; //	asm	nop				
	nop
; //_A89F084ED_1803:;				
_A89F084ED_1803:
; //	asm	nop				
	nop
; //_A89F084ED_1804:;				
_A89F084ED_1804:
; //	asm	nop				
	nop
; //_A89F084ED_1805:;				
_A89F084ED_1805:
; //	asm	nop				
	nop
; //_A89F084ED_1806:;				
_A89F084ED_1806:
; //	asm	nop				
	nop
; //_A89F084ED_1807:;				
_A89F084ED_1807:
; //	asm	nop				
	nop
; //_A89F084ED_1808:;				
_A89F084ED_1808:
; //	asm	nop				
	nop
; //_A89F084ED_1809:;				
_A89F084ED_1809:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_1810:;				
_A89F084ED_1810:
; //	asm	nop				
	nop
; //_A89F084ED_1811:;				
_A89F084ED_1811:
; //	asm	nop				
	nop
; //_A89F084ED_1812:;				
_A89F084ED_1812:
; //	asm	nop				
	nop
; //_A89F084ED_1813:;				
_A89F084ED_1813:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_1814:;				
_A89F084ED_1814:
; //	asm	nop				
	nop
; //_A89F084ED_1815:;				
_A89F084ED_1815:
; //	asm	nop				
	nop
; //_A89F084ED_1816:;				
_A89F084ED_1816:
; //	asm	nop				
	nop
; //_A89F084ED_1817:;				
_A89F084ED_1817:
; //	asm	nop				
	nop
; //_A89F084ED_1818:;				
_A89F084ED_1818:
; //	asm	nop				
	nop
; //_A89F084ED_1819:;				
_A89F084ED_1819:
; //	asm	nop				
	nop
; //_A89F084ED_1820:;				
_A89F084ED_1820:
; //	asm	nop				
	nop
; //_A89F084ED_1821:;				
_A89F084ED_1821:
; //	asm	nop				
	nop
; //_A89F084ED_1822:;				
_A89F084ED_1822:
; //	asm	nop				
	nop
; //_A89F084ED_1823:;				
_A89F084ED_1823:
; //	asm	nop				
	nop
; //_A89F084ED_1824:;				
_A89F084ED_1824:
; //	asm	nop				
	nop
; //_A89F084ED_1825:;				
_A89F084ED_1825:
; //	asm	nop				
	nop
; //_A89F084ED_1826:;				
_A89F084ED_1826:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_1827:;				
_A89F084ED_1827:
; //	asm	nop				
	nop
; //_A89F084ED_1828:;				
_A89F084ED_1828:
; //	asm	nop				
	nop
; //_A89F084ED_1829:;				
_A89F084ED_1829:
; //	asm	nop				
	nop
; //_A89F084ED_1830:;				
_A89F084ED_1830:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_1831:;				
_A89F084ED_1831:
; //	asm	nop				
	nop
; //_A89F084ED_1832:;				
_A89F084ED_1832:
; //	asm	nop				
	nop
; //_A89F084ED_1833:;				
_A89F084ED_1833:
; //	asm	nop				
	nop
; //_A89F084ED_1834:;				
_A89F084ED_1834:
; //	asm	nop				
	nop
; //_A89F084ED_1835:;				
_A89F084ED_1835:
; //	asm	nop				
	nop
; //_A89F084ED_1836:;				
_A89F084ED_1836:
; //	asm	nop				
	nop
; //_A89F084ED_1837:;				
_A89F084ED_1837:
; //	asm	nop				
	nop
; //_A89F084ED_1838:;				
_A89F084ED_1838:
; //	asm	nop				
	nop
; //_A89F084ED_1839:;				
_A89F084ED_1839:
; //	asm	nop				
	nop
; //_A89F084ED_1840:;				
_A89F084ED_1840:
; //	asm	nop				
	nop
; //_A89F084ED_1841:;				
_A89F084ED_1841:
; //	asm	nop				
	nop
; //_A89F084ED_1842:;				
_A89F084ED_1842:
; //	asm	nop				
	nop
; //_A89F084ED_1843:;				
_A89F084ED_1843:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_1844:;				
_A89F084ED_1844:
; //	asm	nop				
	nop
; //_A89F084ED_1845:;				
_A89F084ED_1845:
; //	asm	nop				
	nop
; //_A89F084ED_1846:;				
_A89F084ED_1846:
; //	asm	nop				
	nop
; //_A89F084ED_1847:;				
_A89F084ED_1847:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_1848:;				
_A89F084ED_1848:
; //	asm	nop				
	nop
; //_A89F084ED_1849:;				
_A89F084ED_1849:
; //	asm	nop				
	nop
; //_A89F084ED_1850:;				
_A89F084ED_1850:
; //	asm	nop				
	nop
; //_A89F084ED_1851:;				
_A89F084ED_1851:
; //	asm	nop				
	nop
; //_A89F084ED_1852:;				
_A89F084ED_1852:
; //	asm	nop				
	nop
; //_A89F084ED_1853:;				
_A89F084ED_1853:
; //	asm	nop				
	nop
; //_A89F084ED_1854:;				
_A89F084ED_1854:
; //	asm	nop				
	nop
; //_A89F084ED_1855:;				
_A89F084ED_1855:
; //	asm	nop				
	nop
; //_A89F084ED_1856:;				
_A89F084ED_1856:
; //	asm	nop				
	nop
; //_A89F084ED_1857:;				
_A89F084ED_1857:
; //	asm	nop				
	nop
; //_A89F084ED_1858:;				
_A89F084ED_1858:
; //	asm	nop				
	nop
; //_A89F084ED_1859:;				
_A89F084ED_1859:
; //	asm	nop				
	nop
; //_A89F084ED_1860:;				
_A89F084ED_1860:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_1861:;				
_A89F084ED_1861:
; //	asm	nop				
	nop
; //_A89F084ED_1862:;				
_A89F084ED_1862:
; //	asm	nop				
	nop
; //_A89F084ED_1863:;				
_A89F084ED_1863:
; //	asm	nop				
	nop
; //_A89F084ED_1864:;				
_A89F084ED_1864:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_1865:;				
_A89F084ED_1865:
; //	asm	nop				
	nop
; //_A89F084ED_1866:;				
_A89F084ED_1866:
; //	asm	nop				
	nop
; //_A89F084ED_1867:;				
_A89F084ED_1867:
; //	asm	nop				
	nop
; //_A89F084ED_1868:;				
_A89F084ED_1868:
; //	asm	nop				
	nop
; //_A89F084ED_1869:;				
_A89F084ED_1869:
; //	asm	nop				
	nop
; //_A89F084ED_1870:;				
_A89F084ED_1870:
; //	asm	nop				
	nop
; //_A89F084ED_1871:;				
_A89F084ED_1871:
; //	asm	nop				
	nop
; //_A89F084ED_1872:;				
_A89F084ED_1872:
; //	asm	nop				
	nop
; //_A89F084ED_1873:;				
_A89F084ED_1873:
; //	asm	nop				
	nop
; //_A89F084ED_1874:;				
_A89F084ED_1874:
; //	asm	nop				
	nop
; //_A89F084ED_1875:;				
_A89F084ED_1875:
; //	asm	nop				
	nop
; //_A89F084ED_1876:;				
_A89F084ED_1876:
; //	asm	nop				
	nop
; //_A89F084ED_1877:;				
_A89F084ED_1877:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_1878:;				
_A89F084ED_1878:
; //	asm	nop				
	nop
; //_A89F084ED_1879:;				
_A89F084ED_1879:
; //	asm	nop				
	nop
; //_A89F084ED_1880:;				
_A89F084ED_1880:
; //	asm	nop				
	nop
; //_A89F084ED_1881:;				
_A89F084ED_1881:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_1882:;				
_A89F084ED_1882:
; //	asm	nop				
	nop
; //_A89F084ED_1883:;				
_A89F084ED_1883:
; //	asm	nop				
	nop
; //_A89F084ED_1884:;				
_A89F084ED_1884:
; //	asm	nop				
	nop
; //_A89F084ED_1885:;				
_A89F084ED_1885:
; //	asm	nop				
	nop
; //_A89F084ED_1886:;				
_A89F084ED_1886:
; //	asm	nop				
	nop
; //_A89F084ED_1887:;				
_A89F084ED_1887:
; //	asm	nop				
	nop
; //_A89F084ED_1888:;				
_A89F084ED_1888:
; //	asm	nop				
	nop
; //_A89F084ED_1889:;				
_A89F084ED_1889:
; //	asm	nop				
	nop
; //_A89F084ED_1890:;				
_A89F084ED_1890:
; //	asm	nop				
	nop
; //_A89F084ED_1891:;				
_A89F084ED_1891:
; //	asm	nop				
	nop
; //_A89F084ED_1892:;				
_A89F084ED_1892:
; //	asm	nop				
	nop
; //_A89F084ED_1893:;				
_A89F084ED_1893:
; //	asm	nop				
	nop
; //_A89F084ED_1894:;				
_A89F084ED_1894:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_1895:;				
_A89F084ED_1895:
; //	asm	nop				
	nop
; //_A89F084ED_1896:;				
_A89F084ED_1896:
; //	asm	nop				
	nop
; //_A89F084ED_1897:;				
_A89F084ED_1897:
; //	asm	nop				
	nop
; //_A89F084ED_1898:;				
_A89F084ED_1898:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_1899:;				
_A89F084ED_1899:
; //	asm	nop				
	nop
; //_A89F084ED_1900:;				
_A89F084ED_1900:
; //	asm	nop				
	nop
; //_A89F084ED_1901:;				
_A89F084ED_1901:
; //	asm	nop				
	nop
; //_A89F084ED_1902:;				
_A89F084ED_1902:
; //	asm	nop				
	nop
; //_A89F084ED_1903:;				
_A89F084ED_1903:
; //	asm	nop				
	nop
; //_A89F084ED_1904:;				
_A89F084ED_1904:
; //	asm	nop				
	nop
; //_A89F084ED_1905:;				
_A89F084ED_1905:
; //	asm	nop				
	nop
; //_A89F084ED_1906:;				
_A89F084ED_1906:
; //	asm	nop				
	nop
; //_A89F084ED_1907:;				
_A89F084ED_1907:
; //	asm	nop				
	nop
; //_A89F084ED_1908:;				
_A89F084ED_1908:
; //	asm	nop				
	nop
; //_A89F084ED_1909:;				
_A89F084ED_1909:
; //	asm	nop				
	nop
; //_A89F084ED_1910:;				
_A89F084ED_1910:
; //	asm	nop				
	nop
; //_A89F084ED_1911:;				
_A89F084ED_1911:
; //	goto LD63FD439_108;			
	pch =	LD63FD439_108
	ljmp	LD63FD439_108
; //LD63FD439_114:;					
LD63FD439_114:
; //_A89F084ED_1912:;				
_A89F084ED_1912:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_1913:;				
_A89F084ED_1913:
; //	asm	nop				
	nop
; //_A89F084ED_1914:;				
_A89F084ED_1914:
; //	asm	nop				
	nop
; //_A89F084ED_1915:;				
_A89F084ED_1915:
; //	asm	nop				
	nop
; //_A89F084ED_1916:;				
_A89F084ED_1916:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_1917:;				
_A89F084ED_1917:
; //	asm	nop				
	nop
; //_A89F084ED_1918:;				
_A89F084ED_1918:
; //	asm	nop				
	nop
; //_A89F084ED_1919:;				
_A89F084ED_1919:
; //	asm	nop				
	nop
; //_A89F084ED_1920:;				
_A89F084ED_1920:
; //	asm	nop				
	nop
; //_A89F084ED_1921:;				
_A89F084ED_1921:
; //	asm	nop				
	nop
; //_A89F084ED_1922:;				
_A89F084ED_1922:
; //	asm	nop				
	nop
; //_A89F084ED_1923:;				
_A89F084ED_1923:
; //	asm	nop				
	nop
; //_A89F084ED_1924:;				
_A89F084ED_1924:
; //	asm	nop				
	nop
; //_A89F084ED_1925:;				
_A89F084ED_1925:
; //	asm	nop				
	nop
; //_A89F084ED_1926:;				
_A89F084ED_1926:
; //	asm	nop				
	nop
; //_A89F084ED_1927:;				
_A89F084ED_1927:
; //	asm	nop				
	nop
; //_A89F084ED_1928:;				
_A89F084ED_1928:
; //	asm	nop				
	nop
; //_A89F084ED_1929:;				
_A89F084ED_1929:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_1930:;				
_A89F084ED_1930:
; //	asm	nop				
	nop
; //_A89F084ED_1931:;				
_A89F084ED_1931:
; //	asm	nop				
	nop
; //_A89F084ED_1932:;				
_A89F084ED_1932:
; //	asm	nop				
	nop
; //_A89F084ED_1933:;				
_A89F084ED_1933:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_1934:;				
_A89F084ED_1934:
; //	asm	nop				
	nop
; //_A89F084ED_1935:;				
_A89F084ED_1935:
; //	asm	nop				
	nop
; //_A89F084ED_1936:;				
_A89F084ED_1936:
; //	asm	nop				
	nop
; //_A89F084ED_1937:;				
_A89F084ED_1937:
; //	asm	nop				
	nop
; //_A89F084ED_1938:;				
_A89F084ED_1938:
; //	asm	nop				
	nop
; //_A89F084ED_1939:;				
_A89F084ED_1939:
; //	asm	nop				
	nop
; //_A89F084ED_1940:;				
_A89F084ED_1940:
; //	asm	nop				
	nop
; //_A89F084ED_1941:;				
_A89F084ED_1941:
; //	asm	nop				
	nop
; //_A89F084ED_1942:;				
_A89F084ED_1942:
; //	asm	nop				
	nop
; //_A89F084ED_1943:;				
_A89F084ED_1943:
; //	asm	nop				
	nop
; //_A89F084ED_1944:;				
_A89F084ED_1944:
; //	asm	nop				
	nop
; //_A89F084ED_1945:;				
_A89F084ED_1945:
; //	asm	nop				
	nop
; //_A89F084ED_1946:;				
_A89F084ED_1946:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_1947:;				
_A89F084ED_1947:
; //	asm	nop				
	nop
; //_A89F084ED_1948:;				
_A89F084ED_1948:
; //	asm	nop				
	nop
; //_A89F084ED_1949:;				
_A89F084ED_1949:
; //	asm	nop				
	nop
; //_A89F084ED_1950:;				
_A89F084ED_1950:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_1951:;				
_A89F084ED_1951:
; //	asm	nop				
	nop
; //_A89F084ED_1952:;				
_A89F084ED_1952:
; //	asm	nop				
	nop
; //_A89F084ED_1953:;				
_A89F084ED_1953:
; //	asm	nop				
	nop
; //_A89F084ED_1954:;				
_A89F084ED_1954:
; //	asm	nop				
	nop
; //_A89F084ED_1955:;				
_A89F084ED_1955:
; //	asm	nop				
	nop
; //_A89F084ED_1956:;				
_A89F084ED_1956:
; //	asm	nop				
	nop
; //_A89F084ED_1957:;				
_A89F084ED_1957:
; //	asm	nop				
	nop
; //_A89F084ED_1958:;				
_A89F084ED_1958:
; //	asm	nop				
	nop
; //_A89F084ED_1959:;				
_A89F084ED_1959:
; //	asm	nop				
	nop
; //_A89F084ED_1960:;				
_A89F084ED_1960:
; //	asm	nop				
	nop
; //_A89F084ED_1961:;				
_A89F084ED_1961:
; //	asm	nop				
	nop
; //_A89F084ED_1962:;				
_A89F084ED_1962:
; //	asm	nop				
	nop
; //_A89F084ED_1963:;				
_A89F084ED_1963:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_1964:;				
_A89F084ED_1964:
; //	asm	nop				
	nop
; //_A89F084ED_1965:;				
_A89F084ED_1965:
; //	asm	nop				
	nop
; //_A89F084ED_1966:;				
_A89F084ED_1966:
; //	asm	nop				
	nop
; //_A89F084ED_1967:;				
_A89F084ED_1967:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_1968:;				
_A89F084ED_1968:
; //	asm	nop				
	nop
; //_A89F084ED_1969:;				
_A89F084ED_1969:
; //	asm	nop				
	nop
; //_A89F084ED_1970:;				
_A89F084ED_1970:
; //	asm	nop				
	nop
; //_A89F084ED_1971:;				
_A89F084ED_1971:
; //	asm	nop				
	nop
; //_A89F084ED_1972:;				
_A89F084ED_1972:
; //	asm	nop				
	nop
; //_A89F084ED_1973:;				
_A89F084ED_1973:
; //	asm	nop				
	nop
; //_A89F084ED_1974:;				
_A89F084ED_1974:
; //	asm	nop				
	nop
; //_A89F084ED_1975:;				
_A89F084ED_1975:
; //	asm	nop				
	nop
; //_A89F084ED_1976:;				
_A89F084ED_1976:
; //	asm	nop				
	nop
; //_A89F084ED_1977:;				
_A89F084ED_1977:
; //	asm	nop				
	nop
; //_A89F084ED_1978:;				
_A89F084ED_1978:
; //	asm	nop				
	nop
; //_A89F084ED_1979:;				
_A89F084ED_1979:
; //	asm	nop				
	nop
; //_A89F084ED_1980:;				
_A89F084ED_1980:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_1981:;				
_A89F084ED_1981:
; //	asm	nop				
	nop
; //_A89F084ED_1982:;				
_A89F084ED_1982:
; //	asm	nop				
	nop
; //_A89F084ED_1983:;				
_A89F084ED_1983:
; //	asm	nop				
	nop
; //_A89F084ED_1984:;				
_A89F084ED_1984:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_1985:;				
_A89F084ED_1985:
; //	asm	nop				
	nop
; //_A89F084ED_1986:;				
_A89F084ED_1986:
; //	asm	nop				
	nop
; //_A89F084ED_1987:;				
_A89F084ED_1987:
; //	asm	nop				
	nop
; //_A89F084ED_1988:;				
_A89F084ED_1988:
; //	asm	nop				
	nop
; //_A89F084ED_1989:;				
_A89F084ED_1989:
; //	asm	nop				
	nop
; //_A89F084ED_1990:;				
_A89F084ED_1990:
; //	asm	nop				
	nop
; //_A89F084ED_1991:;				
_A89F084ED_1991:
; //	asm	nop				
	nop
; //_A89F084ED_1992:;				
_A89F084ED_1992:
; //	asm	nop				
	nop
; //_A89F084ED_1993:;				
_A89F084ED_1993:
; //	asm	nop				
	nop
; //_A89F084ED_1994:;				
_A89F084ED_1994:
; //	asm	nop				
	nop
; //_A89F084ED_1995:;				
_A89F084ED_1995:
; //	asm	nop				
	nop
; //_A89F084ED_1996:;				
_A89F084ED_1996:
; //	asm	nop				
	nop
; //_A89F084ED_1997:;				
_A89F084ED_1997:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_1998:;				
_A89F084ED_1998:
; //	asm	nop				
	nop
; //_A89F084ED_1999:;				
_A89F084ED_1999:
; //	asm	nop				
	nop
; //_A89F084ED_2000:;				
_A89F084ED_2000:
; //	asm	nop				
	nop
; //_A89F084ED_2001:;				
_A89F084ED_2001:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_2002:;				
_A89F084ED_2002:
; //	asm	nop				
	nop
; //_A89F084ED_2003:;				
_A89F084ED_2003:
; //	asm	nop				
	nop
; //_A89F084ED_2004:;				
_A89F084ED_2004:
; //	asm	nop				
	nop
; //_A89F084ED_2005:;				
_A89F084ED_2005:
; //	asm	nop				
	nop
; //_A89F084ED_2006:;				
_A89F084ED_2006:
; //	asm	nop				
	nop
; //_A89F084ED_2007:;				
_A89F084ED_2007:
; //	asm	nop				
	nop
; //_A89F084ED_2008:;				
_A89F084ED_2008:
; //	asm	nop				
	nop
; //_A89F084ED_2009:;				
_A89F084ED_2009:
; //	asm	nop				
	nop
; //_A89F084ED_2010:;				
_A89F084ED_2010:
; //	asm	nop				
	nop
; //_A89F084ED_2011:;				
_A89F084ED_2011:
; //	asm	nop				
	nop
; //_A89F084ED_2012:;				
_A89F084ED_2012:
; //	asm	nop				
	nop
; //_A89F084ED_2013:;				
_A89F084ED_2013:
; //	asm	nop				
	nop
; //_A89F084ED_2014:;				
_A89F084ED_2014:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_2015:;				
_A89F084ED_2015:
; //	asm	nop				
	nop
; //_A89F084ED_2016:;				
_A89F084ED_2016:
; //	asm	nop				
	nop
; //_A89F084ED_2017:;				
_A89F084ED_2017:
; //	asm	nop				
	nop
; //_A89F084ED_2018:;				
_A89F084ED_2018:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_2019:;				
_A89F084ED_2019:
; //	asm	nop				
	nop
; //_A89F084ED_2020:;				
_A89F084ED_2020:
; //	asm	nop				
	nop
; //_A89F084ED_2021:;				
_A89F084ED_2021:
; //	asm	nop				
	nop
; //_A89F084ED_2022:;				
_A89F084ED_2022:
; //	asm	nop				
	nop
; //_A89F084ED_2023:;				
_A89F084ED_2023:
; //	asm	nop				
	nop
; //_A89F084ED_2024:;				
_A89F084ED_2024:
; //	asm	nop				
	nop
; //_A89F084ED_2025:;				
_A89F084ED_2025:
; //	asm	nop				
	nop
; //_A89F084ED_2026:;				
_A89F084ED_2026:
; //	asm	nop				
	nop
; //_A89F084ED_2027:;				
_A89F084ED_2027:
; //	asm	nop				
	nop
; //_A89F084ED_2028:;				
_A89F084ED_2028:
; //	asm	nop				
	nop
; //_A89F084ED_2029:;				
_A89F084ED_2029:
; //	asm	nop				
	nop
; //_A89F084ED_2030:;				
_A89F084ED_2030:
; //	asm	nop				
	nop
; //_A89F084ED_2031:;				
_A89F084ED_2031:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_2032:;				
_A89F084ED_2032:
; //	asm	nop				
	nop
; //_A89F084ED_2033:;				
_A89F084ED_2033:
; //	asm	nop				
	nop
; //_A89F084ED_2034:;				
_A89F084ED_2034:
; //	asm	nop				
	nop
; //_A89F084ED_2035:;				
_A89F084ED_2035:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_2036:;				
_A89F084ED_2036:
; //	asm	nop				
	nop
; //_A89F084ED_2037:;				
_A89F084ED_2037:
; //	asm	nop				
	nop
; //_A89F084ED_2038:;				
_A89F084ED_2038:
; //	asm	nop				
	nop
; //_A89F084ED_2039:;				
_A89F084ED_2039:
; //	asm	nop				
	nop
; //_A89F084ED_2040:;				
_A89F084ED_2040:
; //	asm	nop				
	nop
; //_A89F084ED_2041:;				
_A89F084ED_2041:
; //	asm	nop				
	nop
; //_A89F084ED_2042:;				
_A89F084ED_2042:
; //	asm	nop				
	nop
; //_A89F084ED_2043:;				
_A89F084ED_2043:
; //	asm	nop				
	nop
; //_A89F084ED_2044:;				
_A89F084ED_2044:
; //	asm	nop				
	nop
; //_A89F084ED_2045:;				
_A89F084ED_2045:
; //	asm	nop				
	nop
; //_A89F084ED_2046:;				
_A89F084ED_2046:
; //	asm	nop				
	nop
; //_A89F084ED_2047:;				
_A89F084ED_2047:
; //	asm	nop				
	nop
; //_A89F084ED_2048:;				
_A89F084ED_2048:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_2049:;				
_A89F084ED_2049:
; //	asm	nop				
	nop
; //_A89F084ED_2050:;				
_A89F084ED_2050:
; //	asm	nop				
	nop
; //_A89F084ED_2051:;				
_A89F084ED_2051:
; //	asm	nop				
	nop
; //_A89F084ED_2052:;				
_A89F084ED_2052:
; //	asm	nop				
	nop
; //_A89F084ED_2053:;				
_A89F084ED_2053:
; //	asm	nop				
	nop
; //_A89F084ED_2054:;				
_A89F084ED_2054:
; //	asm	nop				
	nop
; //_A89F084ED_2055:;				
_A89F084ED_2055:
; //	asm	nop				
	nop
; //_A89F084ED_2056:;				
_A89F084ED_2056:
; //	asm	nop				
	nop
; //_A89F084ED_2057:;				
_A89F084ED_2057:
; //	asm	nop				
	nop
; //_A89F084ED_2058:;				
_A89F084ED_2058:
; //	asm	nop				
	nop
; //_A89F084ED_2059:;				
_A89F084ED_2059:
; //	asm	nop				
	nop
; //_A89F084ED_2060:;				
_A89F084ED_2060:
; //	asm	nop				
	nop
; //_A89F084ED_2061:;				
_A89F084ED_2061:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_2062:;				
_A89F084ED_2062:
; //	asm	nop				
	nop
; //_A89F084ED_2063:;				
_A89F084ED_2063:
; //	asm	nop				
	nop
; //_A89F084ED_2064:;				
_A89F084ED_2064:
; //	asm	nop				
	nop
; //_A89F084ED_2065:;				
_A89F084ED_2065:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_2066:;				
_A89F084ED_2066:
; //	asm	nop				
	nop
; //_A89F084ED_2067:;				
_A89F084ED_2067:
; //	asm	nop				
	nop
; //_A89F084ED_2068:;				
_A89F084ED_2068:
; //	asm	nop				
	nop
; //_A89F084ED_2069:;				
_A89F084ED_2069:
; //	asm	nop				
	nop
; //_A89F084ED_2070:;				
_A89F084ED_2070:
; //	asm	nop				
	nop
; //_A89F084ED_2071:;				
_A89F084ED_2071:
; //	asm	nop				
	nop
; //_A89F084ED_2072:;				
_A89F084ED_2072:
; //	asm	nop				
	nop
; //_A89F084ED_2073:;				
_A89F084ED_2073:
; //	asm	nop				
	nop
; //_A89F084ED_2074:;				
_A89F084ED_2074:
; //	asm	nop				
	nop
; //_A89F084ED_2075:;				
_A89F084ED_2075:
; //	asm	nop				
	nop
; //_A89F084ED_2076:;				
_A89F084ED_2076:
; //	asm	nop				
	nop
; //_A89F084ED_2077:;				
_A89F084ED_2077:
; //	asm	nop				
	nop
; //_A89F084ED_2078:;				
_A89F084ED_2078:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_2079:;				
_A89F084ED_2079:
; //	asm	nop				
	nop
; //_A89F084ED_2080:;				
_A89F084ED_2080:
; //	asm	nop				
	nop
; //_A89F084ED_2081:;				
_A89F084ED_2081:
; //	asm	nop				
	nop
; //_A89F084ED_2082:;				
_A89F084ED_2082:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_2083:;				
_A89F084ED_2083:
; //	asm	nop				
	nop
; //_A89F084ED_2084:;				
_A89F084ED_2084:
; //	asm	nop				
	nop
; //_A89F084ED_2085:;				
_A89F084ED_2085:
; //	asm	nop				
	nop
; //_A89F084ED_2086:;				
_A89F084ED_2086:
; //	asm	nop				
	nop
; //_A89F084ED_2087:;				
_A89F084ED_2087:
; //	asm	nop				
	nop
; //_A89F084ED_2088:;				
_A89F084ED_2088:
; //	asm	nop				
	nop
; //_A89F084ED_2089:;				
_A89F084ED_2089:
; //	asm	nop				
	nop
; //_A89F084ED_2090:;				
_A89F084ED_2090:
; //	asm	nop				
	nop
; //_A89F084ED_2091:;				
_A89F084ED_2091:
; //	asm	nop				
	nop
; //_A89F084ED_2092:;				
_A89F084ED_2092:
; //	asm	nop				
	nop
; //_A89F084ED_2093:;				
_A89F084ED_2093:
; //	asm	nop				
	nop
; //_A89F084ED_2094:;				
_A89F084ED_2094:
; //	asm	nop				
	nop
; //_A89F084ED_2095:;				
_A89F084ED_2095:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_2096:;				
_A89F084ED_2096:
; //	asm	nop				
	nop
; //_A89F084ED_2097:;				
_A89F084ED_2097:
; //	asm	nop				
	nop
; //_A89F084ED_2098:;				
_A89F084ED_2098:
; //	asm	nop				
	nop
; //_A89F084ED_2099:;				
_A89F084ED_2099:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_2100:;				
_A89F084ED_2100:
; //	asm	nop				
	nop
; //_A89F084ED_2101:;				
_A89F084ED_2101:
; //	asm	nop				
	nop
; //_A89F084ED_2102:;				
_A89F084ED_2102:
; //	asm	nop				
	nop
; //_A89F084ED_2103:;				
_A89F084ED_2103:
; //	asm	nop				
	nop
; //_A89F084ED_2104:;				
_A89F084ED_2104:
; //	asm	nop				
	nop
; //_A89F084ED_2105:;				
_A89F084ED_2105:
; //	asm	nop				
	nop
; //_A89F084ED_2106:;				
_A89F084ED_2106:
; //	asm	nop				
	nop
; //_A89F084ED_2107:;				
_A89F084ED_2107:
; //	asm	nop				
	nop
; //_A89F084ED_2108:;				
_A89F084ED_2108:
; //	asm	nop				
	nop
; //_A89F084ED_2109:;				
_A89F084ED_2109:
; //	asm	nop				
	nop
; //_A89F084ED_2110:;				
_A89F084ED_2110:
; //	asm	nop				
	nop
; //_A89F084ED_2111:;				
_A89F084ED_2111:
; //	asm	nop				
	nop
; //_A89F084ED_2112:;				
_A89F084ED_2112:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_2113:;				
_A89F084ED_2113:
; //	asm	nop				
	nop
; //_A89F084ED_2114:;				
_A89F084ED_2114:
; //	asm	nop				
	nop
; //_A89F084ED_2115:;				
_A89F084ED_2115:
; //	asm	nop				
	nop
; //_A89F084ED_2116:;				
_A89F084ED_2116:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_2117:;				
_A89F084ED_2117:
; //	asm	nop				
	nop
; //_A89F084ED_2118:;				
_A89F084ED_2118:
; //	asm	nop				
	nop
; //_A89F084ED_2119:;				
_A89F084ED_2119:
; //	asm	nop				
	nop
; //_A89F084ED_2120:;				
_A89F084ED_2120:
; //	asm	nop				
	nop
; //_A89F084ED_2121:;				
_A89F084ED_2121:
; //	asm	nop				
	nop
; //_A89F084ED_2122:;				
_A89F084ED_2122:
; //	asm	nop				
	nop
; //_A89F084ED_2123:;				
_A89F084ED_2123:
; //	asm	nop				
	nop
; //_A89F084ED_2124:;				
_A89F084ED_2124:
; //	asm	nop				
	nop
; //_A89F084ED_2125:;				
_A89F084ED_2125:
; //	asm	nop				
	nop
; //_A89F084ED_2126:;				
_A89F084ED_2126:
; //	asm	nop				
	nop
; //_A89F084ED_2127:;				
_A89F084ED_2127:
; //	asm	nop				
	nop
; //_A89F084ED_2128:;				
_A89F084ED_2128:
; //	asm	nop				
	nop
; //_A89F084ED_2129:;				
_A89F084ED_2129:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_2130:;				
_A89F084ED_2130:
; //	asm	nop				
	nop
; //_A89F084ED_2131:;				
_A89F084ED_2131:
; //	asm	nop				
	nop
; //_A89F084ED_2132:;				
_A89F084ED_2132:
; //	asm	nop				
	nop
; //_A89F084ED_2133:;				
_A89F084ED_2133:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_2134:;				
_A89F084ED_2134:
; //	asm	nop				
	nop
; //_A89F084ED_2135:;				
_A89F084ED_2135:
; //	asm	nop				
	nop
; //_A89F084ED_2136:;				
_A89F084ED_2136:
; //	asm	nop				
	nop
; //_A89F084ED_2137:;				
_A89F084ED_2137:
; //	asm	nop				
	nop
; //_A89F084ED_2138:;				
_A89F084ED_2138:
; //	asm	nop				
	nop
; //_A89F084ED_2139:;				
_A89F084ED_2139:
; //	asm	nop				
	nop
; //_A89F084ED_2140:;				
_A89F084ED_2140:
; //	asm	nop				
	nop
; //_A89F084ED_2141:;				
_A89F084ED_2141:
; //	asm	nop				
	nop
; //_A89F084ED_2142:;				
_A89F084ED_2142:
; //	asm	nop				
	nop
; //_A89F084ED_2143:;				
_A89F084ED_2143:
; //	asm	nop				
	nop
; //_A89F084ED_2144:;				
_A89F084ED_2144:
; //	asm	nop				
	nop
; //_A89F084ED_2145:;				
_A89F084ED_2145:
; //	asm	nop				
	nop
; //_A89F084ED_2146:;				
_A89F084ED_2146:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_2147:;				
_A89F084ED_2147:
; //	asm	nop				
	nop
; //_A89F084ED_2148:;				
_A89F084ED_2148:
; //	asm	nop				
	nop
; //_A89F084ED_2149:;				
_A89F084ED_2149:
; //	asm	nop				
	nop
; //_A89F084ED_2150:;				
_A89F084ED_2150:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_2151:;				
_A89F084ED_2151:
; //	asm	nop				
	nop
; //_A89F084ED_2152:;				
_A89F084ED_2152:
; //	asm	nop				
	nop
; //_A89F084ED_2153:;				
_A89F084ED_2153:
; //	asm	nop				
	nop
; //_A89F084ED_2154:;				
_A89F084ED_2154:
; //	asm	nop				
	nop
; //_A89F084ED_2155:;				
_A89F084ED_2155:
; //	asm	nop				
	nop
; //_A89F084ED_2156:;				
_A89F084ED_2156:
; //	asm	nop				
	nop
; //_A89F084ED_2157:;				
_A89F084ED_2157:
; //	asm	nop				
	nop
; //_A89F084ED_2158:;				
_A89F084ED_2158:
; //	asm	nop				
	nop
; //_A89F084ED_2159:;				
_A89F084ED_2159:
; //	asm	nop				
	nop
; //_A89F084ED_2160:;				
_A89F084ED_2160:
; //	asm	nop				
	nop
; //_A89F084ED_2161:;				
_A89F084ED_2161:
; //	asm	nop				
	nop
; //_A89F084ED_2162:;				
_A89F084ED_2162:
; //	asm	nop				
	nop
; //_A89F084ED_2163:;				
_A89F084ED_2163:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_2164:;				
_A89F084ED_2164:
; //	asm	nop				
	nop
; //_A89F084ED_2165:;				
_A89F084ED_2165:
; //	asm	nop				
	nop
; //_A89F084ED_2166:;				
_A89F084ED_2166:
; //	asm	nop				
	nop
; //_A89F084ED_2167:;				
_A89F084ED_2167:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_2168:;				
_A89F084ED_2168:
; //	asm	nop				
	nop
; //_A89F084ED_2169:;				
_A89F084ED_2169:
; //	asm	nop				
	nop
; //_A89F084ED_2170:;				
_A89F084ED_2170:
; //	asm	nop				
	nop
; //_A89F084ED_2171:;				
_A89F084ED_2171:
; //	asm	nop				
	nop
; //_A89F084ED_2172:;				
_A89F084ED_2172:
; //	asm	nop				
	nop
; //_A89F084ED_2173:;				
_A89F084ED_2173:
; //	asm	nop				
	nop
; //_A89F084ED_2174:;				
_A89F084ED_2174:
; //	asm	nop				
	nop
; //_A89F084ED_2175:;				
_A89F084ED_2175:
; //	asm	nop				
	nop
; //_A89F084ED_2176:;				
_A89F084ED_2176:
; //	asm	nop				
	nop
; //_A89F084ED_2177:;				
_A89F084ED_2177:
; //	asm	nop				
	nop
; //_A89F084ED_2178:;				
_A89F084ED_2178:
; //	asm	nop				
	nop
; //_A89F084ED_2179:;				
_A89F084ED_2179:
; //	asm	nop				
	nop
; //_A89F084ED_2180:;				
_A89F084ED_2180:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_2181:;				
_A89F084ED_2181:
; //	asm	nop				
	nop
; //_A89F084ED_2182:;				
_A89F084ED_2182:
; //	asm	nop				
	nop
; //_A89F084ED_2183:;				
_A89F084ED_2183:
; //	asm	nop				
	nop
; //_A89F084ED_2184:;				
_A89F084ED_2184:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_2185:;				
_A89F084ED_2185:
; //	asm	nop				
	nop
; //_A89F084ED_2186:;				
_A89F084ED_2186:
; //	asm	nop				
	nop
; //_A89F084ED_2187:;				
_A89F084ED_2187:
; //	asm	nop				
	nop
; //_A89F084ED_2188:;				
_A89F084ED_2188:
; //	asm	nop				
	nop
; //_A89F084ED_2189:;				
_A89F084ED_2189:
; //	asm	nop				
	nop
; //_A89F084ED_2190:;				
_A89F084ED_2190:
; //	asm	nop				
	nop
; //_A89F084ED_2191:;				
_A89F084ED_2191:
; //	asm	nop				
	nop
; //_A89F084ED_2192:;				
_A89F084ED_2192:
; //	asm	nop				
	nop
; //_A89F084ED_2193:;				
_A89F084ED_2193:
; //	asm	nop				
	nop
; //_A89F084ED_2194:;				
_A89F084ED_2194:
; //	asm	nop				
	nop
; //_A89F084ED_2195:;				
_A89F084ED_2195:
; //	asm	nop				
	nop
; //_A89F084ED_2196:;				
_A89F084ED_2196:
; //	asm	nop				
	nop
; //_A89F084ED_2197:;				
_A89F084ED_2197:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_2198:;				
_A89F084ED_2198:
; //	asm	nop				
	nop
; //_A89F084ED_2199:;				
_A89F084ED_2199:
; //	asm	nop				
	nop
; //_A89F084ED_2200:;				
_A89F084ED_2200:
; //	asm	nop				
	nop
; //_A89F084ED_2201:;				
_A89F084ED_2201:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_2202:;				
_A89F084ED_2202:
; //	asm	nop				
	nop
; //_A89F084ED_2203:;				
_A89F084ED_2203:
; //	asm	nop				
	nop
; //_A89F084ED_2204:;				
_A89F084ED_2204:
; //	asm	nop				
	nop
; //_A89F084ED_2205:;				
_A89F084ED_2205:
; //	asm	nop				
	nop
; //_A89F084ED_2206:;				
_A89F084ED_2206:
; //	asm	nop				
	nop
; //_A89F084ED_2207:;				
_A89F084ED_2207:
; //	asm	nop				
	nop
; //_A89F084ED_2208:;				
_A89F084ED_2208:
; //	asm	nop				
	nop
; //_A89F084ED_2209:;				
_A89F084ED_2209:
; //	asm	nop				
	nop
; //_A89F084ED_2210:;				
_A89F084ED_2210:
; //	asm	nop				
	nop
; //_A89F084ED_2211:;				
_A89F084ED_2211:
; //	asm	nop				
	nop
; //_A89F084ED_2212:;				
_A89F084ED_2212:
; //	asm	nop				
	nop
; //_A89F084ED_2213:;				
_A89F084ED_2213:
; //	asm	nop				
	nop
; //_A89F084ED_2214:;				
_A89F084ED_2214:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_2215:;				
_A89F084ED_2215:
; //	asm	nop				
	nop
; //_A89F084ED_2216:;				
_A89F084ED_2216:
; //	asm	nop				
	nop
; //_A89F084ED_2217:;				
_A89F084ED_2217:
; //	asm	nop				
	nop
; //_A89F084ED_2218:;				
_A89F084ED_2218:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_2219:;				
_A89F084ED_2219:
; //	asm	nop				
	nop
; //_A89F084ED_2220:;				
_A89F084ED_2220:
; //	asm	nop				
	nop
; //_A89F084ED_2221:;				
_A89F084ED_2221:
; //	asm	nop				
	nop
; //_A89F084ED_2222:;				
_A89F084ED_2222:
; //	asm	nop				
	nop
; //_A89F084ED_2223:;				
_A89F084ED_2223:
; //	asm	nop				
	nop
; //_A89F084ED_2224:;				
_A89F084ED_2224:
; //	asm	nop				
	nop
; //_A89F084ED_2225:;				
_A89F084ED_2225:
; //	asm	nop				
	nop
; //_A89F084ED_2226:;				
_A89F084ED_2226:
; //	asm	nop				
	nop
; //_A89F084ED_2227:;				
_A89F084ED_2227:
; //	asm	nop				
	nop
; //_A89F084ED_2228:;				
_A89F084ED_2228:
; //	asm	nop				
	nop
; //_A89F084ED_2229:;				
_A89F084ED_2229:
; //	asm	nop				
	nop
; //_A89F084ED_2230:;				
_A89F084ED_2230:
; //	asm	nop				
	nop
; //_A89F084ED_2231:;				
_A89F084ED_2231:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_2232:;				
_A89F084ED_2232:
; //	asm	nop				
	nop
; //_A89F084ED_2233:;				
_A89F084ED_2233:
; //	asm	nop				
	nop
; //_A89F084ED_2234:;				
_A89F084ED_2234:
; //	asm	nop				
	nop
; //_A89F084ED_2235:;				
_A89F084ED_2235:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_2236:;				
_A89F084ED_2236:
; //	asm	nop				
	nop
; //_A89F084ED_2237:;				
_A89F084ED_2237:
; //	asm	nop				
	nop
; //_A89F084ED_2238:;				
_A89F084ED_2238:
; //	asm	nop				
	nop
; //_A89F084ED_2239:;				
_A89F084ED_2239:
; //	asm	nop				
	nop
; //_A89F084ED_2240:;				
_A89F084ED_2240:
; //	asm	nop				
	nop
; //_A89F084ED_2241:;				
_A89F084ED_2241:
; //	asm	nop				
	nop
; //_A89F084ED_2242:;				
_A89F084ED_2242:
; //	asm	nop				
	nop
; //_A89F084ED_2243:;				
_A89F084ED_2243:
; //	asm	nop				
	nop
; //_A89F084ED_2244:;				
_A89F084ED_2244:
; //	asm	nop				
	nop
; //_A89F084ED_2245:;				
_A89F084ED_2245:
; //	asm	nop				
	nop
; //_A89F084ED_2246:;				
_A89F084ED_2246:
; //	asm	nop				
	nop
; //_A89F084ED_2247:;				
_A89F084ED_2247:
; //	asm	nop				
	nop
; //_A89F084ED_2248:;				
_A89F084ED_2248:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_2249:;				
_A89F084ED_2249:
; //	asm	nop				
	nop
; //_A89F084ED_2250:;				
_A89F084ED_2250:
; //	asm	nop				
	nop
; //_A89F084ED_2251:;				
_A89F084ED_2251:
; //	asm	nop				
	nop
; //_A89F084ED_2252:;				
_A89F084ED_2252:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_2253:;				
_A89F084ED_2253:
; //	asm	nop				
	nop
; //_A89F084ED_2254:;				
_A89F084ED_2254:
; //	asm	nop				
	nop
; //_A89F084ED_2255:;				
_A89F084ED_2255:
; //	asm	nop				
	nop
; //_A89F084ED_2256:;				
_A89F084ED_2256:
; //	asm	nop				
	nop
; //_A89F084ED_2257:;				
_A89F084ED_2257:
; //	asm	nop				
	nop
; //_A89F084ED_2258:;				
_A89F084ED_2258:
; //	asm	nop				
	nop
; //_A89F084ED_2259:;				
_A89F084ED_2259:
; //	asm	nop				
	nop
; //_A89F084ED_2260:;				
_A89F084ED_2260:
; //	asm	nop				
	nop
; //_A89F084ED_2261:;				
_A89F084ED_2261:
; //	asm	nop				
	nop
; //_A89F084ED_2262:;				
_A89F084ED_2262:
; //	asm	nop				
	nop
; //_A89F084ED_2263:;				
_A89F084ED_2263:
; //	asm	nop				
	nop
; //_A89F084ED_2264:;				
_A89F084ED_2264:
; //	asm	nop				
	nop
; //_A89F084ED_2265:;				
_A89F084ED_2265:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_2266:;				
_A89F084ED_2266:
; //	asm	nop				
	nop
; //_A89F084ED_2267:;				
_A89F084ED_2267:
; //	asm	nop				
	nop
; //_A89F084ED_2268:;				
_A89F084ED_2268:
; //	asm	nop				
	nop
; //_A89F084ED_2269:;				
_A89F084ED_2269:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_2270:;				
_A89F084ED_2270:
; //	asm	nop				
	nop
; //_A89F084ED_2271:;				
_A89F084ED_2271:
; //	asm	nop				
	nop
; //_A89F084ED_2272:;				
_A89F084ED_2272:
; //	asm	nop				
	nop
; //_A89F084ED_2273:;				
_A89F084ED_2273:
; //	asm	nop				
	nop
; //_A89F084ED_2274:;				
_A89F084ED_2274:
; //	asm	nop				
	nop
; //_A89F084ED_2275:;				
_A89F084ED_2275:
; //	asm	nop				
	nop
; //_A89F084ED_2276:;				
_A89F084ED_2276:
; //	asm	nop				
	nop
; //_A89F084ED_2277:;				
_A89F084ED_2277:
; //	asm	nop				
	nop
; //_A89F084ED_2278:;				
_A89F084ED_2278:
; //	asm	nop				
	nop
; //_A89F084ED_2279:;				
_A89F084ED_2279:
; //	asm	nop				
	nop
; //_A89F084ED_2280:;				
_A89F084ED_2280:
; //	asm	nop				
	nop
; //_A89F084ED_2281:;				
_A89F084ED_2281:
; //	asm	nop				
	nop
; //_A89F084ED_2282:;				
_A89F084ED_2282:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_2283:;				
_A89F084ED_2283:
; //	asm	nop				
	nop
; //_A89F084ED_2284:;				
_A89F084ED_2284:
; //	asm	nop				
	nop
; //_A89F084ED_2285:;				
_A89F084ED_2285:
; //	asm	nop				
	nop
; //_A89F084ED_2286:;				
_A89F084ED_2286:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_2287:;				
_A89F084ED_2287:
; //	asm	nop				
	nop
; //_A89F084ED_2288:;				
_A89F084ED_2288:
; //	asm	nop				
	nop
; //_A89F084ED_2289:;				
_A89F084ED_2289:
; //	asm	nop				
	nop
; //_A89F084ED_2290:;				
_A89F084ED_2290:
; //	asm	nop				
	nop
; //_A89F084ED_2291:;				
_A89F084ED_2291:
; //	asm	nop				
	nop
; //_A89F084ED_2292:;				
_A89F084ED_2292:
; //	asm	nop				
	nop
; //_A89F084ED_2293:;				
_A89F084ED_2293:
; //	asm	nop				
	nop
; //_A89F084ED_2294:;				
_A89F084ED_2294:
; //	asm	nop				
	nop
; //_A89F084ED_2295:;				
_A89F084ED_2295:
; //	asm	nop				
	nop
; //_A89F084ED_2296:;				
_A89F084ED_2296:
; //	asm	nop				
	nop
; //_A89F084ED_2297:;				
_A89F084ED_2297:
; //	asm	nop				
	nop
; //_A89F084ED_2298:;				
_A89F084ED_2298:
; //	asm	nop				
	nop
; //_A89F084ED_2299:;				
_A89F084ED_2299:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_2300:;				
_A89F084ED_2300:
; //	asm	nop				
	nop
; //_A89F084ED_2301:;				
_A89F084ED_2301:
; //	asm	nop				
	nop
; //_A89F084ED_2302:;				
_A89F084ED_2302:
; //	asm	nop				
	nop
; //_A89F084ED_2303:;				
_A89F084ED_2303:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_2304:;				
_A89F084ED_2304:
; //	asm	nop				
	nop
; //_A89F084ED_2305:;				
_A89F084ED_2305:
; //	asm	nop				
	nop
; //_A89F084ED_2306:;				
_A89F084ED_2306:
; //	asm	nop				
	nop
; //_A89F084ED_2307:;				
_A89F084ED_2307:
; //	asm	nop				
	nop
; //_A89F084ED_2308:;				
_A89F084ED_2308:
; //	asm	nop				
	nop
; //_A89F084ED_2309:;				
_A89F084ED_2309:
; //	asm	nop				
	nop
; //_A89F084ED_2310:;				
_A89F084ED_2310:
; //	asm	nop				
	nop
; //_A89F084ED_2311:;				
_A89F084ED_2311:
; //	asm	nop				
	nop
; //_A89F084ED_2312:;				
_A89F084ED_2312:
; //	asm	nop				
	nop
; //_A89F084ED_2313:;				
_A89F084ED_2313:
; //	asm	nop				
	nop
; //_A89F084ED_2314:;				
_A89F084ED_2314:
; //	asm	nop				
	nop
; //_A89F084ED_2315:;				
_A89F084ED_2315:
; //	asm	nop				
	nop
; //_A89F084ED_2316:;				
_A89F084ED_2316:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_2317:;				
_A89F084ED_2317:
; //	asm	nop				
	nop
; //_A89F084ED_2318:;				
_A89F084ED_2318:
; //	asm	nop				
	nop
; //_A89F084ED_2319:;				
_A89F084ED_2319:
; //	asm	nop				
	nop
; //_A89F084ED_2320:;				
_A89F084ED_2320:
; //	goto LD63FD439_108;			
	pch =	LD63FD439_108
	ljmp	LD63FD439_108
; //LD63FD439_115:;					
LD63FD439_115:
; //_A89F084ED_2321:;				
_A89F084ED_2321:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_2322:;				
_A89F084ED_2322:
; //	asm	nop				
	nop
; //_A89F084ED_2323:;				
_A89F084ED_2323:
; //	asm	nop				
	nop
; //_A89F084ED_2324:;				
_A89F084ED_2324:
; //	asm	nop				
	nop
; //_A89F084ED_2325:;				
_A89F084ED_2325:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_2326:;				
_A89F084ED_2326:
; //	asm	nop				
	nop
; //_A89F084ED_2327:;				
_A89F084ED_2327:
; //	asm	nop				
	nop
; //_A89F084ED_2328:;				
_A89F084ED_2328:
; //	asm	nop				
	nop
; //_A89F084ED_2329:;				
_A89F084ED_2329:
; //	asm	nop				
	nop
; //_A89F084ED_2330:;				
_A89F084ED_2330:
; //	asm	nop				
	nop
; //_A89F084ED_2331:;				
_A89F084ED_2331:
; //	asm	nop				
	nop
; //_A89F084ED_2332:;				
_A89F084ED_2332:
; //	asm	nop				
	nop
; //_A89F084ED_2333:;				
_A89F084ED_2333:
; //	asm	nop				
	nop
; //_A89F084ED_2334:;				
_A89F084ED_2334:
; //	asm	nop				
	nop
; //_A89F084ED_2335:;				
_A89F084ED_2335:
; //	asm	nop				
	nop
; //_A89F084ED_2336:;				
_A89F084ED_2336:
; //	asm	nop				
	nop
; //_A89F084ED_2337:;				
_A89F084ED_2337:
; //	asm	nop				
	nop
; //_A89F084ED_2338:;				
_A89F084ED_2338:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_2339:;				
_A89F084ED_2339:
; //	asm	nop				
	nop
; //_A89F084ED_2340:;				
_A89F084ED_2340:
; //	asm	nop				
	nop
; //_A89F084ED_2341:;				
_A89F084ED_2341:
; //	asm	nop				
	nop
; //_A89F084ED_2342:;				
_A89F084ED_2342:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_2343:;				
_A89F084ED_2343:
; //	asm	nop				
	nop
; //_A89F084ED_2344:;				
_A89F084ED_2344:
; //	asm	nop				
	nop
; //_A89F084ED_2345:;				
_A89F084ED_2345:
; //	asm	nop				
	nop
; //_A89F084ED_2346:;				
_A89F084ED_2346:
; //	asm	nop				
	nop
; //_A89F084ED_2347:;				
_A89F084ED_2347:
; //	asm	nop				
	nop
; //_A89F084ED_2348:;				
_A89F084ED_2348:
; //	asm	nop				
	nop
; //_A89F084ED_2349:;				
_A89F084ED_2349:
; //	asm	nop				
	nop
; //_A89F084ED_2350:;				
_A89F084ED_2350:
; //	asm	nop				
	nop
; //_A89F084ED_2351:;				
_A89F084ED_2351:
; //	asm	nop				
	nop
; //_A89F084ED_2352:;				
_A89F084ED_2352:
; //	asm	nop				
	nop
; //_A89F084ED_2353:;				
_A89F084ED_2353:
; //	asm	nop				
	nop
; //_A89F084ED_2354:;				
_A89F084ED_2354:
; //	asm	nop				
	nop
; //_A89F084ED_2355:;				
_A89F084ED_2355:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_2356:;				
_A89F084ED_2356:
; //	asm	nop				
	nop
; //_A89F084ED_2357:;				
_A89F084ED_2357:
; //	asm	nop				
	nop
; //_A89F084ED_2358:;				
_A89F084ED_2358:
; //	asm	nop				
	nop
; //_A89F084ED_2359:;				
_A89F084ED_2359:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_2360:;				
_A89F084ED_2360:
; //	asm	nop				
	nop
; //_A89F084ED_2361:;				
_A89F084ED_2361:
; //	asm	nop				
	nop
; //_A89F084ED_2362:;				
_A89F084ED_2362:
; //	asm	nop				
	nop
; //_A89F084ED_2363:;				
_A89F084ED_2363:
; //	asm	nop				
	nop
; //_A89F084ED_2364:;				
_A89F084ED_2364:
; //	asm	nop				
	nop
; //_A89F084ED_2365:;				
_A89F084ED_2365:
; //	asm	nop				
	nop
; //_A89F084ED_2366:;				
_A89F084ED_2366:
; //	asm	nop				
	nop
; //_A89F084ED_2367:;				
_A89F084ED_2367:
; //	asm	nop				
	nop
; //_A89F084ED_2368:;				
_A89F084ED_2368:
; //	asm	nop				
	nop
; //_A89F084ED_2369:;				
_A89F084ED_2369:
; //	asm	nop				
	nop
; //_A89F084ED_2370:;				
_A89F084ED_2370:
; //	asm	nop				
	nop
; //_A89F084ED_2371:;				
_A89F084ED_2371:
; //	asm	nop				
	nop
; //_A89F084ED_2372:;				
_A89F084ED_2372:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_2373:;				
_A89F084ED_2373:
; //	asm	nop				
	nop
; //_A89F084ED_2374:;				
_A89F084ED_2374:
; //	asm	nop				
	nop
; //_A89F084ED_2375:;				
_A89F084ED_2375:
; //	asm	nop				
	nop
; //_A89F084ED_2376:;				
_A89F084ED_2376:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_2377:;				
_A89F084ED_2377:
; //	asm	nop				
	nop
; //_A89F084ED_2378:;				
_A89F084ED_2378:
; //	asm	nop				
	nop
; //_A89F084ED_2379:;				
_A89F084ED_2379:
; //	asm	nop				
	nop
; //_A89F084ED_2380:;				
_A89F084ED_2380:
; //	asm	nop				
	nop
; //_A89F084ED_2381:;				
_A89F084ED_2381:
; //	asm	nop				
	nop
; //_A89F084ED_2382:;				
_A89F084ED_2382:
; //	asm	nop				
	nop
; //_A89F084ED_2383:;				
_A89F084ED_2383:
; //	asm	nop				
	nop
; //_A89F084ED_2384:;				
_A89F084ED_2384:
; //	asm	nop				
	nop
; //_A89F084ED_2385:;				
_A89F084ED_2385:
; //	asm	nop				
	nop
; //_A89F084ED_2386:;				
_A89F084ED_2386:
; //	asm	nop				
	nop
; //_A89F084ED_2387:;				
_A89F084ED_2387:
; //	asm	nop				
	nop
; //_A89F084ED_2388:;				
_A89F084ED_2388:
; //	asm	nop				
	nop
; //_A89F084ED_2389:;				
_A89F084ED_2389:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_2390:;				
_A89F084ED_2390:
; //	asm	nop				
	nop
; //_A89F084ED_2391:;				
_A89F084ED_2391:
; //	asm	nop				
	nop
; //_A89F084ED_2392:;				
_A89F084ED_2392:
; //	asm	nop				
	nop
; //_A89F084ED_2393:;				
_A89F084ED_2393:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_2394:;				
_A89F084ED_2394:
; //	asm	nop				
	nop
; //_A89F084ED_2395:;				
_A89F084ED_2395:
; //	asm	nop				
	nop
; //_A89F084ED_2396:;				
_A89F084ED_2396:
; //	asm	nop				
	nop
; //_A89F084ED_2397:;				
_A89F084ED_2397:
; //	asm	nop				
	nop
; //_A89F084ED_2398:;				
_A89F084ED_2398:
; //	asm	nop				
	nop
; //_A89F084ED_2399:;				
_A89F084ED_2399:
; //	asm	nop				
	nop
; //_A89F084ED_2400:;				
_A89F084ED_2400:
; //	asm	nop				
	nop
; //_A89F084ED_2401:;				
_A89F084ED_2401:
; //	asm	nop				
	nop
; //_A89F084ED_2402:;				
_A89F084ED_2402:
; //	asm	nop				
	nop
; //_A89F084ED_2403:;				
_A89F084ED_2403:
; //	asm	nop				
	nop
; //_A89F084ED_2404:;				
_A89F084ED_2404:
; //	asm	nop				
	nop
; //_A89F084ED_2405:;				
_A89F084ED_2405:
; //	asm	nop				
	nop
; //_A89F084ED_2406:;				
_A89F084ED_2406:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_2407:;				
_A89F084ED_2407:
; //	asm	nop				
	nop
; //_A89F084ED_2408:;				
_A89F084ED_2408:
; //	asm	nop				
	nop
; //_A89F084ED_2409:;				
_A89F084ED_2409:
; //	asm	nop				
	nop
; //_A89F084ED_2410:;				
_A89F084ED_2410:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_2411:;				
_A89F084ED_2411:
; //	asm	nop				
	nop
; //_A89F084ED_2412:;				
_A89F084ED_2412:
; //	asm	nop				
	nop
; //_A89F084ED_2413:;				
_A89F084ED_2413:
; //	asm	nop				
	nop
; //_A89F084ED_2414:;				
_A89F084ED_2414:
; //	asm	nop				
	nop
; //_A89F084ED_2415:;				
_A89F084ED_2415:
; //	asm	nop				
	nop
; //_A89F084ED_2416:;				
_A89F084ED_2416:
; //	asm	nop				
	nop
; //_A89F084ED_2417:;				
_A89F084ED_2417:
; //	asm	nop				
	nop
; //_A89F084ED_2418:;				
_A89F084ED_2418:
; //	asm	nop				
	nop
; //_A89F084ED_2419:;				
_A89F084ED_2419:
; //	asm	nop				
	nop
; //_A89F084ED_2420:;				
_A89F084ED_2420:
; //	asm	nop				
	nop
; //_A89F084ED_2421:;				
_A89F084ED_2421:
; //	asm	nop				
	nop
; //_A89F084ED_2422:;				
_A89F084ED_2422:
; //	asm	nop				
	nop
; //_A89F084ED_2423:;				
_A89F084ED_2423:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_2424:;				
_A89F084ED_2424:
; //	asm	nop				
	nop
; //_A89F084ED_2425:;				
_A89F084ED_2425:
; //	asm	nop				
	nop
; //_A89F084ED_2426:;				
_A89F084ED_2426:
; //	asm	nop				
	nop
; //_A89F084ED_2427:;				
_A89F084ED_2427:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_2428:;				
_A89F084ED_2428:
; //	asm	nop				
	nop
; //_A89F084ED_2429:;				
_A89F084ED_2429:
; //	asm	nop				
	nop
; //_A89F084ED_2430:;				
_A89F084ED_2430:
; //	asm	nop				
	nop
; //_A89F084ED_2431:;				
_A89F084ED_2431:
; //	asm	nop				
	nop
; //_A89F084ED_2432:;				
_A89F084ED_2432:
; //	asm	nop				
	nop
; //_A89F084ED_2433:;				
_A89F084ED_2433:
; //	asm	nop				
	nop
; //_A89F084ED_2434:;				
_A89F084ED_2434:
; //	asm	nop				
	nop
; //_A89F084ED_2435:;				
_A89F084ED_2435:
; //	asm	nop				
	nop
; //_A89F084ED_2436:;				
_A89F084ED_2436:
; //	asm	nop				
	nop
; //_A89F084ED_2437:;				
_A89F084ED_2437:
; //	asm	nop				
	nop
; //_A89F084ED_2438:;				
_A89F084ED_2438:
; //	asm	nop				
	nop
; //_A89F084ED_2439:;				
_A89F084ED_2439:
; //	asm	nop				
	nop
; //_A89F084ED_2440:;				
_A89F084ED_2440:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_2441:;				
_A89F084ED_2441:
; //	asm	nop				
	nop
; //_A89F084ED_2442:;				
_A89F084ED_2442:
; //	asm	nop				
	nop
; //_A89F084ED_2443:;				
_A89F084ED_2443:
; //	asm	nop				
	nop
; //_A89F084ED_2444:;				
_A89F084ED_2444:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_2445:;				
_A89F084ED_2445:
; //	asm	nop				
	nop
; //_A89F084ED_2446:;				
_A89F084ED_2446:
; //	asm	nop				
	nop
; //_A89F084ED_2447:;				
_A89F084ED_2447:
; //	asm	nop				
	nop
; //_A89F084ED_2448:;				
_A89F084ED_2448:
; //	asm	nop				
	nop
; //_A89F084ED_2449:;				
_A89F084ED_2449:
; //	asm	nop				
	nop
; //_A89F084ED_2450:;				
_A89F084ED_2450:
; //	asm	nop				
	nop
; //_A89F084ED_2451:;				
_A89F084ED_2451:
; //	asm	nop				
	nop
; //_A89F084ED_2452:;				
_A89F084ED_2452:
; //	asm	nop				
	nop
; //_A89F084ED_2453:;				
_A89F084ED_2453:
; //	asm	nop				
	nop
; //_A89F084ED_2454:;				
_A89F084ED_2454:
; //	asm	nop				
	nop
; //_A89F084ED_2455:;				
_A89F084ED_2455:
; //	asm	nop				
	nop
; //_A89F084ED_2456:;				
_A89F084ED_2456:
; //	asm	nop				
	nop
; //_A89F084ED_2457:;				
_A89F084ED_2457:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_2458:;				
_A89F084ED_2458:
; //	asm	nop				
	nop
; //_A89F084ED_2459:;				
_A89F084ED_2459:
; //	asm	nop				
	nop
; //_A89F084ED_2460:;				
_A89F084ED_2460:
; //	asm	nop				
	nop
; //_A89F084ED_2461:;				
_A89F084ED_2461:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_2462:;				
_A89F084ED_2462:
; //	asm	nop				
	nop
; //_A89F084ED_2463:;				
_A89F084ED_2463:
; //	asm	nop				
	nop
; //_A89F084ED_2464:;				
_A89F084ED_2464:
; //	asm	nop				
	nop
; //_A89F084ED_2465:;				
_A89F084ED_2465:
; //	asm	nop				
	nop
; //_A89F084ED_2466:;				
_A89F084ED_2466:
; //	asm	nop				
	nop
; //_A89F084ED_2467:;				
_A89F084ED_2467:
; //	asm	nop				
	nop
; //_A89F084ED_2468:;				
_A89F084ED_2468:
; //	asm	nop				
	nop
; //_A89F084ED_2469:;				
_A89F084ED_2469:
; //	asm	nop				
	nop
; //_A89F084ED_2470:;				
_A89F084ED_2470:
; //	asm	nop				
	nop
; //_A89F084ED_2471:;				
_A89F084ED_2471:
; //	asm	nop				
	nop
; //_A89F084ED_2472:;				
_A89F084ED_2472:
; //	asm	nop				
	nop
; //_A89F084ED_2473:;				
_A89F084ED_2473:
; //	asm	nop				
	nop
; //_A89F084ED_2474:;				
_A89F084ED_2474:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_2475:;				
_A89F084ED_2475:
; //	asm	nop				
	nop
; //_A89F084ED_2476:;				
_A89F084ED_2476:
; //	asm	nop				
	nop
; //_A89F084ED_2477:;				
_A89F084ED_2477:
; //	asm	nop				
	nop
; //_A89F084ED_2478:;				
_A89F084ED_2478:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_2479:;				
_A89F084ED_2479:
; //	asm	nop				
	nop
; //_A89F084ED_2480:;				
_A89F084ED_2480:
; //	asm	nop				
	nop
; //_A89F084ED_2481:;				
_A89F084ED_2481:
; //	asm	nop				
	nop
; //_A89F084ED_2482:;				
_A89F084ED_2482:
; //	asm	nop				
	nop
; //_A89F084ED_2483:;				
_A89F084ED_2483:
; //	asm	nop				
	nop
; //_A89F084ED_2484:;				
_A89F084ED_2484:
; //	asm	nop				
	nop
; //_A89F084ED_2485:;				
_A89F084ED_2485:
; //	asm	nop				
	nop
; //_A89F084ED_2486:;				
_A89F084ED_2486:
; //	asm	nop				
	nop
; //_A89F084ED_2487:;				
_A89F084ED_2487:
; //	asm	nop				
	nop
; //_A89F084ED_2488:;				
_A89F084ED_2488:
; //	asm	nop				
	nop
; //_A89F084ED_2489:;				
_A89F084ED_2489:
; //	asm	nop				
	nop
; //_A89F084ED_2490:;				
_A89F084ED_2490:
; //	asm	nop				
	nop
; //_A89F084ED_2491:;				
_A89F084ED_2491:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_2492:;				
_A89F084ED_2492:
; //	asm	nop				
	nop
; //_A89F084ED_2493:;				
_A89F084ED_2493:
; //	asm	nop				
	nop
; //_A89F084ED_2494:;				
_A89F084ED_2494:
; //	asm	nop				
	nop
; //_A89F084ED_2495:;				
_A89F084ED_2495:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_2496:;				
_A89F084ED_2496:
; //	asm	nop				
	nop
; //_A89F084ED_2497:;				
_A89F084ED_2497:
; //	asm	nop				
	nop
; //_A89F084ED_2498:;				
_A89F084ED_2498:
; //	asm	nop				
	nop
; //_A89F084ED_2499:;				
_A89F084ED_2499:
; //	asm	nop				
	nop
; //_A89F084ED_2500:;				
_A89F084ED_2500:
; //	asm	nop				
	nop
; //_A89F084ED_2501:;				
_A89F084ED_2501:
; //	asm	nop				
	nop
; //_A89F084ED_2502:;				
_A89F084ED_2502:
; //	asm	nop				
	nop
; //_A89F084ED_2503:;				
_A89F084ED_2503:
; //	asm	nop				
	nop
; //_A89F084ED_2504:;				
_A89F084ED_2504:
; //	asm	nop				
	nop
; //_A89F084ED_2505:;				
_A89F084ED_2505:
; //	asm	nop				
	nop
; //_A89F084ED_2506:;				
_A89F084ED_2506:
; //	asm	nop				
	nop
; //_A89F084ED_2507:;				
_A89F084ED_2507:
; //	asm	nop				
	nop
; //_A89F084ED_2508:;				
_A89F084ED_2508:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_2509:;				
_A89F084ED_2509:
; //	asm	nop				
	nop
; //_A89F084ED_2510:;				
_A89F084ED_2510:
; //	asm	nop				
	nop
; //_A89F084ED_2511:;				
_A89F084ED_2511:
; //	asm	nop				
	nop
; //_A89F084ED_2512:;				
_A89F084ED_2512:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_2513:;				
_A89F084ED_2513:
; //	asm	nop				
	nop
; //_A89F084ED_2514:;				
_A89F084ED_2514:
; //	asm	nop				
	nop
; //_A89F084ED_2515:;				
_A89F084ED_2515:
; //	asm	nop				
	nop
; //_A89F084ED_2516:;				
_A89F084ED_2516:
; //	asm	nop				
	nop
; //_A89F084ED_2517:;				
_A89F084ED_2517:
; //	asm	nop				
	nop
; //_A89F084ED_2518:;				
_A89F084ED_2518:
; //	asm	nop				
	nop
; //_A89F084ED_2519:;				
_A89F084ED_2519:
; //	asm	nop				
	nop
; //_A89F084ED_2520:;				
_A89F084ED_2520:
; //	asm	nop				
	nop
; //_A89F084ED_2521:;				
_A89F084ED_2521:
; //	asm	nop				
	nop
; //_A89F084ED_2522:;				
_A89F084ED_2522:
; //	asm	nop				
	nop
; //_A89F084ED_2523:;				
_A89F084ED_2523:
; //	asm	nop				
	nop
; //_A89F084ED_2524:;				
_A89F084ED_2524:
; //	asm	nop				
	nop
; //_A89F084ED_2525:;				
_A89F084ED_2525:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_2526:;				
_A89F084ED_2526:
; //	asm	nop				
	nop
; //_A89F084ED_2527:;				
_A89F084ED_2527:
; //	asm	nop				
	nop
; //_A89F084ED_2528:;				
_A89F084ED_2528:
; //	asm	nop				
	nop
; //_A89F084ED_2529:;				
_A89F084ED_2529:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_2530:;				
_A89F084ED_2530:
; //	asm	nop				
	nop
; //_A89F084ED_2531:;				
_A89F084ED_2531:
; //	asm	nop				
	nop
; //_A89F084ED_2532:;				
_A89F084ED_2532:
; //	asm	nop				
	nop
; //_A89F084ED_2533:;				
_A89F084ED_2533:
; //	asm	nop				
	nop
; //_A89F084ED_2534:;				
_A89F084ED_2534:
; //	asm	nop				
	nop
; //_A89F084ED_2535:;				
_A89F084ED_2535:
; //	asm	nop				
	nop
; //_A89F084ED_2536:;				
_A89F084ED_2536:
; //	asm	nop				
	nop
; //_A89F084ED_2537:;				
_A89F084ED_2537:
; //	asm	nop				
	nop
; //_A89F084ED_2538:;				
_A89F084ED_2538:
; //	asm	nop				
	nop
; //_A89F084ED_2539:;				
_A89F084ED_2539:
; //	asm	nop				
	nop
; //_A89F084ED_2540:;				
_A89F084ED_2540:
; //	asm	nop				
	nop
; //_A89F084ED_2541:;				
_A89F084ED_2541:
; //	asm	nop				
	nop
; //_A89F084ED_2542:;				
_A89F084ED_2542:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_2543:;				
_A89F084ED_2543:
; //	asm	nop				
	nop
; //_A89F084ED_2544:;				
_A89F084ED_2544:
; //	asm	nop				
	nop
; //_A89F084ED_2545:;				
_A89F084ED_2545:
; //	asm	nop				
	nop
; //_A89F084ED_2546:;				
_A89F084ED_2546:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_2547:;				
_A89F084ED_2547:
; //	asm	nop				
	nop
; //_A89F084ED_2548:;				
_A89F084ED_2548:
; //	asm	nop				
	nop
; //_A89F084ED_2549:;				
_A89F084ED_2549:
; //	asm	nop				
	nop
; //_A89F084ED_2550:;				
_A89F084ED_2550:
; //	asm	nop				
	nop
; //_A89F084ED_2551:;				
_A89F084ED_2551:
; //	asm	nop				
	nop
; //_A89F084ED_2552:;				
_A89F084ED_2552:
; //	asm	nop				
	nop
; //_A89F084ED_2553:;				
_A89F084ED_2553:
; //	asm	nop				
	nop
; //_A89F084ED_2554:;				
_A89F084ED_2554:
; //	asm	nop				
	nop
; //_A89F084ED_2555:;				
_A89F084ED_2555:
; //	asm	nop				
	nop
; //_A89F084ED_2556:;				
_A89F084ED_2556:
; //	asm	nop				
	nop
; //_A89F084ED_2557:;				
_A89F084ED_2557:
; //	asm	nop				
	nop
; //_A89F084ED_2558:;				
_A89F084ED_2558:
; //	asm	nop				
	nop
; //_A89F084ED_2559:;				
_A89F084ED_2559:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_2560:;				
_A89F084ED_2560:
; //	asm	nop				
	nop
; //_A89F084ED_2561:;				
_A89F084ED_2561:
; //	asm	nop				
	nop
; //_A89F084ED_2562:;				
_A89F084ED_2562:
; //	asm	nop				
	nop
; //_A89F084ED_2563:;				
_A89F084ED_2563:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_2564:;				
_A89F084ED_2564:
; //	asm	nop				
	nop
; //_A89F084ED_2565:;				
_A89F084ED_2565:
; //	asm	nop				
	nop
; //_A89F084ED_2566:;				
_A89F084ED_2566:
; //	asm	nop				
	nop
; //_A89F084ED_2567:;				
_A89F084ED_2567:
; //	asm	nop				
	nop
; //_A89F084ED_2568:;				
_A89F084ED_2568:
; //	asm	nop				
	nop
; //_A89F084ED_2569:;				
_A89F084ED_2569:
; //	asm	nop				
	nop
; //_A89F084ED_2570:;				
_A89F084ED_2570:
; //	asm	nop				
	nop
; //_A89F084ED_2571:;				
_A89F084ED_2571:
; //	asm	nop				
	nop
; //_A89F084ED_2572:;				
_A89F084ED_2572:
; //	asm	nop				
	nop
; //_A89F084ED_2573:;				
_A89F084ED_2573:
; //	asm	nop				
	nop
; //_A89F084ED_2574:;				
_A89F084ED_2574:
; //	asm	nop				
	nop
; //_A89F084ED_2575:;				
_A89F084ED_2575:
; //	asm	nop				
	nop
; //_A89F084ED_2576:;				
_A89F084ED_2576:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_2577:;				
_A89F084ED_2577:
; //	asm	nop				
	nop
; //_A89F084ED_2578:;				
_A89F084ED_2578:
; //	asm	nop				
	nop
; //_A89F084ED_2579:;				
_A89F084ED_2579:
; //	asm	nop				
	nop
; //_A89F084ED_2580:;				
_A89F084ED_2580:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_2581:;				
_A89F084ED_2581:
; //	asm	nop				
	nop
; //_A89F084ED_2582:;				
_A89F084ED_2582:
; //	asm	nop				
	nop
; //_A89F084ED_2583:;				
_A89F084ED_2583:
; //	asm	nop				
	nop
; //_A89F084ED_2584:;				
_A89F084ED_2584:
; //	asm	nop				
	nop
; //_A89F084ED_2585:;				
_A89F084ED_2585:
; //	asm	nop				
	nop
; //_A89F084ED_2586:;				
_A89F084ED_2586:
; //	asm	nop				
	nop
; //_A89F084ED_2587:;				
_A89F084ED_2587:
; //	asm	nop				
	nop
; //_A89F084ED_2588:;				
_A89F084ED_2588:
; //	asm	nop				
	nop
; //_A89F084ED_2589:;				
_A89F084ED_2589:
; //	asm	nop				
	nop
; //_A89F084ED_2590:;				
_A89F084ED_2590:
; //	asm	nop				
	nop
; //_A89F084ED_2591:;				
_A89F084ED_2591:
; //	asm	nop				
	nop
; //_A89F084ED_2592:;				
_A89F084ED_2592:
; //	asm	nop				
	nop
; //_A89F084ED_2593:;				
_A89F084ED_2593:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_2594:;				
_A89F084ED_2594:
; //	asm	nop				
	nop
; //_A89F084ED_2595:;				
_A89F084ED_2595:
; //	asm	nop				
	nop
; //_A89F084ED_2596:;				
_A89F084ED_2596:
; //	asm	nop				
	nop
; //_A89F084ED_2597:;				
_A89F084ED_2597:
; //	asm	nop				
	nop
; //_A89F084ED_2598:;				
_A89F084ED_2598:
; //	asm	nop				
	nop
; //_A89F084ED_2599:;				
_A89F084ED_2599:
; //	asm	nop				
	nop
; //_A89F084ED_2600:;				
_A89F084ED_2600:
; //	asm	nop				
	nop
; //_A89F084ED_2601:;				
_A89F084ED_2601:
; //	asm	nop				
	nop
; //_A89F084ED_2602:;				
_A89F084ED_2602:
; //	asm	nop				
	nop
; //_A89F084ED_2603:;				
_A89F084ED_2603:
; //	asm	nop				
	nop
; //_A89F084ED_2604:;				
_A89F084ED_2604:
; //	asm	nop				
	nop
; //_A89F084ED_2605:;				
_A89F084ED_2605:
; //	asm	nop				
	nop
; //_A89F084ED_2606:;				
_A89F084ED_2606:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_2607:;				
_A89F084ED_2607:
; //	asm	nop				
	nop
; //_A89F084ED_2608:;				
_A89F084ED_2608:
; //	asm	nop				
	nop
; //_A89F084ED_2609:;				
_A89F084ED_2609:
; //	asm	nop				
	nop
; //_A89F084ED_2610:;				
_A89F084ED_2610:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_2611:;				
_A89F084ED_2611:
; //	asm	nop				
	nop
; //_A89F084ED_2612:;				
_A89F084ED_2612:
; //	asm	nop				
	nop
; //_A89F084ED_2613:;				
_A89F084ED_2613:
; //	asm	nop				
	nop
; //_A89F084ED_2614:;				
_A89F084ED_2614:
; //	asm	nop				
	nop
; //_A89F084ED_2615:;				
_A89F084ED_2615:
; //	asm	nop				
	nop
; //_A89F084ED_2616:;				
_A89F084ED_2616:
; //	asm	nop				
	nop
; //_A89F084ED_2617:;				
_A89F084ED_2617:
; //	asm	nop				
	nop
; //_A89F084ED_2618:;				
_A89F084ED_2618:
; //	asm	nop				
	nop
; //_A89F084ED_2619:;				
_A89F084ED_2619:
; //	asm	nop				
	nop
; //_A89F084ED_2620:;				
_A89F084ED_2620:
; //	asm	nop				
	nop
; //_A89F084ED_2621:;				
_A89F084ED_2621:
; //	asm	nop				
	nop
; //_A89F084ED_2622:;				
_A89F084ED_2622:
; //	asm	nop				
	nop
; //_A89F084ED_2623:;				
_A89F084ED_2623:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_2624:;				
_A89F084ED_2624:
; //	asm	nop				
	nop
; //_A89F084ED_2625:;				
_A89F084ED_2625:
; //	asm	nop				
	nop
; //_A89F084ED_2626:;				
_A89F084ED_2626:
; //	asm	nop				
	nop
; //_A89F084ED_2627:;				
_A89F084ED_2627:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_2628:;				
_A89F084ED_2628:
; //	asm	nop				
	nop
; //_A89F084ED_2629:;				
_A89F084ED_2629:
; //	asm	nop				
	nop
; //_A89F084ED_2630:;				
_A89F084ED_2630:
; //	asm	nop				
	nop
; //_A89F084ED_2631:;				
_A89F084ED_2631:
; //	asm	nop				
	nop
; //_A89F084ED_2632:;				
_A89F084ED_2632:
; //	asm	nop				
	nop
; //_A89F084ED_2633:;				
_A89F084ED_2633:
; //	asm	nop				
	nop
; //_A89F084ED_2634:;				
_A89F084ED_2634:
; //	asm	nop				
	nop
; //_A89F084ED_2635:;				
_A89F084ED_2635:
; //	asm	nop				
	nop
; //_A89F084ED_2636:;				
_A89F084ED_2636:
; //	asm	nop				
	nop
; //_A89F084ED_2637:;				
_A89F084ED_2637:
; //	asm	nop				
	nop
; //_A89F084ED_2638:;				
_A89F084ED_2638:
; //	asm	nop				
	nop
; //_A89F084ED_2639:;				
_A89F084ED_2639:
; //	asm	nop				
	nop
; //_A89F084ED_2640:;				
_A89F084ED_2640:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_2641:;				
_A89F084ED_2641:
; //	asm	nop				
	nop
; //_A89F084ED_2642:;				
_A89F084ED_2642:
; //	asm	nop				
	nop
; //_A89F084ED_2643:;				
_A89F084ED_2643:
; //	asm	nop				
	nop
; //_A89F084ED_2644:;				
_A89F084ED_2644:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_2645:;				
_A89F084ED_2645:
; //	asm	nop				
	nop
; //_A89F084ED_2646:;				
_A89F084ED_2646:
; //	asm	nop				
	nop
; //_A89F084ED_2647:;				
_A89F084ED_2647:
; //	asm	nop				
	nop
; //_A89F084ED_2648:;				
_A89F084ED_2648:
; //	asm	nop				
	nop
; //_A89F084ED_2649:;				
_A89F084ED_2649:
; //	asm	nop				
	nop
; //_A89F084ED_2650:;				
_A89F084ED_2650:
; //	asm	nop				
	nop
; //_A89F084ED_2651:;				
_A89F084ED_2651:
; //	asm	nop				
	nop
; //_A89F084ED_2652:;				
_A89F084ED_2652:
; //	asm	nop				
	nop
; //_A89F084ED_2653:;				
_A89F084ED_2653:
; //	asm	nop				
	nop
; //_A89F084ED_2654:;				
_A89F084ED_2654:
; //	asm	nop				
	nop
; //_A89F084ED_2655:;				
_A89F084ED_2655:
; //	asm	nop				
	nop
; //_A89F084ED_2656:;				
_A89F084ED_2656:
; //	asm	nop				
	nop
; //_A89F084ED_2657:;				
_A89F084ED_2657:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_2658:;				
_A89F084ED_2658:
; //	asm	nop				
	nop
; //_A89F084ED_2659:;				
_A89F084ED_2659:
; //	asm	nop				
	nop
; //_A89F084ED_2660:;				
_A89F084ED_2660:
; //	asm	nop				
	nop
; //_A89F084ED_2661:;				
_A89F084ED_2661:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_2662:;				
_A89F084ED_2662:
; //	asm	nop				
	nop
; //_A89F084ED_2663:;				
_A89F084ED_2663:
; //	asm	nop				
	nop
; //_A89F084ED_2664:;				
_A89F084ED_2664:
; //	asm	nop				
	nop
; //_A89F084ED_2665:;				
_A89F084ED_2665:
; //	asm	nop				
	nop
; //_A89F084ED_2666:;				
_A89F084ED_2666:
; //	asm	nop				
	nop
; //_A89F084ED_2667:;				
_A89F084ED_2667:
; //	asm	nop				
	nop
; //_A89F084ED_2668:;				
_A89F084ED_2668:
; //	asm	nop				
	nop
; //_A89F084ED_2669:;				
_A89F084ED_2669:
; //	asm	nop				
	nop
; //_A89F084ED_2670:;				
_A89F084ED_2670:
; //	asm	nop				
	nop
; //_A89F084ED_2671:;				
_A89F084ED_2671:
; //	asm	nop				
	nop
; //_A89F084ED_2672:;				
_A89F084ED_2672:
; //	asm	nop				
	nop
; //_A89F084ED_2673:;				
_A89F084ED_2673:
; //	asm	nop				
	nop
; //_A89F084ED_2674:;				
_A89F084ED_2674:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_2675:;				
_A89F084ED_2675:
; //	asm	nop				
	nop
; //_A89F084ED_2676:;				
_A89F084ED_2676:
; //	asm	nop				
	nop
; //_A89F084ED_2677:;				
_A89F084ED_2677:
; //	asm	nop				
	nop
; //_A89F084ED_2678:;				
_A89F084ED_2678:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_2679:;				
_A89F084ED_2679:
; //	asm	nop				
	nop
; //_A89F084ED_2680:;				
_A89F084ED_2680:
; //	asm	nop				
	nop
; //_A89F084ED_2681:;				
_A89F084ED_2681:
; //	asm	nop				
	nop
; //_A89F084ED_2682:;				
_A89F084ED_2682:
; //	asm	nop				
	nop
; //_A89F084ED_2683:;				
_A89F084ED_2683:
; //	asm	nop				
	nop
; //_A89F084ED_2684:;				
_A89F084ED_2684:
; //	asm	nop				
	nop
; //_A89F084ED_2685:;				
_A89F084ED_2685:
; //	asm	nop				
	nop
; //_A89F084ED_2686:;				
_A89F084ED_2686:
; //	asm	nop				
	nop
; //_A89F084ED_2687:;				
_A89F084ED_2687:
; //	asm	nop				
	nop
; //_A89F084ED_2688:;				
_A89F084ED_2688:
; //	asm	nop				
	nop
; //_A89F084ED_2689:;				
_A89F084ED_2689:
; //	asm	nop				
	nop
; //_A89F084ED_2690:;				
_A89F084ED_2690:
; //	asm	nop				
	nop
; //_A89F084ED_2691:;				
_A89F084ED_2691:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_2692:;				
_A89F084ED_2692:
; //	asm	nop				
	nop
; //_A89F084ED_2693:;				
_A89F084ED_2693:
; //	asm	nop				
	nop
; //_A89F084ED_2694:;				
_A89F084ED_2694:
; //	asm	nop				
	nop
; //_A89F084ED_2695:;				
_A89F084ED_2695:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_2696:;				
_A89F084ED_2696:
; //	asm	nop				
	nop
; //_A89F084ED_2697:;				
_A89F084ED_2697:
; //	asm	nop				
	nop
; //_A89F084ED_2698:;				
_A89F084ED_2698:
; //	asm	nop				
	nop
; //_A89F084ED_2699:;				
_A89F084ED_2699:
; //	asm	nop				
	nop
; //_A89F084ED_2700:;				
_A89F084ED_2700:
; //	asm	nop				
	nop
; //_A89F084ED_2701:;				
_A89F084ED_2701:
; //	asm	nop				
	nop
; //_A89F084ED_2702:;				
_A89F084ED_2702:
; //	asm	nop				
	nop
; //_A89F084ED_2703:;				
_A89F084ED_2703:
; //	asm	nop				
	nop
; //_A89F084ED_2704:;				
_A89F084ED_2704:
; //	asm	nop				
	nop
; //_A89F084ED_2705:;				
_A89F084ED_2705:
; //	asm	nop				
	nop
; //_A89F084ED_2706:;				
_A89F084ED_2706:
; //	asm	nop				
	nop
; //_A89F084ED_2707:;				
_A89F084ED_2707:
; //	asm	nop				
	nop
; //_A89F084ED_2708:;				
_A89F084ED_2708:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_2709:;				
_A89F084ED_2709:
; //	asm	nop				
	nop
; //_A89F084ED_2710:;				
_A89F084ED_2710:
; //	asm	nop				
	nop
; //_A89F084ED_2711:;				
_A89F084ED_2711:
; //	asm	nop				
	nop
; //_A89F084ED_2712:;				
_A89F084ED_2712:
; //	asm set io[0x09].b14;			
	set io[0x09].b14//
; //_A89F084ED_2713:;				
_A89F084ED_2713:
; //	asm	nop				
	nop
; //_A89F084ED_2714:;				
_A89F084ED_2714:
; //	asm	nop				
	nop
; //_A89F084ED_2715:;				
_A89F084ED_2715:
; //	asm	nop				
	nop
; //_A89F084ED_2716:;				
_A89F084ED_2716:
; //	asm	nop				
	nop
; //_A89F084ED_2717:;				
_A89F084ED_2717:
; //	asm	nop				
	nop
; //_A89F084ED_2718:;				
_A89F084ED_2718:
; //	asm	nop				
	nop
; //_A89F084ED_2719:;				
_A89F084ED_2719:
; //	asm	nop				
	nop
; //_A89F084ED_2720:;				
_A89F084ED_2720:
; //	asm	nop				
	nop
; //_A89F084ED_2721:;				
_A89F084ED_2721:
; //	asm	nop				
	nop
; //_A89F084ED_2722:;				
_A89F084ED_2722:
; //	asm	nop				
	nop
; //_A89F084ED_2723:;				
_A89F084ED_2723:
; //	asm	nop				
	nop
; //_A89F084ED_2724:;				
_A89F084ED_2724:
; //	asm	nop				
	nop
; //_A89F084ED_2725:;				
_A89F084ED_2725:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //_A89F084ED_2726:;				
_A89F084ED_2726:
; //	asm	nop				
	nop
; //_A89F084ED_2727:;				
_A89F084ED_2727:
; //	asm	nop				
	nop
; //_A89F084ED_2728:;				
_A89F084ED_2728:
; //	asm	nop				
	nop
; //_A89F084ED_2729:;				
_A89F084ED_2729:
; //	goto LD63FD439_108;			
	pch =	LD63FD439_108
	ljmp	LD63FD439_108
; //LD63FD439_116:;					
LD63FD439_116:
; //_A89F084ED_2730:;				
_A89F084ED_2730:
; //	goto LD63FD439_108;			
	pch =	LD63FD439_108
	ljmp	LD63FD439_108
; //	goto LD63FD439_108;			
	pch =	LD63FD439_108
	ljmp	LD63FD439_108
; //LD63FD439_109:;					
LD63FD439_109:
; //	sCX	= sAX;				
	AR	= AX
	CX	= AR
; //	sAX	= 0x0000;			
	AX	= 0x00
; //	sfx_CMP_AX_CX_JE();			
	pch	= sfx_CMP_AX_CX_JE
	lcall	sfx_CMP_AX_CX_JE
; //	if(__jne__)	goto LD63FD439_117;	
	if NZ	jmp LD63FD439_117
; //	goto LD63FD439_110;			
	pch =	LD63FD439_110
	ljmp	LD63FD439_110
; //LD63FD439_117:;					
LD63FD439_117:
; //	sAX	= 0x0001;			
	AX	= 0x01
; //	sfx_CMP_AX_CX_JE();			
	pch	= sfx_CMP_AX_CX_JE
	lcall	sfx_CMP_AX_CX_JE
; //	if(__jne__)	goto LD63FD439_118;	
	if NZ	jmp LD63FD439_118
; //	goto LD63FD439_111;			
	pch =	LD63FD439_111
	ljmp	LD63FD439_111
; //LD63FD439_118:;					
LD63FD439_118:
; //	sAX	= 0x0003;			
	AX	= 0x03
; //	sfx_CMP_AX_CX_JE();			
	pch	= sfx_CMP_AX_CX_JE
	lcall	sfx_CMP_AX_CX_JE
; //	if(__jne__)	goto LD63FD439_119;	
	if NZ	jmp LD63FD439_119
; //	goto LD63FD439_112;			
	pch =	LD63FD439_112
	ljmp	LD63FD439_112
; //LD63FD439_119:;					
LD63FD439_119:
; //	sAX	= 0x0002;			
	AX	= 0x02
; //	sfx_CMP_AX_CX_JE();			
	pch	= sfx_CMP_AX_CX_JE
	lcall	sfx_CMP_AX_CX_JE
; //	if(__jne__)	goto LD63FD439_120;	
	if NZ	jmp LD63FD439_120
; //	goto LD63FD439_113;			
	pch =	LD63FD439_113
	ljmp	LD63FD439_113
; //LD63FD439_120:;					
LD63FD439_120:
; //	sAX	= 0x0005;			
	AX	= 0x05
; //	sfx_CMP_AX_CX_JE();			
	pch	= sfx_CMP_AX_CX_JE
	lcall	sfx_CMP_AX_CX_JE
; //	if(__jne__)	goto LD63FD439_121;	
	if NZ	jmp LD63FD439_121
; //	goto LD63FD439_114;			
	pch =	LD63FD439_114
	ljmp	LD63FD439_114
; //LD63FD439_121:;					
LD63FD439_121:
; //	sAX	= 0x0004;			
	AX	= 0x04
; //	sfx_CMP_AX_CX_JE();			
	pch	= sfx_CMP_AX_CX_JE
	lcall	sfx_CMP_AX_CX_JE
; //	if(__jne__)	goto LD63FD439_122;	
	if NZ	jmp LD63FD439_122
; //	goto LD63FD439_115;			
	pch =	LD63FD439_115
	ljmp	LD63FD439_115
; //LD63FD439_122:;					
LD63FD439_122:
; //	goto	LD63FD439_116;			
	pch =	LD63FD439_116
	ljmp	LD63FD439_116
; //LD63FD439_108:;					
LD63FD439_108:
; //	goto LD63FD439_106;			
	pch =	LD63FD439_106
	ljmp	LD63FD439_106
; //LD63FD439_105:;					
LD63FD439_105:
; //_A89F084ED_2731:;				
_A89F084ED_2731:
; //LD63FD439_102:;					
LD63FD439_102:
; //_A89F084ED_2732:;				
_A89F084ED_2732:
; //	return;					
	AR	= 1
	BP	+= AR
	pop	AR
	rm[BP_SAVE]	= AR
	rets
; //_WS_TRSF_color_setE1CC300C_end:;		
_WS_TRSF_color_setE1CC300C_end:
; //_A89F084ED_2733:;				
_A89F084ED_2733:
; //}
; //
; //void _WS_RefreshAD7B99B1()			
_WS_RefreshAD7B99B1:
; //{
; //	__int16 _i_1_2;
; //						
	AR	= rm[BP_SAVE]
	push	AR
	AR	= BP
	rm[BP_SAVE]	= AR
	AR	 = -1
	BP	+= AR
; //_A89F084ED_2734:;				
_A89F084ED_2734:
; //_A89F084ED_2735:;				
_A89F084ED_2735:
; //	_i_1_2+0	= 0x00;			
	I1	= rm[BP_SAVE]
	AR	= 0x00
	rm[I1]	= AR
; //LD63FD439_124:;					
LD63FD439_124:
; //	sSI	= (int)&_i_1_2;			
	I1	= rm[BP_SAVE]
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sCX	= 0x0003;			
	CX	= 0x03
; //	sfx_CMP_AX_CX_JBE();			
	pch	= sfx_CMP_AX_CX_JBE
	lcall	sfx_CMP_AX_CX_JBE
; //	if(__je__)	goto LD63FD439_128;	
	if ZR	jmp LD63FD439_128
; //	goto	LD63FD439_126;			
	pch =	LD63FD439_126
	ljmp	LD63FD439_126
; //LD63FD439_128:;					
LD63FD439_128:
; //	goto LD63FD439_125;			
	pch =	LD63FD439_125
	ljmp	LD63FD439_125
; //LD63FD439_127:;					
LD63FD439_127:
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
; //	goto LD63FD439_124;			
	pch =	LD63FD439_124
	ljmp	LD63FD439_124
; //LD63FD439_125:;					
LD63FD439_125:
; //	
; //_A89F084ED_2736:;				
_A89F084ED_2736:
; //_A89F084ED_2737:;				
_A89F084ED_2737:
; //	asm AX = _LED_Buf98A4A35A+0;		
	AX = _LED_Buf98A4A35A+0//
; //	PUSH(sAX);				
	push	AX
; //	sSI	= (int)&_i_1_2;			
	I1	= rm[BP_SAVE]
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sCX	= 0x0005;			
	CX	= 0x05
; //	sfx_IMUL_AX_CX();			
	pch	= sfx_IMUL_AX_CX
	lcall	sfx_IMUL_AX_CX
; //	sCX	= POP();			
	pop	CX
; //	sAX	= sAX + sCX;			
	AR	= CX
	AX	+= AR
; //	sSI	= sAX;				
	AR	= AX
	I1	= AR
; //	sAX	= *(__int16*)sSI++;		
	AX	= rm[I1++]
; //	sDX	= *(__int16*)sSI--;		
	DX	= rm[I1--]
; //	PUSH(sAX);				
	push	AX
; //	_WS_Send24bits851C5C55(STACK[sSP + 0]);	
	pch	= _WS_Send24bits851C5C55
	lcall	_WS_Send24bits851C5C55
; //	RESTORESP(1);				
	pop	AR
; //	goto LD63FD439_127;			
	pch =	LD63FD439_127
	ljmp	LD63FD439_127
; //LD63FD439_126:;					
LD63FD439_126:
; //_A89F084ED_2738:;				
_A89F084ED_2738:
; //_A89F084ED_2739:;				
_A89F084ED_2739:
; //	asm clr io[0x09].b14;			
	clr io[0x09].b14//
; //LD63FD439_123:;					
LD63FD439_123:
; //_A89F084ED_2740:;				
_A89F084ED_2740:
; //	return;					
	AR	= 1
	BP	+= AR
	pop	AR
	rm[BP_SAVE]	= AR
	rets
; //_WS_RefreshAD7B99B1_end:;			
_WS_RefreshAD7B99B1_end:
; //_A89F084ED_2741:;				
_A89F084ED_2741:
; //}
; //
; //void _WS_Key_RGBC5B96B6D()			
_WS_Key_RGBC5B96B6D:
; //{
; //_A89F084ED_2742:;				
_A89F084ED_2742:
; //	
; //_A89F084ED_2743:;				
_A89F084ED_2743:
; //	asm I1 = LD63FD439_130+0;		
	I1 = LD63FD439_130+0//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	goto LD63FD439_132;			
	pch =	LD63FD439_132
	ljmp	LD63FD439_132
; //LD63FD439_133:;					
LD63FD439_133:
; //_A89F084ED_2744:;				
_A89F084ED_2744:
; //_A89F084ED_2745:;				
_A89F084ED_2745:
; //	sAX	= 0x0000;			
	AX	= 0x00
; //	PUSH(sAX);				
	push	AX
; //	sAX	= 0x0003;			
	AX	= 0x03
; //	PUSH(sAX);				
	push	AX
; //	sAX	= 0x0000;			
	AX	= 0x00
; //	PUSH(sAX);				
	push	AX
; //	_WS_ColorSet_LEDCA3DEB8C(STACK[sSP + 0], STACK[sSP + 1], STACK[sSP + 2]);
	pch	= _WS_ColorSet_LEDCA3DEB8C
	lcall	_WS_ColorSet_LEDCA3DEB8C
; //	RESTORESP(3);				
	AR	= 3
	BP	+= AR
; //_A89F084ED_2746:;				
_A89F084ED_2746:
; //_A89F084ED_2747:;				
_A89F084ED_2747:
; //	_WS_RefreshAD7B99B1();			
	pch	= _WS_RefreshAD7B99B1
	lcall	_WS_RefreshAD7B99B1
; //_A89F084ED_2748:;				
_A89F084ED_2748:
; //_A89F084ED_2749:;				
_A89F084ED_2749:
; //	sAX	= 0x0000;			
	AX	= 0x00
; //	PUSH(sAX);				
	push	AX
; //	sAX	= 0x0003;			
	AX	= 0x03
; //	PUSH(sAX);				
	push	AX
; //	sAX	= 0x0000;			
	AX	= 0x00
; //	PUSH(sAX);				
	push	AX
; //	_WS_ColorSet_LEDCA3DEB8C(STACK[sSP + 0], STACK[sSP + 1], STACK[sSP + 2]);
	pch	= _WS_ColorSet_LEDCA3DEB8C
	lcall	_WS_ColorSet_LEDCA3DEB8C
; //	RESTORESP(3);				
	AR	= 3
	BP	+= AR
; //_A89F084ED_2750:;				
_A89F084ED_2750:
; //_A89F084ED_2751:;				
_A89F084ED_2751:
; //	_WS_RefreshAD7B99B1();			
	pch	= _WS_RefreshAD7B99B1
	lcall	_WS_RefreshAD7B99B1
; //_A89F084ED_2752:;				
_A89F084ED_2752:
; //	goto LD63FD439_131;			
	pch =	LD63FD439_131
	ljmp	LD63FD439_131
; //LD63FD439_134:;					
LD63FD439_134:
; //_A89F084ED_2753:;				
_A89F084ED_2753:
; //_A89F084ED_2754:;				
_A89F084ED_2754:
; //	sAX	= 0x0000;			
	AX	= 0x00
; //	PUSH(sAX);				
	push	AX
; //	sAX	= 0x0003;			
	AX	= 0x03
; //	PUSH(sAX);				
	push	AX
; //	sAX	= 0x0000;			
	AX	= 0x00
; //	PUSH(sAX);				
	push	AX
; //	_WS_ColorSet_LEDCA3DEB8C(STACK[sSP + 0], STACK[sSP + 1], STACK[sSP + 2]);
	pch	= _WS_ColorSet_LEDCA3DEB8C
	lcall	_WS_ColorSet_LEDCA3DEB8C
; //	RESTORESP(3);				
	AR	= 3
	BP	+= AR
; //_A89F084ED_2755:;				
_A89F084ED_2755:
; //_A89F084ED_2756:;				
_A89F084ED_2756:
; //	_WS_RefreshAD7B99B1();			
	pch	= _WS_RefreshAD7B99B1
	lcall	_WS_RefreshAD7B99B1
; //_A89F084ED_2757:;				
_A89F084ED_2757:
; //_A89F084ED_2758:;				
_A89F084ED_2758:
; //	sAX	= 0x001F;			
	AX	= 0x1F
; //	PUSH(sAX);				
	push	AX
; //	sAX	= 0x0006;			
	AX	= 0x06
; //	PUSH(sAX);				
	push	AX
; //	sAX	= 0x0004;			
	AX	= 0x04
; //	PUSH(sAX);				
	push	AX
; //	_WS_ColorSet_LEDCA3DEB8C(STACK[sSP + 0], STACK[sSP + 1], STACK[sSP + 2]);
	pch	= _WS_ColorSet_LEDCA3DEB8C
	lcall	_WS_ColorSet_LEDCA3DEB8C
; //	RESTORESP(3);				
	AR	= 3
	BP	+= AR
; //_A89F084ED_2759:;				
_A89F084ED_2759:
; //_A89F084ED_2760:;				
_A89F084ED_2760:
; //	_WS_RefreshAD7B99B1();			
	pch	= _WS_RefreshAD7B99B1
	lcall	_WS_RefreshAD7B99B1
; //_A89F084ED_2761:;				
_A89F084ED_2761:
; //	goto LD63FD439_131;			
	pch =	LD63FD439_131
	ljmp	LD63FD439_131
; //LD63FD439_135:;					
LD63FD439_135:
; //_A89F084ED_2762:;				
_A89F084ED_2762:
; //_A89F084ED_2763:;				
_A89F084ED_2763:
; //	sAX	= 0x0000;			
	AX	= 0x00
; //	PUSH(sAX);				
	push	AX
; //	sAX	= 0x0003;			
	AX	= 0x03
; //	PUSH(sAX);				
	push	AX
; //	sAX	= 0x0000;			
	AX	= 0x00
; //	PUSH(sAX);				
	push	AX
; //	_WS_ColorSet_LEDCA3DEB8C(STACK[sSP + 0], STACK[sSP + 1], STACK[sSP + 2]);
	pch	= _WS_ColorSet_LEDCA3DEB8C
	lcall	_WS_ColorSet_LEDCA3DEB8C
; //	RESTORESP(3);				
	AR	= 3
	BP	+= AR
; //_A89F084ED_2764:;				
_A89F084ED_2764:
; //_A89F084ED_2765:;				
_A89F084ED_2765:
; //	_WS_RefreshAD7B99B1();			
	pch	= _WS_RefreshAD7B99B1
	lcall	_WS_RefreshAD7B99B1
; //_A89F084ED_2766:;				
_A89F084ED_2766:
; //_A89F084ED_2767:;				
_A89F084ED_2767:
; //	sAX	= 0xFF00;			
	AX	= 0xFF00
; //	PUSH(sAX);				
	push	AX
; //	sAX	= 0x000A;			
	AX	= 0x0A
; //	PUSH(sAX);				
	push	AX
; //	sAX	= 0x0007;			
	AX	= 0x07
; //	PUSH(sAX);				
	push	AX
; //	_WS_ColorSet_LEDCA3DEB8C(STACK[sSP + 0], STACK[sSP + 1], STACK[sSP + 2]);
	pch	= _WS_ColorSet_LEDCA3DEB8C
	lcall	_WS_ColorSet_LEDCA3DEB8C
; //	RESTORESP(3);				
	AR	= 3
	BP	+= AR
; //_A89F084ED_2768:;				
_A89F084ED_2768:
; //_A89F084ED_2769:;				
_A89F084ED_2769:
; //	_WS_RefreshAD7B99B1();			
	pch	= _WS_RefreshAD7B99B1
	lcall	_WS_RefreshAD7B99B1
; //_A89F084ED_2770:;				
_A89F084ED_2770:
; //	goto LD63FD439_131;			
	pch =	LD63FD439_131
	ljmp	LD63FD439_131
; //	goto LD63FD439_131;			
	pch =	LD63FD439_131
	ljmp	LD63FD439_131
; //LD63FD439_132:;					
LD63FD439_132:
; //	sCX	= sAX;				
	AR	= AX
	CX	= AR
; //	sAX	= 0x0000;			
	AX	= 0x00
; //	sfx_CMP_AX_CX_U_JE();			
	pch	= sfx_CMP_AX_CX_U_JE
	lcall	sfx_CMP_AX_CX_U_JE
; //	if(__jne__)	goto LD63FD439_136;	
	if NZ	jmp LD63FD439_136
; //	goto LD63FD439_133;			
	pch =	LD63FD439_133
	ljmp	LD63FD439_133
; //LD63FD439_136:;					
LD63FD439_136:
; //	sAX	= 0x0001;			
	AX	= 0x01
; //	sfx_CMP_AX_CX_U_JE();			
	pch	= sfx_CMP_AX_CX_U_JE
	lcall	sfx_CMP_AX_CX_U_JE
; //	if(__jne__)	goto LD63FD439_137;	
	if NZ	jmp LD63FD439_137
; //	goto LD63FD439_134;			
	pch =	LD63FD439_134
	ljmp	LD63FD439_134
; //LD63FD439_137:;					
LD63FD439_137:
; //	sAX	= 0x0002;			
	AX	= 0x02
; //	sfx_CMP_AX_CX_U_JE();			
	pch	= sfx_CMP_AX_CX_U_JE
	lcall	sfx_CMP_AX_CX_U_JE
; //	if(__jne__)	goto LD63FD439_138;	
	if NZ	jmp LD63FD439_138
; //	goto LD63FD439_135;			
	pch =	LD63FD439_135
	ljmp	LD63FD439_135
; //LD63FD439_138:;					
LD63FD439_138:
; //	goto	LD63FD439_131;			
	pch =	LD63FD439_131
	ljmp	LD63FD439_131
; //LD63FD439_131:;					
LD63FD439_131:
; //_A89F084ED_2771:;				
_A89F084ED_2771:
; //	asm I1 = LD63FD439_130+0;		
	I1 = LD63FD439_130+0//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sSI	= (int)&LD63FD439_130;		
	I1	= LD63FD439_130
; //	PUSH(sAX);				
	push	AX
; //	sAX	= 0x0001;			
	AX	= 0x01
; //	sCX	= *(__int16*)sSI;		
	CX	= rm[I1]
; //	sCX	= sCX + sAX;			
	AR	= AX
	CX	+= AR
; //	*(__int16*)sSI	= sCX;			
	rm[I1]	= CX
; //	sAX	= POP();			
	pop	AX
; //_A89F084ED_2772:;				
_A89F084ED_2772:
; //	asm I1 = LD63FD439_130+0;		
	I1 = LD63FD439_130+0//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sCX	= 0x0002;			
	CX	= 0x02
; //	sfx_CMP_AX_CX_JA();			
	pch	= sfx_CMP_AX_CX_JA
	lcall	sfx_CMP_AX_CX_JA
; //	if(__je__)	goto LD63FD439_140;	
	if ZR	jmp LD63FD439_140
; //	goto	LD63FD439_139;			
	pch =	LD63FD439_139
	ljmp	LD63FD439_139
; //LD63FD439_140:;					
LD63FD439_140:
; //_A89F084ED_2773:;				
_A89F084ED_2773:
; //	LD63FD439_130+0	= 0x00;			
	AR	= 0x00
	rm[LD63FD439_130+0]	= AR
; //LD63FD439_139:;					
LD63FD439_139:
; //_A89F084ED_2774:;				
_A89F084ED_2774:
; //_A89F084ED_2775:;				
_A89F084ED_2775:
; //_A89F084ED_2776:;				
_A89F084ED_2776:
; //	sAX	= 0x0032;			
	AX	= 0x32
; //	PUSH(sAX);				
	push	AX
; //	_delay6F9F34ED(STACK[sSP + 0]);		
	pch	= _delay6F9F34ED
	lcall	_delay6F9F34ED
; //	RESTORESP(1);				
	pop	AR
; //LD63FD439_129:;					
LD63FD439_129:
; //_A89F084ED_2777:;				
_A89F084ED_2777:
; //	return;					
	rets
; //_WS_Key_RGBC5B96B6D_end:;			
_WS_Key_RGBC5B96B6D_end:
; //_A89F084ED_2778:;				
_A89F084ED_2778:
; //}
; //
; //
; //
; //
.code
; //
; //
; //naked void ginit_code_WS2811_02F950F9_s(void)	
ginit_code_WS2811_02F950F9_s:
; //{
; //	asm P1 = #ginit_seg_WS2811_02F950F9_s+0;
	P1 = #ginit_seg_WS2811_02F950F9_s+0//
; //	asm I1 = LD63FD439_73;			
	I1 = LD63FD439_73//
; //	sCX = 1;				
	CX	= 0x01
; //	sfx_GLOBALINIT();			
	pch	= sfx_GLOBALINIT
	lcall	sfx_GLOBALINIT
; //
; //	asm P1 = #ginit_seg_WS2811_02F950F9_s+1;
	P1 = #ginit_seg_WS2811_02F950F9_s+1//
; //	asm I1 = LD63FD439_130;			
	I1 = LD63FD439_130//
; //	sCX = 1;				
	CX	= 0x01
; //	sfx_GLOBALINIT();			
	pch	= sfx_GLOBALINIT
	lcall	sfx_GLOBALINIT
; //
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
.code
; //
; //
; //
; //
; //__int16 ginit_seg_WS2811_02F950F9_s[2] = {	
ginit_seg_WS2811_02F950F9_s:
; //						
DW 
; //	0x0000,					
DW 0x0000,
; //						
DW 
; //	0x0000					
DW 0x0000,
; //};
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
