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
_A0D289B83_0:;
	////////////////////////////
_A0D289B83_1:;
_A0D289B83_2:;
	F_ChangePWMVectTabletobank2();
_A0D289B83_3:;
	sAX	= 0x0000;
	asm I1 = _sub_vol980B1B83+0;
	*(__int16*)sSI	= sAX
_A0D289B83_4:;
_A0D289B83_5:;
	_INITIAL0C18377D();
_A0D289B83_6:;
_A0D289B83_7:;
	_ClearTickCount5DDE4003();
_A0D289B83_8:;
_A0D289B83_9:;
	asm AX = #MyData+0;
	asm DX = #MyData.n2
	asm set DX.b11
	PUSH(sDX);
	PUSH(sAX);
	_Sub3Play422CAD6D(STACK[sSP + 0], STACK[sSP + 1]);
	RESTORESP(2);
L2F31A265_4:;
_A0D289B83_10:;
_A0D289B83_11:;
	asm	io[ClrWDT] = AR
	////////////////////////////
_A0D289B83_12:;
_A0D289B83_13:;
	_RampUpFF7996DA();
_A0D289B83_14:;
_A0D289B83_15:;
	_WaitPCM_Empty_size53398B9D();
	sCX	= 0x0000;
	sfx_CMP_AX_CX_JL();
	if(__je__)	goto L2F31A265_6;
	goto	L2F31A265_5;
L2F31A265_6:;
_A0D289B83_16:;
	goto L2F31A265_4;
L2F31A265_5:;
_A0D289B83_17:;
_A0D289B83_18:;
_A0D289B83_19:;
	Subb3_Dec();
	sfx_CHECKZERO();
	if(__jnz__)	goto L2F31A265_8;
	goto	L2F31A265_7;
L2F31A265_8:;
_A0D289B83_20:;
_A0D289B83_21:;
	asm AX = #MyData+0;
	asm DX = #MyData.n2
	asm set DX.b11
	PUSH(sDX);
	PUSH(sAX);
	_Sub3Play422CAD6D(STACK[sSP + 0], STACK[sSP + 1]);
	RESTORESP(2);
L2F31A265_7:;
_A0D289B83_22:;
	goto L2F31A265_4;
L2F31A265_3:;
L2F31A265_2:;
_A0D289B83_23:;
	return;
_main_end:;
_A0D289B83_24:;
}

rjmp void _InitSound5CCD501D()
{
_A0D289B83_25:;
	////////////////////////////
_A0D289B83_26:;
	io[0x3E]	= 0x3FFF;
_A0D289B83_27:;
	io[0x16]	= 0x0000;
_A0D289B83_28:;
	io[0x16]	= 0x0000;
_A0D289B83_29:;
	io[0x16]	= 0x0000;
_A0D289B83_30:;
	io[0x16]	= 0x0000;
_A0D289B83_31:;
	io[0x36]	= 0x0000;
_A0D289B83_32:;
	io[0x36]	= 0x0000;
_A0D289B83_33:;
	io[0x36]	= 0x0000;
_A0D289B83_34:;
	io[0x36]	= 0x0000;
_A0D289B83_35:;
	io[0x36]	= 0x0000;
_A0D289B83_36:;
	io[0x36]	= 0x0000;
_A0D289B83_37:;
	io[0x36]	= 0x0000;
_A0D289B83_38:;
	io[0x36]	= 0x0000;
_A0D289B83_39:;
	io[0x3C]	= 0x0000;
_A0D289B83_40:;
	sAX	= io[0x3C];
_A0D289B83_41:;
	asm	set io[MISC].b9
_A0D289B83_42:;
	asm	set io[MISC].b8
_A0D289B83_43:;
	asm	set io[MISC].b4
L2F31A265_9:;
_A0D289B83_44:;
	return;
_InitSound5CCD501D_end:;
_A0D289B83_45:;
}

rjmp void _INITIAL0C18377D()
{
	__int16 _i_1_2;
	////////////////////////////
_A0D289B83_46:;
_A0D289B83_47:;
_A0D289B83_48:;
	NEARCALL(_InitSound5CCD501D);
	////////////////////////////
_A0D289B83_49:;
	asm AX = PCMY+0;
_A0D289B83_50:;
	asm	AR = AX
_A0D289B83_51:;
	asm	I0 = AR
_A0D289B83_52:;
	_i_1_2+0	= 0x0200;
L2F31A265_12:;
_A0D289B83_53:;
	sSI	= (int)&_i_1_2;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_i_1_2;
	asm AR = 0x0001;
	sCX	= *(__int16*)sSI;
	asm rm[I1] = CX - AR;
	sfx_CHECKZERO();
	if(__jnz__)	goto L2F31A265_13;
	goto	L2F31A265_11;
L2F31A265_13:;
	////////////////////////////
_A0D289B83_54:;
	sAX	= 0x0000;
_A0D289B83_55:;
	asm	rm[I0++] = AX
	goto L2F31A265_12;
L2F31A265_11:;
_A0D289B83_56:;
	asm AX = PCMY+0;
	asm I1 = PCMYIN_PTR+0;
	*(__int16*)sSI	= sAX
_A0D289B83_57:;
	asm AX = PCMY+0;
	asm I1 = PCMYOU_PTR+0;
	*(__int16*)sSI	= sAX
_A0D289B83_58:;
	asm I1 = _sub_vol980B1B83+0;
	sAX	= *(__int16*)sSI;
	io[0x3C]	= sAX;
_A0D289B83_59:;
	io[0x3E]	= 0x1FFF;
_A0D289B83_60:;
	io[0x3B]	= 0x0000;
L2F31A265_10:;
_A0D289B83_61:;
	return;
_INITIAL0C18377D_end:;
_A0D289B83_62:;
}

// .code ends _text

// .code segment _ginit
.code

// -=-=-=-=-=-=-=-=-=-=-
naked void ginit_code_SUBBAND23_434E3D41_s(void)
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
	asm	DW "subband3\baby_Silen@16K6bps.TZB"
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
// public ginit_code_SUBBAND23_434E3D41_s
