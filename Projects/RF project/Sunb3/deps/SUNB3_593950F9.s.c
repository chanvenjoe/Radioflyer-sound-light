// SUBC 0.8.9 (build Jun 29 2020 12:00:34)
#include "crt0.h"

// .fast segment _fast
// FAST segment (data with / without initial value)

// .fast ends _fast

// .bss segment _rwdata
// DATA segment (with initial value)
__int16 L2A70A9A2_2;
__int16 _flagD698DD9D;
__int16 _Key_press_flag14FFF825;
__int16 _Play_flag71A588D5;

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
// .code ends _text

// .data segment _rdata
.data
// .data ends _rdata

// .code segment _text
.code
rjmp void _main()
{
_A89F084ED_0:;
	////////////////////////////
_A89F084ED_1:;
_A89F084ED_2:;
	F_ChangePWMVectTabletobank2();
_A89F084ED_3:;
	sAX	= 0x0000;
	asm I1 = _sub_vol980B1B83+0;
	*(__int16*)sSI	= sAX
_A89F084ED_4:;
_A89F084ED_5:;
	_INITIAL0C18377D();
_A89F084ED_6:;
_A89F084ED_7:;
	_InitialDA4A7CC4();
_A89F084ED_8:;
_A89F084ED_9:;
	_ClearTickCount5DDE4003();
_A89F084ED_10:;
_A89F084ED_11:;
	asm AX = #MyData+0;
	asm DX = #MyData.n2
	asm set DX.b11
	PUSH(sDX);
	PUSH(sAX);
	_Sub3Play422CAD6D(STACK[sSP + 0], STACK[sSP + 1]);
	RESTORESP(2);
L2A70A9A2_5:;
_A89F084ED_12:;
_A89F084ED_13:;
	asm	io[ClrWDT] = AR
	////////////////////////////
_A89F084ED_14:;
	sAX	= 0;
	asm test io[0x08].b2;
	if(__jz__) goto L2A70A9A2_8;
	sAX	= 1;
L2A70A9A2_8:;
	sCX	= 0x0001;
	sfx_CMP_AX_CX_JE();
	if(__je__)	goto L2A70A9A2_9;
	goto	L2A70A9A2_6;
L2A70A9A2_9:;
	sAX	= 0x0001;
	goto L2A70A9A2_7;
L2A70A9A2_6:;
	sAX	= 0x0000;
L2A70A9A2_7:;
	asm I1 = _Key_press_flag14FFF825+0;
	*(__int16*)sSI	= sAX
_A89F084ED_15:;
	sAX	= 0;
	asm test io[0x08].b2;
	if(__jz__) goto L2A70A9A2_11;
	sAX	= 1;
L2A70A9A2_11:;
	sCX	= 0x0001;
	sfx_CMP_AX_CX_JNE();
	if(__je__)	goto L2A70A9A2_12;
	sAX	= 1;
	goto	L2A70A9A2_13;
L2A70A9A2_12:;
	sAX	= 0;
L2A70A9A2_13:;
	sfx_CHECKZERO();
	if(__jnz__)	goto L2A70A9A2_14;
	goto	L2A70A9A2_10;
L2A70A9A2_14:;
	asm I1 = _Key_press_flag14FFF825+0;
	sAX	= *(__int16*)sSI;
	sCX	= 0x0001;
	sfx_CMP_AX_CX_JNE();
	if(__je__)	goto L2A70A9A2_15;
	sAX	= 1;
	goto	L2A70A9A2_16;
L2A70A9A2_15:;
	sAX	= 0;
L2A70A9A2_16:;
L2A70A9A2_10:;
	sfx_CHECKZERO();
	if(__jnz__)	goto L2A70A9A2_18;
	goto	L2A70A9A2_17;
L2A70A9A2_18:;
	////////////////////////////
_A89F084ED_16:;
	sAX	= 0x0000;
	asm I1 = _Key_press_flag14FFF825+0;
	*(__int16*)sSI	= sAX
_A89F084ED_17:;
	sAX	= 0x0001;
	asm I1 = _Play_flag71A588D5+0;
	*(__int16*)sSI	= sAX
_A89F084ED_18:;
	sAX	= 0;
	asm test io[0x08].b2;
	if(__jz__) goto L2A70A9A2_19;
	sAX	= 1;
L2A70A9A2_19:;
	sCX	= 0x0001;
	sfx_CMP_AX_CX_JE();
	if(__je__)	goto L2A70A9A2_21;
	goto	L2A70A9A2_20;
L2A70A9A2_21:;
	////////////////////////////
_A89F084ED_19:;
	asm I1 = _flagD698DD9D+0;
	sAX	= *(__int16*)sSI;
	sCX	= 0x0000;
	sfx_CMP_AX_CX_JE();
	if(__je__)	goto L2A70A9A2_23;
	goto	L2A70A9A2_22;
L2A70A9A2_23:;
	////////////////////////////
_A89F084ED_20:;
_A89F084ED_21:;
	sAX	= 0x0003;
	PUSH(sAX);
	sAX	= 0x0005;
	PUSH(sAX);
	_WS_TRSF_color_setE1CC300C(STACK[sSP + 0], STACK[sSP + 1]);
	RESTORESP(2);
_A89F084ED_22:;
	asm clr io[0x09].b14;
	goto L2A70A9A2_24;
L2A70A9A2_22:;
_A89F084ED_23:;
	asm I1 = _flagD698DD9D+0;
	sAX	= *(__int16*)sSI;
	sCX	= 0x0001;
	sfx_CMP_AX_CX_JE();
	if(__je__)	goto L2A70A9A2_26;
	goto	L2A70A9A2_25;
L2A70A9A2_26:;
	////////////////////////////
_A89F084ED_24:;
_A89F084ED_25:;
	sAX	= 0x0003;
	PUSH(sAX);
	sAX	= 0x0003;
	PUSH(sAX);
	_WS_TRSF_color_setE1CC300C(STACK[sSP + 0], STACK[sSP + 1]);
	RESTORESP(2);
_A89F084ED_26:;
	asm clr io[0x09].b14;
L2A70A9A2_25:;
_A89F084ED_27:;
L2A70A9A2_24:;
_A89F084ED_28:;
_A89F084ED_29:;
	asm I1 = _flagD698DD9D+0;
	sAX	= *(__int16*)sSI;
	sCX	= 0x0002;
	sfx_CMP_AX_CX_JE();
	if(__je__)	goto L2A70A9A2_28;
	goto	L2A70A9A2_27;
L2A70A9A2_28:;
	////////////////////////////
_A89F084ED_30:;
_A89F084ED_31:;
	sAX	= 0x0003;
	PUSH(sAX);
	sAX	= 0x0004;
	PUSH(sAX);
	_WS_TRSF_color_setE1CC300C(STACK[sSP + 0], STACK[sSP + 1]);
	RESTORESP(2);
_A89F084ED_32:;
	asm clr io[0x09].b14;
L2A70A9A2_27:;
_A89F084ED_33:;
_A89F084ED_34:;
	sAX	= 0x0002;
	asm I1 = _flagD698DD9D+0;
	asm CX = rm[I1];
	sfx_CMP_AX_CX_JE();
	if(__je__)	goto L2A70A9A2_31;
	goto	L2A70A9A2_29;
L2A70A9A2_31:;
	sAX	= 0x0000;
	goto L2A70A9A2_30;
L2A70A9A2_29:;
	sAX	= 0x0001;
	asm I1 = _flagD698DD9D+0;
	sCX	= *(__int16*)sSI;
	sAX	= sAX + sCX;
L2A70A9A2_30:;
	asm I1 = _flagD698DD9D+0;
	*(__int16*)sSI	= sAX
L2A70A9A2_20:;
_A89F084ED_35:;
L2A70A9A2_17:;
_A89F084ED_36:;
_A89F084ED_37:;
	asm I1 = _flagD698DD9D+0;
	sAX	= *(__int16*)sSI;
	sCX	= 0x0000;
	sfx_CMP_AX_CX_JE();
	if(__je__)	goto L2A70A9A2_33;
	goto	L2A70A9A2_32;
L2A70A9A2_33:;
	////////////////////////////
_A89F084ED_38:;
_A89F084ED_39:;
	_RampUpFF7996DA();
_A89F084ED_40:;
_A89F084ED_41:;
	_WaitPCM_Empty_size53398B9D();
	sCX	= 0x0000;
	sfx_CMP_AX_CX_JL();
	if(__je__)	goto L2A70A9A2_35;
	goto	L2A70A9A2_34;
L2A70A9A2_35:;
	////////////////////////////
_A89F084ED_42:;
	goto L2A70A9A2_5;
L2A70A9A2_34:;
_A89F084ED_43:;
_A89F084ED_44:;
_A89F084ED_45:;
	Subb3_Dec();
	sfx_CHECKZERO();
	if(__jnz__)	goto L2A70A9A2_37;
	goto	L2A70A9A2_36;
L2A70A9A2_37:;
_A89F084ED_46:;
_A89F084ED_47:;
	asm AX = #MyData+0;
	asm DX = #MyData.n2
	asm set DX.b11
	PUSH(sDX);
	PUSH(sAX);
	_Sub3Play422CAD6D(STACK[sSP + 0], STACK[sSP + 1]);
	RESTORESP(2);
L2A70A9A2_36:;
_A89F084ED_48:;
	goto L2A70A9A2_38;
L2A70A9A2_32:;
_A89F084ED_49:;
_A89F084ED_50:;
	_Sub3ZeroFillABFF23AA();
L2A70A9A2_38:;
_A89F084ED_51:;
	goto L2A70A9A2_5;
L2A70A9A2_4:;
L2A70A9A2_3:;
_A89F084ED_52:;
	return;
_main_end:;
_A89F084ED_53:;
}

rjmp void _InitSound5CCD501D()
{
_A89F084ED_54:;
	////////////////////////////
_A89F084ED_55:;
	io[0x3E]	= 0x3FFF;
_A89F084ED_56:;
	io[0x16]	= 0x0000;
_A89F084ED_57:;
	io[0x16]	= 0x0000;
_A89F084ED_58:;
	io[0x16]	= 0x0000;
_A89F084ED_59:;
	io[0x16]	= 0x0000;
_A89F084ED_60:;
	io[0x36]	= 0x0000;
_A89F084ED_61:;
	io[0x36]	= 0x0000;
_A89F084ED_62:;
	io[0x36]	= 0x0000;
_A89F084ED_63:;
	io[0x36]	= 0x0000;
_A89F084ED_64:;
	io[0x36]	= 0x0000;
_A89F084ED_65:;
	io[0x36]	= 0x0000;
_A89F084ED_66:;
	io[0x36]	= 0x0000;
_A89F084ED_67:;
	io[0x36]	= 0x0000;
_A89F084ED_68:;
	io[0x3C]	= 0x0000;
_A89F084ED_69:;
	sAX	= io[0x3C];
_A89F084ED_70:;
	asm	set io[MISC].b9
_A89F084ED_71:;
	asm	set io[MISC].b8
_A89F084ED_72:;
	asm	set io[MISC].b4
L2A70A9A2_39:;
_A89F084ED_73:;
	return;
_InitSound5CCD501D_end:;
_A89F084ED_74:;
}

rjmp void _INITIAL0C18377D()
{
	__int16 _i_1_2;
	////////////////////////////
_A89F084ED_75:;
_A89F084ED_76:;
_A89F084ED_77:;
	NEARCALL(_InitSound5CCD501D);
	////////////////////////////
_A89F084ED_78:;
	asm AX = PCMY+0;
_A89F084ED_79:;
	asm	AR = AX
_A89F084ED_80:;
	asm	I0 = AR
_A89F084ED_81:;
	_i_1_2+0	= 0x0200;
L2A70A9A2_42:;
_A89F084ED_82:;
	sSI	= (int)&_i_1_2;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_i_1_2;
	asm AR = 0x0001;
	sCX	= *(__int16*)sSI;
	asm rm[I1] = CX - AR;
	sfx_CHECKZERO();
	if(__jnz__)	goto L2A70A9A2_43;
	goto	L2A70A9A2_41;
L2A70A9A2_43:;
	////////////////////////////
_A89F084ED_83:;
	sAX	= 0x0000;
_A89F084ED_84:;
	asm	rm[I0++] = AX
	goto L2A70A9A2_42;
L2A70A9A2_41:;
_A89F084ED_85:;
	asm AX = PCMY+0;
	asm I1 = PCMYIN_PTR+0;
	*(__int16*)sSI	= sAX
_A89F084ED_86:;
	asm AX = PCMY+0;
	asm I1 = PCMYOU_PTR+0;
	*(__int16*)sSI	= sAX
_A89F084ED_87:;
	asm I1 = _sub_vol980B1B83+0;
	sAX	= *(__int16*)sSI;
	io[0x3C]	= sAX;
_A89F084ED_88:;
	io[0x3E]	= 0x1FFF;
_A89F084ED_89:;
	io[0x3B]	= 0x0000;
L2A70A9A2_40:;
_A89F084ED_90:;
	return;
_INITIAL0C18377D_end:;
_A89F084ED_91:;
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
	asm I1 = _flagD698DD9D;
	sCX = 1;
	sfx_GLOBALINIT();

	asm P1 = #ginit_seg_SUNB3_593950F9_s+2;
	asm I1 = _Key_press_flag14FFF825;
	sCX = 1;
	sfx_GLOBALINIT();

	asm P1 = #ginit_seg_SUNB3_593950F9_s+3;
	asm I1 = _Play_flag71A588D5;
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

__int16 ginit_seg_SUNB3_593950F9_s[4] = {
	// L2A70A9A2_2
	0x0000,
	// _flagD698DD9D
	0x0000,
	// _Key_press_flag14FFF825
	0x0001,
	// _Play_flag71A588D5
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
// public _flagD698DD9D
// public _Key_press_flag14FFF825
// public _Play_flag71A588D5
// public _INITIAL0C18377D
// public MyData
// extern Pwm_process:proc
// extern F_ChangePWMVectTabletobank2:proc
// public _main
// public _InitSound5CCD501D
// public ginit_code_SUNB3_593950F9_s
