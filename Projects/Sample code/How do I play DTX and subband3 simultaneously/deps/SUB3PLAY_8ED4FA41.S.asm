
#include "crt0.h"













__int16 bts_ch0_get_ix[2];
__int16 PCMYIN_PTR;
__int16 PCMYOU_PTR;
__int16 PCMIN;
__int16 SampleCh0Rate;
align(512) __int16 PCMY[512];
__int16 SUBFLTI[4];
__int16 SUBFLTA;
__int16 SUBFLTP;
__int16 SUBFLTG;



// CODE segment					=>>VarRM[0:4095]={
 bts_ch0_get_ix[2],PCMYIN_PTR,PCMYOU_PTR,PCMIN,SampleCh0Rate,BaseOn512#PCMY[512],SUBFLTI[4],SUBFLTA
,SUBFLTP,SUBFLTG 
};

.code


rjmp void _ClearRenderBufB079D01D();
rjmp void _Sub3Initial96BE24F3();
rjmp void _WaitPCM_Empty_size53398B9D();
rjmp void _Sub3ZeroFillABFF23AA();
rjmp void _Sub3Play422CAD6D(__int16 _sdata_0_4_0, __int16 _sdata_0_4_1);
naked rjmp void Sbb_Ch0GetBts();




.code



.data



.code
rjmp void _ClearRenderBufB079D01D()		=>>_ClearRenderBufB079D01D:
{
	__int16 _i_1_2;
						=>>AR	= rm[BP_SAVE];push	AR;AR	= BP;rm[BP_SAVE]	= AR;AR	 = -1;BP	+= AR
_A5A7AA303_248:;				=>>_A5A7AA303_248:;
	
_A5A7AA303_249:;				=>>_A5A7AA303_249:;
	asm AX = PCMY+0;			=>>AX = PCMY+0//
_A5A7AA303_250:;				=>>_A5A7AA303_250:;
	asm	AR = AX				=>>AR = AX
_A5A7AA303_251:;				=>>_A5A7AA303_251:;
	asm	I0 = AR				=>>I0 = AR
_A5A7AA303_252:;				=>>_A5A7AA303_252:;
	_i_1_2+0	= 0x0200;		=>>I1	= rm[BP_SAVE];AR	= 0x0200;rm[I1]	= AR
LFB78B58C_103:;					=>>LFB78B58C_103:;
_A5A7AA303_253:;				=>>_A5A7AA303_253:;
	sSI	= (int)&_i_1_2;			=>>I1	= rm[BP_SAVE]
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sSI	= (int)&_i_1_2;			=>>I1	= rm[BP_SAVE]
	asm AR = 0x0001;			=>>AR = 0x0001//
	sCX	= *(__int16*)sSI;		=>>CX	= rm[I1]
	asm rm[I1] = CX - AR;			=>>rm[I1] = CX - AR//
	sfx_CHECKZERO();			=>>AR	= AX;
	if(__jnz__)	goto LFB78B58C_104;	=>>if NZ	jmp LFB78B58C_104
	goto	LFB78B58C_102;			=>>jmp	LFB78B58C_102
LFB78B58C_104:;					=>>LFB78B58C_104:;
	
_A5A7AA303_254:;				=>>_A5A7AA303_254:;
	sAX	= 0x0000;			=>>AX	= 0x00
_A5A7AA303_255:;				=>>_A5A7AA303_255:;
	asm	rm[I0++] = AX			=>>rm[I0++] = AX
	goto LFB78B58C_103;			=>>jmp	LFB78B58C_103
LFB78B58C_102:;					=>>LFB78B58C_102:;
LFB78B58C_101:;					=>>LFB78B58C_101:;
_A5A7AA303_256:;				=>>_A5A7AA303_256:;
	return;					=>>AR	= 1;BP	+= AR;pop	AR;rm[BP_SAVE]	= AR;rets
_ClearRenderBufB079D01D_end:;			=>>_ClearRenderBufB079D01D_end:;
_A5A7AA303_257:;				=>>_A5A7AA303_257:;
}

rjmp void _Sub3Initial96BE24F3()		=>>_Sub3Initial96BE24F3:
{
_A5A7AA303_258:;				=>>_A5A7AA303_258:;
_A5A7AA303_259:;				=>>_A5A7AA303_259:;
	asm	dsi				=>>dsi
_A5A7AA303_260:;				=>>_A5A7AA303_260:;
	asm	nop				=>>nop
	
_A5A7AA303_261:;				=>>_A5A7AA303_261:;
_A5A7AA303_262:;				=>>_A5A7AA303_262:;
	_ClearRenderBufB079D01D();		=>>pch	= _ClearRenderBufB079D01D;lcall	_ClearRenderBufB079D01D
_A5A7AA303_263:;				=>>_A5A7AA303_263:;
	asm	AR = PASR,0			=>>AR = PASR,0
_A5A7AA303_264:;				=>>_A5A7AA303_264:;
	asm AX = PCMY+0;			=>>AX = PCMY+0//
	asm I1 = PCMYIN_PTR+0;			=>>I1 = PCMYIN_PTR+0//
	*(__int16*)sSI	= sAX			=>>rm[I1]	= AX
_A5A7AA303_265:;				=>>_A5A7AA303_265:;
	asm AX = PCMY+0;			=>>AX = PCMY+0//
	asm I1 = PCMYOU_PTR+0;			=>>I1 = PCMYOU_PTR+0//
	*(__int16*)sSI	= sAX			=>>rm[I1]	= AX
_A5A7AA303_266:;				=>>_A5A7AA303_266:;
	io[0x3C]	= 0x0000;		=>>AR	= 0x00;io[0x3C]	= AR
_A5A7AA303_267:;				=>>_A5A7AA303_267:;
	io[0x3E]	= 0x1FFF;		=>>AR	= 0x1FFF;io[0x3E]	= AR
_A5A7AA303_268:;				=>>_A5A7AA303_268:;
	io[0x3B]	= 0x0000;		=>>AR	= 0x00;io[0x3B]	= AR
_A5A7AA303_269:;				=>>_A5A7AA303_269:;
_A5A7AA303_270:;				=>>_A5A7AA303_270:;
	Subb3_Init();				=>>pch	= Subb3_Init;lcall	Subb3_Init
LFB78B58C_105:;					=>>LFB78B58C_105:;
_A5A7AA303_271:;				=>>_A5A7AA303_271:;
	return;					=>>rets
_Sub3Initial96BE24F3_end:;			=>>_Sub3Initial96BE24F3_end:;
_A5A7AA303_272:;				=>>_A5A7AA303_272:;
}

rjmp void _WaitPCM_Empty_size53398B9D()		=>>_WaitPCM_Empty_size53398B9D:
{
	__int16 _x_1_2;
						=>>AR	= rm[BP_SAVE];push	AR;AR	= BP;rm[BP_SAVE]	= AR;AR	 = -1;BP	+= AR
_A5A7AA303_273:;				=>>_A5A7AA303_273:;
_A5A7AA303_274:;				=>>_A5A7AA303_274:;
	asm I1 = PCMYOU_PTR+0;			=>>I1 = PCMYOU_PTR+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	asm I1 = PCMYIN_PTR+0;			=>>I1 = PCMYIN_PTR+0//
	sCX	= *(__int16*)sSI;		=>>CX	= rm[I1]
	sAX	= sAX - sCX;			=>>AR	= CX;AX	-= AR
	
	sSI	= (int)&_x_1_2;			=>>I1	= rm[BP_SAVE]
	*(__int16*)sSI	= sAX;			=>>rm[I1]	= AX
_A5A7AA303_275:;				=>>_A5A7AA303_275:;
	sSI	= (int)&_x_1_2;			=>>I1	= rm[BP_SAVE]
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sCX	= 0x0000;			=>>CX	= 0x00
	sfx_CMP_AX_CX_JL();			=>>pch	= sfx_CMP_AX_CX_JL;lcall	sfx_CMP_AX_CX_JL
	if(__je__)	goto LFB78B58C_108;	=>>if ZR	jmp LFB78B58C_108
	goto	LFB78B58C_107;			=>>jmp	LFB78B58C_107
LFB78B58C_108:;					=>>LFB78B58C_108:;
	
_A5A7AA303_276:;				=>>_A5A7AA303_276:;
	sAX	= 0x01FF;			=>>AX	= 0x01FF
	sSI	= (int)&_x_1_2;			=>>I1	= rm[BP_SAVE]
	sCX	= *(__int16*)sSI;		=>>CX	= rm[I1]
	sAX	= sAX & sCX;			=>>AR	= CX;AX	&= AR
	sSI	= (int)&_x_1_2;			=>>I1	= rm[BP_SAVE]
	*(__int16*)sSI	= sAX;			=>>rm[I1]	= AX
LFB78B58C_107:;					=>>LFB78B58C_107:;
_A5A7AA303_277:;				=>>_A5A7AA303_277:;
_A5A7AA303_278:;				=>>_A5A7AA303_278:;
	sSI	= (int)&_x_1_2;			=>>I1	= rm[BP_SAVE]
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sCX	= 0x0121;			=>>CX	= 0x0121
	sAX	= sAX - sCX;			=>>AR	= CX;AX	-= AR
	sSI	= (int)&_x_1_2;			=>>I1	= rm[BP_SAVE]
	*(__int16*)sSI	= sAX;			=>>rm[I1]	= AX
_A5A7AA303_279:;				=>>_A5A7AA303_279:;
	sSI	= (int)&_x_1_2;			=>>I1	= rm[BP_SAVE]
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	goto LFB78B58C_106;			=>>jmp	LFB78B58C_106
LFB78B58C_106:;					=>>LFB78B58C_106:;
_A5A7AA303_280:;				=>>_A5A7AA303_280:;
	return;					=>>AR	= 1;BP	+= AR;pop	AR;rm[BP_SAVE]	= AR;rets
_WaitPCM_Empty_size53398B9D_end:;		=>>_WaitPCM_Empty_size53398B9D_end:;
_A5A7AA303_281:;				=>>_A5A7AA303_281:;
}

rjmp void _Sub3ZeroFillABFF23AA()		=>>_Sub3ZeroFillABFF23AA:
{
	__int16 _i_1_2;
						=>>AR	= rm[BP_SAVE];push	AR;AR	= BP;rm[BP_SAVE]	= AR;AR	 = -1;BP	+= AR
_A5A7AA303_282:;				=>>_A5A7AA303_282:;
_A5A7AA303_283:;				=>>_A5A7AA303_283:;
	asm	push CBL			=>>push CBL
_A5A7AA303_284:;				=>>_A5A7AA303_284:;
	io[0x3B]	= 0x0009;		=>>AR	= 0x09;io[0x3B]	= AR
	
_A5A7AA303_285:;				=>>_A5A7AA303_285:;
	asm I1 = PCMYIN_PTR+0;			=>>I1 = PCMYIN_PTR+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
_A5A7AA303_286:;				=>>_A5A7AA303_286:;
	asm	AR = AX				=>>AR = AX
_A5A7AA303_287:;				=>>_A5A7AA303_287:;
	asm	I0 = AR				=>>I0 = AR
_A5A7AA303_288:;				=>>_A5A7AA303_288:;
	_i_1_2+0	= 0x0120;		=>>I1	= rm[BP_SAVE];AR	= 0x0120;rm[I1]	= AR
LFB78B58C_111:;					=>>LFB78B58C_111:;
_A5A7AA303_289:;				=>>_A5A7AA303_289:;
	sSI	= (int)&_i_1_2;			=>>I1	= rm[BP_SAVE]
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sSI	= (int)&_i_1_2;			=>>I1	= rm[BP_SAVE]
	asm AR = 0x0001;			=>>AR = 0x0001//
	sCX	= *(__int16*)sSI;		=>>CX	= rm[I1]
	asm rm[I1] = CX - AR;			=>>rm[I1] = CX - AR//
	sfx_CHECKZERO();			=>>AR	= AX;
	if(__jnz__)	goto LFB78B58C_112;	=>>if NZ	jmp LFB78B58C_112
	goto	LFB78B58C_110;			=>>jmp	LFB78B58C_110
LFB78B58C_112:;					=>>LFB78B58C_112:;
	
_A5A7AA303_290:;				=>>_A5A7AA303_290:;
	sAX	= 0x0000;			=>>AX	= 0x00
_A5A7AA303_291:;				=>>_A5A7AA303_291:;
	asm	rm[I0++] = AX			=>>rm[I0++] = AX
	goto LFB78B58C_111;			=>>jmp	LFB78B58C_111
LFB78B58C_110:;					=>>LFB78B58C_110:;
_A5A7AA303_292:;				=>>_A5A7AA303_292:;
_A5A7AA303_293:;				=>>_A5A7AA303_293:;
	get_I0();				=>>push	I0;pop	AX;
	asm I1 = PCMYIN_PTR+0;			=>>I1 = PCMYIN_PTR+0//
	*(__int16*)sSI	= sAX			=>>rm[I1]	= AX
_A5A7AA303_294:;				=>>_A5A7AA303_294:;
	asm	pop CBL				=>>pop CBL
LFB78B58C_109:;					=>>LFB78B58C_109:;
_A5A7AA303_295:;				=>>_A5A7AA303_295:;
	return;					=>>AR	= 1;BP	+= AR;pop	AR;rm[BP_SAVE]	= AR;rets
_Sub3ZeroFillABFF23AA_end:;			=>>_Sub3ZeroFillABFF23AA_end:;
_A5A7AA303_296:;				=>>_A5A7AA303_296:;
}

rjmp void _Sub3Play422CAD6D(__int16 _sdata_0_4_0, __int16 _sdata_0_4_1)=>>_Sub3Play422CAD6D:
{						=>>AR	= rm[BP_SAVE];push	AR;AR	= BP;rm[BP_SAVE]	= AR
_A5A7AA303_297:;				=>>_A5A7AA303_297:;
	
_A5A7AA303_298:;				=>>_A5A7AA303_298:;
_A5A7AA303_299:;				=>>_A5A7AA303_299:;
	dtxStopSong();				=>>pch	= dtxStopSong;lcall	dtxStopSong
_A5A7AA303_300:;				=>>_A5A7AA303_300:;
	sSI	= (int)&_sdata_0_4_0;		=>>AR	= 2;I1	= rm[BP_SAVE];I1	+= AR
	sAX	= *(__int16*)sSI++;		=>>AX	= rm[I1++]
	sDX	= *(__int16*)sSI--;		=>>DX	= rm[I1--]
	asm I1 = bts_ch0_get_ix+0;		=>>I1 = bts_ch0_get_ix+0//
	sfx_STORSILONG();			=>>rm[I1++]	= AX;rm[I1--]	= DX;
_A5A7AA303_301:;				=>>_A5A7AA303_301:;
_A5A7AA303_302:;				=>>_A5A7AA303_302:;
	_Sub3Initial96BE24F3();			=>>pch	= _Sub3Initial96BE24F3;lcall	_Sub3Initial96BE24F3
_A5A7AA303_303:;				=>>_A5A7AA303_303:;
	asm AX = SUBFLTI+0;			=>>AX = SUBFLTI+0//
	PUSH(sAX);				=>>push	AX
	sAX	= 0x0000;			=>>AX	= 0x00
	sSI	= POP();			=>>pop	I1
	*(__int16*)sSI	= sAX;			=>>rm[I1]	= AX
_A5A7AA303_304:;				=>>_A5A7AA303_304:;
	asm AX = SUBFLTI+1;			=>>AX = SUBFLTI+1//
	PUSH(sAX);				=>>push	AX
	sAX	= 0x0000;			=>>AX	= 0x00
	sSI	= POP();			=>>pop	I1
	*(__int16*)sSI	= sAX;			=>>rm[I1]	= AX
_A5A7AA303_305:;				=>>_A5A7AA303_305:;
	asm AX = SUBFLTI+2;			=>>AX = SUBFLTI+2//
	PUSH(sAX);				=>>push	AX
	sAX	= 0x0000;			=>>AX	= 0x00
	sSI	= POP();			=>>pop	I1
	*(__int16*)sSI	= sAX;			=>>rm[I1]	= AX
_A5A7AA303_306:;				=>>_A5A7AA303_306:;
	asm AX = SUBFLTI+3;			=>>AX = SUBFLTI+3//
	PUSH(sAX);				=>>push	AX
	sAX	= 0x0000;			=>>AX	= 0x00
	sSI	= POP();			=>>pop	I1
	*(__int16*)sSI	= sAX;			=>>rm[I1]	= AX
_A5A7AA303_307:;				=>>_A5A7AA303_307:;
	sAX	= 0x0000;			=>>AX	= 0x00
	asm I1 = SUBFLTA+0;			=>>I1 = SUBFLTA+0//
	*(__int16*)sSI	= sAX			=>>rm[I1]	= AX
_A5A7AA303_308:;				=>>_A5A7AA303_308:;
	asm I1 = SampleCh0Rate+0;		=>>I1 = SampleCh0Rate+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	asm I1 = SUBFLTP+0;			=>>I1 = SUBFLTP+0//
	*(__int16*)sSI	= sAX			=>>rm[I1]	= AX
_A5A7AA303_309:;				=>>_A5A7AA303_309:;
	sAX	= 0x003F;			=>>AX	= 0x3F
	asm I1 = SUBFLTG+0;			=>>I1 = SUBFLTG+0//
	*(__int16*)sSI	= sAX			=>>rm[I1]	= AX
_A5A7AA303_310:;				=>>_A5A7AA303_310:;
	asm	set io[INTENA].b0		=>>set io[INTENA].b0
_A5A7AA303_311:;				=>>_A5A7AA303_311:;
	asm	eni				=>>eni
LFB78B58C_113:;					=>>LFB78B58C_113:;
_A5A7AA303_312:;				=>>_A5A7AA303_312:;
	return;					=>>pop	AR;rm[BP_SAVE]	= AR;rets
_Sub3Play422CAD6D_end:;				=>>_Sub3Play422CAD6D_end:;
_A5A7AA303_313:;				=>>_A5A7AA303_313:;
}

naked rjmp void Sbb_Ch0GetBts()			=>>Sbb_Ch0GetBts:
{
_A5A7AA303_314:;				=>>_A5A7AA303_314:;
_A5A7AA303_315:;				=>>_A5A7AA303_315:;
	asm	push I1				=>>push I1
_A5A7AA303_316:;				=>>_A5A7AA303_316:;
	asm	push P1				=>>push P1
_A5A7AA303_317:;				=>>_A5A7AA303_317:;
	asm	push AX				=>>push AX
_A5A7AA303_318:;				=>>_A5A7AA303_318:;
	asm	push BX				=>>push BX
_A5A7AA303_319:;				=>>_A5A7AA303_319:;
	asm	push CX				=>>push CX
_A5A7AA303_320:;				=>>_A5A7AA303_320:;
	asm	push DX				=>>push DX
_A5A7AA303_321:;				=>>_A5A7AA303_321:;
	asm	AR = P1.hh			=>>AR = P1.hh
_A5A7AA303_322:;				=>>_A5A7AA303_322:;
	asm	push AR				=>>push AR
	
_A5A7AA303_323:;				=>>_A5A7AA303_323:;
_A5A7AA303_324:;				=>>_A5A7AA303_324:;
_A5A7AA303_325:;				=>>_A5A7AA303_325:;
	asm I1 = bts_ch0_get_ix+0;		=>>I1 = bts_ch0_get_ix+0//
	sAX	= *(__int16*)sSI++;		=>>AX	= rm[I1++]
	sDX	= *(__int16*)sSI--;		=>>DX	= rm[I1--]
	sSI	= (int)&bts_ch0_get_ix[0];	=>>I1	= bts_ch0_get_ix
	PUSH(sAX);				=>>push	AX
	PUSH(sDX);				=>>push	DX
	sfx_GETSILONG_BXCX();			=>>CX	= rm[I1++];BX	= rm[I1--];
	sAX = 0x0001;				=>>AX	= 0x01
	sDX = 0x0000;				=>>DX	= 0x00
	sfx_ADDLONG_BXCX_DXAX();		=>>AR	= AX;CX	= CX + AR;AR	= DX;BX	= BX + AR + C;
	sfx_STORSILONG_BXCX();			=>>rm[I1++]	= CX;rm[I1--]	= BX;
	sDX	= POP();			=>>pop	DX
	sAX	= POP();			=>>pop	AX
	_lptr_read(STACK[sSP + 0], STACK[sSP + 1]);=>>pch	= _lptr_read;lcall	_lptr_read
	vXCHG(STACK[sSP + 0]);			=>>AR	= AX;AX	= xchg AR;
_A5A7AA303_326:;				=>>_A5A7AA303_326:;
	asm	pop AR				=>>pop AR
_A5A7AA303_327:;				=>>_A5A7AA303_327:;
	asm	P1.hh = AR			=>>P1.hh = AR
_A5A7AA303_328:;				=>>_A5A7AA303_328:;
	asm	AR = AX				=>>AR = AX
	
_A5A7AA303_329:;				=>>_A5A7AA303_329:;
	asm	pop DX				=>>pop DX
_A5A7AA303_330:;				=>>_A5A7AA303_330:;
	asm	pop CX				=>>pop CX
_A5A7AA303_331:;				=>>_A5A7AA303_331:;
	asm	pop BX				=>>pop BX
_A5A7AA303_332:;				=>>_A5A7AA303_332:;
	asm	pop AX				=>>pop AX
_A5A7AA303_333:;				=>>_A5A7AA303_333:;
	asm	pop P1				=>>pop P1
_A5A7AA303_334:;				=>>_A5A7AA303_334:;
	asm	pop I1				=>>pop I1
LFB78B58C_114:;					=>>LFB78B58C_114:;
_A5A7AA303_335:;				=>>_A5A7AA303_335:;
	return;					=>>rets
Sbb_Ch0GetBts_end:;				=>>Sbb_Ch0GetBts_end:;
_A5A7AA303_336:;				=>>_A5A7AA303_336:;
}




.code


naked void ginit_code_sub3play_8ED4FA41_s(void)	=>>ginit_code_sub3play_8ED4FA41_s:
{
	return;					=>>rets
}








.code



.code







.data





.code





























































































