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
rjmp void _KeyPlayAdpECABF1D0();
rjmp void _KeyPlayNextAFBA8CED();
rjmp void _KeyPlayPrev8E98A35A();
// RCODE segment

// .model speechdsp
// .code segment _text
.code
rjmp void _main()
{
_A8048BFEF_0:;
	////////////////////////////
_A8048BFEF_1:;
_A8048BFEF_2:;
	_InitialDA4A7CC4();
_A8048BFEF_3:;
_A8048BFEF_4:;
	_InitKey3C587B6D();
_A8048BFEF_5:;
	sAX	= 0x0000;
	asm I1 = _iADPCCACC469+0;
	*(__int16*)sSI	= sAX
_A8048BFEF_6:;
	asm set io[0x06].b0;
_A8048BFEF_7:;
	asm	set io[INTENA].b0
_A8048BFEF_8:;
	asm	eni
LE6FF7BEA_5:;
_A8048BFEF_9:;
_A8048BFEF_10:;
	asm	io[ClrWDT] = AR
	////////////////////////////
_A8048BFEF_11:;
_A8048BFEF_12:;
	_PollingKey3B90E3B1();
_A8048BFEF_13:;
_A8048BFEF_14:;
	_DoADPCM9CD0E20D();
	goto LE6FF7BEA_5;
LE6FF7BEA_4:;
LE6FF7BEA_3:;
_A8048BFEF_15:;
	return;
_main_end:;
_A8048BFEF_16:;
}

rjmp void _KeyPlayAdpECABF1D0()
{
_A8048BFEF_17:;
	////////////////////////////
_A8048BFEF_18:;
_A8048BFEF_19:;
	asm I1 = _iADPCCACC469+0;
	sAX	= *(__int16*)sSI;
	PUSH(sAX);
	_playADPCMBACD5AFD(STACK[sSP + 0]);
	RESTORESP(1);
LE6FF7BEA_6:;
_A8048BFEF_20:;
	return;
_KeyPlayAdpECABF1D0_end:;
_A8048BFEF_21:;
}

rjmp void _KeyPlayNextAFBA8CED()
{
_A8048BFEF_22:;
	////////////////////////////
_A8048BFEF_23:;
	asm I1 = _iADPCCACC469+0;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_iADPCCACC469;
	sCX	= *(__int16*)sSI;
	sCX++;
	*(__int16*)sSI	= sCX;
_A8048BFEF_24:;
	asm I1 = _iADPCCACC469+0;
	sAX	= *(__int16*)sSI;
	sCX	= 0x0007;
	sfx_CMP_AX_CX_JGE();
	if(__je__)	goto LE6FF7BEA_9;
	goto	LE6FF7BEA_8;
LE6FF7BEA_9:;
_A8048BFEF_25:;
	sAX	= 0x0000;
	asm I1 = _iADPCCACC469+0;
	*(__int16*)sSI	= sAX
LE6FF7BEA_8:;
_A8048BFEF_26:;
_A8048BFEF_27:;
_A8048BFEF_28:;
	_KeyPlayAdpECABF1D0();
LE6FF7BEA_7:;
_A8048BFEF_29:;
	return;
_KeyPlayNextAFBA8CED_end:;
_A8048BFEF_30:;
}

rjmp void _KeyPlayPrev8E98A35A()
{
_A8048BFEF_31:;
	////////////////////////////
_A8048BFEF_32:;
	asm I1 = _iADPCCACC469+0;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_iADPCCACC469;
	sCX	= *(__int16*)sSI;
	sCX--;
	*(__int16*)sSI	= sCX;
_A8048BFEF_33:;
	asm I1 = _iADPCCACC469+0;
	sAX	= *(__int16*)sSI;
	sCX	= 0x0000;
	sfx_CMP_AX_CX_JL();
	if(__je__)	goto LE6FF7BEA_12;
	goto	LE6FF7BEA_11;
LE6FF7BEA_12:;
_A8048BFEF_34:;
	sAX	= 0x0006;
	asm I1 = _iADPCCACC469+0;
	*(__int16*)sSI	= sAX
LE6FF7BEA_11:;
_A8048BFEF_35:;
_A8048BFEF_36:;
_A8048BFEF_37:;
	_KeyPlayAdpECABF1D0();
LE6FF7BEA_10:;
_A8048BFEF_38:;
	return;
_KeyPlayPrev8E98A35A_end:;
_A8048BFEF_39:;
}

// .code ends _text

// .data segment _rdata
.data
// .data ends _rdata

// .code segment _ginit
.code

// -=-=-=-=-=-=-=-=-=-=-
naked void ginit_code_B_D568E6C1_s(void)
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
	(int)&_KeyPlayPrev8E98A35A, 0x0000, 0x0000, (int)&_KeyPlayAdpECABF1D0, 0x0000, 0x0000, (int)&_KeyPlayNextAFBA8CED, 0x0000, 
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
// extern CopyToBank:word
// extern ADPCM_Tmpi:word
// extern _SDSP_ADPCM_4Bit_SingleCH_decoder94C4563E:proc
// extern ADP4_8_DPTR:word
// extern ADP4_8_Init:proc
// extern _ADP4_8_DecoderE9228389:proc
// extern inbuf:word
// extern outbuf:word
// extern PCMY:word
// extern _InitialDA4A7CC4:proc
// extern _DoADPCM9CD0E20D:proc
// extern _InitKey3C587B6D:proc
// extern _PollingKey3B90E3B1:proc
// public _keyfuncF06F3D55
// extern _iADPCCACC469:word
// extern _adpdata32993E3B:proc
// extern _adpch30670376:word
// extern ADPCM_CHX_Init:proc
// extern _playADPCMBACD5AFD:proc
// public _main
// public _KeyPlayAdpECABF1D0
// public _KeyPlayNextAFBA8CED
// public _KeyPlayPrev8E98A35A
// public ginit_code_B_D568E6C1_s
