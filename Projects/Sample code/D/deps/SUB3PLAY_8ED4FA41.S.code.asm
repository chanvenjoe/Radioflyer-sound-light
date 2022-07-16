; sub3play.c Code Start!!;
VarRM[0:4095]={
 bts_ch0_get_ix[2],PCMYIN_PTR,PCMYOU_PTR,PCMIN,SampleCh0Rate,BaseOn512#PCMY[512],SUBFLTI[4],SUBFLTA
,SUBFLTP,SUBFLTG 
};

; //
.code
; //
; //
; //rjmp void _ClearRenderBufB079D01D();
; //rjmp void _Sub3Initial96BE24F3();
; //rjmp void _Sub3Startup4CD35D6D();
; //rjmp void _Sub3ZeroFillABFF23AA();
; //rjmp void _Sub3Play422CAD6D(__int16 _sdata_0_4_0, __int16 _sdata_0_4_1);
; //rjmp void Sbb_Ch0GetBts();
; //rjmp void _Sbb_SkipdataE1C72441(__int16 _offset_0_4_0, __int16 _offset_0_4_1);
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
; //rjmp void _ClearRenderBufB079D01D()		
_ClearRenderBufB079D01D:
; //{
; //	__int16 _i_1_2;
; //						
	AR	= rm[BP_SAVE]
	push	AR
	AR	= BP
	rm[BP_SAVE]	= AR
	AR	 = -1
	BP	+= AR
; //_A0432E234_232:;				
_A0432E234_232:
; //	
; //_A0432E234_233:;				
_A0432E234_233:
; //	asm AX = PCMY+0;			
	AX = PCMY+0//
; //_A0432E234_234:;				
_A0432E234_234:
; //	asm	AR = AX				
	AR = AX
; //_A0432E234_235:;				
_A0432E234_235:
; //	asm	I0 = AR				
	I0 = AR
; //	
; //	
; //_A0432E234_236:;				
_A0432E234_236:
; //	_i_1_2+0	= 0x0200;		
	I1	= rm[BP_SAVE]
	AX	= 0x0200
	rm[I1]	= AX
; //LFB78B58C_88:;					
LFB78B58C_88:
; //_A0432E234_237:;				
_A0432E234_237:
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
; //	asm rm[I1] = CX - AR;			
	rm[I1] = CX - AR//
; //	sfx_CHECKZERO();			
	AR	= AX
; //	if(__jnz__)	goto LFB78B58C_89;	
	if NZ	jmp LFB78B58C_89
; //	goto	LFB78B58C_87;			
	jmp	LFB78B58C_87
; //LFB78B58C_89:;					
LFB78B58C_89:
; //	
; //_A0432E234_238:;				
_A0432E234_238:
; //	sAX	= 0x0000;			
	AX	= 0x00
; //_A0432E234_239:;				
_A0432E234_239:
; //	asm	rm[I0++] = AX			
	rm[I0++] = AX
; //_A0432E234_240:;				
_A0432E234_240:
; //	goto LFB78B58C_88;			
	jmp	LFB78B58C_88
; //LFB78B58C_87:;					
LFB78B58C_87:
; //LFB78B58C_86:;					
LFB78B58C_86:
; //_A0432E234_241:;				
_A0432E234_241:
; //	return;					
	AR	= 1
	BP	+= AR
	pop	AR
	rm[BP_SAVE]	= AR
	rets
; //_ClearRenderBufB079D01D_end:;			
_ClearRenderBufB079D01D_end:
; //_A0432E234_242:;				
_A0432E234_242:
; //}
; //
; //rjmp void _Sub3Initial96BE24F3()		
_Sub3Initial96BE24F3:
; //{
; //_A0432E234_243:;				
_A0432E234_243:
; //	
; //_A0432E234_244:;				
_A0432E234_244:
; //_A0432E234_245:;				
_A0432E234_245:
; //	_ClearRenderBufB079D01D();		
	pch	= _ClearRenderBufB079D01D
	lcall	_ClearRenderBufB079D01D
; //_A0432E234_246:;				
_A0432E234_246:
; //	asm AX = PCMY+0;			
	AX = PCMY+0//
; //	asm I1 = PCMYIN_PTR+0;			
	I1 = PCMYIN_PTR+0//
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_A0432E234_247:;				
_A0432E234_247:
; //	asm AX = PCMY+0;			
	AX = PCMY+0//
; //	asm I1 = PCMYOU_PTR+0;			
	I1 = PCMYOU_PTR+0//
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //LFB78B58C_90:;					
LFB78B58C_90:
; //_A0432E234_248:;				
_A0432E234_248:
; //	return;					
	rets
; //_Sub3Initial96BE24F3_end:;			
_Sub3Initial96BE24F3_end:
; //_A0432E234_249:;				
_A0432E234_249:
; //}
; //
; //rjmp void _Sub3Startup4CD35D6D()		
_Sub3Startup4CD35D6D:
; //{
; //_A0432E234_250:;				
_A0432E234_250:
; //_A0432E234_251:;				
_A0432E234_251:
; //	asm	dsi				
	dsi
; //_A0432E234_252:;				
_A0432E234_252:
; //	asm	nop				
	nop
; //	
; //	
; //_A0432E234_253:;				
_A0432E234_253:
; //_A0432E234_254:;				
_A0432E234_254:
; //	_ClearRenderBufB079D01D();		
	pch	= _ClearRenderBufB079D01D
	lcall	_ClearRenderBufB079D01D
; //_A0432E234_255:;				
_A0432E234_255:
; //	asm	AR = PASR,0			
	AR = PASR,0
; //_A0432E234_256:;				
_A0432E234_256:
; //	asm AX = PCMY+0;			
	AX = PCMY+0//
; //	asm I1 = PCMYIN_PTR+0;			
	I1 = PCMYIN_PTR+0//
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_A0432E234_257:;				
_A0432E234_257:
; //	asm AX = PCMY+0;			
	AX = PCMY+0//
; //	asm I1 = PCMYOU_PTR+0;			
	I1 = PCMYOU_PTR+0//
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_A0432E234_258:;				
_A0432E234_258:
; //	io[0x3B]	= 0x0000;		
	AR	= 0x00
	io[0x3B]	= AR
; //_A0432E234_259:;				
_A0432E234_259:
; //_A0432E234_260:;				
_A0432E234_260:
; //	Subb3_Init();				
	pch	= Subb3_Init
	lcall	Subb3_Init
; //LFB78B58C_91:;					
LFB78B58C_91:
; //_A0432E234_261:;				
_A0432E234_261:
; //	return;					
	rets
; //_Sub3Startup4CD35D6D_end:;			
_Sub3Startup4CD35D6D_end:
; //_A0432E234_262:;				
_A0432E234_262:
; //}
; //
; //rjmp void _Sub3ZeroFillABFF23AA()		
_Sub3ZeroFillABFF23AA:
; //{
; //	__int16 _i_1_2;
; //						
	AR	= rm[BP_SAVE]
	push	AR
	AR	= BP
	rm[BP_SAVE]	= AR
	AR	 = -1
	BP	+= AR
; //_A0432E234_263:;				
_A0432E234_263:
; //_A0432E234_264:;				
_A0432E234_264:
; //	asm	push CBL			
	push CBL
; //	
; //_A0432E234_265:;				
_A0432E234_265:
; //	io[0x3B]	= 0x0009;		
	AR	= 0x09
	io[0x3B]	= AR
; //	
; //_A0432E234_266:;				
_A0432E234_266:
; //	asm I1 = PCMYIN_PTR+0;			
	I1 = PCMYIN_PTR+0//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //_A0432E234_267:;				
_A0432E234_267:
; //	asm	AR = AX				
	AR = AX
; //_A0432E234_268:;				
_A0432E234_268:
; //	asm	I0 = AR				
	I0 = AR
; //	
; //_A0432E234_269:;				
_A0432E234_269:
; //	_i_1_2+0	= 0x0120;		
	I1	= rm[BP_SAVE]
	AX	= 0x0120
	rm[I1]	= AX
; //LFB78B58C_94:;					
LFB78B58C_94:
; //_A0432E234_270:;				
_A0432E234_270:
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
; //	asm rm[I1] = CX - AR;			
	rm[I1] = CX - AR//
; //	sfx_CHECKZERO();			
	AR	= AX
; //	if(__jnz__)	goto LFB78B58C_95;	
	if NZ	jmp LFB78B58C_95
; //	goto	LFB78B58C_93;			
	jmp	LFB78B58C_93
; //LFB78B58C_95:;					
LFB78B58C_95:
; //	
; //_A0432E234_271:;				
_A0432E234_271:
; //	sAX	= 0x0000;			
	AX	= 0x00
; //_A0432E234_272:;				
_A0432E234_272:
; //	asm	rm[I0++] = AX			
	rm[I0++] = AX
; //_A0432E234_273:;				
_A0432E234_273:
; //	goto LFB78B58C_94;			
	jmp	LFB78B58C_94
; //LFB78B58C_93:;					
LFB78B58C_93:
; //_A0432E234_274:;				
_A0432E234_274:
; //_A0432E234_275:;				
_A0432E234_275:
; //	get_I0();				
	push	I0
	pop	AX
; //	asm I1 = PCMYIN_PTR+0;			
	I1 = PCMYIN_PTR+0//
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_A0432E234_276:;				
_A0432E234_276:
; //	asm	pop CBL				
	pop CBL
; //LFB78B58C_92:;					
LFB78B58C_92:
; //_A0432E234_277:;				
_A0432E234_277:
; //	return;					
	AR	= 1
	BP	+= AR
	pop	AR
	rm[BP_SAVE]	= AR
	rets
; //_Sub3ZeroFillABFF23AA_end:;			
_Sub3ZeroFillABFF23AA_end:
; //_A0432E234_278:;				
_A0432E234_278:
; //}
; //
; //rjmp void _Sub3Play422CAD6D(__int16 _sdata_0_4_0, __int16 _sdata_0_4_1)
_Sub3Play422CAD6D:
; //{						
	AR	= rm[BP_SAVE]
	push	AR
	AR	= BP
	rm[BP_SAVE]	= AR
; //_A0432E234_279:;				
_A0432E234_279:
; //	
; //_A0432E234_280:;				
_A0432E234_280:
; //	sSI	= (int)&_sdata_0_4_0;		
	AR	= 2
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	sAX	= *(__int16*)sSI++;		
	AX	= rm[I1++]
; //	sDX	= *(__int16*)sSI--;		
	DX	= rm[I1--]
; //	asm I1 = bts_ch0_get_ix+0;		
	I1 = bts_ch0_get_ix+0//
; //	sfx_STORSILONG();			
	rm[I1++]	= AX
	rm[I1--]	= DX
; //_A0432E234_281:;				
_A0432E234_281:
; //_A0432E234_282:;				
_A0432E234_282:
; //	_Sub3Startup4CD35D6D();			
	pch	= _Sub3Startup4CD35D6D
	lcall	_Sub3Startup4CD35D6D
; //_A0432E234_283:;				
_A0432E234_283:
; //	asm AX = SUBFLTI+0;			
	AX = SUBFLTI+0//
; //	PUSH(sAX);				
	push	AX
; //	sAX	= 0x0000;			
	AX	= 0x00
; //	sSI	= POP();			
	pop	I1
; //	*(__int16*)sSI	= sAX;			
	rm[I1]	= AX
; //_A0432E234_284:;				
_A0432E234_284:
; //	asm AX = SUBFLTI+1;			
	AX = SUBFLTI+1//
; //	PUSH(sAX);				
	push	AX
; //	sAX	= 0x0000;			
	AX	= 0x00
; //	sSI	= POP();			
	pop	I1
; //	*(__int16*)sSI	= sAX;			
	rm[I1]	= AX
; //_A0432E234_285:;				
_A0432E234_285:
; //	asm AX = SUBFLTI+2;			
	AX = SUBFLTI+2//
; //	PUSH(sAX);				
	push	AX
; //	sAX	= 0x0000;			
	AX	= 0x00
; //	sSI	= POP();			
	pop	I1
; //	*(__int16*)sSI	= sAX;			
	rm[I1]	= AX
; //_A0432E234_286:;				
_A0432E234_286:
; //	asm AX = SUBFLTI+3;			
	AX = SUBFLTI+3//
; //	PUSH(sAX);				
	push	AX
; //	sAX	= 0x0000;			
	AX	= 0x00
; //	sSI	= POP();			
	pop	I1
; //	*(__int16*)sSI	= sAX;			
	rm[I1]	= AX
; //_A0432E234_287:;				
_A0432E234_287:
; //	sAX	= 0x0000;			
	AX	= 0x00
; //	asm I1 = SUBFLTA+0;			
	I1 = SUBFLTA+0//
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_A0432E234_288:;				
_A0432E234_288:
; //	asm I1 = SampleCh0Rate+0;		
	I1 = SampleCh0Rate+0//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	asm I1 = SUBFLTP+0;			
	I1 = SUBFLTP+0//
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_A0432E234_289:;				
_A0432E234_289:
; //	sAX	= 0x003F;			
	AX	= 0x3F
; //	asm I1 = SUBFLTG+0;			
	I1 = SUBFLTG+0//
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_A0432E234_290:;				
_A0432E234_290:
; //	asm	set io[INTENA].b0		
	set io[INTENA].b0
; //_A0432E234_291:;				
_A0432E234_291:
; //	asm	eni				
	eni
; //LFB78B58C_96:;					
LFB78B58C_96:
; //_A0432E234_292:;				
_A0432E234_292:
; //	return;					
	pop	AR
	rm[BP_SAVE]	= AR
	rets
; //_Sub3Play422CAD6D_end:;				
_Sub3Play422CAD6D_end:
; //_A0432E234_293:;				
_A0432E234_293:
; //}
; //
; //rjmp void Sbb_Ch0GetBts()			
Sbb_Ch0GetBts:
; //{
; //_A0432E234_294:;				
_A0432E234_294:
; //_A0432E234_295:;				
_A0432E234_295:
; //	asm	push I1				
	push I1
; //_A0432E234_296:;				
_A0432E234_296:
; //	asm	push P1				
	push P1
; //_A0432E234_297:;				
_A0432E234_297:
; //	asm	push AX				
	push AX
; //_A0432E234_298:;				
_A0432E234_298:
; //	asm	push BX				
	push BX
; //_A0432E234_299:;				
_A0432E234_299:
; //	asm	push CX				
	push CX
; //_A0432E234_300:;				
_A0432E234_300:
; //	asm	push DX				
	push DX
; //_A0432E234_301:;				
_A0432E234_301:
; //	asm	AR = P1.hh			
	AR = P1.hh
; //_A0432E234_302:;				
_A0432E234_302:
; //	asm	push AR				
	push AR
; //	
; //_A0432E234_303:;				
_A0432E234_303:
; //_A0432E234_304:;				
_A0432E234_304:
; //_A0432E234_305:;				
_A0432E234_305:
; //	asm I1 = bts_ch0_get_ix+0;		
	I1 = bts_ch0_get_ix+0//
; //	sAX	= *(__int16*)sSI++;		
	AX	= rm[I1++]
; //	sDX	= *(__int16*)sSI--;		
	DX	= rm[I1--]
; //	sSI	= (int)&bts_ch0_get_ix[0];	
	I1	= bts_ch0_get_ix
; //	PUSH(sAX);				
	push	AX
; //	PUSH(sDX);				
	push	DX
; //	sfx_GETSILONG_BXCX();			
	CX	= rm[I1++]
	BX	= rm[I1--]
; //	sAX = 0x0001;				
	AX	= 0x01
; //	sDX = 0x0000;				
	DX	= 0x00
; //	sfx_ADDLONG_BXCX_DXAX();		
	AR	= AX
	CX	= CX + AR
	AR	= DX
	BX	= BX + AR + C
; //	sfx_STORSILONG_BXCX();			
	rm[I1++]	= CX
	rm[I1--]	= BX
; //	sDX	= POP();			
	pop	DX
; //	sAX	= POP();			
	pop	AX
; //	PUSH(sDX);				
	push	DX
; //	PUSH(sAX);				
	push	AX
; //	_lptr_read(STACK[sSP + 0], STACK[sSP + 1]);
	pch	= _lptr_read
	lcall	_lptr_read
; //	RESTORESP(2);				
	pop	AR
	pop	AR
; //	PUSH(sAX);				
	push	AX
; //	vXCHG(STACK[sSP + 0]);			
	AR	= AX
	AX	= xchg AR
; //	RESTORESP(1);				
	pop	AR
; //_A0432E234_306:;				
_A0432E234_306:
; //	asm	pop AR				
	pop AR
; //_A0432E234_307:;				
_A0432E234_307:
; //	asm	P1.hh = AR			
	P1.hh = AR
; //_A0432E234_308:;				
_A0432E234_308:
; //	asm	pop DX				
	pop DX
; //_A0432E234_309:;				
_A0432E234_309:
; //	asm	pop CX				
	pop CX
; //_A0432E234_310:;				
_A0432E234_310:
; //	asm	pop BX				
	pop BX
; //	
; //_A0432E234_311:;				
_A0432E234_311:
; //_A0432E234_312:;				
_A0432E234_312:
; //	asintax();				
; //_A0432E234_313:;				
_A0432E234_313:
; //	asm	AR = AX				
	AR = AX
; //_A0432E234_314:;				
_A0432E234_314:
; //	asm	pop AX				
	pop AX
; //_A0432E234_315:;				
_A0432E234_315:
; //	asm	pop P1				
	pop P1
; //_A0432E234_316:;				
_A0432E234_316:
; //	asm	pop I1				
	pop I1
; //LFB78B58C_97:;					
LFB78B58C_97:
; //_A0432E234_317:;				
_A0432E234_317:
; //	return;					
	rets
; //Sbb_Ch0GetBts_end:;				
Sbb_Ch0GetBts_end:
; //_A0432E234_318:;				
_A0432E234_318:
; //}
; //
; //rjmp void _Sbb_SkipdataE1C72441(__int16 _offset_0_4_0, __int16 _offset_0_4_1)
_Sbb_SkipdataE1C72441:
; //{
; //						
	AR	= rm[BP_SAVE]
	push	AR
	AR	= BP
	rm[BP_SAVE]	= AR
; //LFB78B58C_98:;					
LFB78B58C_98:
; //_A0432E234_319:;				
_A0432E234_319:
; //	return;					
	pop	AR
	rm[BP_SAVE]	= AR
	rets
; //_Sbb_SkipdataE1C72441_end:;			
_Sbb_SkipdataE1C72441_end:
; //_A0432E234_320:;				
_A0432E234_320:
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
