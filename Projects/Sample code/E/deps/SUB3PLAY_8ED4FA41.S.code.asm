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
; //_A2C562ABC_253:;				
_A2C562ABC_253:
; //	
; //_A2C562ABC_254:;				
_A2C562ABC_254:
; //	asm AX = PCMY+0;			
	AX = PCMY+0//
; //_A2C562ABC_255:;				
_A2C562ABC_255:
; //	asm	AR = AX				
	AR = AX
; //_A2C562ABC_256:;				
_A2C562ABC_256:
; //	asm	I0 = AR				
	I0 = AR
; //	
; //	
; //_A2C562ABC_257:;				
_A2C562ABC_257:
; //	_i_1_2+0	= 0x0200;		
	I1	= rm[BP_SAVE]
	AX	= 0x0200
	rm[I1]	= AX
; //LFB78B58C_102:;					
LFB78B58C_102:
; //_A2C562ABC_258:;				
_A2C562ABC_258:
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
; //	if(__jnz__)	goto LFB78B58C_103;	
	if NZ	jmp LFB78B58C_103
; //	goto	LFB78B58C_101;			
	jmp	LFB78B58C_101
; //LFB78B58C_103:;					
LFB78B58C_103:
; //	
; //_A2C562ABC_259:;				
_A2C562ABC_259:
; //	sAX	= 0x0000;			
	AX	= 0x00
; //_A2C562ABC_260:;				
_A2C562ABC_260:
; //	asm	rm[I0++] = AX			
	rm[I0++] = AX
; //_A2C562ABC_261:;				
_A2C562ABC_261:
; //	goto LFB78B58C_102;			
	jmp	LFB78B58C_102
; //LFB78B58C_101:;					
LFB78B58C_101:
; //LFB78B58C_100:;					
LFB78B58C_100:
; //_A2C562ABC_262:;				
_A2C562ABC_262:
; //	return;					
	AR	= 1
	BP	+= AR
	pop	AR
	rm[BP_SAVE]	= AR
	rets
; //_ClearRenderBufB079D01D_end:;			
_ClearRenderBufB079D01D_end:
; //_A2C562ABC_263:;				
_A2C562ABC_263:
; //}
; //
; //rjmp void _Sub3Initial96BE24F3()		
_Sub3Initial96BE24F3:
; //{
; //_A2C562ABC_264:;				
_A2C562ABC_264:
; //_A2C562ABC_265:;				
_A2C562ABC_265:
; //	asm	dsi				
	dsi
; //_A2C562ABC_266:;				
_A2C562ABC_266:
; //	asm	nop				
	nop
; //	
; //	
; //_A2C562ABC_267:;				
_A2C562ABC_267:
; //_A2C562ABC_268:;				
_A2C562ABC_268:
; //	_ClearRenderBufB079D01D();		
	pch	= _ClearRenderBufB079D01D
	lcall	_ClearRenderBufB079D01D
; //_A2C562ABC_269:;				
_A2C562ABC_269:
; //	asm	AR = PASR,0			
	AR = PASR,0
; //_A2C562ABC_270:;				
_A2C562ABC_270:
; //	asm AX = PCMY+0;			
	AX = PCMY+0//
; //	asm I1 = PCMYIN_PTR+0;			
	I1 = PCMYIN_PTR+0//
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_A2C562ABC_271:;				
_A2C562ABC_271:
; //	asm AX = PCMY+0;			
	AX = PCMY+0//
; //	asm I1 = PCMYOU_PTR+0;			
	I1 = PCMYOU_PTR+0//
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_A2C562ABC_272:;				
_A2C562ABC_272:
; //	io[0x3C]	= 0x0000;		
	AR	= 0x00
	io[0x3C]	= AR
; //_A2C562ABC_273:;				
_A2C562ABC_273:
; //	io[0x3E]	= 0x1FFF;		
	AR	= 0x1FFF
	io[0x3E]	= AR
; //_A2C562ABC_274:;				
_A2C562ABC_274:
; //	io[0x3B]	= 0x0000;		
	AR	= 0x00
	io[0x3B]	= AR
; //_A2C562ABC_275:;				
_A2C562ABC_275:
; //_A2C562ABC_276:;				
_A2C562ABC_276:
; //	Subb3_Init();				
	pch	= Subb3_Init
	lcall	Subb3_Init
; //LFB78B58C_104:;					
LFB78B58C_104:
; //_A2C562ABC_277:;				
_A2C562ABC_277:
; //	return;					
	rets
; //_Sub3Initial96BE24F3_end:;			
_Sub3Initial96BE24F3_end:
; //_A2C562ABC_278:;				
_A2C562ABC_278:
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
; //_A2C562ABC_279:;				
_A2C562ABC_279:
; //_A2C562ABC_280:;				
_A2C562ABC_280:
; //	asm	push CBL			
	push CBL
; //	
; //_A2C562ABC_281:;				
_A2C562ABC_281:
; //	io[0x3B]	= 0x0009;		
	AR	= 0x09
	io[0x3B]	= AR
; //	
; //_A2C562ABC_282:;				
_A2C562ABC_282:
; //	asm I1 = PCMYIN_PTR+0;			
	I1 = PCMYIN_PTR+0//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //_A2C562ABC_283:;				
_A2C562ABC_283:
; //	asm	AR = AX				
	AR = AX
; //_A2C562ABC_284:;				
_A2C562ABC_284:
; //	asm	I0 = AR				
	I0 = AR
; //	
; //_A2C562ABC_285:;				
_A2C562ABC_285:
; //	_i_1_2+0	= 0x0120;		
	I1	= rm[BP_SAVE]
	AX	= 0x0120
	rm[I1]	= AX
; //LFB78B58C_107:;					
LFB78B58C_107:
; //_A2C562ABC_286:;				
_A2C562ABC_286:
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
; //	if(__jnz__)	goto LFB78B58C_108;	
	if NZ	jmp LFB78B58C_108
; //	goto	LFB78B58C_106;			
	jmp	LFB78B58C_106
; //LFB78B58C_108:;					
LFB78B58C_108:
; //	
; //_A2C562ABC_287:;				
_A2C562ABC_287:
; //	sAX	= 0x0000;			
	AX	= 0x00
; //_A2C562ABC_288:;				
_A2C562ABC_288:
; //	asm	rm[I0++] = AX			
	rm[I0++] = AX
; //_A2C562ABC_289:;				
_A2C562ABC_289:
; //	goto LFB78B58C_107;			
	jmp	LFB78B58C_107
; //LFB78B58C_106:;					
LFB78B58C_106:
; //_A2C562ABC_290:;				
_A2C562ABC_290:
; //_A2C562ABC_291:;				
_A2C562ABC_291:
; //	get_I0();				
	push	I0
	pop	AX
; //	asm I1 = PCMYIN_PTR+0;			
	I1 = PCMYIN_PTR+0//
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_A2C562ABC_292:;				
_A2C562ABC_292:
; //	asm	pop CBL				
	pop CBL
; //LFB78B58C_105:;					
LFB78B58C_105:
; //_A2C562ABC_293:;				
_A2C562ABC_293:
; //	return;					
	AR	= 1
	BP	+= AR
	pop	AR
	rm[BP_SAVE]	= AR
	rets
; //_Sub3ZeroFillABFF23AA_end:;			
_Sub3ZeroFillABFF23AA_end:
; //_A2C562ABC_294:;				
_A2C562ABC_294:
; //}
; //
; //rjmp void _Sub3Play422CAD6D(__int16 _sdata_0_4_0, __int16 _sdata_0_4_1)
_Sub3Play422CAD6D:
; //{						
	AR	= rm[BP_SAVE]
	push	AR
	AR	= BP
	rm[BP_SAVE]	= AR
; //_A2C562ABC_295:;				
_A2C562ABC_295:
; //	
; //_A2C562ABC_296:;				
_A2C562ABC_296:
; //_A2C562ABC_297:;				
_A2C562ABC_297:
; //	dtxStopSong();				
	pch	= dtxStopSong
	lcall	dtxStopSong
; //_A2C562ABC_298:;				
_A2C562ABC_298:
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
; //_A2C562ABC_299:;				
_A2C562ABC_299:
; //_A2C562ABC_300:;				
_A2C562ABC_300:
; //	_Sub3Initial96BE24F3();			
	pch	= _Sub3Initial96BE24F3
	lcall	_Sub3Initial96BE24F3
; //_A2C562ABC_301:;				
_A2C562ABC_301:
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
; //_A2C562ABC_302:;				
_A2C562ABC_302:
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
; //_A2C562ABC_303:;				
_A2C562ABC_303:
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
; //_A2C562ABC_304:;				
_A2C562ABC_304:
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
; //_A2C562ABC_305:;				
_A2C562ABC_305:
; //	sAX	= 0x0000;			
	AX	= 0x00
; //	asm I1 = SUBFLTA+0;			
	I1 = SUBFLTA+0//
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_A2C562ABC_306:;				
_A2C562ABC_306:
; //	asm I1 = SampleCh0Rate+0;		
	I1 = SampleCh0Rate+0//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	asm I1 = SUBFLTP+0;			
	I1 = SUBFLTP+0//
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_A2C562ABC_307:;				
_A2C562ABC_307:
; //	sAX	= 0x003F;			
	AX	= 0x3F
; //	asm I1 = SUBFLTG+0;			
	I1 = SUBFLTG+0//
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_A2C562ABC_308:;				
_A2C562ABC_308:
; //	asm	set io[INTENA].b0		
	set io[INTENA].b0
; //_A2C562ABC_309:;				
_A2C562ABC_309:
; //	asm	eni				
	eni
; //LFB78B58C_109:;					
LFB78B58C_109:
; //_A2C562ABC_310:;				
_A2C562ABC_310:
; //	return;					
	pop	AR
	rm[BP_SAVE]	= AR
	rets
; //_Sub3Play422CAD6D_end:;				
_Sub3Play422CAD6D_end:
; //_A2C562ABC_311:;				
_A2C562ABC_311:
; //}
; //
; //rjmp void Sbb_Ch0GetBts()			
Sbb_Ch0GetBts:
; //{
; //_A2C562ABC_312:;				
_A2C562ABC_312:
; //_A2C562ABC_313:;				
_A2C562ABC_313:
; //	asm	push I1				
	push I1
; //_A2C562ABC_314:;				
_A2C562ABC_314:
; //	asm	push P1				
	push P1
; //_A2C562ABC_315:;				
_A2C562ABC_315:
; //	asm	push AX				
	push AX
; //_A2C562ABC_316:;				
_A2C562ABC_316:
; //	asm	push BX				
	push BX
; //_A2C562ABC_317:;				
_A2C562ABC_317:
; //	asm	push CX				
	push CX
; //_A2C562ABC_318:;				
_A2C562ABC_318:
; //	asm	push DX				
	push DX
; //_A2C562ABC_319:;				
_A2C562ABC_319:
; //	asm	AR = P1.hh			
	AR = P1.hh
; //_A2C562ABC_320:;				
_A2C562ABC_320:
; //	asm	push AR				
	push AR
; //	
; //_A2C562ABC_321:;				
_A2C562ABC_321:
; //_A2C562ABC_322:;				
_A2C562ABC_322:
; //_A2C562ABC_323:;				
_A2C562ABC_323:
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
; //_A2C562ABC_324:;				
_A2C562ABC_324:
; //	asm	pop AR				
	pop AR
; //_A2C562ABC_325:;				
_A2C562ABC_325:
; //	asm	P1.hh = AR			
	P1.hh = AR
; //_A2C562ABC_326:;				
_A2C562ABC_326:
; //	asm	pop DX				
	pop DX
; //_A2C562ABC_327:;				
_A2C562ABC_327:
; //	asm	pop CX				
	pop CX
; //_A2C562ABC_328:;				
_A2C562ABC_328:
; //	asm	pop BX				
	pop BX
; //	
; //_A2C562ABC_329:;				
_A2C562ABC_329:
; //_A2C562ABC_330:;				
_A2C562ABC_330:
; //	asintax();				
; //_A2C562ABC_331:;				
_A2C562ABC_331:
; //	asm	AR = AX				
	AR = AX
; //_A2C562ABC_332:;				
_A2C562ABC_332:
; //	asm	pop AX				
	pop AX
; //_A2C562ABC_333:;				
_A2C562ABC_333:
; //	asm	pop P1				
	pop P1
; //_A2C562ABC_334:;				
_A2C562ABC_334:
; //	asm	pop I1				
	pop I1
; //LFB78B58C_110:;					
LFB78B58C_110:
; //_A2C562ABC_335:;				
_A2C562ABC_335:
; //	return;					
	rets
; //Sbb_Ch0GetBts_end:;				
Sbb_Ch0GetBts_end:
; //_A2C562ABC_336:;				
_A2C562ABC_336:
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
; //LFB78B58C_111:;					
LFB78B58C_111:
; //_A2C562ABC_337:;				
_A2C562ABC_337:
; //	return;					
	pop	AR
	rm[BP_SAVE]	= AR
	rets
; //_Sbb_SkipdataE1C72441_end:;			
_Sbb_SkipdataE1C72441_end:
; //_A2C562ABC_338:;				
_A2C562ABC_338:
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
