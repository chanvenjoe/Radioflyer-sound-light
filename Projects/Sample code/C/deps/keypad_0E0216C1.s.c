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
_A1748455A_254:;
	////////////////////////////
_A1748455A_255:;
	asm clr io[0x04].b0;
_A1748455A_256:;
	asm clr io[0x04].b1;
_A1748455A_257:;
	asm clr io[0x04].b2;
_A1748455A_258:;
	asm set io[0x05].b2;
_A1748455A_259:;
	asm set io[0x05].b0;
_A1748455A_260:;
	io[0x1E]	= 0x0005;
_A1748455A_261:;
	sAX	= 0x0007;
	sAX	= sAX | io[0x1F];
	io[0x1F]	= sAX;
_A1748455A_262:;
	sAX	= 0x0000;
	sSI	= (int)&L5589D4CE_67;
	*(__int16*)sSI	= sAX
_A1748455A_263:;
	sAX	= 0x0000;
	sSI	= (int)&L5589D4CE_68;
	*(__int16*)sSI	= sAX
_A1748455A_264:;
	sAX	= 0x0200;
	sSI	= (int)&L5589D4CE_69;
	*(__int16*)sSI	= sAX
L5589D4CE_70:;
_A1748455A_265:;
	return;
_InitKey3C587B6D_end:;
_A1748455A_266:;
}

rjmp void L5589D4CE_71()
{
	__int16 _btn_1_2;
	////////////////////////////
_A1748455A_267:;
	////////////////////////////
_A1748455A_268:;
	sAX	= 0x000F;
	sAX	= sAX & io[0x07];
	sSI	= (int)&_btn_1_2;
	*(__int16*)sSI	= sAX;
_A1748455A_269:;
	sSI	= (int)&_btn_1_2;
	sAX	= *(__int16*)sSI;
	goto L5589D4CE_73;
L5589D4CE_73:;
_A1748455A_270:;
	return;
L5589D4CE_71_end:;
_A1748455A_271:;
}

rjmp void _PollingKey3B90E3B1()
{
	__int16 _keynow_1_2;
	__int16 _i_1_4;
	__int16 _bits_1_6;
	__int16 _bitp_1_8;
	__int16 _pkey_1_10;
	////////////////////////////
_A1748455A_272:;
	////////////////////////////
_A1748455A_273:;
_A1748455A_274:;
	NEARCALL(L5589D4CE_71);
	sSI	= (int)&_keynow_1_2;
	*(__int16*)sSI	= sAX;
_A1748455A_275:;
	asm I1 = L5589D4CE_67+0;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_keynow_1_2;
	sCX	= *(__int16*)sSI;
	sfx_CMP_AX_CX_JNE();
	if(__je__)	goto L5589D4CE_76;
	goto	L5589D4CE_75;
L5589D4CE_76:;
	////////////////////////////
_A1748455A_276:;
	sSI	= (int)&_keynow_1_2;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&L5589D4CE_67;
	*(__int16*)sSI	= sAX
_A1748455A_277:;
	sAX	= 0x0200;
	sSI	= (int)&L5589D4CE_69;
	*(__int16*)sSI	= sAX
_A1748455A_278:;
	goto L5589D4CE_74;
L5589D4CE_75:;
_A1748455A_279:;
_A1748455A_280:;
	asm I1 = L5589D4CE_69+0;
	sAX	= *(__int16*)sSI;
	sfx_CHECKZERO();
	if(__jnz__)	goto L5589D4CE_78;
	goto	L5589D4CE_77;
L5589D4CE_78:;
	////////////////////////////
_A1748455A_281:;
	asm I1 = L5589D4CE_69+0;
	sAX	= *(__int16*)sSI;
	sCX	= 0x0001;
	sAX	= sAX - sCX;
	sSI	= (int)&L5589D4CE_69;
	*(__int16*)sSI	= sAX
_A1748455A_282:;
	goto L5589D4CE_74;
L5589D4CE_77:;
_A1748455A_283:;
_A1748455A_284:;
	asm AX = #_keyfuncF06F3D55+0;
	sSI	= (int)&_pkey_1_10;
	*(__int16*)sSI	= sAX;
_A1748455A_285:;
	sAX	= 0x0200;
	sSI	= (int)&L5589D4CE_69;
	*(__int16*)sSI	= sAX
_A1748455A_286:;
	asm I1 = L5589D4CE_68+0;
	sAX	= *(__int16*)sSI;
	asm I1 = L5589D4CE_67+0;
	asm AR = rm[I1];
	asm AX = AX ^ AR;
	sSI	= (int)&_bits_1_6;
	*(__int16*)sSI	= sAX;
_A1748455A_287:;
	asm I1 = L5589D4CE_68+0;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_bitp_1_8;
	*(__int16*)sSI	= sAX;
_A1748455A_288:;
	asm I1 = L5589D4CE_67+0;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&L5589D4CE_68;
	*(__int16*)sSI	= sAX
_A1748455A_289:;
	_i_1_4+0	= 0x05;
L5589D4CE_80:;
_A1748455A_290:;
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
_A1748455A_291:;
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
_A1748455A_292:;
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
_A1748455A_293:;
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
_A1748455A_294:;
_A1748455A_295:;
	sSI	= (int)&_pkey_1_10;
	sAX	= *(__int16*)sSI;
	sCX	= 0x0002;
	sAX	= sAX + sCX;
	sDI	= sAX;
	sAX	= *(__int16*)sDI;
	sfx_CALL_BY_AX();
L5589D4CE_88:;
_A1748455A_296:;
	goto L5589D4CE_90;
L5589D4CE_85:;
	////////////////////////////
_A1748455A_297:;
	sSI	= (int)&_pkey_1_10;
	sAX	= *(__int16*)sSI;
	sDI	= sAX;
	sAX	= *(__int16*)sDI;
	sfx_CHECKZERO();
	if(__jnz__)	goto L5589D4CE_92;
	goto	L5589D4CE_91;
L5589D4CE_92:;
_A1748455A_298:;
_A1748455A_299:;
	sSI	= (int)&_pkey_1_10;
	sAX	= *(__int16*)sSI;
	sDI	= sAX;
	sAX	= *(__int16*)sDI;
	sfx_CALL_BY_AX();
L5589D4CE_91:;
_A1748455A_300:;
L5589D4CE_90:;
_A1748455A_301:;
	goto L5589D4CE_93;
L5589D4CE_82:;
	////////////////////////////
_A1748455A_302:;
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
_A1748455A_303:;
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
_A1748455A_304:;
_A1748455A_305:;
	sSI	= (int)&_pkey_1_10;
	sAX	= *(__int16*)sSI;
	sCX	= 0x0001;
	sAX	= sAX + sCX;
	sDI	= sAX;
	sAX	= *(__int16*)sDI;
	sfx_CALL_BY_AX();
L5589D4CE_97:;
_A1748455A_306:;
L5589D4CE_94:;
_A1748455A_307:;
L5589D4CE_93:;
_A1748455A_308:;
_A1748455A_309:;
	sSI	= (int)&_bits_1_6;
	sAX	= *(__int16*)sSI;
	asm sra AX, 1;
	sSI	= (int)&_bits_1_6;
	*(__int16*)sSI	= sAX;
_A1748455A_310:;
	sSI	= (int)&_bitp_1_8;
	sAX	= *(__int16*)sSI;
	asm sra AX, 1;
	sSI	= (int)&_bitp_1_8;
	*(__int16*)sSI	= sAX;
_A1748455A_311:;
	sSI	= (int)&_pkey_1_10;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_pkey_1_10;
	asm AR = 0x0003;
	sCX	= *(__int16*)sSI;
	asm rm[I1] = CX + AR;
_A1748455A_312:;
	goto L5589D4CE_80;
L5589D4CE_79:;
L5589D4CE_74:;
_A1748455A_313:;
	return;
_PollingKey3B90E3B1_end:;
_A1748455A_314:;
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
