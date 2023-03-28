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
_A5FDED557_0:;
	////////////////////////////
_A5FDED557_1:;
_A5FDED557_2:;
	_InitialDA4A7CC4();
_A5FDED557_3:;
_A5FDED557_4:;
	_InitKey3C587B6D();
_A5FDED557_5:;
_A5FDED557_6:;
	ADPCM_CHX_Init();
_A5FDED557_7:;
	asm set io[0x06].b0;
_A5FDED557_8:;
	sAX	= 0x0001;
	asm I1 = CopyToBank+0;
	*(__int16*)sSI	= sAX
_A5FDED557_9:;
	asm	set io[INTENA].b0
_A5FDED557_10:;
	asm	eni
LE6FF7BEA_5:;
_A5FDED557_11:;
_A5FDED557_12:;
	asm	io[ClrWDT] = AR
	////////////////////////////
_A5FDED557_13:;
_A5FDED557_14:;
	_PollingKey3B90E3B1();
_A5FDED557_15:;
_A5FDED557_16:;
	_DoADPCM9CD0E20D();
	goto LE6FF7BEA_5;
LE6FF7BEA_4:;
LE6FF7BEA_3:;
_A5FDED557_17:;
	return;
_main_end:;
_A5FDED557_18:;
}

rjmp void _KeyPlayAdpECABF1D0()
{
_A5FDED557_19:;
	////////////////////////////
_A5FDED557_20:;
_A5FDED557_21:;
	asm I1 = _iADPCCACC469+0;
	sAX	= *(__int16*)sSI;
	PUSH(sAX);
	_playADPCMBACD5AFD(STACK[sSP + 0]);
	RESTORESP(1);
LE6FF7BEA_6:;
_A5FDED557_22:;
	return;
_KeyPlayAdpECABF1D0_end:;
_A5FDED557_23:;
}

rjmp void _KeyPlayNextAFBA8CED()
{
_A5FDED557_24:;
	////////////////////////////
_A5FDED557_25:;
	asm I1 = _iADPCCACC469+0;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_iADPCCACC469;
	sCX	= *(__int16*)sSI;
	sCX++;
	*(__int16*)sSI	= sCX;
_A5FDED557_26:;
	asm I1 = _iADPCCACC469+0;
	sAX	= *(__int16*)sSI;
	sCX	= 0x0009;
	sfx_CMP_AX_CX_JGE();
	if(__je__)	goto LE6FF7BEA_9;
	goto	LE6FF7BEA_8;
LE6FF7BEA_9:;
_A5FDED557_27:;
	sAX	= 0x0000;
	asm I1 = _iADPCCACC469+0;
	*(__int16*)sSI	= sAX
LE6FF7BEA_8:;
_A5FDED557_28:;
_A5FDED557_29:;
_A5FDED557_30:;
	_KeyPlayAdpECABF1D0();
LE6FF7BEA_7:;
_A5FDED557_31:;
	return;
_KeyPlayNextAFBA8CED_end:;
_A5FDED557_32:;
}

rjmp void _KeyPlayPrev8E98A35A()
{
_A5FDED557_33:;
	////////////////////////////
_A5FDED557_34:;
	asm I1 = _iADPCCACC469+0;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_iADPCCACC469;
	sCX	= *(__int16*)sSI;
	sCX--;
	*(__int16*)sSI	= sCX;
_A5FDED557_35:;
	asm I1 = _iADPCCACC469+0;
	sAX	= *(__int16*)sSI;
	sCX	= 0x0000;
	sfx_CMP_AX_CX_JL();
	if(__je__)	goto LE6FF7BEA_12;
	goto	LE6FF7BEA_11;
LE6FF7BEA_12:;
_A5FDED557_36:;
	sAX	= 0x0008;
	asm I1 = _iADPCCACC469+0;
	*(__int16*)sSI	= sAX
LE6FF7BEA_11:;
_A5FDED557_37:;
_A5FDED557_38:;
_A5FDED557_39:;
	_KeyPlayAdpECABF1D0();
LE6FF7BEA_10:;
_A5FDED557_40:;
	return;
_KeyPlayPrev8E98A35A_end:;
_A5FDED557_41:;
}

// .code ends _text

// .data segment _rdata
.data
// .data ends _rdata

// .code segment _ginit
.code

// -=-=-=-=-=-=-=-=-=-=-
naked void ginit_code_C_D568E6C1_s(void)
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
// public ginit_code_C_D568E6C1_s
