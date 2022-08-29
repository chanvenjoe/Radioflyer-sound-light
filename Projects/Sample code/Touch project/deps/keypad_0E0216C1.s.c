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
_A569F39CC_254:;
	////////////////////////////
_A569F39CC_255:;
	asm clr io[0x04].b0;
_A569F39CC_256:;
	asm clr io[0x04].b1;
_A569F39CC_257:;
	asm clr io[0x04].b2;
_A569F39CC_258:;
	asm clr io[0x04].b3;
_A569F39CC_259:;
	asm clr io[0x05].b0;
_A569F39CC_260:;
	asm clr io[0x06].b0;
_A569F39CC_261:;
	asm set io[0x05].b2;
_A569F39CC_262:;
	io[0x1E]	= 0x0005;
_A569F39CC_263:;
	sAX	= 0x0007;
	sAX	= sAX | io[0x1F];
	io[0x1F]	= sAX;
_A569F39CC_264:;
	sAX	= 0x0000;
	sSI	= (int)&L5589D4CE_67;
	*(__int16*)sSI	= sAX
_A569F39CC_265:;
	sAX	= 0x0000;
	sSI	= (int)&L5589D4CE_68;
	*(__int16*)sSI	= sAX
_A569F39CC_266:;
	sAX	= 0x0200;
	sSI	= (int)&L5589D4CE_69;
	*(__int16*)sSI	= sAX
L5589D4CE_70:;
_A569F39CC_267:;
	return;
_InitKey3C587B6D_end:;
_A569F39CC_268:;
}

rjmp void L5589D4CE_71()
{
	__int16 _btn_1_2;
	////////////////////////////
_A569F39CC_269:;
	////////////////////////////
_A569F39CC_270:;
	sAX	= 0x000F;
	sAX	= sAX & io[0x07];
	sSI	= (int)&_btn_1_2;
	*(__int16*)sSI	= sAX;
_A569F39CC_271:;
	sSI	= (int)&_btn_1_2;
	sAX	= *(__int16*)sSI;
	goto L5589D4CE_73;
L5589D4CE_73:;
_A569F39CC_272:;
	return;
L5589D4CE_71_end:;
_A569F39CC_273:;
}

rjmp void _PollingKey3B90E3B1()
{
	__int16 _keynow_1_2;
	__int16 _i_1_4;
	__int16 _bits_1_6;
	__int16 _bitp_1_8;
	__int16 _pkey_1_10;
	////////////////////////////
_A569F39CC_274:;
	////////////////////////////
_A569F39CC_275:;
_A569F39CC_276:;
	NEARCALL(L5589D4CE_71);
	sSI	= (int)&_keynow_1_2;
	*(__int16*)sSI	= sAX;
_A569F39CC_277:;
	asm I1 = L5589D4CE_67+0;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_keynow_1_2;
	sCX	= *(__int16*)sSI;
	sfx_CMP_AX_CX_JNE();
	if(__je__)	goto L5589D4CE_76;
	goto	L5589D4CE_75;
L5589D4CE_76:;
	////////////////////////////
_A569F39CC_278:;
	sSI	= (int)&_keynow_1_2;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&L5589D4CE_67;
	*(__int16*)sSI	= sAX
_A569F39CC_279:;
	sAX	= 0x0200;
	sSI	= (int)&L5589D4CE_69;
	*(__int16*)sSI	= sAX
_A569F39CC_280:;
	goto L5589D4CE_74;
L5589D4CE_75:;
_A569F39CC_281:;
_A569F39CC_282:;
	asm I1 = L5589D4CE_69+0;
	sAX	= *(__int16*)sSI;
	sfx_CHECKZERO();
	if(__jnz__)	goto L5589D4CE_78;
	goto	L5589D4CE_77;
L5589D4CE_78:;
	////////////////////////////
_A569F39CC_283:;
	asm I1 = L5589D4CE_69+0;
	sAX	= *(__int16*)sSI;
	sCX	= 0x0001;
	sAX	= sAX - sCX;
	sSI	= (int)&L5589D4CE_69;
	*(__int16*)sSI	= sAX
_A569F39CC_284:;
	goto L5589D4CE_74;
L5589D4CE_77:;
_A569F39CC_285:;
_A569F39CC_286:;
	asm AX = #_keyfuncF06F3D55+0;
	sSI	= (int)&_pkey_1_10;
	*(__int16*)sSI	= sAX;
_A569F39CC_287:;
	sAX	= 0x0200;
	sSI	= (int)&L5589D4CE_69;
	*(__int16*)sSI	= sAX
_A569F39CC_288:;
	asm I1 = L5589D4CE_68+0;
	sAX	= *(__int16*)sSI;
	asm I1 = L5589D4CE_67+0;
	asm AR = rm[I1];
	asm AX = AX ^ AR;
	sSI	= (int)&_bits_1_6;
	*(__int16*)sSI	= sAX;
_A569F39CC_289:;
	asm I1 = L5589D4CE_68+0;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_bitp_1_8;
	*(__int16*)sSI	= sAX;
_A569F39CC_290:;
	asm I1 = L5589D4CE_67+0;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&L5589D4CE_68;
	*(__int16*)sSI	= sAX
_A569F39CC_291:;
	_i_1_4+0	= 0x05;
L5589D4CE_80:;
_A569F39CC_292:;
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
_A569F39CC_293:;
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
_A569F39CC_294:;
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
_A569F39CC_295:;
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
_A569F39CC_296:;
_A569F39CC_297:;
	sSI	= (int)&_pkey_1_10;
	sAX	= *(__int16*)sSI;
	sCX	= 0x0002;
	sAX	= sAX + sCX;
	sDI	= sAX;
	sAX	= *(__int16*)sDI;
	sfx_CALL_BY_AX();
L5589D4CE_88:;
_A569F39CC_298:;
	goto L5589D4CE_90;
L5589D4CE_85:;
	////////////////////////////
_A569F39CC_299:;
	sSI	= (int)&_pkey_1_10;
	sAX	= *(__int16*)sSI;
	sDI	= sAX;
	sAX	= *(__int16*)sDI;
	sfx_CHECKZERO();
	if(__jnz__)	goto L5589D4CE_92;
	goto	L5589D4CE_91;
L5589D4CE_92:;
_A569F39CC_300:;
_A569F39CC_301:;
	sSI	= (int)&_pkey_1_10;
	sAX	= *(__int16*)sSI;
	sDI	= sAX;
	sAX	= *(__int16*)sDI;
	sfx_CALL_BY_AX();
L5589D4CE_91:;
_A569F39CC_302:;
L5589D4CE_90:;
_A569F39CC_303:;
	goto L5589D4CE_93;
L5589D4CE_82:;
	////////////////////////////
_A569F39CC_304:;
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
_A569F39CC_305:;
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
_A569F39CC_306:;
_A569F39CC_307:;
	sSI	= (int)&_pkey_1_10;
	sAX	= *(__int16*)sSI;
	sCX	= 0x0001;
	sAX	= sAX + sCX;
	sDI	= sAX;
	sAX	= *(__int16*)sDI;
	sfx_CALL_BY_AX();
L5589D4CE_97:;
_A569F39CC_308:;
L5589D4CE_94:;
_A569F39CC_309:;
L5589D4CE_93:;
_A569F39CC_310:;
_A569F39CC_311:;
	sSI	= (int)&_bits_1_6;
	sAX	= *(__int16*)sSI;
	asm sra AX, 1;
	sSI	= (int)&_bits_1_6;
	*(__int16*)sSI	= sAX;
_A569F39CC_312:;
	sSI	= (int)&_bitp_1_8;
	sAX	= *(__int16*)sSI;
	asm sra AX, 1;
	sSI	= (int)&_bitp_1_8;
	*(__int16*)sSI	= sAX;
_A569F39CC_313:;
	sSI	= (int)&_pkey_1_10;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_pkey_1_10;
	asm AR = 0x0003;
	sCX	= *(__int16*)sSI;
	asm rm[I1] = CX + AR;
_A569F39CC_314:;
	goto L5589D4CE_80;
L5589D4CE_79:;
L5589D4CE_74:;
_A569F39CC_315:;
	return;
_PollingKey3B90E3B1_end:;
_A569F39CC_316:;
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
