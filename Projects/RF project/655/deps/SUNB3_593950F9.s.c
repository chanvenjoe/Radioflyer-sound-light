// SUBC 0.8.9 (build Jun 29 2020 12:00:34)
#include "crt0.h"

// .fast segment _fast
// FAST segment (data with / without initial value)

// .fast ends _fast

// .bss segment _rwdata
// DATA segment (with initial value)
__int16 L2A70A9A2_2;
__int16 L2A70A9A2_4;

// .bss ends _rwdata

// .bss segment _bss
// BSS segment (data without initial value)
__int16 L2A70A9A2_3;
__int16 _Key_press_flag14FFF825;
__int16 _Play_flag71A588D5;

// .bss ends _bss

// CODE segment

.code


naked void MyData();
interrupt rjmp void _RTC24B6AA79();
rjmp void _main();
rjmp void _InitSound5CCD501D();
rjmp void _INITIAL0C18377D();
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
interrupt rjmp void _RTC24B6AA79()
{
_A8ADEC9C4_0:;
_A8ADEC9C4_1:;
	asm	clr io[INTREQ].b3
	////////////////////////////
_A8ADEC9C4_2:;
	sAX	= 0;
	asm test io[0x08].b2;
	if(__jz__) goto L2A70A9A2_8;
	sAX	= 1;
L2A70A9A2_8:;
	sCX	= 0x0000;
	sfx_CMP_AX_CX_JE();
	if(__je__)	goto L2A70A9A2_9;
	goto	L2A70A9A2_6;
L2A70A9A2_9:;
	sAX	= 0x0001;
	goto L2A70A9A2_7;
L2A70A9A2_6:;
	sAX	= 0x0000;
L2A70A9A2_7:;
	sSI	= (int)&L2A70A9A2_4;
	*(__int16*)sSI	= sAX
_A8ADEC9C4_3:;
	asm I1 = L2A70A9A2_3+0;
	sAX	= *(__int16*)sSI;
	sCX	= 0x0000;
	sfx_CMP_AX_CX_JE();
	if(__je__)	goto L2A70A9A2_11;
	goto	L2A70A9A2_10;
L2A70A9A2_11:;
	////////////////////////////
_A8ADEC9C4_4:;
_A8ADEC9C4_5:;
	sAX	= 0x0003;
	PUSH(sAX);
	sAX	= 0x0005;
	PUSH(sAX);
	_WS_TRSF_color_setE1CC300C(STACK[sSP + 0], STACK[sSP + 1]);
	RESTORESP(2);
_A8ADEC9C4_6:;
	asm clr io[0x09].b14;
	goto L2A70A9A2_12;
L2A70A9A2_10:;
_A8ADEC9C4_7:;
	asm I1 = L2A70A9A2_3+0;
	sAX	= *(__int16*)sSI;
	sCX	= 0x0001;
	sfx_CMP_AX_CX_JE();
	if(__je__)	goto L2A70A9A2_14;
	goto	L2A70A9A2_13;
L2A70A9A2_14:;
	////////////////////////////
_A8ADEC9C4_8:;
_A8ADEC9C4_9:;
	sAX	= 0x0003;
	PUSH(sAX);
	sAX	= 0x0003;
	PUSH(sAX);
	_WS_TRSF_color_setE1CC300C(STACK[sSP + 0], STACK[sSP + 1]);
	RESTORESP(2);
_A8ADEC9C4_10:;
	asm clr io[0x09].b14;
	goto L2A70A9A2_15;
L2A70A9A2_13:;
_A8ADEC9C4_11:;
	asm I1 = L2A70A9A2_3+0;
	sAX	= *(__int16*)sSI;
	sCX	= 0x0002;
	sfx_CMP_AX_CX_JE();
	if(__je__)	goto L2A70A9A2_17;
	goto	L2A70A9A2_16;
L2A70A9A2_17:;
	////////////////////////////
_A8ADEC9C4_12:;
_A8ADEC9C4_13:;
	sAX	= 0x0003;
	PUSH(sAX);
	sAX	= 0x0004;
	PUSH(sAX);
	_WS_TRSF_color_setE1CC300C(STACK[sSP + 0], STACK[sSP + 1]);
	RESTORESP(2);
_A8ADEC9C4_14:;
	asm clr io[0x09].b14;
L2A70A9A2_16:;
_A8ADEC9C4_15:;
L2A70A9A2_15:;
_A8ADEC9C4_16:;
L2A70A9A2_12:;
_A8ADEC9C4_17:;
_A8ADEC9C4_18:;
	asm I1 = L2A70A9A2_3+0;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&L2A70A9A2_3;
	PUSH(sAX);
	sAX	= 0x0001;
	sCX	= *(__int16*)sSI;
	sCX	= sCX + sAX;
	*(__int16*)sSI	= sCX;
	sAX	= POP();
_A8ADEC9C4_19:;
	asm I1 = L2A70A9A2_3+0;
	sAX	= *(__int16*)sSI;
	sCX	= 0x0002;
	sfx_CMP_AX_CX_JE();
	if(__je__)	goto L2A70A9A2_19;
	goto	L2A70A9A2_18;
L2A70A9A2_19:;
_A8ADEC9C4_20:;
	sAX	= 0x0000;
	sSI	= (int)&L2A70A9A2_3;
	*(__int16*)sSI	= sAX
L2A70A9A2_18:;
_A8ADEC9C4_21:;
L2A70A9A2_5:;
_A8ADEC9C4_22:;
	return;
_RTC24B6AA79_end:;
_A8ADEC9C4_23:;
}

rjmp void _main()
{
_A8ADEC9C4_24:;
	////////////////////////////
_A8ADEC9C4_25:;
_A8ADEC9C4_26:;
	F_ChangePWMVectTabletobank2();
_A8ADEC9C4_27:;
	sAX	= 0x0000;
	asm I1 = _sub_vol980B1B83+0;
	*(__int16*)sSI	= sAX
_A8ADEC9C4_28:;
_A8ADEC9C4_29:;
	_INITIAL0C18377D();
_A8ADEC9C4_30:;
_A8ADEC9C4_31:;
	_InitialDA4A7CC4();
_A8ADEC9C4_32:;
_A8ADEC9C4_33:;
	_ClearTickCount5DDE4003();
_A8ADEC9C4_34:;
_A8ADEC9C4_35:;
	asm AX = #MyData+0;
	asm DX = #MyData.n2
	asm set DX.b11
	PUSH(sDX);
	PUSH(sAX);
	_Sub3Play422CAD6D(STACK[sSP + 0], STACK[sSP + 1]);
	RESTORESP(2);
L2A70A9A2_22:;
_A8ADEC9C4_36:;
_A8ADEC9C4_37:;
	asm	io[ClrWDT] = AR
	////////////////////////////
	goto L2A70A9A2_22;
L2A70A9A2_21:;
L2A70A9A2_20:;
_A8ADEC9C4_38:;
	return;
_main_end:;
_A8ADEC9C4_39:;
}

rjmp void _InitSound5CCD501D()
{
_A8ADEC9C4_40:;
	////////////////////////////
_A8ADEC9C4_41:;
	io[0x3E]	= 0x3FFF;
_A8ADEC9C4_42:;
	io[0x16]	= 0x0000;
_A8ADEC9C4_43:;
	io[0x16]	= 0x0000;
_A8ADEC9C4_44:;
	io[0x16]	= 0x0000;
_A8ADEC9C4_45:;
	io[0x16]	= 0x0000;
_A8ADEC9C4_46:;
	io[0x36]	= 0x0000;
_A8ADEC9C4_47:;
	io[0x36]	= 0x0000;
_A8ADEC9C4_48:;
	io[0x36]	= 0x0000;
_A8ADEC9C4_49:;
	io[0x36]	= 0x0000;
_A8ADEC9C4_50:;
	io[0x36]	= 0x0000;
_A8ADEC9C4_51:;
	io[0x36]	= 0x0000;
_A8ADEC9C4_52:;
	io[0x36]	= 0x0000;
_A8ADEC9C4_53:;
	io[0x36]	= 0x0000;
_A8ADEC9C4_54:;
	io[0x3C]	= 0x0000;
_A8ADEC9C4_55:;
	sAX	= io[0x3C];
_A8ADEC9C4_56:;
	asm	set io[MISC].b9
_A8ADEC9C4_57:;
	asm	set io[MISC].b8
_A8ADEC9C4_58:;
	asm	set io[MISC].b4
L2A70A9A2_23:;
_A8ADEC9C4_59:;
	return;
_InitSound5CCD501D_end:;
_A8ADEC9C4_60:;
}

rjmp void _INITIAL0C18377D()
{
	__int16 _i_1_2;
	////////////////////////////
_A8ADEC9C4_61:;
_A8ADEC9C4_62:;
_A8ADEC9C4_63:;
	NEARCALL(_InitSound5CCD501D);
	////////////////////////////
_A8ADEC9C4_64:;
	asm AX = PCMY+0;
_A8ADEC9C4_65:;
	asm	AR = AX
_A8ADEC9C4_66:;
	asm	I0 = AR
_A8ADEC9C4_67:;
	_i_1_2+0	= 0x0200;
L2A70A9A2_26:;
_A8ADEC9C4_68:;
	sSI	= (int)&_i_1_2;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_i_1_2;
	asm AR = 0x0001;
	sCX	= *(__int16*)sSI;
	asm rm[I1] = CX - AR;
	sfx_CHECKZERO();
	if(__jnz__)	goto L2A70A9A2_27;
	goto	L2A70A9A2_25;
L2A70A9A2_27:;
	////////////////////////////
_A8ADEC9C4_69:;
	sAX	= 0x0000;
_A8ADEC9C4_70:;
	asm	rm[I0++] = AX
	goto L2A70A9A2_26;
L2A70A9A2_25:;
_A8ADEC9C4_71:;
	asm AX = PCMY+0;
	asm I1 = PCMYIN_PTR+0;
	*(__int16*)sSI	= sAX
_A8ADEC9C4_72:;
	asm AX = PCMY+0;
	asm I1 = PCMYOU_PTR+0;
	*(__int16*)sSI	= sAX
_A8ADEC9C4_73:;
	asm I1 = _sub_vol980B1B83+0;
	sAX	= *(__int16*)sSI;
	io[0x3C]	= sAX;
_A8ADEC9C4_74:;
	io[0x3E]	= 0x1FFF;
_A8ADEC9C4_75:;
	io[0x3B]	= 0x0000;
L2A70A9A2_24:;
_A8ADEC9C4_76:;
	return;
_INITIAL0C18377D_end:;
_A8ADEC9C4_77:;
}

// .code ends _text

// .code segment _ginit
.code

// -=-=-=-=-=-=-=-=-=-=-
naked void ginit_code_SUNB3_593950F9_s(void)
{
	asm P1 = #ginit_seg_SUNB3_593950F9_s+0;
	asm I1 = L2A70A9A2_2;
	sCX = 1;
	sfx_GLOBALINIT();

	asm P1 = #ginit_seg_SUNB3_593950F9_s+1;
	asm I1 = L2A70A9A2_4;
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

__int16 ginit_seg_SUNB3_593950F9_s[2] = {
	// L2A70A9A2_2
	0x0000,
	// L2A70A9A2_4
	0x0000
};

// .code ends _text

// .data segment _linkd
.data
// LINKFILE (RO) segment
naked void MyData()
{
	asm	DW "subband3\Song_Scan_and_Sort_@11K7bps.T3Z"
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
// extern _InitialDA4A7CC4:proc
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
// extern _WS_Send24bits851C5C55:proc
// extern _WS_ColorSet_LEDCA3DEB8C:proc
// extern _WS_Color_copyADB1DFED:proc
// extern _WS_RefreshAD7B99B1:proc
// extern _WS_Key_RGBC5B96B6D:proc
// extern _WS_Hue_change433A3E3B:proc
// extern _WS_voice_Pik5A718B9D:proc
// extern _Get_RGB_Max5738F55A:proc
// extern _Get_RGB_Min13C4962A:proc
// extern _Get_Hue_Val458A4EED:proc
// extern _HSV_RGBE39B83AE:proc
// extern _WS_TRSF_color_setE1CC300C:proc
// public _Key_press_flag14FFF825
// public _Play_flag71A588D5
// public _INITIAL0C18377D
// public MyData
// extern Pwm_process:proc
// extern F_ChangePWMVectTabletobank2:proc
// public _RTC24B6AA79
// public _main
// public _InitSound5CCD501D
// public ginit_code_SUNB3_593950F9_s
