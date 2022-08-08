// SUBC 0.8.12 (build Apr 11 2022 16:13:40)
#include "crt0.h"

// .fast segment _fast
// FAST segment (data with / without initial value)

// .fast ends _fast

// .bss segment _rwdata
// DATA segment (with initial value)
__int16 L0DC315BC_101;

// .bss ends _rwdata

// .bss segment _bss
// BSS segment (data without initial value)
__int16 _pE0B41DE7;

// .bss ends _bss

// CODE segment

.code


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
void _touch_init378E5983()
{
_AA01D89BC_313:;
	////////////////////////////
_AA01D89BC_314:;
	io[0x19]	= 0x007C;
_AA01D89BC_315:;
	asm clr io[0x19].b0;
_AA01D89BC_316:;
	asm clr io[0x19].b1;
_AA01D89BC_317:;
	asm set io[0x19].b2;
_AA01D89BC_318:;
	asm clr io[0x19].b3;
_AA01D89BC_319:;
	asm set io[0x19].b4;
_AA01D89BC_320:;
	asm clr io[0x19].b5;
_AA01D89BC_321:;
	asm set io[0x19].b6;
_AA01D89BC_322:;
	asm set io[0x19].b7;
_AA01D89BC_323:;
	io[0x1E]	= 0x000E;
_AA01D89BC_324:;
	io[0x1F]	= 0x000F;
_AA01D89BC_325:;
	asm	set io[INTENA].b5
L0DC315BC_102:;
_AA01D89BC_326:;
	return;
_touch_init378E5983_end:;
_AA01D89BC_327:;
}

interrupt void _Touch_entry886E03ED()
{
_AA01D89BC_328:;
	////////////////////////////
_AA01D89BC_329:;
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
_AA01D89BC_330:;
	asm	clr io[INTREQ].b5
	////////////////////////////
L0DC315BC_105:;
_AA01D89BC_331:;
_AA01D89BC_332:;
	asm I1 = L0DC315BC_101+0;
	sAX	= *(__int16*)sSI;
	sCX	= 0x0001;
	sfx_CMP_AX_CX_JE();
	if(__je__)	goto L0DC315BC_108;
	goto	L0DC315BC_107;
L0DC315BC_108:;
	////////////////////////////
_AA01D89BC_333:;
	io[0x08]	= 0x000F;
_AA01D89BC_334:;
	sAX	= 0x0000;
	sSI	= (int)&L0DC315BC_101;
	*(__int16*)sSI	= sAX
	goto L0DC315BC_109;
L0DC315BC_107:;
	////////////////////////////
_AA01D89BC_335:;
	asm I1 = L0DC315BC_101+0;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&L0DC315BC_101;
	PUSH(sAX);
	sAX	= 0x0001;
	sCX	= *(__int16*)sSI;
	sCX	= sCX + sAX;
	*(__int16*)sSI	= sCX;
	sAX	= POP();
_AA01D89BC_336:;
	io[0x08]	= 0x0000;
L0DC315BC_109:;
_AA01D89BC_337:;
L0DC315BC_103:;
_AA01D89BC_338:;
	return;
_Touch_entry886E03ED_end:;
_AA01D89BC_339:;
}

// .code ends _text

// .code segment _ginit
.code

// -=-=-=-=-=-=-=-=-=-=-
naked void ginit_code_touch_AB036625_s(void)
{
	asm P1 = #ginit_seg_touch_AB036625_s+0;
	asm I1 = L0DC315BC_101;
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
	// L0DC315BC_101
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
// public _pE0B41DE7
// public _Touch_entry886E03ED
// public ginit_code_touch_AB036625_s
