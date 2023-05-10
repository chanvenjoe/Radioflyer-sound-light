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


rjmp void _main();
rjmp void _KeyPlaySongC44FFB6D();
rjmp void _KeyPlayStop0C3B8DB1();
rjmp void _KeyPlayNextAFBA8CED();
rjmp void _KeyPlayPrev8E98A35A();
rjmp void _KeyModEEAB4D5A();
// RCODE segment

// .model speechdsp
// .code segment _text
.code
rjmp void _main()
{
_A01B23225_0:;
	////////////////////////////
_A01B23225_1:;
_A01B23225_2:;
	_InitialDA4A7CC4();
_A01B23225_3:;
_A01B23225_4:;
	_InitKey3C587B6D();
_A01B23225_5:;
	asm set io[0x06].b0;
_A01B23225_6:;
	asm set io[0x06].b1;
_A01B23225_7:;
	asm clr io[0x09].b0;
_A01B23225_8:;
	asm clr io[0x09].b1;
_A01B23225_9:;
_A01B23225_10:;
	dtxInitialize();
LC9A47239_4:;
_A01B23225_11:;
_A01B23225_12:;
	asm AX = #melody+0;
	asm DX = #melody.n2
	asm set DX.b11
	_dtxFindToneEntry12F3B4ED(STACK[sSP + 0], STACK[sSP + 1]);
	sfx_CHECKZERO();
	if(__jz__)	goto LC9A47239_5;
	goto	LC9A47239_3;
LC9A47239_5:;
	////////////////////////////
LC9A47239_7:;
_A01B23225_13:;
	goto LC9A47239_7;
LC9A47239_6:;
	goto LC9A47239_4;
LC9A47239_3:;
_A01B23225_14:;
_A01B23225_15:;
	dtxInitParameters();
_A01B23225_16:;
_A01B23225_17:;
	dtxReadTune();
_A01B23225_18:;
	sAX	= 0x0000;
	asm I1 = _songidx8C42F7DA+0;
	*(__int16*)sSI	= sAX
_A01B23225_19:;
	sAX	= 0x7FFF;
	asm I1 = dtxfltg+0;
	*(__int16*)sSI	= sAX
LC9A47239_9:;
_A01B23225_20:;
_A01B23225_21:;
	asm	io[ClrWDT] = AR
	////////////////////////////
_A01B23225_22:;
_A01B23225_23:;
	_PollingKey3B90E3B1();
_A01B23225_24:;
_A01B23225_25:;
	_KeyShowLEDA84888EC();
	goto LC9A47239_9;
LC9A47239_8:;
LC9A47239_2:;
_A01B23225_26:;
	return;
_main_end:;
_A01B23225_27:;
}

rjmp void _KeyPlaySongC44FFB6D()
{
_A01B23225_28:;
	////////////////////////////
_A01B23225_29:;
_A01B23225_30:;
	_dtxCheckSongEnd870A9712();
	sfx_CHECKZERO();
	if(__jnz__)	goto LC9A47239_12;
	goto	LC9A47239_11;
LC9A47239_12:;
	////////////////////////////
_A01B23225_31:;
_A01B23225_32:;
	asm I1 = _songidx8C42F7DA+0;
	sAX	= *(__int16*)sSI;
	_dtxPlaySong5B7DBDA5(STACK[sSP + 0]);
	goto LC9A47239_13;
LC9A47239_11:;
	////////////////////////////
_A01B23225_33:;
_A01B23225_34:;
	dtxStopSong();
LC9A47239_13:;
_A01B23225_35:;
LC9A47239_10:;
_A01B23225_36:;
	return;
_KeyPlaySongC44FFB6D_end:;
_A01B23225_37:;
}

rjmp void _KeyPlayStop0C3B8DB1()
{
_A01B23225_38:;
	////////////////////////////
_A01B23225_39:;
_A01B23225_40:;
	dtxStopSong();
LC9A47239_14:;
_A01B23225_41:;
	return;
_KeyPlayStop0C3B8DB1_end:;
_A01B23225_42:;
}

rjmp void _KeyPlayNextAFBA8CED()
{
_A01B23225_43:;
	////////////////////////////
_A01B23225_44:;
_A01B23225_45:;
	dtxStopSong();
_A01B23225_46:;
	asm I1 = _songidx8C42F7DA+0;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_songidx8C42F7DA;
	sCX	= *(__int16*)sSI;
	sCX++;
	*(__int16*)sSI	= sCX;
_A01B23225_47:;
_A01B23225_48:;
	_CheckSongLimit402181B4();
_A01B23225_49:;
_A01B23225_50:;
	asm I1 = _songidx8C42F7DA+0;
	sAX	= *(__int16*)sSI;
	_dtxPlaySong5B7DBDA5(STACK[sSP + 0]);
LC9A47239_15:;
_A01B23225_51:;
	return;
_KeyPlayNextAFBA8CED_end:;
_A01B23225_52:;
}

rjmp void _KeyPlayPrev8E98A35A()
{
_A01B23225_53:;
	////////////////////////////
_A01B23225_54:;
_A01B23225_55:;
	dtxStopSong();
_A01B23225_56:;
	asm I1 = _songidx8C42F7DA+0;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_songidx8C42F7DA;
	sCX	= *(__int16*)sSI;
	sCX--;
	*(__int16*)sSI	= sCX;
_A01B23225_57:;
_A01B23225_58:;
	_CheckSongLimit402181B4();
_A01B23225_59:;
_A01B23225_60:;
	asm I1 = _songidx8C42F7DA+0;
	sAX	= *(__int16*)sSI;
	_dtxPlaySong5B7DBDA5(STACK[sSP + 0]);
LC9A47239_16:;
_A01B23225_61:;
	return;
_KeyPlayPrev8E98A35A_end:;
_A01B23225_62:;
}

rjmp void _KeyModEEAB4D5A()
{
_A01B23225_63:;
	////////////////////////////
_A01B23225_64:;
	asm AX = dtxtonech+7;
	PUSH(sAX);
	sAX	= 0x0001;
	asm I1 = dtxtonech+7;
	sCX	= *(__int16*)sSI;
	sAX	= sAX + sCX;
	asm AR = 0x0003;
	asm AX = AX & AR;
	sSI	= POP();
	*(__int16*)sSI	= sAX;
_A01B23225_65:;
	asm AX = dtxtonech+15;
	PUSH(sAX);
	sAX	= 0x0001;
	asm I1 = dtxtonech+15;
	sCX	= *(__int16*)sSI;
	sAX	= sAX + sCX;
	asm AR = 0x0003;
	asm AX = AX & AR;
	sSI	= POP();
	*(__int16*)sSI	= sAX;
LC9A47239_17:;
_A01B23225_66:;
	return;
_KeyModEEAB4D5A_end:;
_A01B23225_67:;
}

// .code ends _text

// .data segment _rdata
.data
// .data ends _rdata

// .code segment _ginit
.code

// -=-=-=-=-=-=-=-=-=-=-
naked void ginit_code_F_467EBAA5_s(void)
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

__int16 _keyfuncF06F3D55[15] = {
	(int)&_KeyPlayNextAFBA8CED, 0x0000, 0x0000, (int)&_KeyPlayPrev8E98A35A, 0x0000, 0x0000, (int)&_KeyModEEAB4D5A, 0x0000, 
	0x0000, (int)&_KeyPlayStop0C3B8DB1, 0x0000, 0x0000, (int)&_KeyPlaySongC44FFB6D, 0x0000, 0x0000
};

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
// extern _lptr_read:proc
// extern _lptr_read32:proc
// extern _lptr_write:proc
// extern _lptr_write32:proc
// extern dtxfltg:word
// extern dtxsongcnt:word
// extern dtxtonech:word
// extern dtxRender:long
// extern dtxInitialize:proc
// extern dtxInitParameters:proc
// extern dtxReadTune:proc
// extern dtxStopSong:proc
// extern dtxStartBGServe:proc
// extern dtxStopBGServe:proc
// extern _dtxDoEvent05EA2C8C:proc
// extern _dtxFindToneEntry12F3B4ED:proc
// extern _dtxPlaySong5B7DBDA5:proc
// extern _dtxCheckSongEnd870A9712:proc
// extern _flags026116D5:word
// extern _songidx8C42F7DA:word
// extern _InitialDA4A7CC4:proc
// extern _CheckSongLimit402181B4:proc
// extern _InitKey3C587B6D:proc
// extern _PollingKey3B90E3B1:proc
// public _keyfuncF06F3D55
// extern _KeyShowLEDA84888EC:proc
// extern PWM_ENTRY:proc
// extern melody:proc
// public _main
// public _KeyPlaySongC44FFB6D
// public _KeyPlayStop0C3B8DB1
// public _KeyPlayNextAFBA8CED
// public _KeyPlayPrev8E98A35A
// public _KeyModEEAB4D5A
// public ginit_code_F_467EBAA5_s
