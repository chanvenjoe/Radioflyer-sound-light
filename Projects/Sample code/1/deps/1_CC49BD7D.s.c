// SUBC 0.8.9 (build Jun 29 2020 12:00:34)
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


interrupt naked void _PWM99B23D7D();
void _WakeupProc94A410F9();
void _main();
void _InitialDA4A7CC4();
// RCODE segment

// .model speechdsp
// .code segment _text
.code
interrupt naked void _PWM99B23D7D()
{
	////////////////////////////
L376D88D5_2:;
_A515BFAD5_0:;
	return;
_PWM99B23D7D_end:;
_A515BFAD5_1:;
}

void _WakeupProc94A410F9()
{
_A515BFAD5_2:;
_A515BFAD5_3:;
	asm	io[ClrWDT] = AR
	////////////////////////////
L376D88D5_3:;
_A515BFAD5_4:;
	return;
_WakeupProc94A410F9_end:;
_A515BFAD5_5:;
}

void _main()
{
	__int16 _i_1_2;
	////////////////////////////
_A515BFAD5_6:;
_A515BFAD5_7:;
	_i_1_2+0	= 0x00;
_A515BFAD5_8:;
_A515BFAD5_9:;
	_InitialDA4A7CC4();
L376D88D5_6:;
_A515BFAD5_10:;
_A515BFAD5_11:;
	asm	io[ClrWDT] = AR
	////////////////////////////
_A515BFAD5_12:;
_A515BFAD5_13:;
	sAX	= 0x0064;
	PUSH(sAX);
	_delay6F9F34ED(STACK[sSP + 0]);
	RESTORESP(1);
_A515BFAD5_14:;
_A515BFAD5_15:;
	sAX	= 0x0002;
	PUSH(sAX);
	sAX	= 0x0007;
	PUSH(sAX);
	outp(STACK[sSP + 0], STACK[sSP + 1]);
	RESTORESP(2);
	goto L376D88D5_6;
L376D88D5_5:;
L376D88D5_4:;
_A515BFAD5_16:;
	return;
_main_end:;
_A515BFAD5_17:;
}

void _InitialDA4A7CC4()
{
_A515BFAD5_18:;
	////////////////////////////
_A515BFAD5_19:;
	sAX	= 0x003F;
_A515BFAD5_20:;
	asm	AR = AX
_A515BFAD5_21:;
	asm	FLTG = AR
	////////////////////////////
_A515BFAD5_22:;
	sAX	= 0x1FFF;
_A515BFAD5_23:;
	asm	AR = AX
_A515BFAD5_24:;
	asm	FLTP = AR
	////////////////////////////
_A515BFAD5_25:;
	sAX	= 0x0008;
_A515BFAD5_26:;
	asm	AR = AX
_A515BFAD5_27:;
	asm	CBL = AR
_A515BFAD5_28:;
	asm	set io[INTENA].b0
_A515BFAD5_29:;
	asm	eni
	////////////////////////////
_A515BFAD5_30:;
	sAX	= 0x000F;
_A515BFAD5_31:;
	asm	AR = AX
_A515BFAD5_32:;
	asm	io[IOC_PA] = AR
_A515BFAD5_33:;
_A515BFAD5_34:;
	_ClearTickCount5DDE4003();
L376D88D5_7:;
_A515BFAD5_35:;
	return;
_InitialDA4A7CC4_end:;
_A515BFAD5_36:;
}

// .code ends _text

// .code segment _ginit
.code

// -=-=-=-=-=-=-=-=-=-=-
naked void ginit_code_1_CC49BD7D_s(void)
{
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

// .data segment _linkd
.data
// LINKFILE (RO) segment

// .data ends _linkd

// .code segment _text
.code
// .code ends _text

// extern inp:proc
// extern outp:proc
// extern get_SATV:proc
// extern get_CBL:proc
// extern get_FLTO:proc
// extern get_FLTA:proc
// extern get_FLTP:proc
// extern get_FLTI:proc
// extern read_I0:proc
// extern read_I0P:proc
// extern read_I0P2:proc
// extern read_I0M:proc
// extern get_I0:proc
// extern read_P0:proc
// extern read_P0P:proc
// extern read_P0M:proc
// extern get_P0:proc
// extern set_IntVWR:proc
// extern clr_IntVWR:proc
// extern set_IntPrWR:proc
// extern clr_IntPrWR:proc
// extern set_INTENA:proc
// extern get_INTENA:proc
// extern set_INTREQ:proc
// extern get_INTREQ:proc
// extern set_IntVect:proc
// extern get_IntVect:proc
// extern get_IOC_PA:proc
// extern get_IOC_PB:proc
// extern get_IOC_PC:proc
// extern get_PortA:proc
// extern get_PortB:proc
// extern get_PortC:proc
// extern set_MISC:proc
// extern get_MISC:proc
// extern get_MACOP:proc
// extern vXCHG:proc
// extern cpuHalt:proc
// extern FA:proc
// extern _ClearTickCount5DDE4003:proc
// extern _GetTickCount18DC070C:proc
// extern _delay6F9F34ED:proc
// public _InitialDA4A7CC4
// public _PWM99B23D7D
// public _WakeupProc94A410F9
// public _main
// public ginit_code_1_CC49BD7D_s
