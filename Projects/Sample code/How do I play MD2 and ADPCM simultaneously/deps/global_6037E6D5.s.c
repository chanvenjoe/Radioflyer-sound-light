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
__int16 _songidx8C42F7DA;
__int16 iSync;
__int16 uSync;

// .bss ends _bss

// CODE segment

.code


rjmp void _InitialDA4A7CC4();
rjmp void _CheckSongLimit402181B4();
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
rjmp void L0E8FA404_60()
{
_A149B8B01_130:;
	////////////////////////////
_A149B8B01_131:;
	io[0x16]	= 0x0000;
_A149B8B01_132:;
	io[0x16]	= 0x0000;
_A149B8B01_133:;
	io[0x16]	= 0x0000;
_A149B8B01_134:;
	io[0x16]	= 0x0000;
_A149B8B01_135:;
	io[0x36]	= 0x0000;
_A149B8B01_136:;
	io[0x36]	= 0x0000;
_A149B8B01_137:;
	io[0x36]	= 0x0000;
_A149B8B01_138:;
	io[0x36]	= 0x0000;
_A149B8B01_139:;
	io[0x36]	= 0x0000;
_A149B8B01_140:;
	io[0x36]	= 0x0000;
_A149B8B01_141:;
	io[0x36]	= 0x0000;
_A149B8B01_142:;
	io[0x36]	= 0x0000;
_A149B8B01_143:;
	io[0x3C]	= 0x003F;
_A149B8B01_144:;
	sAX	= io[0x3C];
_A149B8B01_145:;
	asm	set io[MISC].b9
_A149B8B01_146:;
	asm	set io[MISC].b8
_A149B8B01_147:;
	asm	set io[MISC].b4
L0E8FA404_62:;
_A149B8B01_148:;
	return;
L0E8FA404_60_end:;
_A149B8B01_149:;
}

rjmp void L0E8FA404_63()
{
_A149B8B01_150:;
	////////////////////////////
_A149B8B01_151:;
	io[0x04]	= 0x000F;
_A149B8B01_152:;
	io[0x05]	= 0xFFFF;
_A149B8B01_153:;
	io[0x07]	= 0x0000;
_A149B8B01_154:;
	io[0x08]	= 0xFFFF;
L0E8FA404_65:;
_A149B8B01_155:;
	return;
L0E8FA404_63_end:;
_A149B8B01_156:;
}

rjmp void _InitialDA4A7CC4()
{
_A149B8B01_157:;
	////////////////////////////
_A149B8B01_158:;
	sAX	= 0xFFFF;
	asm I1 = _songidx8C42F7DA+0;
	*(__int16*)sSI	= sAX
_A149B8B01_159:;
	sAX	= 0x0000;
	asm I1 = _iADPCCACC469+0;
	*(__int16*)sSI	= sAX
_A149B8B01_160:;
	sAX	= 0x5555;
	asm I1 = iSync+0;
	*(__int16*)sSI	= sAX
_A149B8B01_161:;
	sAX	= 0xAAAA;
	asm I1 = uSync+0;
	*(__int16*)sSI	= sAX
_A149B8B01_162:;
_A149B8B01_163:;
	NEARCALL(L0E8FA404_60);
_A149B8B01_164:;
_A149B8B01_165:;
	NEARCALL(L0E8FA404_63);
L0E8FA404_66:;
_A149B8B01_166:;
	return;
_InitialDA4A7CC4_end:;
_A149B8B01_167:;
}

rjmp void _CheckSongLimit402181B4()
{
_A149B8B01_168:;
	////////////////////////////
_A149B8B01_169:;
	asm I1 = _songidx8C42F7DA+0;
	sAX	= *(__int16*)sSI;
	sCX	= 0x0000;
	sfx_CMP_AX_CX_JL();
	if(__je__)	goto L0E8FA404_69;
	goto	L0E8FA404_68;
L0E8FA404_69:;
	////////////////////////////
_A149B8B01_170:;
	asm I1 = mp_songcnt+0;
	sAX	= *(__int16*)sSI;
	sCX	= 0x0001;
	sAX	= sAX - sCX;
	asm I1 = _songidx8C42F7DA+0;
	*(__int16*)sSI	= sAX
	goto L0E8FA404_70;
L0E8FA404_68:;
	////////////////////////////
_A149B8B01_171:;
	asm I1 = _songidx8C42F7DA+0;
	sAX	= *(__int16*)sSI;
	asm I1 = mp_songcnt+0;
	asm CX = rm[I1];
	sfx_CMP_AX_CX_JGE();
	if(__je__)	goto L0E8FA404_72;
	goto	L0E8FA404_71;
L0E8FA404_72:;
	////////////////////////////
_A149B8B01_172:;
	sAX	= 0x0000;
	asm I1 = _songidx8C42F7DA+0;
	*(__int16*)sSI	= sAX
L0E8FA404_71:;
_A149B8B01_173:;
L0E8FA404_70:;
_A149B8B01_174:;
L0E8FA404_67:;
_A149B8B01_175:;
	return;
_CheckSongLimit402181B4_end:;
_A149B8B01_176:;
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
// public _songidx8C42F7DA
// public _InitialDA4A7CC4
// public _CheckSongLimit402181B4
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
// extern _iADPCCACC469:word
// extern _adpch30670376:word
// extern _adpdata32993E3B:proc
// extern GetKey:proc
// extern MixAll:proc
// extern ClearAudioBuffer:proc
// extern DecodeChannel:proc
// extern SyncNow:proc
// extern ADPCM_ChX_init:proc
// extern _playADPCMBACD5AFD:proc
// extern _StopAllADPCM9255018D:proc
// public iSync
// public uSync
// public ginit_code_global_6037E6D5_s
