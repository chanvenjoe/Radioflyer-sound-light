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
__int16 L5589D4CE_67;
__int16 L5589D4CE_68;
__int16 L5589D4CE_69;

// .bss ends _bss

// CODE segment

.code


rjmp void _InitKey3C587B6D();
rjmp void _PollingKey3B90E3B1();
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
rjmp void _InitKey3C587B6D()
{
_AECA8DE46_255:;
	////////////////////////////
_AECA8DE46_256:;
	asm clr io[0x04].b0;
_AECA8DE46_257:;
	asm clr io[0x04].b1;
_AECA8DE46_258:;
	asm clr io[0x04].b2;
_AECA8DE46_259:;
	asm clr io[0x04].b3;
_AECA8DE46_260:;
	asm set io[0x05].b2;
_AECA8DE46_261:;
	asm set io[0x05].b0;
_AECA8DE46_262:;
	io[0x1E]	= 0x0005;
_AECA8DE46_263:;
	sAX	= 0x000F;
	sAX	= sAX | io[0x1F];
	io[0x1F]	= sAX;
_AECA8DE46_264:;
	sAX	= 0x0000;
	sSI	= (int)&L5589D4CE_67;
	*(__int16*)sSI	= sAX
_AECA8DE46_265:;
	sAX	= 0x0000;
	sSI	= (int)&L5589D4CE_68;
	*(__int16*)sSI	= sAX
_AECA8DE46_266:;
	sAX	= 0x0200;
	sSI	= (int)&L5589D4CE_69;
	*(__int16*)sSI	= sAX
L5589D4CE_70:;
_AECA8DE46_267:;
	return;
_InitKey3C587B6D_end:;
_AECA8DE46_268:;
}

rjmp void L5589D4CE_71()
{
	__int16 _btn_1_2;
	////////////////////////////
_AECA8DE46_269:;
	////////////////////////////
_AECA8DE46_270:;
	sAX	= 0x000F;
	sAX	= sAX & io[0x07];
	sSI	= (int)&_btn_1_2;
	*(__int16*)sSI	= sAX;
_AECA8DE46_271:;
	sSI	= (int)&_btn_1_2;
	sAX	= *(__int16*)sSI;
	goto L5589D4CE_73;
L5589D4CE_73:;
_AECA8DE46_272:;
	return;
L5589D4CE_71_end:;
_AECA8DE46_273:;
}

rjmp void _PollingKey3B90E3B1()
{
	__int16 _keynow_1_2;
	__int16 _i_1_4;
	__int16 _bits_1_6;
	__int16 _bitp_1_8;
	__int16 _pkey_1_10;
	////////////////////////////
_AECA8DE46_274:;
	////////////////////////////
_AECA8DE46_275:;
_AECA8DE46_276:;
	NEARCALL(L5589D4CE_71);
	sSI	= (int)&_keynow_1_2;
	*(__int16*)sSI	= sAX;
_AECA8DE46_277:;
	asm I1 = L5589D4CE_67+0;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_keynow_1_2;
	sCX	= *(__int16*)sSI;
	sfx_CMP_AX_CX_JNE();
	if(__je__)	goto L5589D4CE_76;
	goto	L5589D4CE_75;
L5589D4CE_76:;
	////////////////////////////
_AECA8DE46_278:;
	sSI	= (int)&_keynow_1_2;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&L5589D4CE_67;
	*(__int16*)sSI	= sAX
_AECA8DE46_279:;
	sAX	= 0x0200;
	sSI	= (int)&L5589D4CE_69;
	*(__int16*)sSI	= sAX
_AECA8DE46_280:;
	goto L5589D4CE_74;
L5589D4CE_75:;
_AECA8DE46_281:;
_AECA8DE46_282:;
	asm I1 = L5589D4CE_69+0;
	sAX	= *(__int16*)sSI;
	sfx_CHECKZERO();
	if(__jnz__)	goto L5589D4CE_78;
	goto	L5589D4CE_77;
L5589D4CE_78:;
	////////////////////////////
_AECA8DE46_283:;
	asm I1 = L5589D4CE_69+0;
	sAX	= *(__int16*)sSI;
	sCX	= 0x0001;
	sAX	= sAX - sCX;
	sSI	= (int)&L5589D4CE_69;
	*(__int16*)sSI	= sAX
_AECA8DE46_284:;
	goto L5589D4CE_74;
L5589D4CE_77:;
_AECA8DE46_285:;
_AECA8DE46_286:;
	asm AX = #_keyfuncF06F3D55+0;
	sSI	= (int)&_pkey_1_10;
	*(__int16*)sSI	= sAX;
_AECA8DE46_287:;
	sAX	= 0x0200;
	sSI	= (int)&L5589D4CE_69;
	*(__int16*)sSI	= sAX
_AECA8DE46_288:;
	asm I1 = L5589D4CE_68+0;
	sAX	= *(__int16*)sSI;
	asm I1 = L5589D4CE_67+0;
	asm AR = rm[I1];
	asm AX = AX ^ AR;
	sSI	= (int)&_bits_1_6;
	*(__int16*)sSI	= sAX;
_AECA8DE46_289:;
	asm I1 = L5589D4CE_68+0;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_bitp_1_8;
	*(__int16*)sSI	= sAX;
_AECA8DE46_290:;
	asm I1 = L5589D4CE_67+0;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&L5589D4CE_68;
	*(__int16*)sSI	= sAX
_AECA8DE46_291:;
	_i_1_4+0	= 0x05;
L5589D4CE_80:;
_AECA8DE46_292:;
	sSI	= (int)&_i_1_4;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_i_1_4;
	asm AR = 0x0001;
	sCX	= *(__int16*)sSI;
	asm rm[I1] = CX - AR;
	sfx_CHECKZERO();
	if(__jnz__)	goto L5589D4CE_81;
	goto	L5589D4CE_79;
L5589D4CE_81:;
	////////////////////////////
_AECA8DE46_293:;
	sAX	= 0;
	sSI	= (int)&_bits_1_6+0;
	asm AR = rm[I1];
	asm test AR.b0;
	if(__jz__) goto L5589D4CE_83;
	sAX	= 1;
L5589D4CE_83:;
	sfx_CHECKZERO();
	if(__jnz__)	goto L5589D4CE_84;
	goto	L5589D4CE_82;
L5589D4CE_84:;
	////////////////////////////
_AECA8DE46_294:;
	sAX	= 0;
	sSI	= (int)&_bitp_1_8+0;
	asm AR = rm[I1];
	asm test AR.b0;
	if(__jz__) goto L5589D4CE_86;
	sAX	= 1;
L5589D4CE_86:;
	sfx_CHECKZERO();
	if(__jnz__)	goto L5589D4CE_87;
	goto	L5589D4CE_85;
L5589D4CE_87:;
	////////////////////////////
_AECA8DE46_295:;
	sSI	= (int)&_pkey_1_10;
	sAX	= *(__int16*)sSI;
	sCX	= 0x0002;
	sAX	= sAX + sCX;
	sDI	= sAX;
	sAX	= *(__int16*)sDI;
	sfx_CHECKZERO();
	if(__jnz__)	goto L5589D4CE_89;
	goto	L5589D4CE_88;
L5589D4CE_89:;
_AECA8DE46_296:;
_AECA8DE46_297:;
	sSI	= (int)&_pkey_1_10;
	sAX	= *(__int16*)sSI;
	sCX	= 0x0002;
	sAX	= sAX + sCX;
	sDI	= sAX;
	sAX	= *(__int16*)sDI;
	sfx_CALL_BY_AX();
L5589D4CE_88:;
_AECA8DE46_298:;
	goto L5589D4CE_90;
L5589D4CE_85:;
	////////////////////////////
_AECA8DE46_299:;
	sSI	= (int)&_pkey_1_10;
	sAX	= *(__int16*)sSI;
	sDI	= sAX;
	sAX	= *(__int16*)sDI;
	sfx_CHECKZERO();
	if(__jnz__)	goto L5589D4CE_92;
	goto	L5589D4CE_91;
L5589D4CE_92:;
_AECA8DE46_300:;
_AECA8DE46_301:;
	sSI	= (int)&_pkey_1_10;
	sAX	= *(__int16*)sSI;
	sDI	= sAX;
	sAX	= *(__int16*)sDI;
	sfx_CALL_BY_AX();
L5589D4CE_91:;
_AECA8DE46_302:;
L5589D4CE_90:;
_AECA8DE46_303:;
	goto L5589D4CE_93;
L5589D4CE_82:;
	////////////////////////////
_AECA8DE46_304:;
	sAX	= 0;
	sSI	= (int)&_bitp_1_8+0;
	asm AR = rm[I1];
	asm test AR.b0;
	if(__jz__) goto L5589D4CE_95;
	sAX	= 1;
L5589D4CE_95:;
	sfx_CHECKZERO();
	if(__jnz__)	goto L5589D4CE_96;
	goto	L5589D4CE_94;
L5589D4CE_96:;
	////////////////////////////
_AECA8DE46_305:;
	sSI	= (int)&_pkey_1_10;
	sAX	= *(__int16*)sSI;
	sCX	= 0x0001;
	sAX	= sAX + sCX;
	sDI	= sAX;
	sAX	= *(__int16*)sDI;
	sfx_CHECKZERO();
	if(__jnz__)	goto L5589D4CE_98;
	goto	L5589D4CE_97;
L5589D4CE_98:;
_AECA8DE46_306:;
_AECA8DE46_307:;
	sSI	= (int)&_pkey_1_10;
	sAX	= *(__int16*)sSI;
	sCX	= 0x0001;
	sAX	= sAX + sCX;
	sDI	= sAX;
	sAX	= *(__int16*)sDI;
	sfx_CALL_BY_AX();
L5589D4CE_97:;
_AECA8DE46_308:;
L5589D4CE_94:;
_AECA8DE46_309:;
L5589D4CE_93:;
_AECA8DE46_310:;
_AECA8DE46_311:;
	sSI	= (int)&_bits_1_6;
	sAX	= *(__int16*)sSI;
	asm sra AX, 1;
	sSI	= (int)&_bits_1_6;
	*(__int16*)sSI	= sAX;
_AECA8DE46_312:;
	sSI	= (int)&_bitp_1_8;
	sAX	= *(__int16*)sSI;
	asm sra AX, 1;
	sSI	= (int)&_bitp_1_8;
	*(__int16*)sSI	= sAX;
_AECA8DE46_313:;
	sSI	= (int)&_pkey_1_10;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_pkey_1_10;
	asm AR = 0x0003;
	sCX	= *(__int16*)sSI;
	asm rm[I1] = CX + AR;
_AECA8DE46_314:;
	goto L5589D4CE_80;
L5589D4CE_79:;
L5589D4CE_74:;
_AECA8DE46_315:;
	return;
_PollingKey3B90E3B1_end:;
_AECA8DE46_316:;
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

// public _InitKey3C587B6D
// public _PollingKey3B90E3B1
// extern _keyfuncF06F3D55:proc
