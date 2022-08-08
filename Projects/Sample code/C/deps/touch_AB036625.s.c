// SUBC 0.8.12 (build Apr 11 2022 16:13:40)
#include "crt0.h"

// .fast segment _fast
// FAST segment (data with / without initial value)

// .fast ends _fast

// .bss segment _rwdata
// DATA segment (with initial value)
__int16 L0DC315BC_102;

// .bss ends _rwdata

// .bss segment _bss
// BSS segment (data without initial value)
__int16 _pE0B41DE7;

// .bss ends _bss

// CODE segment

.code


void _touch_IRS1910CF89();
void _touch_init378E5983();
interrupt void _Touch_entry886E03ED();
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
void _touch_IRS1910CF89()
{
_A1748455A_315:;
	////////////////////////////
_A1748455A_316:;
	sAX	= 0;
	asm test io[0x02].b5;
	if(__jz__) goto L0DC315BC_104;
	sAX	= 1;
L0DC315BC_104:;
	sCX	= 0x0001;
	sfx_CMP_AX_CX_JE();
	if(__je__)	goto L0DC315BC_106;
	goto	L0DC315BC_105;
L0DC315BC_106:;
_A1748455A_317:;
	asm	clr io[INTREQ].b5
	////////////////////////////
L0DC315BC_105:;
_A1748455A_318:;
_A1748455A_319:;
	asm I1 = L0DC315BC_102+0;
	sAX	= *(__int16*)sSI;
	sCX	= 0x0001;
	sfx_CMP_AX_CX_JE();
	if(__je__)	goto L0DC315BC_108;
	goto	L0DC315BC_107;
L0DC315BC_108:;
	////////////////////////////
_A1748455A_320:;
	io[0x08]	= 0x00FF;
_A1748455A_321:;
	sAX	= 0x0000;
	sSI	= (int)&L0DC315BC_102;
	*(__int16*)sSI	= sAX
	goto L0DC315BC_109;
L0DC315BC_107:;
	////////////////////////////
_A1748455A_322:;
	asm I1 = L0DC315BC_102+0;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&L0DC315BC_102;
	PUSH(sAX);
	sAX	= 0x0001;
	sCX	= *(__int16*)sSI;
	sCX	= sCX + sAX;
	*(__int16*)sSI	= sCX;
	sAX	= POP();
_A1748455A_323:;
	io[0x08]	= 0x0000;
L0DC315BC_109:;
_A1748455A_324:;
L0DC315BC_103:;
_A1748455A_325:;
	return;
_touch_IRS1910CF89_end:;
_A1748455A_326:;
}

void _touch_init378E5983()
{
_A1748455A_327:;
	////////////////////////////
_A1748455A_328:;
	io[0x19]	= 0x007C;
_A1748455A_329:;
	asm clr io[0x19].b0;
_A1748455A_330:;
	asm clr io[0x19].b1;
_A1748455A_331:;
	asm set io[0x19].b2;
_A1748455A_332:;
	asm clr io[0x19].b3;
_A1748455A_333:;
	asm set io[0x19].b4;
_A1748455A_334:;
	asm clr io[0x19].b5;
_A1748455A_335:;
	asm set io[0x19].b6;
_A1748455A_336:;
	asm set io[0x19].b7;
_A1748455A_337:;
	io[0x1E]	= 0x000E;
_A1748455A_338:;
	io[0x1F]	= 0x000F;
_A1748455A_339:;
	asm	set io[INTENA].b5
L0DC315BC_110:;
_A1748455A_340:;
	return;
_touch_init378E5983_end:;
_A1748455A_341:;
}

interrupt void _Touch_entry886E03ED()
{
_A1748455A_342:;
	////////////////////////////
_A1748455A_343:;
_A1748455A_344:;
	_touch_IRS1910CF89();
_A1748455A_345:;
_A1748455A_346:;
	_KeyPlayAdpECABF1D0();
L0DC315BC_111:;
_A1748455A_347:;
	return;
_Touch_entry886E03ED_end:;
_A1748455A_348:;
}

// .code ends _text

// .code segment _ginit
.code

// -=-=-=-=-=-=-=-=-=-=-
naked void ginit_code_touch_AB036625_s(void)
{
	asm P1 = #ginit_seg_touch_AB036625_s+0;
	asm I1 = L0DC315BC_102;
	sCX = 1;
	sfx_GLOBALINIT();

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

// .code segment _text
.code

// -=-=-=-=-=-=-=-=-=-=-
// global init segment

__int16 ginit_seg_touch_AB036625_s[1] = {
	// L0DC315BC_102
	0x0000
};

// .code ends _text

// .data segment _linkd
.data
// LINKFILE (RO) segment

// .data ends _linkd

// .code segment _text
.code
// .code ends _text

// public _touch_init378E5983
// public _touch_IRS1910CF89
// public _pE0B41DE7
// public _Touch_entry886E03ED
// public ginit_code_touch_AB036625_s
