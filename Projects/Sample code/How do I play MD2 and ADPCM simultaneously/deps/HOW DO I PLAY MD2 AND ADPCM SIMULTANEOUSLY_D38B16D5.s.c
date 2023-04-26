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
__int16 PCMY[32];
__int16 _PLAY59F2A4ED;

// .bss ends _bss

// CODE segment

.code


rjmp void _main();
rjmp void _KeyPlayADPCM2EB28CF3();
rjmp void _KeyNextSong7526CDA5();
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
	__int16 _i_1_2;
	////////////////////////////
_A149B8B01_0:;
_A149B8B01_1:;
_A149B8B01_2:;
	_InitialDA4A7CC4();
_A149B8B01_3:;
_A149B8B01_4:;
	_InitKey3C587B6D();
_A149B8B01_5:;
_A149B8B01_6:;
	md2Initialize();
_A149B8B01_7:;
_A149B8B01_8:;
	ADPCM_ChX_init();
_A149B8B01_9:;
	sAX	= 0x0001;
	asm I1 = CopyToBank+0;
	*(__int16*)sSI	= sAX
_A149B8B01_10:;
	sAX	= 0x0001;
	asm I1 = _PLAY59F2A4ED+0;
	*(__int16*)sSI	= sAX
_A149B8B01_11:;
_A149B8B01_12:;
	asm AX = #MidiData+0;
	asm DX = #MidiData.n2
	asm set DX.b11
	_md2FindMidiEntry757C576D(STACK[sSP + 0], STACK[sSP + 1]);
	sfx_CHECKZERO();
	if(__jz__)	goto L3723FA83_6;
	goto	L3723FA83_5;
L3723FA83_6:;
	////////////////////////////
L3723FA83_8:;
_A149B8B01_13:;
	goto L3723FA83_8;
L3723FA83_7:;
L3723FA83_5:;
_A149B8B01_14:;
_A149B8B01_15:;
_A149B8B01_16:;
	md2InitParameters();
_A149B8B01_17:;
_A149B8B01_18:;
	md2StartBGServe();
_A149B8B01_19:;
	sAX	= 0xFFFF;
	asm I1 = _songidx8C42F7DA+0;
	*(__int16*)sSI	= sAX
_A149B8B01_20:;
	sAX	= 0x003F;
	asm I1 = mp_vol+0;
	*(__int16*)sSI	= sAX
_A149B8B01_21:;
	sAX	= 0x4000;
	asm I1 = mp_tempo+0;
	*(__int16*)sSI	= sAX
_A149B8B01_22:;
	sAX	= 0x0007;
	asm I1 = mp_lop+0;
	*(__int16*)sSI	= sAX
L3723FA83_10:;
_A149B8B01_23:;
_A149B8B01_24:;
	asm	io[ClrWDT] = AR
	////////////////////////////
_A149B8B01_25:;
_A149B8B01_26:;
	_PollingKey3B90E3B1();
_A149B8B01_27:;
	asm I1 = _PLAY59F2A4ED+0;
	sAX	= *(__int16*)sSI;
	sfx_CHECKZERO();
	if(__jnz__)	goto L3723FA83_12;
	goto	L3723FA83_11;
L3723FA83_12:;
	////////////////////////////
_A149B8B01_28:;
_A149B8B01_29:;
	_md2ChkSongEnd0B00CDA5();
	sfx_CHECKZERO();
	if(__jnz__)	goto L3723FA83_14;
	goto	L3723FA83_13;
L3723FA83_14:;
	////////////////////////////
_A149B8B01_30:;
	asm I1 = _songidx8C42F7DA+0;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_songidx8C42F7DA;
	sCX	= *(__int16*)sSI;
	sCX++;
	*(__int16*)sSI	= sCX;
_A149B8B01_31:;
_A149B8B01_32:;
	_CheckSongLimit402181B4();
_A149B8B01_33:;
_A149B8B01_34:;
	asm I1 = _songidx8C42F7DA+0;
	sAX	= *(__int16*)sSI;
	_md2PlaySongF1CD4C9D(STACK[sSP + 0]);
L3723FA83_13:;
_A149B8B01_35:;
L3723FA83_11:;
_A149B8B01_36:;
_A149B8B01_37:;
_A149B8B01_38:;
	SyncNow();
	sfx_CHECKZERO();
	if(__jz__)	goto L3723FA83_16;
	goto	L3723FA83_15;
L3723FA83_16:;
_A149B8B01_39:;
	goto L3723FA83_10;
L3723FA83_15:;
_A149B8B01_40:;
_A149B8B01_41:;
_A149B8B01_42:;
	_md2DoRoutine82B98B9D();
_A149B8B01_43:;
	asm AX = _adpch30670376+0;
	asm I1 = ADPCM_Tmpi+0;
	*(__int16*)sSI	= sAX
_A149B8B01_44:;
_A149B8B01_45:;
	ClearAudioBuffer();
_A149B8B01_46:;
	_i_1_2+0	= 0x04;
L3723FA83_18:;
_A149B8B01_47:;
	sSI	= (int)&_i_1_2;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_i_1_2;
	asm AR = 0x0001;
	sCX	= *(__int16*)sSI;
	asm rm[I1] = CX - AR;
	sfx_CHECKZERO();
	if(__jnz__)	goto L3723FA83_19;
	goto	L3723FA83_17;
L3723FA83_19:;
	////////////////////////////
_A149B8B01_48:;
_A149B8B01_49:;
	DecodeChannel();
_A149B8B01_50:;
	asm I1 = ADPCM_Tmpi+0;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&ADPCM_Tmpi;
	sCX	= *(__int16*)sSI;
	asm AR = 0x0012;
	asm rm[I1] = CX + AR;
	goto L3723FA83_18;
L3723FA83_17:;
_A149B8B01_51:;
_A149B8B01_52:;
	MixAll();
	goto L3723FA83_10;
L3723FA83_9:;
L3723FA83_4:;
_A149B8B01_53:;
	return;
_main_end:;
_A149B8B01_54:;
}

rjmp void _KeyPlayADPCM2EB28CF3()
{
_A149B8B01_55:;
	////////////////////////////
_A149B8B01_56:;
_A149B8B01_57:;
	md2StopSong();
_A149B8B01_58:;
	sAX	= 0x0000;
	asm I1 = _PLAY59F2A4ED+0;
	*(__int16*)sSI	= sAX
_A149B8B01_59:;
	asm AX = #_adpdata32993E3B+0;
	PUSH(sAX);
	asm I1 = _iADPCCACC469+0;
	sAX	= *(__int16*)sSI;
	sCX	= 0x0004;
	sfx_IMUL_AX_CX();
	sCX	= POP();
	sAX	= sAX + sCX;
	sDI	= sAX;
	sAX	= *(__int16*)sDI++;
	sDX	= *(__int16*)sDI--;
	sfx_CHECKZEROLONG();
	if(__jz__)	goto L3723FA83_22;
	goto	L3723FA83_21;
L3723FA83_22:;
_A149B8B01_60:;
	sAX	= 0x0000;
	asm I1 = _iADPCCACC469+0;
	*(__int16*)sSI	= sAX
L3723FA83_21:;
_A149B8B01_61:;
_A149B8B01_62:;
_A149B8B01_63:;
	asm I1 = _iADPCCACC469+0;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_iADPCCACC469;
	sCX	= *(__int16*)sSI;
	sCX++;
	*(__int16*)sSI	= sCX;
	PUSH(sAX);
	_playADPCMBACD5AFD(STACK[sSP + 0]);
	RESTORESP(1);
L3723FA83_20:;
_A149B8B01_64:;
	return;
_KeyPlayADPCM2EB28CF3_end:;
_A149B8B01_65:;
}

rjmp void _KeyNextSong7526CDA5()
{
_A149B8B01_66:;
	////////////////////////////
_A149B8B01_67:;
_A149B8B01_68:;
	_StopAllADPCM9255018D();
_A149B8B01_69:;
_A149B8B01_70:;
	md2StopSong();
_A149B8B01_71:;
	sAX	= 0x0001;
	asm I1 = _PLAY59F2A4ED+0;
	*(__int16*)sSI	= sAX
L3723FA83_23:;
_A149B8B01_72:;
	return;
_KeyNextSong7526CDA5_end:;
_A149B8B01_73:;
}

// .code ends _text

// .data segment _rdata
.data
// .data ends _rdata

// .code segment _ginit
.code

// -=-=-=-=-=-=-=-=-=-=-
naked void ginit_code_HOW_DO_I_PLAY_MD2_AND_ADPCM_SIMULTANEOUSLY_D38B16D5_s(void)
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
	(int)&_KeyPlayADPCM2EB28CF3, 0x0000, 0x0000, (int)&_KeyNextSong7526CDA5, 0x0000, 0x0000, 0x0000, 0x0000, 
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
// extern _lgetcharA15F5ED5:proc
// extern _printcore5FCB8AA5:proc
// extern _sprintfF56D53A5:proc
// extern _vsprintf797441E2:proc
// extern _printf90BA962A:proc
// extern _puts8A5250ED:proc
// extern _putchar110BD76D:proc
// extern _abs99184D55:proc
// extern _labs0F04EE31:proc
// extern _memchr80DECD31:proc
// extern _memchr_sF5519DB1:proc
// extern _memchr_rF5519DB1:proc
// extern _memcmp5BF2F634:proc
// extern _memcmp_ss79B48555:proc
// extern _memcmp_rs79B48555:proc
// extern _memcmp_sr7D7598E2:proc
// extern _memcmp_rr7D7598E2:proc
// extern _memcpy92B53883:proc
// extern _memcpy_ss11425955:proc
// extern _memcpy_rsC35B9889:proc
// extern _memcpy_sr11425955:proc
// extern _memcpy_rrC35B9889:proc
// extern _memmove09BF87F3:proc
// extern _memmove_ssA12B9789:proc
// extern _memmove_rs73325655:proc
// extern _memmove_srA5EA8A3E:proc
// extern _memmove_rr77F34BE2:proc
// extern _memset5A9D755A:proc
// extern _memset_sC3E11DB1:proc
// extern _memset_rC7200006:proc
// extern _strcat5B9BE603:proc
// extern _strcat_ss555D4B89:proc
// extern _strcat_rs87448A55:proc
// extern _strcat_sr519C563E:proc
// extern _strcat_rr838597E2:proc
// extern _strcmp5AF4656D:proc
// extern _strcmp_ss444C82D5:proc
// extern _strcmp_rs444C82D5:proc
// extern _strcmp_sr408D9F62:proc
// extern _strcmp_rr408D9F62:proc
// extern _strcpy489F90DF:proc
// extern _strcpy_ss9E2FE155:proc
// extern _strcpy_rs4C362089:proc
// extern _strcpy_sr9E2FE155:proc
// extern _strcpy_rr4C362089:proc
// extern _strchr5AF4656D:proc
// extern _strchr_sF5DEF009:proc
// extern _strchr_rF5DEF009:proc
// extern _strcspn9DAB6D1D:proc
// extern _strcspn_ss83D93D55:proc
// extern _strcspn_rs51C0FC89:proc
// extern _strcspn_sr83D93D55:proc
// extern _strcspn_rr51C0FC89:proc
// extern _strlen34FDA3AA:proc
// extern _strlen_s7021CB89:proc
// extern _strlen_r74E0D63E:proc
// extern _strncat7D697162:proc
// extern _strncat_ssEADE2809:proc
// extern _strncat_rs38C7E9D5:proc
// extern _strncat_srEE1F35BE:proc
// extern _strncat_rr3C06F462:proc
// extern _strncmp66377E09:proc
// extern _strncmp_ssAB4DA1B1:proc
// extern _strncmp_rs7954606D:proc
// extern _strncmp_srAF8CBC06:proc
// extern _strncmp_rr7D957DDA:proc
// extern _strncpy8DB940B1:proc
// extern _strncpy_ss1AD5A631:proc
// extern _strncpy_rsC8CC67ED:proc
// extern _strncpy_sr1E14BB86:proc
// extern _strncpy_rrCC0D7A5A:proc
// extern _strpbrkAF51DF1D:proc
// extern _strpbrk_ss55B7E6D5:proc
// extern _strpbrk_rs87AE2709:proc
// extern _strpbrk_sr5176FB62:proc
// extern _strpbrk_rr836F3ABE:proc
// extern _strrchr28010F3E:proc
// extern _strrchr_s89378B6D:proc
// extern _strrchr_r8DF696DA:proc
// extern _strspnC9E3621D:proc
// extern _strspn_ssAD3C68ED:proc
// extern _strspn_rs7F25A931:proc
// extern _strspn_srA9FD755A:proc
// extern _strspn_rr7BE4B486:proc
// extern _strstr854578DA:proc
// extern _strstr_ssC699D955:proc
// extern _strstr_rs14801889:proc
// extern _strstr_srC699D955:proc
// extern _strstr_rr14801889:proc
// extern _strtok25660B6D:proc
// extern _strtok_ssDC49D76D:proc
// extern _strtok_rsDC49D76D:proc
// extern _strtok_srDC49D76D:proc
// extern _strtok_rrDC49D76D:proc
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
// extern CopyToBank:word
// extern ADPCM_Tmpi:word
// extern _SDSP_ADPCM_4Bit_SingleCH_decoder94C4563E:proc
// extern ADP4_8_DPTR:word
// extern ADP4_8_Init:proc
// extern _ADP4_8_DecoderE9228389:proc
// extern _songidx8C42F7DA:word
// extern _InitialDA4A7CC4:proc
// extern _CheckSongLimit402181B4:proc
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
// extern ADPCM_CH0_Data:proc
// extern ADPCM_CH1_Data:proc
// extern ADPCM_CH2_Data:proc
// extern ADPCM_CH3_Data:proc
// extern ADPCM_CH4_Data:proc
// extern ADPCM_CH5_Data:proc
// extern ADPCM_CH6_Data:proc
// extern ADPCM_CH7_Data:proc
// extern ADPCM_CH8_Data:proc
// extern MidiData:proc
// extern _InitKey3C587B6D:proc
// extern _PollingKey3B90E3B1:proc
// public _keyfuncF06F3D55
// public PCMY
// extern Pwm_process:proc
// public _PLAY59F2A4ED
// public _main
// public _KeyPlayADPCM2EB28CF3
// public _KeyNextSong7526CDA5
// public ginit_code_HOW_DO_I_PLAY_MD2_AND_ADPCM_SIMULTANEOUSLY_D38B16D5_s
