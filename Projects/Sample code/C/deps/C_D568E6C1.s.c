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
_AE3845712_0:;
	////////////////////////////
_AE3845712_1:;
_AE3845712_2:;
	_InitialDA4A7CC4();
_AE3845712_3:;
_AE3845712_4:;
	_InitKey3C587B6D();
_AE3845712_5:;
_AE3845712_6:;
	ADPCM_CHX_Init();
_AE3845712_7:;
	asm set io[0x06].b0;
_AE3845712_8:;
	sAX	= 0x0001;
	asm I1 = CopyToBank+0;
	*(__int16*)sSI	= sAX
_AE3845712_9:;
	asm	set io[INTENA].b0
_AE3845712_10:;
	asm	eni
LE6FF7BEA_5:;
_AE3845712_11:;
_AE3845712_12:;
	asm	io[ClrWDT] = AR
	////////////////////////////
_AE3845712_13:;
_AE3845712_14:;
	_PollingKey3B90E3B1();
_AE3845712_15:;
_AE3845712_16:;
	_DoADPCM9CD0E20D();
_AE3845712_17:;
	goto LE6FF7BEA_5;
LE6FF7BEA_4:;
LE6FF7BEA_3:;
_AE3845712_18:;
	return;
_main_end:;
_AE3845712_19:;
}

rjmp void _KeyPlayAdpECABF1D0()
{
_AE3845712_20:;
	////////////////////////////
_AE3845712_21:;
_AE3845712_22:;
	asm I1 = _iADPCCACC469+0;
	sAX	= *(__int16*)sSI;
	PUSH(sAX);
	_playADPCMBACD5AFD(STACK[sSP + 0]);
	RESTORESP(1);
LE6FF7BEA_6:;
_AE3845712_23:;
	return;
_KeyPlayAdpECABF1D0_end:;
_AE3845712_24:;
}

rjmp void _KeyPlayNextAFBA8CED()
{
_AE3845712_25:;
	////////////////////////////
_AE3845712_26:;
	asm I1 = _iADPCCACC469+0;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_iADPCCACC469;
	sCX	= *(__int16*)sSI;
	sCX++;
	*(__int16*)sSI	= sCX;
_AE3845712_27:;
	asm I1 = _iADPCCACC469+0;
	sAX	= *(__int16*)sSI;
	sCX	= 0x0009;
	sfx_CMP_AX_CX_JGE();
	if(__je__)	goto LE6FF7BEA_9;
	goto	LE6FF7BEA_8;
LE6FF7BEA_9:;
_AE3845712_28:;
	sAX	= 0x0000;
	asm I1 = _iADPCCACC469+0;
	*(__int16*)sSI	= sAX
LE6FF7BEA_8:;
_AE3845712_29:;
_AE3845712_30:;
_AE3845712_31:;
	_KeyPlayAdpECABF1D0();
LE6FF7BEA_7:;
_AE3845712_32:;
	return;
_KeyPlayNextAFBA8CED_end:;
_AE3845712_33:;
}

rjmp void _KeyPlayPrev8E98A35A()
{
_AE3845712_34:;
	////////////////////////////
_AE3845712_35:;
	asm I1 = _iADPCCACC469+0;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_iADPCCACC469;
	sCX	= *(__int16*)sSI;
	sCX--;
	*(__int16*)sSI	= sCX;
_AE3845712_36:;
	asm I1 = _iADPCCACC469+0;
	sAX	= *(__int16*)sSI;
	sCX	= 0x0000;
	sfx_CMP_AX_CX_JL();
	if(__je__)	goto LE6FF7BEA_12;
	goto	LE6FF7BEA_11;
LE6FF7BEA_12:;
_AE3845712_37:;
	sAX	= 0x0005;
	asm I1 = _iADPCCACC469+0;
	*(__int16*)sSI	= sAX
LE6FF7BEA_11:;
_AE3845712_38:;
_AE3845712_39:;
_AE3845712_40:;
	_KeyPlayAdpECABF1D0();
LE6FF7BEA_10:;
_AE3845712_41:;
	return;
_KeyPlayPrev8E98A35A_end:;
_AE3845712_42:;
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
// public _main
// public _KeyPlayAdpECABF1D0
// public _KeyPlayNextAFBA8CED
// public _KeyPlayPrev8E98A35A
