// SUBC 0.8.9 (build Jun 29 2020 12:00:34)
#include "crt0.h"

// .fast segment _fast
// FAST segment (data with / without initial value)
fast __int16 inbuf;
fast __int16 outbuf;

// .fast ends _fast

// .bss segment _rwdata
// DATA segment (with initial value)

// .bss ends _rwdata

// .bss segment _bss
// BSS segment (data without initial value)
align(128) __int16 PCMY[128];

// .bss ends _bss

// CODE segment

.code


interrupt naked rjmp void _PWM_Entry4EB0B003();
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
interrupt naked rjmp void _PWM_Entry4EB0B003()
{
_A7DF568FE_40:;
_A7DF568FE_41:;
	asm	clr io[INTREQ].b0
_A7DF568FE_42:;
	asm	push AX
_A7DF568FE_43:;
	asm	push I0
_A7DF568FE_44:;
	asm	push CBL
	////////////////////////////
_A7DF568FE_45:;
	io[0x3B]	= 0x0007;
	////////////////////////////
_A7DF568FE_46:;
	asm AX = rm[outbuf+0];
_A7DF568FE_47:;
	asm	AR = AX
_A7DF568FE_48:;
	asm	I0 = AR
_A7DF568FE_49:;
_A7DF568FE_50:;
	read_I0P2();
	io[0x16]	= sAX;
_A7DF568FE_51:;
_A7DF568FE_52:;
	read_I0P2();
	io[0x16]	= sAX;
_A7DF568FE_53:;
_A7DF568FE_54:;
	read_I0P2();
	io[0x16]	= sAX;
_A7DF568FE_55:;
_A7DF568FE_56:;
	read_I0P2();
	io[0x16]	= sAX;
_A7DF568FE_57:;
_A7DF568FE_58:;
	get_I0();
	outbuf+0 = sAX
_A7DF568FE_59:;
	asm	pop CBL
_A7DF568FE_60:;
	asm	pop I0
_A7DF568FE_61:;
	asm	pop AX
L0E8FA404_15:;
_A7DF568FE_62:;
	return;
_PWM_Entry4EB0B003_end:;
_A7DF568FE_63:;
}

rjmp void L0E8FA404_16()
{
_A7DF568FE_64:;
	////////////////////////////
_A7DF568FE_65:;
	io[0x16]	= 0x0000;
_A7DF568FE_66:;
	io[0x16]	= 0x0000;
_A7DF568FE_67:;
	io[0x16]	= 0x0000;
_A7DF568FE_68:;
	io[0x16]	= 0x0000;
_A7DF568FE_69:;
	io[0x36]	= 0x0000;
_A7DF568FE_70:;
	io[0x36]	= 0x0000;
_A7DF568FE_71:;
	io[0x36]	= 0x0000;
_A7DF568FE_72:;
	io[0x36]	= 0x0000;
_A7DF568FE_73:;
	io[0x36]	= 0x0000;
_A7DF568FE_74:;
	io[0x36]	= 0x0000;
_A7DF568FE_75:;
	io[0x36]	= 0x0000;
_A7DF568FE_76:;
	io[0x36]	= 0x0000;
_A7DF568FE_77:;
	io[0x3C]	= 0x003F;
_A7DF568FE_78:;
	sAX	= io[0x3C];
_A7DF568FE_79:;
	asm	set io[MISC].b9
_A7DF568FE_80:;
	asm	set io[MISC].b8
_A7DF568FE_81:;
	asm	set io[MISC].b4
L0E8FA404_18:;
_A7DF568FE_82:;
	return;
L0E8FA404_16_end:;
_A7DF568FE_83:;
}

rjmp void L0E8FA404_19()
{
_A7DF568FE_84:;
	////////////////////////////
_A7DF568FE_85:;
	io[0x04]	= 0x000F;
_A7DF568FE_86:;
	io[0x05]	= 0xFFFF;
_A7DF568FE_87:;
	io[0x07]	= 0x0000;
_A7DF568FE_88:;
	io[0x08]	= 0x0000;
L0E8FA404_21:;
_A7DF568FE_89:;
	return;
L0E8FA404_19_end:;
_A7DF568FE_90:;
}

rjmp void _InitialDA4A7CC4()
{
_A7DF568FE_91:;
	////////////////////////////
_A7DF568FE_92:;
	sAX	= 0xFFFF;
	asm I1 = _iADPCCACC469+0;
	*(__int16*)sSI	= sAX
_A7DF568FE_93:;
	asm AX = PCMY+0;
	inbuf+0 = sAX
_A7DF568FE_94:;
	asm AX = PCMY+0;
	outbuf+0 = sAX
_A7DF568FE_95:;
_A7DF568FE_96:;
	NEARCALL(L0E8FA404_16);
_A7DF568FE_97:;
_A7DF568FE_98:;
	NEARCALL(L0E8FA404_19);
L0E8FA404_22:;
_A7DF568FE_99:;
	return;
_InitialDA4A7CC4_end:;
_A7DF568FE_100:;
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
// extern _lptr_read:proc
// extern _lptr_read32:proc
// extern _lptr_write:proc
// extern _lptr_write32:proc
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
// public inbuf
// public outbuf
// public PCMY
// public _InitialDA4A7CC4
// extern _DoADPCM9CD0E20D:proc
// extern CopyToBank:word
// extern ADPCM_Tmpi:word
// extern _SDSP_ADPCM_4Bit_SingleCH_decoder94C4563E:proc
// extern ADP4_8_DPTR:word
// extern ADP4_8_Init:proc
// extern _ADP4_8_DecoderE9228389:proc
// extern _iADPCCACC469:word
// extern _adpdata32993E3B:proc
// extern _adpch30670376:word
// extern ADPCM_CHX_Init:proc
// extern _playADPCMBACD5AFD:proc
// public _PWM_Entry4EB0B003
// public ginit_code_global_6037E6D5_s
