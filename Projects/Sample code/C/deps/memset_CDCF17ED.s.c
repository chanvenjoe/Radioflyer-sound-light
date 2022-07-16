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

// .bss ends _bss

// CODE segment

.code


rcall rjmp void _memset_sC3E11DB1(__int16 _s_0_4, __int16 _c_0_6, __int16 _n_0_8);
rcall rjmp void _memset_rC7200006(__int16 _s_0_4, __int16 _c_0_6, __int16 _n_0_8);
rcall rjmp void _memset5A9D755A(__int16 _s_0_4_0, __int16 _s_0_4_1, __int16 _c_0_8, __int16 _n_0_10);
// RCODE segment

// .model speechdsp
// .code segment _text
.code
rcall rjmp void _memset_sC3E11DB1(__int16 _s_0_4, __int16 _c_0_6, __int16 _n_0_8)
{
	__int16 _ret_1_2;
	////////////////////////////
_AECA8DE46_317:;
	////////////////////////////
_AECA8DE46_318:;
	sSI	= (int)&_s_0_4;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_ret_1_2;
	*(__int16*)sSI	= sAX;
LF2D2B0F3_102:;
_AECA8DE46_319:;
	sSI	= (int)&_n_0_8;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_n_0_8;
	asm AR = 0x0001;
	sCX	= *(__int16*)sSI;
	asm rm[I1] = CX - AR;
	sfx_CHECKZERO();
	if(__jnz__)	goto LF2D2B0F3_103;
	goto	LF2D2B0F3_101;
LF2D2B0F3_103:;
_AECA8DE46_320:;
	sSI	= (int)&_ret_1_2;
	sAX	= *(__int16*)sSI;
	PUSH(sAX);
	sSI	= (int)&_c_0_6;
	sAX	= *(__int16*)sSI;
	sSI	= POP();
	*(__int16*)sSI	= sAX;
	sSI	= (int)&_ret_1_2;
	asm AR = 0x0001;
	sAX	= *(__int16*)sSI;
	asm rm[I1] = AX + AR;
_AECA8DE46_321:;
	goto LF2D2B0F3_102;
LF2D2B0F3_101:;
_AECA8DE46_322:;
	sSI	= (int)&_s_0_4;
	sAX	= *(__int16*)sSI;
	goto LF2D2B0F3_100;
LF2D2B0F3_100:;
_AECA8DE46_323:;
	return;
_memset_sC3E11DB1_end:;
_AECA8DE46_324:;
}

rcall rjmp void _memset_rC7200006(__int16 _s_0_4, __int16 _c_0_6, __int16 _n_0_8)
{
	__int16 _ret_1_2;
	////////////////////////////
_AECA8DE46_325:;
	////////////////////////////
_AECA8DE46_326:;
	sSI	= (int)&_s_0_4;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_ret_1_2;
	*(__int16*)sSI	= sAX;
LF2D2B0F3_106:;
_AECA8DE46_327:;
	sSI	= (int)&_n_0_8;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_n_0_8;
	asm AR = 0x0001;
	sCX	= *(__int16*)sSI;
	asm rm[I1] = CX - AR;
	sfx_CHECKZERO();
	if(__jnz__)	goto LF2D2B0F3_107;
	goto	LF2D2B0F3_105;
LF2D2B0F3_107:;
_AECA8DE46_328:;
	sSI	= (int)&_ret_1_2;
	sAX	= *(__int16*)sSI;
	PUSH(sAX);
	sSI	= (int)&_c_0_6;
	sAX	= *(__int16*)sSI;
	sSI	= POP();
	*(__int16*)sSI	= sAX;
	sSI	= (int)&_ret_1_2;
	asm AR = 0x0001;
	sAX	= *(__int16*)sSI;
	asm rm[I1] = AX + AR;
_AECA8DE46_329:;
	goto LF2D2B0F3_106;
LF2D2B0F3_105:;
_AECA8DE46_330:;
	sSI	= (int)&_s_0_4;
	sAX	= *(__int16*)sSI;
	goto LF2D2B0F3_104;
LF2D2B0F3_104:;
_AECA8DE46_331:;
	return;
_memset_rC7200006_end:;
_AECA8DE46_332:;
}

rcall rjmp void _memset5A9D755A(__int16 _s_0_4_0, __int16 _s_0_4_1, __int16 _c_0_8, __int16 _n_0_10)
{
_AECA8DE46_333:;
	////////////////////////////
_AECA8DE46_334:;
	sAX	= (int)&_s_0_4_0;
	sCX	= 0x0001;
	sAX	= sAX + sCX;
	sSI	= sAX;
	sAX	= *(__int16*)sSI;
	sfx_CHECKZERO();
	if(__jnz__)	goto LF2D2B0F3_110;
	goto	LF2D2B0F3_109;
LF2D2B0F3_110:;
_AECA8DE46_335:;
_AECA8DE46_336:;
	sSI	= (int)&_n_0_10;
	sAX	= *(__int16*)sSI;
	PUSH(sAX);
	sSI	= (int)&_c_0_8;
	sAX	= *(__int16*)sSI;
	PUSH(sAX);
	sAX	= (int)&_s_0_4_0;
	sSI	= sAX;
	sAX	= *(__int16*)sSI;
	PUSH(sAX);
	_memset_rC7200006(STACK[sSP + 0], STACK[sSP + 1], STACK[sSP + 2]);
	RESTORESP(3);
	sDX	= 0x0800;
	goto LF2D2B0F3_108;
LF2D2B0F3_109:;
_AECA8DE46_337:;
_AECA8DE46_338:;
_AECA8DE46_339:;
	sSI	= (int)&_n_0_10;
	sAX	= *(__int16*)sSI;
	PUSH(sAX);
	sSI	= (int)&_c_0_8;
	sAX	= *(__int16*)sSI;
	PUSH(sAX);
	sAX	= (int)&_s_0_4_0;
	sSI	= sAX;
	sAX	= *(__int16*)sSI;
	PUSH(sAX);
	_memset_sC3E11DB1(STACK[sSP + 0], STACK[sSP + 1], STACK[sSP + 2]);
	RESTORESP(3);
	sDX	= 0;
	goto LF2D2B0F3_108;
LF2D2B0F3_108:;
_AECA8DE46_340:;
	return;
_memset5A9D755A_end:;
_AECA8DE46_341:;
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

// public _memset5A9D755A
// public _memset_sC3E11DB1
// public _memset_rC7200006
