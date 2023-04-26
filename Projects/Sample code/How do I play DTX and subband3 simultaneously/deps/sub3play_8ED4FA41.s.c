// SUBC 0.8.9 (build Jun 29 2020 12:00:34)
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
rjmp void _WaitPCM_Empty_size53398B9D();
rjmp void _Sub3ZeroFillABFF23AA();
rjmp void _Sub3Play422CAD6D(__int16 _sdata_0_4_0, __int16 _sdata_0_4_1);
naked rjmp void Sbb_Ch0GetBts();
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
_AFFC519C6_248:;
	////////////////////////////
_AFFC519C6_249:;
	asm AX = PCMY+0;
_AFFC519C6_250:;
	asm	AR = AX
_AFFC519C6_251:;
	asm	I0 = AR
_AFFC519C6_252:;
	_i_1_2+0	= 0x0200;
LFB78B58C_103:;
_AFFC519C6_253:;
	sSI	= (int)&_i_1_2;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_i_1_2;
	asm AR = 0x0001;
	sCX	= *(__int16*)sSI;
	asm rm[I1] = CX - AR;
	sfx_CHECKZERO();
	if(__jnz__)	goto LFB78B58C_104;
	goto	LFB78B58C_102;
LFB78B58C_104:;
	////////////////////////////
_AFFC519C6_254:;
	sAX	= 0x0000;
_AFFC519C6_255:;
	asm	rm[I0++] = AX
	goto LFB78B58C_103;
LFB78B58C_102:;
LFB78B58C_101:;
_AFFC519C6_256:;
	return;
_ClearRenderBufB079D01D_end:;
_AFFC519C6_257:;
}

rjmp void _Sub3Initial96BE24F3()
{
_AFFC519C6_258:;
_AFFC519C6_259:;
	asm	dsi
_AFFC519C6_260:;
	asm	nop
	////////////////////////////
_AFFC519C6_261:;
_AFFC519C6_262:;
	_ClearRenderBufB079D01D();
_AFFC519C6_263:;
	asm	AR = PASR,0
_AFFC519C6_264:;
	asm AX = PCMY+0;
	asm I1 = PCMYIN_PTR+0;
	*(__int16*)sSI	= sAX
_AFFC519C6_265:;
	asm AX = PCMY+0;
	asm I1 = PCMYOU_PTR+0;
	*(__int16*)sSI	= sAX
_AFFC519C6_266:;
	io[0x3C]	= 0x0000;
_AFFC519C6_267:;
	io[0x3E]	= 0x1FFF;
_AFFC519C6_268:;
	io[0x3B]	= 0x0000;
_AFFC519C6_269:;
_AFFC519C6_270:;
	Subb3_Init();
LFB78B58C_105:;
_AFFC519C6_271:;
	return;
_Sub3Initial96BE24F3_end:;
_AFFC519C6_272:;
}

rjmp void _WaitPCM_Empty_size53398B9D()
{
	__int16 _x_1_2;
	////////////////////////////
_AFFC519C6_273:;
_AFFC519C6_274:;
	asm I1 = PCMYOU_PTR+0;
	sAX	= *(__int16*)sSI;
	asm I1 = PCMYIN_PTR+0;
	sCX	= *(__int16*)sSI;
	sAX	= sAX - sCX;
	// mark sfx_SHR_AX();
	sSI	= (int)&_x_1_2;
	*(__int16*)sSI	= sAX;
_AFFC519C6_275:;
	sSI	= (int)&_x_1_2;
	sAX	= *(__int16*)sSI;
	sCX	= 0x0000;
	sfx_CMP_AX_CX_JL();
	if(__je__)	goto LFB78B58C_108;
	goto	LFB78B58C_107;
LFB78B58C_108:;
	////////////////////////////
_AFFC519C6_276:;
	sAX	= 0x01FF;
	sSI	= (int)&_x_1_2;
	sCX	= *(__int16*)sSI;
	sAX	= sAX & sCX;
	sSI	= (int)&_x_1_2;
	*(__int16*)sSI	= sAX;
LFB78B58C_107:;
_AFFC519C6_277:;
_AFFC519C6_278:;
	sSI	= (int)&_x_1_2;
	sAX	= *(__int16*)sSI;
	sCX	= 0x0121;
	sAX	= sAX - sCX;
	sSI	= (int)&_x_1_2;
	*(__int16*)sSI	= sAX;
_AFFC519C6_279:;
	sSI	= (int)&_x_1_2;
	sAX	= *(__int16*)sSI;
	goto LFB78B58C_106;
LFB78B58C_106:;
_AFFC519C6_280:;
	return;
_WaitPCM_Empty_size53398B9D_end:;
_AFFC519C6_281:;
}

rjmp void _Sub3ZeroFillABFF23AA()
{
	__int16 _i_1_2;
	////////////////////////////
_AFFC519C6_282:;
_AFFC519C6_283:;
	asm	push CBL
_AFFC519C6_284:;
	io[0x3B]	= 0x0009;
	////////////////////////////
_AFFC519C6_285:;
	asm I1 = PCMYIN_PTR+0;
	sAX	= *(__int16*)sSI;
_AFFC519C6_286:;
	asm	AR = AX
_AFFC519C6_287:;
	asm	I0 = AR
_AFFC519C6_288:;
	_i_1_2+0	= 0x0120;
LFB78B58C_111:;
_AFFC519C6_289:;
	sSI	= (int)&_i_1_2;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_i_1_2;
	asm AR = 0x0001;
	sCX	= *(__int16*)sSI;
	asm rm[I1] = CX - AR;
	sfx_CHECKZERO();
	if(__jnz__)	goto LFB78B58C_112;
	goto	LFB78B58C_110;
LFB78B58C_112:;
	////////////////////////////
_AFFC519C6_290:;
	sAX	= 0x0000;
_AFFC519C6_291:;
	asm	rm[I0++] = AX
	goto LFB78B58C_111;
LFB78B58C_110:;
_AFFC519C6_292:;
_AFFC519C6_293:;
	get_I0();
	asm I1 = PCMYIN_PTR+0;
	*(__int16*)sSI	= sAX
_AFFC519C6_294:;
	asm	pop CBL
LFB78B58C_109:;
_AFFC519C6_295:;
	return;
_Sub3ZeroFillABFF23AA_end:;
_AFFC519C6_296:;
}

rjmp void _Sub3Play422CAD6D(__int16 _sdata_0_4_0, __int16 _sdata_0_4_1)
{
_AFFC519C6_297:;
	////////////////////////////
_AFFC519C6_298:;
_AFFC519C6_299:;
	dtxStopSong();
_AFFC519C6_300:;
	sSI	= (int)&_sdata_0_4_0;
	sAX	= *(__int16*)sSI++;
	sDX	= *(__int16*)sSI--;
	asm I1 = bts_ch0_get_ix+0;
	sfx_STORSILONG();
_AFFC519C6_301:;
_AFFC519C6_302:;
	_Sub3Initial96BE24F3();
_AFFC519C6_303:;
	asm AX = SUBFLTI+0;
	PUSH(sAX);
	sAX	= 0x0000;
	sSI	= POP();
	*(__int16*)sSI	= sAX;
_AFFC519C6_304:;
	asm AX = SUBFLTI+1;
	PUSH(sAX);
	sAX	= 0x0000;
	sSI	= POP();
	*(__int16*)sSI	= sAX;
_AFFC519C6_305:;
	asm AX = SUBFLTI+2;
	PUSH(sAX);
	sAX	= 0x0000;
	sSI	= POP();
	*(__int16*)sSI	= sAX;
_AFFC519C6_306:;
	asm AX = SUBFLTI+3;
	PUSH(sAX);
	sAX	= 0x0000;
	sSI	= POP();
	*(__int16*)sSI	= sAX;
_AFFC519C6_307:;
	sAX	= 0x0000;
	asm I1 = SUBFLTA+0;
	*(__int16*)sSI	= sAX
_AFFC519C6_308:;
	asm I1 = SampleCh0Rate+0;
	sAX	= *(__int16*)sSI;
	asm I1 = SUBFLTP+0;
	*(__int16*)sSI	= sAX
_AFFC519C6_309:;
	sAX	= 0x003F;
	asm I1 = SUBFLTG+0;
	*(__int16*)sSI	= sAX
_AFFC519C6_310:;
	asm	set io[INTENA].b0
_AFFC519C6_311:;
	asm	eni
LFB78B58C_113:;
_AFFC519C6_312:;
	return;
_Sub3Play422CAD6D_end:;
_AFFC519C6_313:;
}

naked rjmp void Sbb_Ch0GetBts()
{
_AFFC519C6_314:;
_AFFC519C6_315:;
	asm	push I1
_AFFC519C6_316:;
	asm	push P1
_AFFC519C6_317:;
	asm	push AX
_AFFC519C6_318:;
	asm	push BX
_AFFC519C6_319:;
	asm	push CX
_AFFC519C6_320:;
	asm	push DX
_AFFC519C6_321:;
	asm	AR = P1.hh
_AFFC519C6_322:;
	asm	push AR
	////////////////////////////
_AFFC519C6_323:;
_AFFC519C6_324:;
_AFFC519C6_325:;
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
	_lptr_read(STACK[sSP + 0], STACK[sSP + 1]);
	vXCHG(STACK[sSP + 0]);
_AFFC519C6_326:;
	asm	pop AR
_AFFC519C6_327:;
	asm	P1.hh = AR
_AFFC519C6_328:;
	asm	AR = AX
	////////////////////////////
_AFFC519C6_329:;
	asm	pop DX
_AFFC519C6_330:;
	asm	pop CX
_AFFC519C6_331:;
	asm	pop BX
_AFFC519C6_332:;
	asm	pop AX
_AFFC519C6_333:;
	asm	pop P1
_AFFC519C6_334:;
	asm	pop I1
LFB78B58C_114:;
_AFFC519C6_335:;
	return;
Sbb_Ch0GetBts_end:;
_AFFC519C6_336:;
}

// .code ends _text

// .code segment _ginit
.code

// -=-=-=-=-=-=-=-=-=-=-
naked void ginit_code_sub3play_8ED4FA41_s(void)
{
	return;
}

// .code ends _ginit


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

// extern inp:proc
// extern outp:proc
// extern get_SATV:proc
// extern get_CBL:proc
// extern get_FLTO:proc
// extern get_FLTA:proc
// extern get_FLTP:proc
// extern get_FLTI:proc
// extern read_I0:proc
// extern read_I0P:proc
// extern read_I0P2:proc
// extern read_I0M:proc
// extern get_I0:proc
// extern read_P0:proc
// extern read_P0P:proc
// extern read_P0M:proc
// extern get_P0:proc
// extern set_IntVWR:proc
// extern clr_IntVWR:proc
// extern set_IntPrWR:proc
// extern clr_IntPrWR:proc
// extern set_INTENA:proc
// extern get_INTENA:proc
// extern set_INTREQ:proc
// extern get_INTREQ:proc
// extern set_IntVect:proc
// extern get_IntVect:proc
// extern get_IOC_PA:proc
// extern get_IOC_PB:proc
// extern get_IOC_PC:proc
// extern get_PortA:proc
// extern get_PortB:proc
// extern get_PortC:proc
// extern set_MISC:proc
// extern get_MISC:proc
// extern get_MACOP:proc
// extern vXCHG:proc
// extern cpuHalt:proc
// extern FA:proc
// extern _ClearTickCount5DDE4003:proc
// extern _GetTickCount18DC070C:proc
// extern _delay6F9F34ED:proc
// extern _lptr_read:proc
// extern _lptr_read32:proc
// extern _lptr_write:proc
// extern _lptr_write32:proc
// extern dtxfltg:word
// extern dtxsongcnt:word
// extern dtxtonech:word
// extern dtxRender:long
// extern dtxInitialize:proc
// extern dtxInitParameters:proc
// extern dtxReadTune:proc
// extern dtxStopSong:proc
// extern dtxStartBGServe:proc
// extern dtxStopBGServe:proc
// extern _dtxDoEvent05EA2C8C:proc
// extern _dtxFindToneEntry12F3B4ED:proc
// extern _dtxPlaySong5B7DBDA5:proc
// extern _dtxCheckSongEnd870A9712:proc
// extern _flags026116D5:word
// extern _songidx8C42F7DA:word
// extern _ticksA7263C09:long
// extern _sub_vol980B1B83:word
// extern subdat0:proc
// extern subdat1:proc
// extern _InitialDA4A7CC4:proc
// extern _CheckSongLimit402181B4:proc
// extern _RampUpFF7996DA:proc
// extern _RampDown1D382EDA:proc
// extern _ToneVolCtrl03CF265A:proc
// extern ChangePWMIntToDynCache:proc
// public bts_ch0_get_ix
// public PCMYIN_PTR
// public PCMYOU_PTR
// public PCMIN
// public SampleCh0Rate
// public PCMY
// extern Subb3_Init:proc
// extern Subb3_Dec:proc
// public _WaitPCM_Empty_size53398B9D
// public _Sub3ZeroFillABFF23AA
// public _Sub3Play422CAD6D
// public SUBFLTI
// public SUBFLTA
// public SUBFLTP
// public SUBFLTG
// public _ClearRenderBufB079D01D
// public _Sub3Initial96BE24F3
// public Sbb_Ch0GetBts
// public ginit_code_sub3play_8ED4FA41_s
