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


naked void MyData();
rjmp void _main();
rjmp void _InitSound5CCD501D();
// RCODE segment

// .model speechdsp
// .code segment _text
.code
rjmp void _main()
{
_A2514F5AD_0:;
	////////////////////////////
_A2514F5AD_1:;
_A2514F5AD_2:;
	F_ChangePWMVectTabletobank2();
_A2514F5AD_3:;
	sAX	= 0x0000;
	asm I1 = _sub_vol980B1B83+0;
	*(__int16*)sSI	= sAX
_A2514F5AD_4:;
_A2514F5AD_5:;
	_INITIAL0C18377D();
_A2514F5AD_6:;
_A2514F5AD_7:;
	_ClearTickCount5DDE4003();
_A2514F5AD_8:;
_A2514F5AD_9:;
	asm AX = #MyData+0;
	asm DX = #MyData.n2
	asm set DX.b11
	PUSH(sDX);
	PUSH(sAX);
	_Sub3Play422CAD6D(STACK[sSP + 0], STACK[sSP + 1]);
	RESTORESP(2);
LB6D5333B_4:;
_A2514F5AD_10:;
_A2514F5AD_11:;
	asm	io[ClrWDT] = AR
	////////////////////////////
_A2514F5AD_12:;
_A2514F5AD_13:;
	_RampUpFF7996DA();
_A2514F5AD_14:;
_A2514F5AD_15:;
	Subb3_Dec();
	sfx_CHECKZERO();
	if(__jnz__)	goto LB6D5333B_6;
	goto	LB6D5333B_5;
LB6D5333B_6:;
_A2514F5AD_16:;
_A2514F5AD_17:;
	asm AX = #MyData+0;
	asm DX = #MyData.n2
	asm set DX.b11
	PUSH(sDX);
	PUSH(sAX);
	_Sub3Play422CAD6D(STACK[sSP + 0], STACK[sSP + 1]);
	RESTORESP(2);
LB6D5333B_5:;
_A2514F5AD_18:;
_A2514F5AD_19:;
	goto LB6D5333B_4;
LB6D5333B_3:;
LB6D5333B_2:;
_A2514F5AD_20:;
	return;
_main_end:;
_A2514F5AD_21:;
}

rjmp void _InitSound5CCD501D()
{
_A2514F5AD_22:;
	////////////////////////////
_A2514F5AD_23:;
	io[0x3E]	= 0x3FFF;
_A2514F5AD_24:;
	io[0x16]	= 0x0000;
_A2514F5AD_25:;
	io[0x16]	= 0x0000;
_A2514F5AD_26:;
	io[0x16]	= 0x0000;
_A2514F5AD_27:;
	io[0x16]	= 0x0000;
_A2514F5AD_28:;
	io[0x36]	= 0x0000;
_A2514F5AD_29:;
	io[0x36]	= 0x0000;
_A2514F5AD_30:;
	io[0x36]	= 0x0000;
_A2514F5AD_31:;
	io[0x36]	= 0x0000;
_A2514F5AD_32:;
	io[0x36]	= 0x0000;
_A2514F5AD_33:;
	io[0x36]	= 0x0000;
_A2514F5AD_34:;
	io[0x36]	= 0x0000;
_A2514F5AD_35:;
	io[0x36]	= 0x0000;
_A2514F5AD_36:;
	io[0x3C]	= 0x0000;
_A2514F5AD_37:;
	sAX	= io[0x3C];
_A2514F5AD_38:;
_A2514F5AD_39:;
	_EnableAudioPWM0A4AEB9D();
LB6D5333B_7:;
_A2514F5AD_40:;
	return;
_InitSound5CCD501D_end:;
_A2514F5AD_41:;
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
naked void MyData()
{
	asm	DW "subband3\3104-Bounce-Count-Song@34K3bps.T3Z"
}


// .data ends _linkd

// .code segment _text
.code
// .code ends _text

// extern _ClearTickCount5DDE4003:proc
// extern _sub_vol980B1B83:word
// extern _RampUpFF7996DA:proc
// extern Subb3_Dec:proc
// extern _Sub3Play422CAD6D:proc
// extern _INITIAL0C18377D:proc
// public MyData
// extern Pwm_process:proc
// extern F_ChangePWMVectTabletobank2:proc
// public _main
// public _InitSound5CCD501D
