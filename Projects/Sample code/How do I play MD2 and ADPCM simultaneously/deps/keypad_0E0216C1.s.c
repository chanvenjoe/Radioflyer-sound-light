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
__int16 L5589D4CE_25;
__int16 L5589D4CE_26;
__int16 L5589D4CE_27;

// .bss ends _bss

// CODE segment

.code


rjmp void _InitKey3C587B6D();
rjmp void _PollingKey3B90E3B1();
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
rjmp void _InitKey3C587B6D()
{
_A149B8B01_74:;
	////////////////////////////
_A149B8B01_75:;
	asm clr io[0x04].b0;
_A149B8B01_76:;
	asm clr io[0x04].b1;
_A149B8B01_77:;
	asm clr io[0x04].b2;
_A149B8B01_78:;
	asm clr io[0x04].b3;
_A149B8B01_79:;
	io[0x1E]	= 0x0005;
_A149B8B01_80:;
	sAX	= 0x000F;
	sAX	= sAX | io[0x1F];
	io[0x1F]	= sAX;
_A149B8B01_81:;
	sAX	= 0x0000;
	sSI	= (int)&L5589D4CE_25;
	*(__int16*)sSI	= sAX
_A149B8B01_82:;
	sAX	= 0x0000;
	sSI	= (int)&L5589D4CE_26;
	*(__int16*)sSI	= sAX
_A149B8B01_83:;
	sAX	= 0x0200;
	sSI	= (int)&L5589D4CE_27;
	*(__int16*)sSI	= sAX
L5589D4CE_28:;
_A149B8B01_84:;
	return;
_InitKey3C587B6D_end:;
_A149B8B01_85:;
}

rjmp void L5589D4CE_29()
{
	__int16 _btn_1_2;
	////////////////////////////
_A149B8B01_86:;
_A149B8B01_87:;
	sAX	= 0x000F;
	sAX	= sAX & io[0x07];
	sSI	= (int)&_btn_1_2;
	*(__int16*)sSI	= sAX;
_A149B8B01_88:;
	sSI	= (int)&_btn_1_2;
	sAX	= *(__int16*)sSI;
	goto L5589D4CE_31;
L5589D4CE_31:;
_A149B8B01_89:;
	return;
L5589D4CE_29_end:;
_A149B8B01_90:;
}

rjmp void _PollingKey3B90E3B1()
{
	__int16 _keynow_1_2;
	__int16 _i_1_4;
	__int16 _bits_1_6;
	__int16 _bitp_1_8;
	__int16 _pkey_1_10;
	////////////////////////////
_A149B8B01_91:;
_A149B8B01_92:;
_A149B8B01_93:;
	NEARCALL(L5589D4CE_29);
	sSI	= (int)&_keynow_1_2;
	*(__int16*)sSI	= sAX;
_A149B8B01_94:;
	asm I1 = L5589D4CE_25+0;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_keynow_1_2;
	sCX	= *(__int16*)sSI;
	sfx_CMP_AX_CX_JNE();
	if(__je__)	goto L5589D4CE_34;
	goto	L5589D4CE_33;
L5589D4CE_34:;
	////////////////////////////
_A149B8B01_95:;
	sSI	= (int)&_keynow_1_2;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&L5589D4CE_25;
	*(__int16*)sSI	= sAX
_A149B8B01_96:;
	sAX	= 0x0200;
	sSI	= (int)&L5589D4CE_27;
	*(__int16*)sSI	= sAX
_A149B8B01_97:;
	goto L5589D4CE_32;
L5589D4CE_33:;
_A149B8B01_98:;
_A149B8B01_99:;
	asm I1 = L5589D4CE_27+0;
	sAX	= *(__int16*)sSI;
	sfx_CHECKZERO();
	if(__jnz__)	goto L5589D4CE_36;
	goto	L5589D4CE_35;
L5589D4CE_36:;
	////////////////////////////
_A149B8B01_100:;
	asm I1 = L5589D4CE_27+0;
	sAX	= *(__int16*)sSI;
	sCX	= 0x0001;
	sAX	= sAX - sCX;
	sSI	= (int)&L5589D4CE_27;
	*(__int16*)sSI	= sAX
_A149B8B01_101:;
	goto L5589D4CE_32;
L5589D4CE_35:;
_A149B8B01_102:;
_A149B8B01_103:;
	asm AX = #_keyfuncF06F3D55+0;
	sSI	= (int)&_pkey_1_10;
	*(__int16*)sSI	= sAX;
_A149B8B01_104:;
	sAX	= 0x0200;
	sSI	= (int)&L5589D4CE_27;
	*(__int16*)sSI	= sAX
_A149B8B01_105:;
	asm I1 = L5589D4CE_26+0;
	sAX	= *(__int16*)sSI;
	asm I1 = L5589D4CE_25+0;
	asm AR = rm[I1];
	asm AX = AX ^ AR;
	sSI	= (int)&_bits_1_6;
	*(__int16*)sSI	= sAX;
_A149B8B01_106:;
	asm I1 = L5589D4CE_26+0;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_bitp_1_8;
	*(__int16*)sSI	= sAX;
_A149B8B01_107:;
	asm I1 = L5589D4CE_25+0;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&L5589D4CE_26;
	*(__int16*)sSI	= sAX
_A149B8B01_108:;
	_i_1_4+0	= 0x05;
L5589D4CE_38:;
_A149B8B01_109:;
	sSI	= (int)&_i_1_4;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_i_1_4;
	asm AR = 0x0001;
	sCX	= *(__int16*)sSI;
	asm rm[I1] = CX - AR;
	sfx_CHECKZERO();
	if(__jnz__)	goto L5589D4CE_39;
	goto	L5589D4CE_37;
L5589D4CE_39:;
	////////////////////////////
_A149B8B01_110:;
	sAX	= 0;
	sSI	= (int)&_bits_1_6+0;
	asm AR = rm[I1];
	asm test AR.b0;
	if(__jz__) goto L5589D4CE_41;
	sAX	= 1;
L5589D4CE_41:;
	sfx_CHECKZERO();
	if(__jnz__)	goto L5589D4CE_42;
	goto	L5589D4CE_40;
L5589D4CE_42:;
	////////////////////////////
_A149B8B01_111:;
	sAX	= 0;
	sSI	= (int)&_bitp_1_8+0;
	asm AR = rm[I1];
	asm test AR.b0;
	if(__jz__) goto L5589D4CE_44;
	sAX	= 1;
L5589D4CE_44:;
	sfx_CHECKZERO();
	if(__jnz__)	goto L5589D4CE_45;
	goto	L5589D4CE_43;
L5589D4CE_45:;
	////////////////////////////
_A149B8B01_112:;
	sSI	= (int)&_pkey_1_10;
	sAX	= *(__int16*)sSI;
	sCX	= 0x0002;
	sAX	= sAX + sCX;
	sDI	= sAX;
	sAX	= *(__int16*)sDI;
	sfx_CHECKZERO();
	if(__jnz__)	goto L5589D4CE_47;
	goto	L5589D4CE_46;
L5589D4CE_47:;
_A149B8B01_113:;
	sSI	= (int)&_pkey_1_10;
	sAX	= *(__int16*)sSI;
	sCX	= 0x0002;
	sAX	= sAX + sCX;
	sDI	= sAX;
	sAX	= *(__int16*)sDI;
	sfx_CALL_BY_AX();
L5589D4CE_46:;
_A149B8B01_114:;
	goto L5589D4CE_48;
L5589D4CE_43:;
	////////////////////////////
_A149B8B01_115:;
	sSI	= (int)&_pkey_1_10;
	sAX	= *(__int16*)sSI;
	sDI	= sAX;
	sAX	= *(__int16*)sDI;
	sfx_CHECKZERO();
	if(__jnz__)	goto L5589D4CE_50;
	goto	L5589D4CE_49;
L5589D4CE_50:;
_A149B8B01_116:;
	sSI	= (int)&_pkey_1_10;
	sAX	= *(__int16*)sSI;
	sDI	= sAX;
	sAX	= *(__int16*)sDI;
	sfx_CALL_BY_AX();
L5589D4CE_49:;
_A149B8B01_117:;
L5589D4CE_48:;
_A149B8B01_118:;
	goto L5589D4CE_51;
L5589D4CE_40:;
	////////////////////////////
_A149B8B01_119:;
	sAX	= 0;
	sSI	= (int)&_bitp_1_8+0;
	asm AR = rm[I1];
	asm test AR.b0;
	if(__jz__) goto L5589D4CE_53;
	sAX	= 1;
L5589D4CE_53:;
	sfx_CHECKZERO();
	if(__jnz__)	goto L5589D4CE_54;
	goto	L5589D4CE_52;
L5589D4CE_54:;
	////////////////////////////
_A149B8B01_120:;
	sSI	= (int)&_pkey_1_10;
	sAX	= *(__int16*)sSI;
	sCX	= 0x0001;
	sAX	= sAX + sCX;
	sDI	= sAX;
	sAX	= *(__int16*)sDI;
	sfx_CHECKZERO();
	if(__jnz__)	goto L5589D4CE_56;
	goto	L5589D4CE_55;
L5589D4CE_56:;
_A149B8B01_121:;
	sSI	= (int)&_pkey_1_10;
	sAX	= *(__int16*)sSI;
	sCX	= 0x0001;
	sAX	= sAX + sCX;
	sDI	= sAX;
	sAX	= *(__int16*)sDI;
	sfx_CALL_BY_AX();
L5589D4CE_55:;
_A149B8B01_122:;
L5589D4CE_52:;
_A149B8B01_123:;
L5589D4CE_51:;
_A149B8B01_124:;
_A149B8B01_125:;
	sSI	= (int)&_bits_1_6;
	sAX	= *(__int16*)sSI;
	asm sra AX, 1;
	sSI	= (int)&_bits_1_6;
	*(__int16*)sSI	= sAX;
_A149B8B01_126:;
	sSI	= (int)&_bitp_1_8;
	sAX	= *(__int16*)sSI;
	asm sra AX, 1;
	sSI	= (int)&_bitp_1_8;
	*(__int16*)sSI	= sAX;
_A149B8B01_127:;
	sSI	= (int)&_pkey_1_10;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_pkey_1_10;
	asm AR = 0x0003;
	sCX	= *(__int16*)sSI;
	asm rm[I1] = CX + AR;
	goto L5589D4CE_38;
L5589D4CE_37:;
L5589D4CE_32:;
_A149B8B01_128:;
	return;
_PollingKey3B90E3B1_end:;
_A149B8B01_129:;
}

// .code ends _text

// .code segment _ginit
.code

// -=-=-=-=-=-=-=-=-=-=-
naked void ginit_code_keypad_0E0216C1_s(void)
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
// extern _lgetcharA15F5ED5:proc
// extern _printcore5FCB8AA5:proc
// extern _sprintfF56D53A5:proc
// extern _vsprintf797441E2:proc
// extern _printf90BA962A:proc
// extern _puts8A5250ED:proc
// extern _putchar110BD76D:proc
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
// extern _songidx8C42F7DA:word
// extern _InitialDA4A7CC4:proc
// extern _CheckSongLimit402181B4:proc
// public _InitKey3C587B6D
// public _PollingKey3B90E3B1
// extern _keyfuncF06F3D55:proc
// public ginit_code_keypad_0E0216C1_s
