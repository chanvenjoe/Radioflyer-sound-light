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
__int16 _sub_vol980B1B83;
__int16 _ticksA7263C09[2];

// .bss ends _bss

// CODE segment

.code


rjmp void _RampUpFF7996DA();
rjmp void _RampDown1D382EDA();
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
rjmp void _RampUpFF7996DA()
{
_A0FC2C77B_59:;
	////////////////////////////
_A0FC2C77B_60:;
	asm I1 = _sub_vol980B1B83+0;
	sAX	= *(__int16*)sSI;
	asm AR = 0x003F;
	asm AX = AX & AR;
	sCX	= 0x003F;
	sfx_CMP_AX_CX_JE();
	if(__je__)	goto L0E8FA404_17;
	goto	L0E8FA404_16;
L0E8FA404_17:;
_A0FC2C77B_61:;
	sAX	= 0x0000;
	goto L0E8FA404_15;
L0E8FA404_16:;
_A0FC2C77B_62:;
_A0FC2C77B_63:;
_A0FC2C77B_64:;
	_GetTickCount18DC070C();
	asm I1 = _ticksA7263C09+0;
	sCX	= *(__int16*)sSI++;
	sBX	= *(__int16*)sSI--;
	sfx_SUBLONG();
	sCX	= 0x0000;
	sBX	= 0x0005;
	sfx_CMPLONG_JA();
	if(__je__)	goto L0E8FA404_19;
	goto	L0E8FA404_18;
L0E8FA404_19:;
	////////////////////////////
_A0FC2C77B_65:;
_A0FC2C77B_66:;
	_GetTickCount18DC070C();
	asm I1 = _ticksA7263C09+0;
	sfx_STORSILONG();
_A0FC2C77B_67:;
	sSI	= (int)&_sub_vol980B1B83;
	sAX	= *(__int16*)sSI;
	sAX++;
	*(__int16*)sSI	= sAX;
	io[0x3C]	= sAX;
L0E8FA404_18:;
_A0FC2C77B_68:;
_A0FC2C77B_69:;
	sAX	= 0x0001;
	goto L0E8FA404_15;
L0E8FA404_15:;
_A0FC2C77B_70:;
	return;
_RampUpFF7996DA_end:;
_A0FC2C77B_71:;
}

rjmp void _RampDown1D382EDA()
{
_A0FC2C77B_72:;
	////////////////////////////
_A0FC2C77B_73:;
	asm I1 = _sub_vol980B1B83+0;
	sAX	= *(__int16*)sSI;
	asm AR = 0x003F;
	asm AX = AX & AR;
	sCX	= 0x0000;
	sfx_CMP_AX_CX_JE();
	if(__je__)	goto L0E8FA404_22;
	goto	L0E8FA404_21;
L0E8FA404_22:;
_A0FC2C77B_74:;
	sAX	= 0x0000;
	goto L0E8FA404_20;
L0E8FA404_21:;
_A0FC2C77B_75:;
_A0FC2C77B_76:;
_A0FC2C77B_77:;
	_GetTickCount18DC070C();
	asm I1 = _ticksA7263C09+0;
	sCX	= *(__int16*)sSI++;
	sBX	= *(__int16*)sSI--;
	sfx_SUBLONG();
	sCX	= 0x0000;
	sBX	= 0x0005;
	sfx_CMPLONG_JA();
	if(__je__)	goto L0E8FA404_24;
	goto	L0E8FA404_23;
L0E8FA404_24:;
	////////////////////////////
_A0FC2C77B_78:;
_A0FC2C77B_79:;
	_GetTickCount18DC070C();
	asm I1 = _ticksA7263C09+0;
	sfx_STORSILONG();
_A0FC2C77B_80:;
	sSI	= (int)&_sub_vol980B1B83;
	sAX	= *(__int16*)sSI;
	sAX--;
	*(__int16*)sSI	= sAX;
	io[0x3C]	= sAX;
L0E8FA404_23:;
_A0FC2C77B_81:;
_A0FC2C77B_82:;
	sAX	= 0x0001;
	goto L0E8FA404_20;
L0E8FA404_20:;
_A0FC2C77B_83:;
	return;
_RampDown1D382EDA_end:;
_A0FC2C77B_84:;
}

// .code ends _text

// .code segment _ginit
.code

// -=-=-=-=-=-=-=-=-=-=-
naked void ginit_code_global_6037E6D5_s(void)
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
// extern mp:word
// extern mp_baseadr_l:word
// extern mp_baseadr_h:word
// extern mp_songcnt:word
// extern mp_tinsbank:word
// extern mp_occupyopr:word
// extern mp_inbuf:word
// extern mp_outbuf:word
// extern mp_vol:word
// extern mp_tempo:word
// extern mp_kmapbase:long
// extern mp_flags:word
// extern mp_note:long
// extern mp_PlayChannel:long
// extern mp_ReleaseCh:long
// extern mp_mchmask:long
// extern mp_okmask:word
// extern mp_lop:word
// extern mp_ctlev:word
// extern mp_pitch:word
// extern md2Initialize:proc
// extern md2Initilize:proc
// extern _md2ChkSongEnd0B00CDA5:proc
// extern _md2DoRoutine82B98B9D:proc
// extern _md2PlaySongF1CD4C9D:proc
// extern _md2PlayRhythmLoop446C96D5:proc
// extern md2StopSong:proc
// extern md2InitParameters:proc
// extern md2StartBGServe:proc
// extern md2StopBGServe:proc
// extern _md2FindMidiEntry757C576D:proc
// extern _md2PlayNoteC61ED125:proc
// extern _md2PlayPercNote818E3F25:proc
// extern _md2ReleaseNote7FE95EF3:proc
// extern _md2ReleasePercNote8CD707D5:proc
// extern _md2FindNextOkonD3FEE6DA:proc
// extern md2StartOkon:proc
// extern md2LeaveOkon:proc
// extern _md2PlayOkon3411E62A:proc
// extern _md2PlayOkonAccomp18254831:proc
// extern _md2ReleaseOkonF4500B9D:proc
// extern _md2LoopToSong6DEA50ED:proc
// public _ticksA7263C09
// public _sub_vol980B1B83
// public _RampUpFF7996DA
// public _RampDown1D382EDA
// public ginit_code_global_6037E6D5_s
