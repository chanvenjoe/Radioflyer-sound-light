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
_A569F39CC_0:;
	////////////////////////////
_A569F39CC_1:;
_A569F39CC_2:;
	_InitialDA4A7CC4();
_A569F39CC_3:;
_A569F39CC_4:;
	_InitKey3C587B6D();
_A569F39CC_5:;
_A569F39CC_6:;
	ADPCM_CHX_Init();
_A569F39CC_7:;
	sAX	= 0x0001;
	asm I1 = CopyToBank+0;
	*(__int16*)sSI	= sAX
_A569F39CC_8:;
	asm	set io[INTENA].b0
_A569F39CC_9:;
	asm	eni
_A569F39CC_10:;
_A569F39CC_11:;
	_touch_init378E5983();
LE6FF7BEA_5:;
_A569F39CC_12:;
_A569F39CC_13:;
	asm	io[ClrWDT] = AR
	////////////////////////////
_A569F39CC_14:;
_A569F39CC_15:;
	_PollingKey3B90E3B1();
_A569F39CC_16:;
_A569F39CC_17:;
	_DoADPCM9CD0E20D();
_A569F39CC_18:;
	goto LE6FF7BEA_5;
LE6FF7BEA_4:;
LE6FF7BEA_3:;
_A569F39CC_19:;
	return;
_main_end:;
_A569F39CC_20:;
}

rjmp void _KeyPlayAdpECABF1D0()
{
_A569F39CC_21:;
	////////////////////////////
_A569F39CC_22:;
_A569F39CC_23:;
	asm I1 = _iADPCCACC469+0;
	sAX	= *(__int16*)sSI;
	PUSH(sAX);
	_playADPCMBACD5AFD(STACK[sSP + 0]);
	RESTORESP(1);
LE6FF7BEA_6:;
_A569F39CC_24:;
	return;
_KeyPlayAdpECABF1D0_end:;
_A569F39CC_25:;
}

rjmp void _KeyPlayNextAFBA8CED()
{
_A569F39CC_26:;
	////////////////////////////
_A569F39CC_27:;
	asm I1 = _iADPCCACC469+0;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_iADPCCACC469;
	sCX	= *(__int16*)sSI;
	sCX++;
	*(__int16*)sSI	= sCX;
_A569F39CC_28:;
	asm I1 = _iADPCCACC469+0;
	sAX	= *(__int16*)sSI;
	sCX	= 0x0009;
	sfx_CMP_AX_CX_JGE();
	if(__je__)	goto LE6FF7BEA_9;
	goto	LE6FF7BEA_8;
LE6FF7BEA_9:;
_A569F39CC_29:;
	sAX	= 0x0000;
	asm I1 = _iADPCCACC469+0;
	*(__int16*)sSI	= sAX
LE6FF7BEA_8:;
_A569F39CC_30:;
_A569F39CC_31:;
_A569F39CC_32:;
	_KeyPlayAdpECABF1D0();
LE6FF7BEA_7:;
_A569F39CC_33:;
	return;
_KeyPlayNextAFBA8CED_end:;
_A569F39CC_34:;
}

rjmp void _KeyPlayPrev8E98A35A()
{
_A569F39CC_35:;
	////////////////////////////
_A569F39CC_36:;
	asm I1 = _iADPCCACC469+0;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_iADPCCACC469;
	sCX	= *(__int16*)sSI;
	sCX--;
	*(__int16*)sSI	= sCX;
_A569F39CC_37:;
	asm I1 = _iADPCCACC469+0;
	sAX	= *(__int16*)sSI;
	sCX	= 0x0000;
	sfx_CMP_AX_CX_JL();
	if(__je__)	goto LE6FF7BEA_12;
	goto	LE6FF7BEA_11;
LE6FF7BEA_12:;
_A569F39CC_38:;
	sAX	= 0x0005;
	asm I1 = _iADPCCACC469+0;
	*(__int16*)sSI	= sAX
LE6FF7BEA_11:;
_A569F39CC_39:;
_A569F39CC_40:;
_A569F39CC_41:;
	_KeyPlayAdpECABF1D0();
LE6FF7BEA_10:;
_A569F39CC_42:;
	return;
_KeyPlayPrev8E98A35A_end:;
_A569F39CC_43:;
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
