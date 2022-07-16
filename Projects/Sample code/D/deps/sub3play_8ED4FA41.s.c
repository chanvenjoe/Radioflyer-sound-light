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
rjmp void _Sub3Startup4CD35D6D();
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
_A0432E234_232:;
	////////////////////////////
_A0432E234_233:;
	asm AX = PCMY+0;
_A0432E234_234:;
	asm	AR = AX
_A0432E234_235:;
	asm	I0 = AR
	////////////////////////////
	////////////////////////////
_A0432E234_236:;
	_i_1_2+0	= 0x0200;
LFB78B58C_88:;
_A0432E234_237:;
	sSI	= (int)&_i_1_2;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_i_1_2;
	asm AR = 0x0001;
	sCX	= *(__int16*)sSI;
	asm rm[I1] = CX - AR;
	sfx_CHECKZERO();
	if(__jnz__)	goto LFB78B58C_89;
	goto	LFB78B58C_87;
LFB78B58C_89:;
	////////////////////////////
_A0432E234_238:;
	sAX	= 0x0000;
_A0432E234_239:;
	asm	rm[I0++] = AX
_A0432E234_240:;
	goto LFB78B58C_88;
LFB78B58C_87:;
LFB78B58C_86:;
_A0432E234_241:;
	return;
_ClearRenderBufB079D01D_end:;
_A0432E234_242:;
}

rjmp void _Sub3Initial96BE24F3()
{
_A0432E234_243:;
	////////////////////////////
_A0432E234_244:;
_A0432E234_245:;
	_ClearRenderBufB079D01D();
_A0432E234_246:;
	asm AX = PCMY+0;
	asm I1 = PCMYIN_PTR+0;
	*(__int16*)sSI	= sAX
_A0432E234_247:;
	asm AX = PCMY+0;
	asm I1 = PCMYOU_PTR+0;
	*(__int16*)sSI	= sAX
LFB78B58C_90:;
_A0432E234_248:;
	return;
_Sub3Initial96BE24F3_end:;
_A0432E234_249:;
}

rjmp void _Sub3Startup4CD35D6D()
{
_A0432E234_250:;
_A0432E234_251:;
	asm	dsi
_A0432E234_252:;
	asm	nop
	////////////////////////////
	////////////////////////////
_A0432E234_253:;
_A0432E234_254:;
	_ClearRenderBufB079D01D();
_A0432E234_255:;
	asm	AR = PASR,0
_A0432E234_256:;
	asm AX = PCMY+0;
	asm I1 = PCMYIN_PTR+0;
	*(__int16*)sSI	= sAX
_A0432E234_257:;
	asm AX = PCMY+0;
	asm I1 = PCMYOU_PTR+0;
	*(__int16*)sSI	= sAX
_A0432E234_258:;
	io[0x3B]	= 0x0000;
_A0432E234_259:;
_A0432E234_260:;
	Subb3_Init();
LFB78B58C_91:;
_A0432E234_261:;
	return;
_Sub3Startup4CD35D6D_end:;
_A0432E234_262:;
}

rjmp void _Sub3ZeroFillABFF23AA()
{
	__int16 _i_1_2;
	////////////////////////////
_A0432E234_263:;
_A0432E234_264:;
	asm	push CBL
	////////////////////////////
_A0432E234_265:;
	io[0x3B]	= 0x0009;
	////////////////////////////
_A0432E234_266:;
	asm I1 = PCMYIN_PTR+0;
	sAX	= *(__int16*)sSI;
_A0432E234_267:;
	asm	AR = AX
_A0432E234_268:;
	asm	I0 = AR
	////////////////////////////
_A0432E234_269:;
	_i_1_2+0	= 0x0120;
LFB78B58C_94:;
_A0432E234_270:;
	sSI	= (int)&_i_1_2;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_i_1_2;
	asm AR = 0x0001;
	sCX	= *(__int16*)sSI;
	asm rm[I1] = CX - AR;
	sfx_CHECKZERO();
	if(__jnz__)	goto LFB78B58C_95;
	goto	LFB78B58C_93;
LFB78B58C_95:;
	////////////////////////////
_A0432E234_271:;
	sAX	= 0x0000;
_A0432E234_272:;
	asm	rm[I0++] = AX
_A0432E234_273:;
	goto LFB78B58C_94;
LFB78B58C_93:;
_A0432E234_274:;
_A0432E234_275:;
	get_I0();
	asm I1 = PCMYIN_PTR+0;
	*(__int16*)sSI	= sAX
_A0432E234_276:;
	asm	pop CBL
LFB78B58C_92:;
_A0432E234_277:;
	return;
_Sub3ZeroFillABFF23AA_end:;
_A0432E234_278:;
}

rjmp void _Sub3Play422CAD6D(__int16 _sdata_0_4_0, __int16 _sdata_0_4_1)
{
_A0432E234_279:;
	////////////////////////////
_A0432E234_280:;
	sSI	= (int)&_sdata_0_4_0;
	sAX	= *(__int16*)sSI++;
	sDX	= *(__int16*)sSI--;
	asm I1 = bts_ch0_get_ix+0;
	sfx_STORSILONG();
_A0432E234_281:;
_A0432E234_282:;
	_Sub3Startup4CD35D6D();
_A0432E234_283:;
	asm AX = SUBFLTI+0;
	PUSH(sAX);
	sAX	= 0x0000;
	sSI	= POP();
	*(__int16*)sSI	= sAX;
_A0432E234_284:;
	asm AX = SUBFLTI+1;
	PUSH(sAX);
	sAX	= 0x0000;
	sSI	= POP();
	*(__int16*)sSI	= sAX;
_A0432E234_285:;
	asm AX = SUBFLTI+2;
	PUSH(sAX);
	sAX	= 0x0000;
	sSI	= POP();
	*(__int16*)sSI	= sAX;
_A0432E234_286:;
	asm AX = SUBFLTI+3;
	PUSH(sAX);
	sAX	= 0x0000;
	sSI	= POP();
	*(__int16*)sSI	= sAX;
_A0432E234_287:;
	sAX	= 0x0000;
	asm I1 = SUBFLTA+0;
	*(__int16*)sSI	= sAX
_A0432E234_288:;
	asm I1 = SampleCh0Rate+0;
	sAX	= *(__int16*)sSI;
	asm I1 = SUBFLTP+0;
	*(__int16*)sSI	= sAX
_A0432E234_289:;
	sAX	= 0x003F;
	asm I1 = SUBFLTG+0;
	*(__int16*)sSI	= sAX
_A0432E234_290:;
	asm	set io[INTENA].b0
_A0432E234_291:;
	asm	eni
LFB78B58C_96:;
_A0432E234_292:;
	return;
_Sub3Play422CAD6D_end:;
_A0432E234_293:;
}

rjmp void Sbb_Ch0GetBts()
{
_A0432E234_294:;
_A0432E234_295:;
	asm	push I1
_A0432E234_296:;
	asm	push P1
_A0432E234_297:;
	asm	push AX
_A0432E234_298:;
	asm	push BX
_A0432E234_299:;
	asm	push CX
_A0432E234_300:;
	asm	push DX
_A0432E234_301:;
	asm	AR = P1.hh
_A0432E234_302:;
	asm	push AR
	////////////////////////////
_A0432E234_303:;
_A0432E234_304:;
_A0432E234_305:;
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
_A0432E234_306:;
	asm	pop AR
_A0432E234_307:;
	asm	P1.hh = AR
_A0432E234_308:;
	asm	pop DX
_A0432E234_309:;
	asm	pop CX
_A0432E234_310:;
	asm	pop BX
	////////////////////////////
_A0432E234_311:;
_A0432E234_312:;
	asintax();
_A0432E234_313:;
	asm	AR = AX
_A0432E234_314:;
	asm	pop AX
_A0432E234_315:;
	asm	pop P1
_A0432E234_316:;
	asm	pop I1
LFB78B58C_97:;
_A0432E234_317:;
	return;
Sbb_Ch0GetBts_end:;
_A0432E234_318:;
}

rjmp void _Sbb_SkipdataE1C72441(__int16 _offset_0_4_0, __int16 _offset_0_4_1)
{
	////////////////////////////
LFB78B58C_98:;
_A0432E234_319:;
	return;
_Sbb_SkipdataE1C72441_end:;
_A0432E234_320:;
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
// extern asintax:proc
// public bts_ch0_get_ix
// public PCMYIN_PTR
// public PCMYOU_PTR
// public PCMIN
// public SampleCh0Rate
// public PCMY
// public SUBFLTI
// public SUBFLTA
// public SUBFLTP
// public SUBFLTG
// extern Subb3_Init:proc
// public _Sub3Initial96BE24F3
// public _ClearRenderBufB079D01D
// public _Sub3ZeroFillABFF23AA
// public _Sub3Play422CAD6D
// public _Sub3Startup4CD35D6D
// public Sbb_Ch0GetBts
// public _Sbb_SkipdataE1C72441
