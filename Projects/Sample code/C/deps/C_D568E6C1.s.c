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
_AECA8DE46_0:;
	////////////////////////////
_AECA8DE46_1:;
_AECA8DE46_2:;
	_InitialDA4A7CC4();
_AECA8DE46_3:;
_AECA8DE46_4:;
	_InitKey3C587B6D();
_AECA8DE46_5:;
_AECA8DE46_6:;
	ADPCM_CHX_Init();
_AECA8DE46_7:;
	asm set io[0x06].b0;
_AECA8DE46_8:;
	sAX	= 0x0001;
	asm I1 = CopyToBank+0;
	*(__int16*)sSI	= sAX
_AECA8DE46_9:;
	asm	set io[INTENA].b0
_AECA8DE46_10:;
	asm	eni
LE6FF7BEA_5:;
_AECA8DE46_11:;
_AECA8DE46_12:;
	asm	io[ClrWDT] = AR
	////////////////////////////
_AECA8DE46_13:;
_AECA8DE46_14:;
	_PollingKey3B90E3B1();
_AECA8DE46_15:;
_AECA8DE46_16:;
	_DoADPCM9CD0E20D();
_AECA8DE46_17:;
	goto LE6FF7BEA_5;
LE6FF7BEA_4:;
LE6FF7BEA_3:;
_AECA8DE46_18:;
	return;
_main_end:;
_AECA8DE46_19:;
}

rjmp void _KeyPlayAdpECABF1D0()
{
_AECA8DE46_20:;
	////////////////////////////
_AECA8DE46_21:;
_AECA8DE46_22:;
	asm I1 = _iADPCCACC469+0;
	sAX	= *(__int16*)sSI;
	PUSH(sAX);
	_playADPCMBACD5AFD(STACK[sSP + 0]);
	RESTORESP(1);
LE6FF7BEA_6:;
_AECA8DE46_23:;
	return;
_KeyPlayAdpECABF1D0_end:;
_AECA8DE46_24:;
}

rjmp void _KeyPlayNextAFBA8CED()
{
_AECA8DE46_25:;
	////////////////////////////
_AECA8DE46_26:;
	asm I1 = _iADPCCACC469+0;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_iADPCCACC469;
	sCX	= *(__int16*)sSI;
	sCX++;
	*(__int16*)sSI	= sCX;
_AECA8DE46_27:;
	asm I1 = _iADPCCACC469+0;
	sAX	= *(__int16*)sSI;
	sCX	= 0x0009;
	sfx_CMP_AX_CX_JGE();
	if(__je__)	goto LE6FF7BEA_9;
	goto	LE6FF7BEA_8;
LE6FF7BEA_9:;
_AECA8DE46_28:;
	sAX	= 0x0000;
	asm I1 = _iADPCCACC469+0;
	*(__int16*)sSI	= sAX
LE6FF7BEA_8:;
_AECA8DE46_29:;
_AECA8DE46_30:;
_AECA8DE46_31:;
	_KeyPlayAdpECABF1D0();
LE6FF7BEA_7:;
_AECA8DE46_32:;
	return;
_KeyPlayNextAFBA8CED_end:;
_AECA8DE46_33:;
}

rjmp void _KeyPlayPrev8E98A35A()
{
_AECA8DE46_34:;
	////////////////////////////
_AECA8DE46_35:;
	asm I1 = _iADPCCACC469+0;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_iADPCCACC469;
	sCX	= *(__int16*)sSI;
	sCX--;
	*(__int16*)sSI	= sCX;
_AECA8DE46_36:;
	asm I1 = _iADPCCACC469+0;
	sAX	= *(__int16*)sSI;
	sCX	= 0x0000;
	sfx_CMP_AX_CX_JL();
	if(__je__)	goto LE6FF7BEA_12;
	goto	LE6FF7BEA_11;
LE6FF7BEA_12:;
_AECA8DE46_37:;
	sAX	= 0x0005;
	asm I1 = _iADPCCACC469+0;
	*(__int16*)sSI	= sAX
LE6FF7BEA_11:;
_AECA8DE46_38:;
_AECA8DE46_39:;
_AECA8DE46_40:;
	_KeyPlayAdpECABF1D0();
LE6FF7BEA_10:;
_AECA8DE46_41:;
	return;
_KeyPlayPrev8E98A35A_end:;
_AECA8DE46_42:;
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
