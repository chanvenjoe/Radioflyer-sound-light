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
; //rjmp void _WaitPCM_Empty_size53398B9D();
; //rjmp void _Sub3ZeroFillABFF23AA();
; //rjmp void _Sub3Play422CAD6D(__int16 _sdata_0_4_0, __int16 _sdata_0_4_1);
; //naked rjmp void Sbb_Ch0GetBts();
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
; //_AFFC519C6_248:;				
_AFFC519C6_248:
; //	
; //_AFFC519C6_249:;				
_AFFC519C6_249:
; //	asm AX = PCMY+0;			
	AX = PCMY+0//
; //_AFFC519C6_250:;				
_AFFC519C6_250:
; //	asm	AR = AX				
	AR = AX
; //_AFFC519C6_251:;				
_AFFC519C6_251:
; //	asm	I0 = AR				
	I0 = AR
; //_AFFC519C6_252:;				
_AFFC519C6_252:
; //	_i_1_2+0	= 0x0200;		
	I1	= rm[BP_SAVE]
	AR	= 0x0200
	rm[I1]	= AR
; //LFB78B58C_103:;					
LFB78B58C_103:
; //_AFFC519C6_253:;				
_AFFC519C6_253:
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
; //	if(__jnz__)	goto LFB78B58C_104;	
	if NZ	jmp LFB78B58C_104
; //	goto	LFB78B58C_102;			
	jmp	LFB78B58C_102
; //LFB78B58C_104:;					
LFB78B58C_104:
; //	
; //_AFFC519C6_254:;				
_AFFC519C6_254:
; //	sAX	= 0x0000;			
	AX	= 0x00
; //_AFFC519C6_255:;				
_AFFC519C6_255:
; //	asm	rm[I0++] = AX			
	rm[I0++] = AX
; //	goto LFB78B58C_103;			
	jmp	LFB78B58C_103
; //LFB78B58C_102:;					
LFB78B58C_102:
; //LFB78B58C_101:;					
LFB78B58C_101:
; //_AFFC519C6_256:;				
_AFFC519C6_256:
; //	return;					
	AR	= 1
	BP	+= AR
	pop	AR
	rm[BP_SAVE]	= AR
	rets
; //_ClearRenderBufB079D01D_end:;			
_ClearRenderBufB079D01D_end:
; //_AFFC519C6_257:;				
_AFFC519C6_257:
; //}
; //
; //rjmp void _Sub3Initial96BE24F3()		
_Sub3Initial96BE24F3:
; //{
; //_AFFC519C6_258:;				
_AFFC519C6_258:
; //_AFFC519C6_259:;				
_AFFC519C6_259:
; //	asm	dsi				
	dsi
; //_AFFC519C6_260:;				
_AFFC519C6_260:
; //	asm	nop				
	nop
; //	
; //_AFFC519C6_261:;				
_AFFC519C6_261:
; //_AFFC519C6_262:;				
_AFFC519C6_262:
; //	_ClearRenderBufB079D01D();		
	pch	= _ClearRenderBufB079D01D
	lcall	_ClearRenderBufB079D01D
; //_AFFC519C6_263:;				
_AFFC519C6_263:
; //	asm	AR = PASR,0			
	AR = PASR,0
; //_AFFC519C6_264:;				
_AFFC519C6_264:
; //	asm AX = PCMY+0;			
	AX = PCMY+0//
; //	asm I1 = PCMYIN_PTR+0;			
	I1 = PCMYIN_PTR+0//
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_AFFC519C6_265:;				
_AFFC519C6_265:
; //	asm AX = PCMY+0;			
	AX = PCMY+0//
; //	asm I1 = PCMYOU_PTR+0;			
	I1 = PCMYOU_PTR+0//
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_AFFC519C6_266:;				
_AFFC519C6_266:
; //	io[0x3C]	= 0x0000;		
	AR	= 0x00
	io[0x3C]	= AR
; //_AFFC519C6_267:;				
_AFFC519C6_267:
; //	io[0x3E]	= 0x1FFF;		
	AR	= 0x1FFF
	io[0x3E]	= AR
; //_AFFC519C6_268:;				
_AFFC519C6_268:
; //	io[0x3B]	= 0x0000;		
	AR	= 0x00
	io[0x3B]	= AR
; //_AFFC519C6_269:;				
_AFFC519C6_269:
; //_AFFC519C6_270:;				
_AFFC519C6_270:
; //	Subb3_Init();				
	pch	= Subb3_Init
	lcall	Subb3_Init
; //LFB78B58C_105:;					
LFB78B58C_105:
; //_AFFC519C6_271:;				
_AFFC519C6_271:
; //	return;					
	rets
; //_Sub3Initial96BE24F3_end:;			
_Sub3Initial96BE24F3_end:
; //_AFFC519C6_272:;				
_AFFC519C6_272:
; //}
; //
; //rjmp void _WaitPCM_Empty_size53398B9D()		
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
; //_AFFC519C6_273:;				
_AFFC519C6_273:
; //_AFFC519C6_274:;				
_AFFC519C6_274:
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
; //_AFFC519C6_275:;				
_AFFC519C6_275:
; //	sSI	= (int)&_x_1_2;			
	I1	= rm[BP_SAVE]
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sCX	= 0x0000;			
	CX	= 0x00
; //	sfx_CMP_AX_CX_JL();			
	pch	= sfx_CMP_AX_CX_JL
	lcall	sfx_CMP_AX_CX_JL
; //	if(__je__)	goto LFB78B58C_108;	
	if ZR	jmp LFB78B58C_108
; //	goto	LFB78B58C_107;			
	jmp	LFB78B58C_107
; //LFB78B58C_108:;					
LFB78B58C_108:
; //	
; //_AFFC519C6_276:;				
_AFFC519C6_276:
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
; //LFB78B58C_107:;					
LFB78B58C_107:
; //_AFFC519C6_277:;				
_AFFC519C6_277:
; //_AFFC519C6_278:;				
_AFFC519C6_278:
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
; //_AFFC519C6_279:;				
_AFFC519C6_279:
; //	sSI	= (int)&_x_1_2;			
	I1	= rm[BP_SAVE]
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	goto LFB78B58C_106;			
	jmp	LFB78B58C_106
; //LFB78B58C_106:;					
LFB78B58C_106:
; //_AFFC519C6_280:;				
_AFFC519C6_280:
; //	return;					
	AR	= 1
	BP	+= AR
	pop	AR
	rm[BP_SAVE]	= AR
	rets
; //_WaitPCM_Empty_size53398B9D_end:;		
_WaitPCM_Empty_size53398B9D_end:
; //_AFFC519C6_281:;				
_AFFC519C6_281:
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
; //_AFFC519C6_282:;				
_AFFC519C6_282:
; //_AFFC519C6_283:;				
_AFFC519C6_283:
; //	asm	push CBL			
	push CBL
; //_AFFC519C6_284:;				
_AFFC519C6_284:
; //	io[0x3B]	= 0x0009;		
	AR	= 0x09
	io[0x3B]	= AR
; //	
; //_AFFC519C6_285:;				
_AFFC519C6_285:
; //	asm I1 = PCMYIN_PTR+0;			
	I1 = PCMYIN_PTR+0//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //_AFFC519C6_286:;				
_AFFC519C6_286:
; //	asm	AR = AX				
	AR = AX
; //_AFFC519C6_287:;				
_AFFC519C6_287:
; //	asm	I0 = AR				
	I0 = AR
; //_AFFC519C6_288:;				
_AFFC519C6_288:
; //	_i_1_2+0	= 0x0120;		
	I1	= rm[BP_SAVE]
	AR	= 0x0120
	rm[I1]	= AR
; //LFB78B58C_111:;					
LFB78B58C_111:
; //_AFFC519C6_289:;				
_AFFC519C6_289:
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
; //	if(__jnz__)	goto LFB78B58C_112;	
	if NZ	jmp LFB78B58C_112
; //	goto	LFB78B58C_110;			
	jmp	LFB78B58C_110
; //LFB78B58C_112:;					
LFB78B58C_112:
; //	
; //_AFFC519C6_290:;				
_AFFC519C6_290:
; //	sAX	= 0x0000;			
	AX	= 0x00
; //_AFFC519C6_291:;				
_AFFC519C6_291:
; //	asm	rm[I0++] = AX			
	rm[I0++] = AX
; //	goto LFB78B58C_111;			
	jmp	LFB78B58C_111
; //LFB78B58C_110:;					
LFB78B58C_110:
; //_AFFC519C6_292:;				
_AFFC519C6_292:
; //_AFFC519C6_293:;				
_AFFC519C6_293:
; //	get_I0();				
	push	I0
	pop	AX
; //	asm I1 = PCMYIN_PTR+0;			
	I1 = PCMYIN_PTR+0//
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_AFFC519C6_294:;				
_AFFC519C6_294:
; //	asm	pop CBL				
	pop CBL
; //LFB78B58C_109:;					
LFB78B58C_109:
; //_AFFC519C6_295:;				
_AFFC519C6_295:
; //	return;					
	AR	= 1
	BP	+= AR
	pop	AR
	rm[BP_SAVE]	= AR
	rets
; //_Sub3ZeroFillABFF23AA_end:;			
_Sub3ZeroFillABFF23AA_end:
; //_AFFC519C6_296:;				
_AFFC519C6_296:
; //}
; //
; //rjmp void _Sub3Play422CAD6D(__int16 _sdata_0_4_0, __int16 _sdata_0_4_1)
_Sub3Play422CAD6D:
; //{						
	AR	= rm[BP_SAVE]
	push	AR
	AR	= BP
	rm[BP_SAVE]	= AR
; //_AFFC519C6_297:;				
_AFFC519C6_297:
; //	
; //_AFFC519C6_298:;				
_AFFC519C6_298:
; //_AFFC519C6_299:;				
_AFFC519C6_299:
; //	dtxStopSong();				
	pch	= dtxStopSong
	lcall	dtxStopSong
; //_AFFC519C6_300:;				
_AFFC519C6_300:
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
; //_AFFC519C6_301:;				
_AFFC519C6_301:
; //_AFFC519C6_302:;				
_AFFC519C6_302:
; //	_Sub3Initial96BE24F3();			
	pch	= _Sub3Initial96BE24F3
	lcall	_Sub3Initial96BE24F3
; //_AFFC519C6_303:;				
_AFFC519C6_303:
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
; //_AFFC519C6_304:;				
_AFFC519C6_304:
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
; //_AFFC519C6_305:;				
_AFFC519C6_305:
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
; //_AFFC519C6_306:;				
_AFFC519C6_306:
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
; //_AFFC519C6_307:;				
_AFFC519C6_307:
; //	sAX	= 0x0000;			
	AX	= 0x00
; //	asm I1 = SUBFLTA+0;			
	I1 = SUBFLTA+0//
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_AFFC519C6_308:;				
_AFFC519C6_308:
; //	asm I1 = SampleCh0Rate+0;		
	I1 = SampleCh0Rate+0//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	asm I1 = SUBFLTP+0;			
	I1 = SUBFLTP+0//
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_AFFC519C6_309:;				
_AFFC519C6_309:
; //	sAX	= 0x003F;			
	AX	= 0x3F
; //	asm I1 = SUBFLTG+0;			
	I1 = SUBFLTG+0//
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_AFFC519C6_310:;				
_AFFC519C6_310:
; //	asm	set io[INTENA].b0		
	set io[INTENA].b0
; //_AFFC519C6_311:;				
_AFFC519C6_311:
; //	asm	eni				
	eni
; //LFB78B58C_113:;					
LFB78B58C_113:
; //_AFFC519C6_312:;				
_AFFC519C6_312:
; //	return;					
	pop	AR
	rm[BP_SAVE]	= AR
	rets
; //_Sub3Play422CAD6D_end:;				
_Sub3Play422CAD6D_end:
; //_AFFC519C6_313:;				
_AFFC519C6_313:
; //}
; //
; //naked rjmp void Sbb_Ch0GetBts()			
Sbb_Ch0GetBts:
; //{
; //_AFFC519C6_314:;				
_AFFC519C6_314:
; //_AFFC519C6_315:;				
_AFFC519C6_315:
; //	asm	push I1				
	push I1
; //_AFFC519C6_316:;				
_AFFC519C6_316:
; //	asm	push P1				
	push P1
; //_AFFC519C6_317:;				
_AFFC519C6_317:
; //	asm	push AX				
	push AX
; //_AFFC519C6_318:;				
_AFFC519C6_318:
; //	asm	push BX				
	push BX
; //_AFFC519C6_319:;				
_AFFC519C6_319:
; //	asm	push CX				
	push CX
; //_AFFC519C6_320:;				
_AFFC519C6_320:
; //	asm	push DX				
	push DX
; //_AFFC519C6_321:;				
_AFFC519C6_321:
; //	asm	AR = P1.hh			
	AR = P1.hh
; //_AFFC519C6_322:;				
_AFFC519C6_322:
; //	asm	push AR				
	push AR
; //	
; //_AFFC519C6_323:;				
_AFFC519C6_323:
; //_AFFC519C6_324:;				
_AFFC519C6_324:
; //_AFFC519C6_325:;				
_AFFC519C6_325:
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
; //	_lptr_read(STACK[sSP + 0], STACK[sSP + 1]);
	pch	= _lptr_read
	lcall	_lptr_read
; //	vXCHG(STACK[sSP + 0]);			
	AR	= AX
	AX	= xchg AR
; //_AFFC519C6_326:;				
_AFFC519C6_326:
; //	asm	pop AR				
	pop AR
; //_AFFC519C6_327:;				
_AFFC519C6_327:
; //	asm	P1.hh = AR			
	P1.hh = AR
; //_AFFC519C6_328:;				
_AFFC519C6_328:
; //	asm	AR = AX				
	AR = AX
; //	
; //_AFFC519C6_329:;				
_AFFC519C6_329:
; //	asm	pop DX				
	pop DX
; //_AFFC519C6_330:;				
_AFFC519C6_330:
; //	asm	pop CX				
	pop CX
; //_AFFC519C6_331:;				
_AFFC519C6_331:
; //	asm	pop BX				
	pop BX
; //_AFFC519C6_332:;				
_AFFC519C6_332:
; //	asm	pop AX				
	pop AX
; //_AFFC519C6_333:;				
_AFFC519C6_333:
; //	asm	pop P1				
	pop P1
; //_AFFC519C6_334:;				
_AFFC519C6_334:
; //	asm	pop I1				
	pop I1
; //LFB78B58C_114:;					
LFB78B58C_114:
; //_AFFC519C6_335:;				
_AFFC519C6_335:
; //	return;					
	rets
; //Sbb_Ch0GetBts_end:;				
Sbb_Ch0GetBts_end:
; //_AFFC519C6_336:;				
_AFFC519C6_336:
; //}
; //
; //
; //
; //
.code
; //
; //
; //naked void ginit_code_sub3play_8ED4FA41_s(void)	
ginit_code_sub3play_8ED4FA41_s:
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
