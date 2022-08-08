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
_AA01D89BC_340:;
	////////////////////////////
_AA01D89BC_341:;
	sSI	= (int)&_s_0_4;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_ret_1_2;
	*(__int16*)sSI	= sAX;
LF2D2B0F3_112:;
_AA01D89BC_342:;
	sSI	= (int)&_n_0_8;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_n_0_8;
	asm AR = 0x0001;
	sCX	= *(__int16*)sSI;
	asm rm[I1] = CX - AR;
	sfx_CHECKZERO();
	if(__jnz__)	goto LF2D2B0F3_113;
	goto	LF2D2B0F3_111;
LF2D2B0F3_113:;
_AA01D89BC_343:;
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
_AA01D89BC_344:;
	goto LF2D2B0F3_112;
LF2D2B0F3_111:;
_AA01D89BC_345:;
	sSI	= (int)&_s_0_4;
	sAX	= *(__int16*)sSI;
	goto LF2D2B0F3_110;
LF2D2B0F3_110:;
_AA01D89BC_346:;
	return;
_memset_sC3E11DB1_end:;
_AA01D89BC_347:;
}

rcall rjmp void _memset_rC7200006(__int16 _s_0_4, __int16 _c_0_6, __int16 _n_0_8)
{
	__int16 _ret_1_2;
	////////////////////////////
_AA01D89BC_348:;
	////////////////////////////
_AA01D89BC_349:;
	sSI	= (int)&_s_0_4;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_ret_1_2;
	*(__int16*)sSI	= sAX;
LF2D2B0F3_116:;
_AA01D89BC_350:;
	sSI	= (int)&_n_0_8;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_n_0_8;
	asm AR = 0x0001;
	sCX	= *(__int16*)sSI;
	asm rm[I1] = CX - AR;
	sfx_CHECKZERO();
	if(__jnz__)	goto LF2D2B0F3_117;
	goto	LF2D2B0F3_115;
LF2D2B0F3_117:;
_AA01D89BC_351:;
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
_AA01D89BC_352:;
	goto LF2D2B0F3_116;
LF2D2B0F3_115:;
_AA01D89BC_353:;
	sSI	= (int)&_s_0_4;
	sAX	= *(__int16*)sSI;
	goto LF2D2B0F3_114;
LF2D2B0F3_114:;
_AA01D89BC_354:;
	return;
_memset_rC7200006_end:;
_AA01D89BC_355:;
}

rcall rjmp void _memset5A9D755A(__int16 _s_0_4_0, __int16 _s_0_4_1, __int16 _c_0_8, __int16 _n_0_10)
{
_AA01D89BC_356:;
	////////////////////////////
_AA01D89BC_357:;
	sAX	= (int)&_s_0_4_0;
	sCX	= 0x0001;
	sAX	= sAX + sCX;
	sSI	= sAX;
	sAX	= *(__int16*)sSI;
	sfx_CHECKZERO();
	if(__jnz__)	goto LF2D2B0F3_120;
	goto	LF2D2B0F3_119;
LF2D2B0F3_120:;
_AA01D89BC_358:;
_AA01D89BC_359:;
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
	goto LF2D2B0F3_118;
LF2D2B0F3_119:;
_AA01D89BC_360:;
_AA01D89BC_361:;
_AA01D89BC_362:;
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
	goto LF2D2B0F3_118;
LF2D2B0F3_118:;
_AA01D89BC_363:;
	return;
_memset5A9D755A_end:;
_AA01D89BC_364:;
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
