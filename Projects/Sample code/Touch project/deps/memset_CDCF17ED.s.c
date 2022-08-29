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
_A569F39CC_355:;
	////////////////////////////
_A569F39CC_356:;
	sSI	= (int)&_s_0_4;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_ret_1_2;
	*(__int16*)sSI	= sAX;
LF2D2B0F3_117:;
_A569F39CC_357:;
	sSI	= (int)&_n_0_8;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_n_0_8;
	asm AR = 0x0001;
	sCX	= *(__int16*)sSI;
	asm rm[I1] = CX - AR;
	sfx_CHECKZERO();
	if(__jnz__)	goto LF2D2B0F3_118;
	goto	LF2D2B0F3_116;
LF2D2B0F3_118:;
_A569F39CC_358:;
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
_A569F39CC_359:;
	goto LF2D2B0F3_117;
LF2D2B0F3_116:;
_A569F39CC_360:;
	sSI	= (int)&_s_0_4;
	sAX	= *(__int16*)sSI;
	goto LF2D2B0F3_115;
LF2D2B0F3_115:;
_A569F39CC_361:;
	return;
_memset_sC3E11DB1_end:;
_A569F39CC_362:;
}

rcall rjmp void _memset_rC7200006(__int16 _s_0_4, __int16 _c_0_6, __int16 _n_0_8)
{
	__int16 _ret_1_2;
	////////////////////////////
_A569F39CC_363:;
	////////////////////////////
_A569F39CC_364:;
	sSI	= (int)&_s_0_4;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_ret_1_2;
	*(__int16*)sSI	= sAX;
LF2D2B0F3_121:;
_A569F39CC_365:;
	sSI	= (int)&_n_0_8;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_n_0_8;
	asm AR = 0x0001;
	sCX	= *(__int16*)sSI;
	asm rm[I1] = CX - AR;
	sfx_CHECKZERO();
	if(__jnz__)	goto LF2D2B0F3_122;
	goto	LF2D2B0F3_120;
LF2D2B0F3_122:;
_A569F39CC_366:;
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
_A569F39CC_367:;
	goto LF2D2B0F3_121;
LF2D2B0F3_120:;
_A569F39CC_368:;
	sSI	= (int)&_s_0_4;
	sAX	= *(__int16*)sSI;
	goto LF2D2B0F3_119;
LF2D2B0F3_119:;
_A569F39CC_369:;
	return;
_memset_rC7200006_end:;
_A569F39CC_370:;
}

rcall rjmp void _memset5A9D755A(__int16 _s_0_4_0, __int16 _s_0_4_1, __int16 _c_0_8, __int16 _n_0_10)
{
_A569F39CC_371:;
	////////////////////////////
_A569F39CC_372:;
	sAX	= (int)&_s_0_4_0;
	sCX	= 0x0001;
	sAX	= sAX + sCX;
	sSI	= sAX;
	sAX	= *(__int16*)sSI;
	sfx_CHECKZERO();
	if(__jnz__)	goto LF2D2B0F3_125;
	goto	LF2D2B0F3_124;
LF2D2B0F3_125:;
_A569F39CC_373:;
_A569F39CC_374:;
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
	goto LF2D2B0F3_123;
LF2D2B0F3_124:;
_A569F39CC_375:;
_A569F39CC_376:;
_A569F39CC_377:;
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
	goto LF2D2B0F3_123;
LF2D2B0F3_123:;
_A569F39CC_378:;
	return;
_memset5A9D755A_end:;
_A569F39CC_379:;
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
