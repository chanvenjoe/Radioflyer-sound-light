// SUBC 0.8.12 (build Apr 11 2022 16:13:40)
#include "crt0.h"

// .fast segment _fast
// FAST segment (data with / without initial value)

// .fast ends _fast

// .bss segment _rwdata
// DATA segment (with initial value)
__int16 L0DC315BC_102;
__int16 L0DC315BC_103;

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
_A569F39CC_317:;
	////////////////////////////
_A569F39CC_318:;
	sAX	= 0;
	asm test io[0x02].b5;
	if(__jz__) goto L0DC315BC_105;
	sAX	= 1;
L0DC315BC_105:;
	sCX	= 0x0001;
	sfx_CMP_AX_CX_JE();
	if(__je__)	goto L0DC315BC_107;
	goto	L0DC315BC_106;
L0DC315BC_107:;
_A569F39CC_319:;
	asm	clr io[INTREQ].b5
	////////////////////////////
L0DC315BC_106:;
_A569F39CC_320:;
_A569F39CC_321:;
	asm I1 = L0DC315BC_102+0;
	sAX	= *(__int16*)sSI;
	sCX	= 0x0001;
	sfx_CMP_AX_CX_JE();
	if(__je__)	goto L0DC315BC_109;
	goto	L0DC315BC_108;
L0DC315BC_109:;
	////////////////////////////
_A569F39CC_322:;
	io[0x08]	= 0x0004;
_A569F39CC_323:;
	sAX	= 0x0000;
	sSI	= (int)&L0DC315BC_102;
	*(__int16*)sSI	= sAX
	goto L0DC315BC_110;
L0DC315BC_108:;
	////////////////////////////
_A569F39CC_324:;
	asm I1 = L0DC315BC_102+0;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&L0DC315BC_102;
	PUSH(sAX);
	sAX	= 0x0001;
	sCX	= *(__int16*)sSI;
	sCX	= sCX + sAX;
	*(__int16*)sSI	= sCX;
	sAX	= POP();
_A569F39CC_325:;
	io[0x08]	= 0x0000;
L0DC315BC_110:;
_A569F39CC_326:;
L0DC315BC_104:;
_A569F39CC_327:;
	return;
_touch_IRS1910CF89_end:;
_A569F39CC_328:;
}

void _touch_init378E5983()
{
_A569F39CC_329:;
	////////////////////////////
_A569F39CC_330:;
	io[0x19]	= 0x007C;
_A569F39CC_331:;
	asm clr io[0x19].b0;
_A569F39CC_332:;
	asm clr io[0x19].b1;
_A569F39CC_333:;
	asm set io[0x19].b2;
_A569F39CC_334:;
	asm clr io[0x19].b3;
_A569F39CC_335:;
	asm clr io[0x19].b4;
_A569F39CC_336:;
	asm set io[0x19].b5;
_A569F39CC_337:;
	asm set io[0x19].b6;
_A569F39CC_338:;
	asm set io[0x19].b7;
_A569F39CC_339:;
	asm clr io[0x06].b0;
_A569F39CC_340:;
	asm clr io[0x04].b3;
_A569F39CC_341:;
	io[0x1E]	= 0x000F;
_A569F39CC_342:;
	io[0x1F]	= 0x0001;
_A569F39CC_343:;
	asm	set io[INTENA].b5
L0DC315BC_111:;
_A569F39CC_344:;
	return;
_touch_init378E5983_end:;
_A569F39CC_345:;
}

interrupt void _Touch_entry886E03ED()
{
_A569F39CC_346:;
	////////////////////////////
_A569F39CC_347:;
	asm I1 = L0DC315BC_103+0;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&L0DC315BC_103;
	PUSH(sAX);
	sAX	= 0x0001;
	sCX	= *(__int16*)sSI;
	sCX	= sCX + sAX;
	*(__int16*)sSI	= sCX;
	sAX	= POP();
_A569F39CC_348:;
	asm I1 = L0DC315BC_103+0;
	sAX	= *(__int16*)sSI;
	sCX	= 0x0064;
	sfx_CMP_AX_CX_JG();
	if(__je__)	goto L0DC315BC_114;
	goto	L0DC315BC_113;
L0DC315BC_114:;
	////////////////////////////
_A569F39CC_349:;
_A569F39CC_350:;
	_touch_IRS1910CF89();
_A569F39CC_351:;
	sAX	= 0x0000;
	sSI	= (int)&L0DC315BC_103;
	*(__int16*)sSI	= sAX
L0DC315BC_113:;
_A569F39CC_352:;
L0DC315BC_112:;
_A569F39CC_353:;
	return;
_Touch_entry886E03ED_end:;
_A569F39CC_354:;
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

	asm P1 = #ginit_seg_touch_AB036625_s+1;
	asm I1 = L0DC315BC_103;
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

__int16 ginit_seg_touch_AB036625_s[2] = {
	// L0DC315BC_102
	0x0000,
	// L0DC315BC_103
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
