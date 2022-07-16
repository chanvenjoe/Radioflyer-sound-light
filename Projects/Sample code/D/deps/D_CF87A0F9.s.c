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
__int16 _PLAY59F2A4ED;

// .bss ends _bss

// CODE segment

.code


rjmp void _main();
rjmp void _KeyPlayAdpECABF1D0();
rjmp void _KeyPlayNextAFBA8CED();
rjmp void _KeyPlayPrev8E98A35A();
rjmp void _KeyPlaySubb36031D62D();
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
_A0432E234_0:;
	////////////////////////////
_A0432E234_1:;
_A0432E234_2:;
	_InitialDA4A7CC4();
_A0432E234_3:;
_A0432E234_4:;
	_InitKey3C587B6D();
_A0432E234_5:;
_A0432E234_6:;
	ADPCM_CHX_Init();
_A0432E234_7:;
_A0432E234_8:;
	_Sub3Initial96BE24F3();
_A0432E234_9:;
	asm set io[0x06].b0;
_A0432E234_10:;
	sAX	= 0x0000;
	asm I1 = CopyToBank+0;
	*(__int16*)sSI	= sAX
_A0432E234_11:;
	sAX	= 0x0000;
	asm I1 = _PLAY59F2A4ED+0;
	*(__int16*)sSI	= sAX
_A0432E234_12:;
	asm	set io[INTENA].b0
_A0432E234_13:;
	asm	eni
LF66E16C1_4:;
_A0432E234_14:;
_A0432E234_15:;
	asm	io[ClrWDT] = AR
	////////////////////////////
_A0432E234_16:;
_A0432E234_17:;
	_PollingKey3B90E3B1();
_A0432E234_18:;
	asm I1 = _PLAY59F2A4ED+0;
	sAX	= *(__int16*)sSI;
	sfx_CHECKZERO();
	if(__jnz__)	goto LF66E16C1_6;
	goto	LF66E16C1_5;
LF66E16C1_6:;
	////////////////////////////
_A0432E234_19:;
_A0432E234_20:;
	Subb3_Dec();
	sfx_CHECKZERO();
	if(__jnz__)	goto LF66E16C1_8;
	goto	LF66E16C1_7;
LF66E16C1_8:;
	////////////////////////////
_A0432E234_21:;
	sAX	= 0x0000;
	asm I1 = _PLAY59F2A4ED+0;
	*(__int16*)sSI	= sAX
_A0432E234_22:;
_A0432E234_23:;
	_Sub3ZeroFillABFF23AA();
LF66E16C1_7:;
_A0432E234_24:;
	goto LF66E16C1_9;
LF66E16C1_5:;
	////////////////////////////
_A0432E234_25:;
_A0432E234_26:;
	_Sub3ZeroFillABFF23AA();
LF66E16C1_9:;
_A0432E234_27:;
_A0432E234_28:;
	goto LF66E16C1_4;
LF66E16C1_3:;
LF66E16C1_2:;
_A0432E234_29:;
	return;
_main_end:;
_A0432E234_30:;
}

rjmp void _KeyPlayAdpECABF1D0()
{
_A0432E234_31:;
	////////////////////////////
_A0432E234_32:;
	sAX	= 0x0000;
	asm I1 = _PLAY59F2A4ED+0;
	*(__int16*)sSI	= sAX
_A0432E234_33:;
_A0432E234_34:;
	asm I1 = _iADPCCACC469+0;
	sAX	= *(__int16*)sSI;
	PUSH(sAX);
	_playADPCMBACD5AFD(STACK[sSP + 0]);
	RESTORESP(1);
LF66E16C1_10:;
_A0432E234_35:;
	return;
_KeyPlayAdpECABF1D0_end:;
_A0432E234_36:;
}

rjmp void _KeyPlayNextAFBA8CED()
{
_A0432E234_37:;
	////////////////////////////
_A0432E234_38:;
	asm I1 = _iADPCCACC469+0;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_iADPCCACC469;
	sCX	= *(__int16*)sSI;
	sCX++;
	*(__int16*)sSI	= sCX;
_A0432E234_39:;
	asm I1 = _iADPCCACC469+0;
	sAX	= *(__int16*)sSI;
	sCX	= 0x0009;
	sfx_CMP_AX_CX_JGE();
	if(__je__)	goto LF66E16C1_13;
	goto	LF66E16C1_12;
LF66E16C1_13:;
_A0432E234_40:;
	sAX	= 0x0000;
	asm I1 = _iADPCCACC469+0;
	*(__int16*)sSI	= sAX
LF66E16C1_12:;
_A0432E234_41:;
_A0432E234_42:;
_A0432E234_43:;
	_KeyPlayAdpECABF1D0();
LF66E16C1_11:;
_A0432E234_44:;
	return;
_KeyPlayNextAFBA8CED_end:;
_A0432E234_45:;
}

rjmp void _KeyPlayPrev8E98A35A()
{
_A0432E234_46:;
	////////////////////////////
_A0432E234_47:;
	asm I1 = _iADPCCACC469+0;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_iADPCCACC469;
	sCX	= *(__int16*)sSI;
	sCX--;
	*(__int16*)sSI	= sCX;
_A0432E234_48:;
	asm I1 = _iADPCCACC469+0;
	sAX	= *(__int16*)sSI;
	sCX	= 0x0000;
	sfx_CMP_AX_CX_JL();
	if(__je__)	goto LF66E16C1_16;
	goto	LF66E16C1_15;
LF66E16C1_16:;
_A0432E234_49:;
	sAX	= 0x0008;
	asm I1 = _iADPCCACC469+0;
	*(__int16*)sSI	= sAX
LF66E16C1_15:;
_A0432E234_50:;
_A0432E234_51:;
_A0432E234_52:;
	_KeyPlayAdpECABF1D0();
LF66E16C1_14:;
_A0432E234_53:;
	return;
_KeyPlayPrev8E98A35A_end:;
_A0432E234_54:;
}

rjmp void _KeyPlaySubb36031D62D()
{
_A0432E234_55:;
	////////////////////////////
_A0432E234_56:;
_A0432E234_57:;
	_StopAllADPCM9255018D();
_A0432E234_58:;
	asm I1 = _PLAY59F2A4ED+0;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_PLAY59F2A4ED;
	sCX	= *(__int16*)sSI;
	sCX++;
	*(__int16*)sSI	= sCX;
_A0432E234_59:;
	asm I1 = _PLAY59F2A4ED+0;
	sAX	= *(__int16*)sSI;
	sCX	= 0x0002;
	sfx_CMP_AX_CX_JG();
	if(__je__)	goto LF66E16C1_19;
	goto	LF66E16C1_18;
LF66E16C1_19:;
_A0432E234_60:;
	sAX	= 0x0001;
	asm I1 = _PLAY59F2A4ED+0;
	*(__int16*)sSI	= sAX
LF66E16C1_18:;
_A0432E234_61:;
_A0432E234_62:;
_A0432E234_63:;
	sAX	= 0x0001;
	asm I1 = _PLAY59F2A4ED+0;
	asm CX = rm[I1];
	sfx_CMP_AX_CX_JE();
	if(__je__)	goto LF66E16C1_22;
	goto	LF66E16C1_20;
LF66E16C1_22:;
	asm AX = #subb0+0;
	asm DX = #subb0.n2
	asm set DX.b11
	goto LF66E16C1_21;
LF66E16C1_20:;
	asm AX = #subb1+0;
	asm DX = #subb1.n2
	asm set DX.b11
LF66E16C1_21:;
	PUSH(sDX);
	PUSH(sAX);
	_Sub3Play422CAD6D(STACK[sSP + 0], STACK[sSP + 1]);
	RESTORESP(2);
LF66E16C1_17:;
_A0432E234_64:;
	return;
_KeyPlaySubb36031D62D_end:;
_A0432E234_65:;
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
	0x0000, (int)&_KeyPlaySubb36031D62D[0], 0x0000, 0x0000, 0x0000, 0x0000, 0x0000
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
// extern subb0:proc
// extern subb1:proc
// extern _InitKey3C587B6D:proc
// extern _PollingKey3B90E3B1:proc
// public _keyfuncF06F3D55
// extern _iADPCCACC469:word
// extern ADPCM_CHX_Init:proc
// extern _playADPCMBACD5AFD:proc
// extern _StopAllADPCM9255018D:proc
// extern Subb3_Dec:proc
// extern _Sub3Initial96BE24F3:proc
// extern _Sub3ZeroFillABFF23AA:proc
// extern _Sub3Play422CAD6D:proc
// public _PLAY59F2A4ED
// public _main
// public _KeyPlayAdpECABF1D0
// public _KeyPlayNextAFBA8CED
// public _KeyPlayPrev8E98A35A
// public _KeyPlaySubb36031D62D
