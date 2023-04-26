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


naked void MyData();
rjmp void _main();
rjmp void _InitSound5CCD501D();
rjmp void _INITIAL0C18377D();
// RCODE segment

// .model speechdsp
// .code segment _text
.code
rjmp void _main()
{
_AC98791D5_0:;
	////////////////////////////
_AC98791D5_1:;
_AC98791D5_2:;
	F_ChangePWMVectTabletobank2();
_AC98791D5_3:;
	sAX	= 0x0000;
	asm I1 = _sub_vol980B1B83+0;
	*(__int16*)sSI	= sAX
_AC98791D5_4:;
_AC98791D5_5:;
	_INITIAL0C18377D();
_AC98791D5_6:;
_AC98791D5_7:;
	_ClearTickCount5DDE4003();
_AC98791D5_8:;
_AC98791D5_9:;
	asm AX = #MyData+0;
	asm DX = #MyData.n2
	asm set DX.b11
	PUSH(sDX);
	PUSH(sAX);
	_Sub3Play422CAD6D(STACK[sSP + 0], STACK[sSP + 1]);
	RESTORESP(2);
LB6D5333B_4:;
_AC98791D5_10:;
_AC98791D5_11:;
	asm	io[ClrWDT] = AR
	////////////////////////////
_AC98791D5_12:;
_AC98791D5_13:;
	_RampUpFF7996DA();
_AC98791D5_14:;
_AC98791D5_15:;
	Subb3_Dec();
	sfx_CHECKZERO();
	if(__jnz__)	goto LB6D5333B_6;
	goto	LB6D5333B_5;
LB6D5333B_6:;
_AC98791D5_16:;
_AC98791D5_17:;
	asm AX = #MyData+0;
	asm DX = #MyData.n2
	asm set DX.b11
	PUSH(sDX);
	PUSH(sAX);
	_Sub3Play422CAD6D(STACK[sSP + 0], STACK[sSP + 1]);
	RESTORESP(2);
LB6D5333B_5:;
_AC98791D5_18:;
	goto LB6D5333B_4;
LB6D5333B_3:;
LB6D5333B_2:;
_AC98791D5_19:;
	return;
_main_end:;
_AC98791D5_20:;
}

rjmp void _InitSound5CCD501D()
{
_AC98791D5_21:;
	////////////////////////////
_AC98791D5_22:;
	io[0x3E]	= 0x3FFF;
_AC98791D5_23:;
	io[0x16]	= 0x0000;
_AC98791D5_24:;
	io[0x16]	= 0x0000;
_AC98791D5_25:;
	io[0x16]	= 0x0000;
_AC98791D5_26:;
	io[0x16]	= 0x0000;
_AC98791D5_27:;
	io[0x36]	= 0x0000;
_AC98791D5_28:;
	io[0x36]	= 0x0000;
_AC98791D5_29:;
	io[0x36]	= 0x0000;
_AC98791D5_30:;
	io[0x36]	= 0x0000;
_AC98791D5_31:;
	io[0x36]	= 0x0000;
_AC98791D5_32:;
	io[0x36]	= 0x0000;
_AC98791D5_33:;
	io[0x36]	= 0x0000;
_AC98791D5_34:;
	io[0x36]	= 0x0000;
_AC98791D5_35:;
	io[0x3C]	= 0x0000;
_AC98791D5_36:;
	sAX	= io[0x3C];
_AC98791D5_37:;
	asm	set io[MISC].b9
_AC98791D5_38:;
	asm	set io[MISC].b8
_AC98791D5_39:;
	asm	set io[MISC].b4
LB6D5333B_7:;
_AC98791D5_40:;
	return;
_InitSound5CCD501D_end:;
_AC98791D5_41:;
}

rjmp void _INITIAL0C18377D()
{
	__int16 _i_1_2;
	////////////////////////////
_AC98791D5_42:;
_AC98791D5_43:;
_AC98791D5_44:;
	NEARCALL(_InitSound5CCD501D);
	////////////////////////////
_AC98791D5_45:;
	asm AX = PCMY+0;
_AC98791D5_46:;
	asm	AR = AX
_AC98791D5_47:;
	asm	I0 = AR
_AC98791D5_48:;
	_i_1_2+0	= 0x0200;
LB6D5333B_10:;
_AC98791D5_49:;
	sSI	= (int)&_i_1_2;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_i_1_2;
	asm AR = 0x0001;
	sCX	= *(__int16*)sSI;
	asm rm[I1] = CX - AR;
	sfx_CHECKZERO();
	if(__jnz__)	goto LB6D5333B_11;
	goto	LB6D5333B_9;
LB6D5333B_11:;
	////////////////////////////
_AC98791D5_50:;
	sAX	= 0x0000;
_AC98791D5_51:;
	asm	rm[I0++] = AX
	goto LB6D5333B_10;
LB6D5333B_9:;
_AC98791D5_52:;
	asm AX = PCMY+0;
	asm I1 = PCMYIN_PTR+0;
	*(__int16*)sSI	= sAX
_AC98791D5_53:;
	asm AX = PCMY+0;
	asm I1 = PCMYOU_PTR+0;
	*(__int16*)sSI	= sAX
_AC98791D5_54:;
	asm I1 = _sub_vol980B1B83+0;
	sAX	= *(__int16*)sSI;
	io[0x3C]	= sAX;
_AC98791D5_55:;
	io[0x3E]	= 0x1FFF;
_AC98791D5_56:;
	io[0x3B]	= 0x0000;
LB6D5333B_8:;
_AC98791D5_57:;
	return;
_INITIAL0C18377D_end:;
_AC98791D5_58:;
}

// .code ends _text

// .code segment _ginit
.code

// -=-=-=-=-=-=-=-=-=-=-
naked void ginit_code_sub3_EC6FFB89_s(void)
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
naked void MyData()
{
	asm	DW "subband3\baby_Silen@31K9bps.TZB"
}


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
// extern _lptr_read:proc
// extern _lptr_read32:proc
// extern _lptr_write:proc
// extern _lptr_write32:proc
// extern _ticksA7263C09:long
// extern _sub_vol980B1B83:word
// extern _RampUpFF7996DA:proc
// extern _RampDown1D382EDA:proc
// extern bts_ch0_get_ix:long
// extern PCMYIN_PTR:word
// extern PCMYOU_PTR:word
// extern PCMIN:word
// extern SampleCh0Rate:word
// extern PCMY:word
// extern Subb3_Init:proc
// extern Subb3_Dec:proc
// extern _WaitPCM_Empty_size53398B9D:proc
// extern _Sub3ZeroFillABFF23AA:proc
// extern _Sub3Play422CAD6D:proc
// public _INITIAL0C18377D
// public MyData
// extern Pwm_process:proc
// extern F_ChangePWMVectTabletobank2:proc
// public _main
// public _InitSound5CCD501D
// public ginit_code_sub3_EC6FFB89_s
