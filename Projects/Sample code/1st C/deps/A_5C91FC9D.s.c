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


interrupt void _PWM99B23D7D();
void _WakeupProc94A410F9();
void _main();
void _InitialDA4A7CC4();
// RCODE segment

// .model speechdsp
// .code segment _text
.code
interrupt void _PWM99B23D7D()
{
_A7F014773_0:;
_A7F014773_1:;
	asm	clr io[INTREQ].b0
_A7F014773_2:;
	asm	push AX
_A7F014773_3:;
	asm	push I0
_A7F014773_4:;
	asm	push I1
_A7F014773_5:;
	asm	pop I1
_A7F014773_6:;
	asm	pop I0
_A7F014773_7:;
	asm	pop AX
	////////////////////////////
LC114AE18_2:;
_A7F014773_8:;
	return;
_PWM99B23D7D_end:;
_A7F014773_9:;
}

void _WakeupProc94A410F9()
{
_A7F014773_10:;
_A7F014773_11:;
	asm	io[ClrWDT] = AR
	////////////////////////////
LC114AE18_3:;
_A7F014773_12:;
	return;
_WakeupProc94A410F9_end:;
_A7F014773_13:;
}

void _main()
{
	__int16 _i_1_2;
	////////////////////////////
_A7F014773_14:;
	////////////////////////////
_A7F014773_15:;
	_i_1_2+0	= 0x00;
_A7F014773_16:;
_A7F014773_17:;
	_InitialDA4A7CC4();
LC114AE18_6:;
_A7F014773_18:;
_A7F014773_19:;
	asm	io[ClrWDT] = AR
	////////////////////////////
_A7F014773_20:;
_A7F014773_21:;
	sAX	= 0x0001;
	PUSH(sAX);
	_delay6F9F34ED(STACK[sSP + 0]);
	RESTORESP(1);
_A7F014773_22:;
_A7F014773_23:;
	sSI	= (int)&_i_1_2;
	sAX	= *(__int16*)sSI;
	PUSH(sAX);
	sAX	= 0x0007;
	PUSH(sAX);
	outp(STACK[sSP + 0], STACK[sSP + 1]);
	RESTORESP(2);
_A7F014773_24:;
	sSI	= (int)&_i_1_2;
	sAX	= *(__int16*)sSI;
	sCX	= 0x000F;
	sfx_CMP_AX_CX_JL();
	if(__je__)	goto LC114AE18_8;
	goto	LC114AE18_7;
LC114AE18_8:;
_A7F014773_25:;
	sSI	= (int)&_i_1_2;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_i_1_2;
	asm AR = 0x0001;
	sCX	= *(__int16*)sSI;
	asm rm[I1] = CX + AR;
	goto LC114AE18_9;
LC114AE18_7:;
_A7F014773_26:;
	_i_1_2+0	= 0x00;
LC114AE18_9:;
_A7F014773_27:;
_A7F014773_28:;
	goto LC114AE18_6;
LC114AE18_5:;
LC114AE18_4:;
_A7F014773_29:;
	return;
_main_end:;
_A7F014773_30:;
}

void _InitialDA4A7CC4()
{
_A7F014773_31:;
	////////////////////////////
_A7F014773_32:;
	sAX	= 0x003F;
_A7F014773_33:;
	asm	AR = AX
_A7F014773_34:;
	asm	FLTG = AR
	////////////////////////////
	////////////////////////////
_A7F014773_35:;
	sAX	= 0x1FFF;
_A7F014773_36:;
	asm	AR = AX
_A7F014773_37:;
	asm	FLTP = AR
	////////////////////////////
	////////////////////////////
_A7F014773_38:;
	sAX	= 0x0008;
_A7F014773_39:;
	asm	AR = AX
_A7F014773_40:;
	asm	CBL = AR
	////////////////////////////
_A7F014773_41:;
	asm	set io[INTENA].b0
_A7F014773_42:;
	asm	eni
	////////////////////////////
_A7F014773_43:;
	sAX	= 0x000F;
_A7F014773_44:;
	asm	AR = AX
_A7F014773_45:;
	asm	io[IOC_PA] = AR
	////////////////////////////
	////////////////////////////
_A7F014773_46:;
_A7F014773_47:;
	_ClearTickCount5DDE4003();
LC114AE18_10:;
_A7F014773_48:;
	return;
_InitialDA4A7CC4_end:;
_A7F014773_49:;
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

// extern outp:proc
// extern _ClearTickCount5DDE4003:proc
// extern _delay6F9F34ED:proc
// public _InitialDA4A7CC4
// public _PWM99B23D7D
// public _WakeupProc94A410F9
// public _main
