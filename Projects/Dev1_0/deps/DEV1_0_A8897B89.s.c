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
// RCODE segment

// .model speechdsp
// .code segment _text
.code
interrupt void _PWM99B23D7D()
{
_A7F83BA2A_0:;
_A7F83BA2A_1:;
	asm	clr io[INTREQ].b0
_A7F83BA2A_2:;
	asm	push AX
_A7F83BA2A_3:;
	asm	push I0
_A7F83BA2A_4:;
	asm	push I1
_A7F83BA2A_5:;
	asm	pop I1
_A7F83BA2A_6:;
	asm	pop I0
_A7F83BA2A_7:;
	asm	pop AX
	////////////////////////////
L13827D7C_2:;
_A7F83BA2A_8:;
	return;
_PWM99B23D7D_end:;
_A7F83BA2A_9:;
}

void _WakeupProc94A410F9()
{
_A7F83BA2A_10:;
_A7F83BA2A_11:;
	asm	io[ClrWDT] = AR
	////////////////////////////
L13827D7C_3:;
_A7F83BA2A_12:;
	return;
_WakeupProc94A410F9_end:;
_A7F83BA2A_13:;
}

void _main()
{
	__int16 _i_1_2;
	////////////////////////////
_A7F83BA2A_14:;
	////////////////////////////
_A7F83BA2A_15:;
	_i_1_2+0	= 0x00;
_A7F83BA2A_16:;
_A7F83BA2A_17:;
	_InitialDA4A7CC4();
L13827D7C_6:;
_A7F83BA2A_18:;
_A7F83BA2A_19:;
	asm	io[ClrWDT] = AR
	////////////////////////////
_A7F83BA2A_20:;
_A7F83BA2A_21:;
	sAX	= 0x0064;
	PUSH(sAX);
	_delay6F9F34ED(STACK[sSP + 0]);
	RESTORESP(1);
_A7F83BA2A_22:;
_A7F83BA2A_23:;
	sSI	= (int)&_i_1_2;
	sAX	= *(__int16*)sSI;
	PUSH(sAX);
	sAX	= 0x0007;
	PUSH(sAX);
	outp(STACK[sSP + 0], STACK[sSP + 1]);
	RESTORESP(2);
_A7F83BA2A_24:;
	sSI	= (int)&_i_1_2;
	sAX	= *(__int16*)sSI;
	sCX	= 0x000F;
	sfx_CMP_AX_CX_JL();
	if(__je__)	goto L13827D7C_8;
	goto	L13827D7C_7;
L13827D7C_8:;
_A7F83BA2A_25:;
	sSI	= (int)&_i_1_2;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_i_1_2;
	asm AR = 0x0001;
	sCX	= *(__int16*)sSI;
	asm rm[I1] = CX + AR;
	goto L13827D7C_9;
L13827D7C_7:;
_A7F83BA2A_26:;
	_i_1_2+0	= 0x00;
L13827D7C_9:;
_A7F83BA2A_27:;
_A7F83BA2A_28:;
	goto L13827D7C_6;
L13827D7C_5:;
L13827D7C_4:;
_A7F83BA2A_29:;
	return;
_main_end:;
_A7F83BA2A_30:;
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
// extern _delay6F9F34ED:proc
// extern _InitialDA4A7CC4:proc
// public _PWM99B23D7D
// public _WakeupProc94A410F9
// public _main
