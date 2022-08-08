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


rjmp void _main();
rjmp void _KeyPlayAdpECABF1D0();
rjmp void _KeyPlayNextAFBA8CED();
rjmp void _KeyPlayPrev8E98A35A();
// RCODE segment

// .model speechdsp
// .code segment _text
.code
rjmp void _main()
{
_AA01D89BC_0:;
	////////////////////////////
_AA01D89BC_1:;
_AA01D89BC_2:;
	_InitialDA4A7CC4();
_AA01D89BC_3:;
_AA01D89BC_4:;
	_InitKey3C587B6D();
_AA01D89BC_5:;
_AA01D89BC_6:;
	ADPCM_CHX_Init();
_AA01D89BC_7:;
	sAX	= 0x0001;
	asm I1 = CopyToBank+0;
	*(__int16*)sSI	= sAX
_AA01D89BC_8:;
	asm	set io[INTENA].b0
_AA01D89BC_9:;
	asm	eni
_AA01D89BC_10:;
_AA01D89BC_11:;
	_touch_init378E5983();
LE6FF7BEA_5:;
_AA01D89BC_12:;
_AA01D89BC_13:;
	asm	io[ClrWDT] = AR
	////////////////////////////
_AA01D89BC_14:;
_AA01D89BC_15:;
	_PollingKey3B90E3B1();
_AA01D89BC_16:;
_AA01D89BC_17:;
	_DoADPCM9CD0E20D();
_AA01D89BC_18:;
	goto LE6FF7BEA_5;
LE6FF7BEA_4:;
LE6FF7BEA_3:;
_AA01D89BC_19:;
	return;
_main_end:;
_AA01D89BC_20:;
}

rjmp void _KeyPlayAdpECABF1D0()
{
_AA01D89BC_21:;
	////////////////////////////
_AA01D89BC_22:;
_AA01D89BC_23:;
	asm I1 = _iADPCCACC469+0;
	sAX	= *(__int16*)sSI;
	PUSH(sAX);
	_playADPCMBACD5AFD(STACK[sSP + 0]);
	RESTORESP(1);
LE6FF7BEA_6:;
_AA01D89BC_24:;
	return;
_KeyPlayAdpECABF1D0_end:;
_AA01D89BC_25:;
}

rjmp void _KeyPlayNextAFBA8CED()
{
_AA01D89BC_26:;
	////////////////////////////
_AA01D89BC_27:;
	asm I1 = _iADPCCACC469+0;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_iADPCCACC469;
	sCX	= *(__int16*)sSI;
	sCX++;
	*(__int16*)sSI	= sCX;
_AA01D89BC_28:;
	asm I1 = _iADPCCACC469+0;
	sAX	= *(__int16*)sSI;
	sCX	= 0x0009;
	sfx_CMP_AX_CX_JGE();
	if(__je__)	goto LE6FF7BEA_9;
	goto	LE6FF7BEA_8;
LE6FF7BEA_9:;
_AA01D89BC_29:;
	sAX	= 0x0000;
	asm I1 = _iADPCCACC469+0;
	*(__int16*)sSI	= sAX
LE6FF7BEA_8:;
_AA01D89BC_30:;
_AA01D89BC_31:;
_AA01D89BC_32:;
	_KeyPlayAdpECABF1D0();
LE6FF7BEA_7:;
_AA01D89BC_33:;
	return;
_KeyPlayNextAFBA8CED_end:;
_AA01D89BC_34:;
}

rjmp void _KeyPlayPrev8E98A35A()
{
_AA01D89BC_35:;
	////////////////////////////
_AA01D89BC_36:;
	asm I1 = _iADPCCACC469+0;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_iADPCCACC469;
	sCX	= *(__int16*)sSI;
	sCX--;
	*(__int16*)sSI	= sCX;
_AA01D89BC_37:;
	asm I1 = _iADPCCACC469+0;
	sAX	= *(__int16*)sSI;
	sCX	= 0x0000;
	sfx_CMP_AX_CX_JL();
	if(__je__)	goto LE6FF7BEA_12;
	goto	LE6FF7BEA_11;
LE6FF7BEA_12:;
_AA01D89BC_38:;
	sAX	= 0x0005;
	asm I1 = _iADPCCACC469+0;
	*(__int16*)sSI	= sAX
LE6FF7BEA_11:;
_AA01D89BC_39:;
_AA01D89BC_40:;
_AA01D89BC_41:;
	_KeyPlayAdpECABF1D0();
LE6FF7BEA_10:;
_AA01D89BC_42:;
	return;
_KeyPlayPrev8E98A35A_end:;
_AA01D89BC_43:;
}

// .code ends _text

// .data segment _rdata
.data
// .data ends _rdata


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
	(int)&_KeyPlayPrev8E98A35A[0], 0x0000, 0x0000, (int)&_KeyPlayAdpECABF1D0[0], 0x0000, 0x0000, (int)&_KeyPlayNextAFBA8CED[0], 0x0000, 
	0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000
};

// .code ends _text

// .data segment _linkd
.data
// LINKFILE (RO) segment

// .data ends _linkd

// .code segment _text
.code
// .code ends _text

// extern CopyToBank:word
// extern _InitialDA4A7CC4:proc
// extern _DoADPCM9CD0E20D:proc
// extern _InitKey3C587B6D:proc
// extern _PollingKey3B90E3B1:proc
// public _keyfuncF06F3D55
// extern _iADPCCACC469:word
// extern ADPCM_CHX_Init:proc
// extern _playADPCMBACD5AFD:proc
// extern _touch_init378E5983:proc
// public _main
// public _KeyPlayAdpECABF1D0
// public _KeyPlayNextAFBA8CED
// public _KeyPlayPrev8E98A35A
