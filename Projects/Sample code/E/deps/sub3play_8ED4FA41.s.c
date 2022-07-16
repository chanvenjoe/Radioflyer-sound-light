// SUBC 0.8.12 (build Apr 11 2022 16:13:40)
#include "crt0.h"

// .fast segment _fast
// FAST segment (data with / without initial value)

// .fast ends _fast

// .bss segment _rwdata
// DATA segment (with initial value)

// .bss ends _rwdata

// .bss segment _bss
// BSS segment (data without initial value)
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

// .bss ends _bss

// CODE segment

.code


rjmp void _ClearRenderBufB079D01D();
rjmp void _Sub3Initial96BE24F3();
rjmp void _Sub3ZeroFillABFF23AA();
rjmp void _Sub3Play422CAD6D(__int16 _sdata_0_4_0, __int16 _sdata_0_4_1);
rjmp void Sbb_Ch0GetBts();
rjmp void _Sbb_SkipdataE1C72441(__int16 _offset_0_4_0, __int16 _offset_0_4_1);
// RCODE segment

// .model speechdsp
// .code segment _text
.code
// .code ends _text

// .data segment _rdata
.data
// .data ends _rdata

// .code segment _text
.code
rjmp void _ClearRenderBufB079D01D()
{
	__int16 _i_1_2;
	////////////////////////////
_A2C562ABC_253:;
	////////////////////////////
_A2C562ABC_254:;
	asm AX = PCMY+0;
_A2C562ABC_255:;
	asm	AR = AX
_A2C562ABC_256:;
	asm	I0 = AR
	////////////////////////////
	////////////////////////////
_A2C562ABC_257:;
	_i_1_2+0	= 0x0200;
LFB78B58C_102:;
_A2C562ABC_258:;
	sSI	= (int)&_i_1_2;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_i_1_2;
	asm AR = 0x0001;
	sCX	= *(__int16*)sSI;
	asm rm[I1] = CX - AR;
	sfx_CHECKZERO();
	if(__jnz__)	goto LFB78B58C_103;
	goto	LFB78B58C_101;
LFB78B58C_103:;
	////////////////////////////
_A2C562ABC_259:;
	sAX	= 0x0000;
_A2C562ABC_260:;
	asm	rm[I0++] = AX
_A2C562ABC_261:;
	goto LFB78B58C_102;
LFB78B58C_101:;
LFB78B58C_100:;
_A2C562ABC_262:;
	return;
_ClearRenderBufB079D01D_end:;
_A2C562ABC_263:;
}

rjmp void _Sub3Initial96BE24F3()
{
_A2C562ABC_264:;
_A2C562ABC_265:;
	asm	dsi
_A2C562ABC_266:;
	asm	nop
	////////////////////////////
	////////////////////////////
_A2C562ABC_267:;
_A2C562ABC_268:;
	_ClearRenderBufB079D01D();
_A2C562ABC_269:;
	asm	AR = PASR,0
_A2C562ABC_270:;
	asm AX = PCMY+0;
	asm I1 = PCMYIN_PTR+0;
	*(__int16*)sSI	= sAX
_A2C562ABC_271:;
	asm AX = PCMY+0;
	asm I1 = PCMYOU_PTR+0;
	*(__int16*)sSI	= sAX
_A2C562ABC_272:;
	io[0x3C]	= 0x0000;
_A2C562ABC_273:;
	io[0x3E]	= 0x1FFF;
_A2C562ABC_274:;
	io[0x3B]	= 0x0000;
_A2C562ABC_275:;
_A2C562ABC_276:;
	Subb3_Init();
LFB78B58C_104:;
_A2C562ABC_277:;
	return;
_Sub3Initial96BE24F3_end:;
_A2C562ABC_278:;
}

rjmp void _Sub3ZeroFillABFF23AA()
{
	__int16 _i_1_2;
	////////////////////////////
_A2C562ABC_279:;
_A2C562ABC_280:;
	asm	push CBL
	////////////////////////////
_A2C562ABC_281:;
	io[0x3B]	= 0x0009;
	////////////////////////////
_A2C562ABC_282:;
	asm I1 = PCMYIN_PTR+0;
	sAX	= *(__int16*)sSI;
_A2C562ABC_283:;
	asm	AR = AX
_A2C562ABC_284:;
	asm	I0 = AR
	////////////////////////////
_A2C562ABC_285:;
	_i_1_2+0	= 0x0120;
LFB78B58C_107:;
_A2C562ABC_286:;
	sSI	= (int)&_i_1_2;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_i_1_2;
	asm AR = 0x0001;
	sCX	= *(__int16*)sSI;
	asm rm[I1] = CX - AR;
	sfx_CHECKZERO();
	if(__jnz__)	goto LFB78B58C_108;
	goto	LFB78B58C_106;
LFB78B58C_108:;
	////////////////////////////
_A2C562ABC_287:;
	sAX	= 0x0000;
_A2C562ABC_288:;
	asm	rm[I0++] = AX
_A2C562ABC_289:;
	goto LFB78B58C_107;
LFB78B58C_106:;
_A2C562ABC_290:;
_A2C562ABC_291:;
	get_I0();
	asm I1 = PCMYIN_PTR+0;
	*(__int16*)sSI	= sAX
_A2C562ABC_292:;
	asm	pop CBL
LFB78B58C_105:;
_A2C562ABC_293:;
	return;
_Sub3ZeroFillABFF23AA_end:;
_A2C562ABC_294:;
}

rjmp void _Sub3Play422CAD6D(__int16 _sdata_0_4_0, __int16 _sdata_0_4_1)
{
_A2C562ABC_295:;
	////////////////////////////
_A2C562ABC_296:;
_A2C562ABC_297:;
	dtxStopSong();
_A2C562ABC_298:;
	sSI	= (int)&_sdata_0_4_0;
	sAX	= *(__int16*)sSI++;
	sDX	= *(__int16*)sSI--;
	asm I1 = bts_ch0_get_ix+0;
	sfx_STORSILONG();
_A2C562ABC_299:;
_A2C562ABC_300:;
	_Sub3Initial96BE24F3();
_A2C562ABC_301:;
	asm AX = SUBFLTI+0;
	PUSH(sAX);
	sAX	= 0x0000;
	sSI	= POP();
	*(__int16*)sSI	= sAX;
_A2C562ABC_302:;
	asm AX = SUBFLTI+1;
	PUSH(sAX);
	sAX	= 0x0000;
	sSI	= POP();
	*(__int16*)sSI	= sAX;
_A2C562ABC_303:;
	asm AX = SUBFLTI+2;
	PUSH(sAX);
	sAX	= 0x0000;
	sSI	= POP();
	*(__int16*)sSI	= sAX;
_A2C562ABC_304:;
	asm AX = SUBFLTI+3;
	PUSH(sAX);
	sAX	= 0x0000;
	sSI	= POP();
	*(__int16*)sSI	= sAX;
_A2C562ABC_305:;
	sAX	= 0x0000;
	asm I1 = SUBFLTA+0;
	*(__int16*)sSI	= sAX
_A2C562ABC_306:;
	asm I1 = SampleCh0Rate+0;
	sAX	= *(__int16*)sSI;
	asm I1 = SUBFLTP+0;
	*(__int16*)sSI	= sAX
_A2C562ABC_307:;
	sAX	= 0x003F;
	asm I1 = SUBFLTG+0;
	*(__int16*)sSI	= sAX
_A2C562ABC_308:;
	asm	set io[INTENA].b0
_A2C562ABC_309:;
	asm	eni
LFB78B58C_109:;
_A2C562ABC_310:;
	return;
_Sub3Play422CAD6D_end:;
_A2C562ABC_311:;
}

rjmp void Sbb_Ch0GetBts()
{
_A2C562ABC_312:;
_A2C562ABC_313:;
	asm	push I1
_A2C562ABC_314:;
	asm	push P1
_A2C562ABC_315:;
	asm	push AX
_A2C562ABC_316:;
	asm	push BX
_A2C562ABC_317:;
	asm	push CX
_A2C562ABC_318:;
	asm	push DX
_A2C562ABC_319:;
	asm	AR = P1.hh
_A2C562ABC_320:;
	asm	push AR
	////////////////////////////
_A2C562ABC_321:;
_A2C562ABC_322:;
_A2C562ABC_323:;
	asm I1 = bts_ch0_get_ix+0;
	sAX	= *(__int16*)sSI++;
	sDX	= *(__int16*)sSI--;
	sSI	= (int)&bts_ch0_get_ix[0];
	PUSH(sAX);
	PUSH(sDX);
	sfx_GETSILONG_BXCX();
	sAX = 0x0001;
	sDX = 0x0000;
	sfx_ADDLONG_BXCX_DXAX();
	sfx_STORSILONG_BXCX();
	sDX	= POP();
	sAX	= POP();
	PUSH(sDX);
	PUSH(sAX);
	_lptr_read(STACK[sSP + 0], STACK[sSP + 1]);
	RESTORESP(2);
	PUSH(sAX);
	vXCHG(STACK[sSP + 0]);
	RESTORESP(1);
_A2C562ABC_324:;
	asm	pop AR
_A2C562ABC_325:;
	asm	P1.hh = AR
_A2C562ABC_326:;
	asm	pop DX
_A2C562ABC_327:;
	asm	pop CX
_A2C562ABC_328:;
	asm	pop BX
	////////////////////////////
_A2C562ABC_329:;
_A2C562ABC_330:;
	asintax();
_A2C562ABC_331:;
	asm	AR = AX
_A2C562ABC_332:;
	asm	pop AX
_A2C562ABC_333:;
	asm	pop P1
_A2C562ABC_334:;
	asm	pop I1
LFB78B58C_110:;
_A2C562ABC_335:;
	return;
Sbb_Ch0GetBts_end:;
_A2C562ABC_336:;
}

rjmp void _Sbb_SkipdataE1C72441(__int16 _offset_0_4_0, __int16 _offset_0_4_1)
{
	////////////////////////////
LFB78B58C_111:;
_A2C562ABC_337:;
	return;
_Sbb_SkipdataE1C72441_end:;
_A2C562ABC_338:;
}

// .code ends _text


// -=-=-=-=-=-=-=-=-=-=-
// strlit segment

// .code segment _text
.code
// .code ends _text

// .code segment _text
.code

// -=-=-=-=-=-=-=-=-=-=-
// read only segment

// .code ends _text

// .data segment _linkd
.data
// LINKFILE (RO) segment

// .data ends _linkd

// .code segment _text
.code
// .code ends _text

// extern get_I0:proc
// extern vXCHG:proc
// extern _lptr_read:proc
// extern dtxStopSong:proc
// extern asintax:proc
// public bts_ch0_get_ix
// public PCMYIN_PTR
// public PCMYOU_PTR
// public PCMIN
// public SampleCh0Rate
// public PCMY
// extern Subb3_Init:proc
// public _Sub3ZeroFillABFF23AA
// public _Sub3Play422CAD6D
// public SUBFLTI
// public SUBFLTA
// public SUBFLTP
// public SUBFLTG
// public _ClearRenderBufB079D01D
// public _Sub3Initial96BE24F3
// public Sbb_Ch0GetBts
// public _Sbb_SkipdataE1C72441
