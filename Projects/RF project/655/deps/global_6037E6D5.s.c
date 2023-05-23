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
rjmp void _InitialDA4A7CC4();
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
_A8ADEC9C4_78:;
	////////////////////////////
_A8ADEC9C4_79:;
	asm I1 = _sub_vol980B1B83+0;
	sAX	= *(__int16*)sSI;
	asm AR = 0x003F;
	asm AX = AX & AR;
	sCX	= 0x003F;
	sfx_CMP_AX_CX_JE();
	if(__je__)	goto L0E8FA404_33;
	goto	L0E8FA404_32;
L0E8FA404_33:;
_A8ADEC9C4_80:;
	sAX	= 0x0000;
	goto L0E8FA404_31;
L0E8FA404_32:;
_A8ADEC9C4_81:;
_A8ADEC9C4_82:;
_A8ADEC9C4_83:;
	_GetTickCount18DC070C();
	asm I1 = _ticksA7263C09+0;
	sCX	= *(__int16*)sSI++;
	sBX	= *(__int16*)sSI--;
	sfx_SUBLONG();
	sCX	= 0x0000;
	sBX	= 0x0005;
	sfx_CMPLONG_JA();
	if(__je__)	goto L0E8FA404_35;
	goto	L0E8FA404_34;
L0E8FA404_35:;
	////////////////////////////
_A8ADEC9C4_84:;
_A8ADEC9C4_85:;
	_GetTickCount18DC070C();
	asm I1 = _ticksA7263C09+0;
	sfx_STORSILONG();
_A8ADEC9C4_86:;
	sSI	= (int)&_sub_vol980B1B83;
	sAX	= *(__int16*)sSI;
	sAX++;
	*(__int16*)sSI	= sAX;
	io[0x3C]	= sAX;
L0E8FA404_34:;
_A8ADEC9C4_87:;
_A8ADEC9C4_88:;
	sAX	= 0x0001;
	goto L0E8FA404_31;
L0E8FA404_31:;
_A8ADEC9C4_89:;
	return;
_RampUpFF7996DA_end:;
_A8ADEC9C4_90:;
}

rjmp void _RampDown1D382EDA()
{
_A8ADEC9C4_91:;
	////////////////////////////
_A8ADEC9C4_92:;
	asm I1 = _sub_vol980B1B83+0;
	sAX	= *(__int16*)sSI;
	asm AR = 0x003F;
	asm AX = AX & AR;
	sCX	= 0x0000;
	sfx_CMP_AX_CX_JE();
	if(__je__)	goto L0E8FA404_38;
	goto	L0E8FA404_37;
L0E8FA404_38:;
_A8ADEC9C4_93:;
	sAX	= 0x0000;
	goto L0E8FA404_36;
L0E8FA404_37:;
_A8ADEC9C4_94:;
_A8ADEC9C4_95:;
_A8ADEC9C4_96:;
	_GetTickCount18DC070C();
	asm I1 = _ticksA7263C09+0;
	sCX	= *(__int16*)sSI++;
	sBX	= *(__int16*)sSI--;
	sfx_SUBLONG();
	sCX	= 0x0000;
	sBX	= 0x0005;
	sfx_CMPLONG_JA();
	if(__je__)	goto L0E8FA404_40;
	goto	L0E8FA404_39;
L0E8FA404_40:;
	////////////////////////////
_A8ADEC9C4_97:;
_A8ADEC9C4_98:;
	_GetTickCount18DC070C();
	asm I1 = _ticksA7263C09+0;
	sfx_STORSILONG();
_A8ADEC9C4_99:;
	sSI	= (int)&_sub_vol980B1B83;
	sAX	= *(__int16*)sSI;
	sAX--;
	*(__int16*)sSI	= sAX;
	io[0x3C]	= sAX;
L0E8FA404_39:;
_A8ADEC9C4_100:;
_A8ADEC9C4_101:;
	sAX	= 0x0001;
	goto L0E8FA404_36;
L0E8FA404_36:;
_A8ADEC9C4_102:;
	return;
_RampDown1D382EDA_end:;
_A8ADEC9C4_103:;
}

rjmp void _InitialDA4A7CC4()
{
_A8ADEC9C4_104:;
	////////////////////////////
_A8ADEC9C4_105:;
	io[0x67]	= 0x0007;
_A8ADEC9C4_106:;
	io[0x06]	= 0xC004;
_A8ADEC9C4_107:;
	io[0x05]	= 0x0000;
_A8ADEC9C4_108:;
	io[0x09]	= 0x0000;
_A8ADEC9C4_109:;
	io[0x08]	= 0xFFFF;
	////////////////////////////
_A8ADEC9C4_110:;
	sAX	= 0x0002;
_A8ADEC9C4_111:;
	asm	AR = AX
_A8ADEC9C4_112:;
	asm	io[IOP_IX] = AR
	////////////////////////////
_A8ADEC9C4_113:;
	sAX	= 0x2AAA;
_A8ADEC9C4_114:;
	asm	AR = AX
_A8ADEC9C4_115:;
	asm	io[IOP_DAT] = AR
_A8ADEC9C4_116:;
	asm	eni
_A8ADEC9C4_117:;
	asm	set io[INTENA].b3
L0E8FA404_41:;
_A8ADEC9C4_118:;
	return;
_InitialDA4A7CC4_end:;
_A8ADEC9C4_119:;
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
// public _InitialDA4A7CC4
// public ginit_code_global_6037E6D5_s
