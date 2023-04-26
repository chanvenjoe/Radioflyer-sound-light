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
__int16 L5589D4CE_62;
__int16 L5589D4CE_63;
__int16 L5589D4CE_64;

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
_AFFC519C6_187:;
	////////////////////////////
_AFFC519C6_188:;
	asm clr io[0x04].b0;
_AFFC519C6_189:;
	asm clr io[0x04].b1;
_AFFC519C6_190:;
	asm clr io[0x04].b2;
_AFFC519C6_191:;
	asm clr io[0x04].b3;
_AFFC519C6_192:;
	io[0x1E]	= 0x0005;
_AFFC519C6_193:;
	sAX	= 0x000F;
	sAX	= sAX | io[0x1F];
	io[0x1F]	= sAX;
_AFFC519C6_194:;
	sAX	= 0x0000;
	sSI	= (int)&L5589D4CE_62;
	*(__int16*)sSI	= sAX
_AFFC519C6_195:;
	sAX	= 0x0000;
	sSI	= (int)&L5589D4CE_63;
	*(__int16*)sSI	= sAX
_AFFC519C6_196:;
	sAX	= 0x0200;
	sSI	= (int)&L5589D4CE_64;
	*(__int16*)sSI	= sAX
L5589D4CE_65:;
_AFFC519C6_197:;
	return;
_InitKey3C587B6D_end:;
_AFFC519C6_198:;
}

rjmp void L5589D4CE_66()
{
	__int16 _btn_1_2;
	////////////////////////////
_AFFC519C6_199:;
_AFFC519C6_200:;
	sAX	= 0x000F;
	sAX	= sAX & io[0x07];
	sSI	= (int)&_btn_1_2;
	*(__int16*)sSI	= sAX;
_AFFC519C6_201:;
	sSI	= (int)&_btn_1_2;
	sAX	= *(__int16*)sSI;
	goto L5589D4CE_68;
L5589D4CE_68:;
_AFFC519C6_202:;
	return;
L5589D4CE_66_end:;
_AFFC519C6_203:;
}

rjmp void _PollingKey3B90E3B1()
{
	__int16 _keynow_1_2;
	__int16 _i_1_4;
	__int16 _bits_1_6;
	__int16 _bitp_1_8;
	__int16 _pkey_1_10;
	////////////////////////////
_AFFC519C6_204:;
_AFFC519C6_205:;
_AFFC519C6_206:;
	NEARCALL(L5589D4CE_66);
	sSI	= (int)&_keynow_1_2;
	*(__int16*)sSI	= sAX;
_AFFC519C6_207:;
	asm I1 = L5589D4CE_62+0;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_keynow_1_2;
	sCX	= *(__int16*)sSI;
	sfx_CMP_AX_CX_JNE();
	if(__je__)	goto L5589D4CE_71;
	goto	L5589D4CE_70;
L5589D4CE_71:;
	////////////////////////////
_AFFC519C6_208:;
	sSI	= (int)&_keynow_1_2;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&L5589D4CE_62;
	*(__int16*)sSI	= sAX
_AFFC519C6_209:;
	sAX	= 0x0200;
	sSI	= (int)&L5589D4CE_64;
	*(__int16*)sSI	= sAX
_AFFC519C6_210:;
	goto L5589D4CE_69;
L5589D4CE_70:;
_AFFC519C6_211:;
_AFFC519C6_212:;
	asm I1 = L5589D4CE_64+0;
	sAX	= *(__int16*)sSI;
	sfx_CHECKZERO();
	if(__jnz__)	goto L5589D4CE_73;
	goto	L5589D4CE_72;
L5589D4CE_73:;
	////////////////////////////
_AFFC519C6_213:;
	asm I1 = L5589D4CE_64+0;
	sAX	= *(__int16*)sSI;
	sCX	= 0x0001;
	sAX	= sAX - sCX;
	sSI	= (int)&L5589D4CE_64;
	*(__int16*)sSI	= sAX
_AFFC519C6_214:;
	goto L5589D4CE_69;
L5589D4CE_72:;
_AFFC519C6_215:;
_AFFC519C6_216:;
	asm AX = #_keyfuncF06F3D55+0;
	sSI	= (int)&_pkey_1_10;
	*(__int16*)sSI	= sAX;
_AFFC519C6_217:;
	sAX	= 0x0200;
	sSI	= (int)&L5589D4CE_64;
	*(__int16*)sSI	= sAX
_AFFC519C6_218:;
	asm I1 = L5589D4CE_63+0;
	sAX	= *(__int16*)sSI;
	asm I1 = L5589D4CE_62+0;
	asm AR = rm[I1];
	asm AX = AX ^ AR;
	sSI	= (int)&_bits_1_6;
	*(__int16*)sSI	= sAX;
_AFFC519C6_219:;
	asm I1 = L5589D4CE_63+0;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_bitp_1_8;
	*(__int16*)sSI	= sAX;
_AFFC519C6_220:;
	asm I1 = L5589D4CE_62+0;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&L5589D4CE_63;
	*(__int16*)sSI	= sAX
_AFFC519C6_221:;
	_i_1_4+0	= 0x05;
L5589D4CE_75:;
_AFFC519C6_222:;
	sSI	= (int)&_i_1_4;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_i_1_4;
	asm AR = 0x0001;
	sCX	= *(__int16*)sSI;
	asm rm[I1] = CX - AR;
	sfx_CHECKZERO();
	if(__jnz__)	goto L5589D4CE_76;
	goto	L5589D4CE_74;
L5589D4CE_76:;
	////////////////////////////
_AFFC519C6_223:;
	sAX	= 0;
	sSI	= (int)&_bits_1_6+0;
	asm AR = rm[I1];
	asm test AR.b0;
	if(__jz__) goto L5589D4CE_78;
	sAX	= 1;
L5589D4CE_78:;
	sfx_CHECKZERO();
	if(__jnz__)	goto L5589D4CE_79;
	goto	L5589D4CE_77;
L5589D4CE_79:;
	////////////////////////////
_AFFC519C6_224:;
	sAX	= 0;
	sSI	= (int)&_bitp_1_8+0;
	asm AR = rm[I1];
	asm test AR.b0;
	if(__jz__) goto L5589D4CE_81;
	sAX	= 1;
L5589D4CE_81:;
	sfx_CHECKZERO();
	if(__jnz__)	goto L5589D4CE_82;
	goto	L5589D4CE_80;
L5589D4CE_82:;
	////////////////////////////
_AFFC519C6_225:;
	sSI	= (int)&_pkey_1_10;
	sAX	= *(__int16*)sSI;
	sCX	= 0x0002;
	sAX	= sAX + sCX;
	sDI	= sAX;
	sAX	= *(__int16*)sDI;
	sfx_CHECKZERO();
	if(__jnz__)	goto L5589D4CE_84;
	goto	L5589D4CE_83;
L5589D4CE_84:;
_AFFC519C6_226:;
	sSI	= (int)&_pkey_1_10;
	sAX	= *(__int16*)sSI;
	sCX	= 0x0002;
	sAX	= sAX + sCX;
	sDI	= sAX;
	sAX	= *(__int16*)sDI;
	sfx_CALL_BY_AX();
L5589D4CE_83:;
_AFFC519C6_227:;
	goto L5589D4CE_85;
L5589D4CE_80:;
	////////////////////////////
_AFFC519C6_228:;
	sSI	= (int)&_pkey_1_10;
	sAX	= *(__int16*)sSI;
	sDI	= sAX;
	sAX	= *(__int16*)sDI;
	sfx_CHECKZERO();
	if(__jnz__)	goto L5589D4CE_87;
	goto	L5589D4CE_86;
L5589D4CE_87:;
_AFFC519C6_229:;
	sSI	= (int)&_pkey_1_10;
	sAX	= *(__int16*)sSI;
	sDI	= sAX;
	sAX	= *(__int16*)sDI;
	sfx_CALL_BY_AX();
L5589D4CE_86:;
_AFFC519C6_230:;
L5589D4CE_85:;
_AFFC519C6_231:;
	goto L5589D4CE_88;
L5589D4CE_77:;
	////////////////////////////
_AFFC519C6_232:;
	sAX	= 0;
	sSI	= (int)&_bitp_1_8+0;
	asm AR = rm[I1];
	asm test AR.b0;
	if(__jz__) goto L5589D4CE_90;
	sAX	= 1;
L5589D4CE_90:;
	sfx_CHECKZERO();
	if(__jnz__)	goto L5589D4CE_91;
	goto	L5589D4CE_89;
L5589D4CE_91:;
	////////////////////////////
_AFFC519C6_233:;
	sSI	= (int)&_pkey_1_10;
	sAX	= *(__int16*)sSI;
	sCX	= 0x0001;
	sAX	= sAX + sCX;
	sDI	= sAX;
	sAX	= *(__int16*)sDI;
	sfx_CHECKZERO();
	if(__jnz__)	goto L5589D4CE_93;
	goto	L5589D4CE_92;
L5589D4CE_93:;
_AFFC519C6_234:;
	sSI	= (int)&_pkey_1_10;
	sAX	= *(__int16*)sSI;
	sCX	= 0x0001;
	sAX	= sAX + sCX;
	sDI	= sAX;
	sAX	= *(__int16*)sDI;
	sfx_CALL_BY_AX();
L5589D4CE_92:;
_AFFC519C6_235:;
L5589D4CE_89:;
_AFFC519C6_236:;
L5589D4CE_88:;
_AFFC519C6_237:;
_AFFC519C6_238:;
	sSI	= (int)&_bits_1_6;
	sAX	= *(__int16*)sSI;
	asm sra AX, 1;
	sSI	= (int)&_bits_1_6;
	*(__int16*)sSI	= sAX;
_AFFC519C6_239:;
	sSI	= (int)&_bitp_1_8;
	sAX	= *(__int16*)sSI;
	asm sra AX, 1;
	sSI	= (int)&_bitp_1_8;
	*(__int16*)sSI	= sAX;
_AFFC519C6_240:;
	sSI	= (int)&_pkey_1_10;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_pkey_1_10;
	asm AR = 0x0003;
	sCX	= *(__int16*)sSI;
	asm rm[I1] = CX + AR;
	goto L5589D4CE_75;
L5589D4CE_74:;
L5589D4CE_69:;
_AFFC519C6_241:;
	return;
_PollingKey3B90E3B1_end:;
_AFFC519C6_242:;
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
// extern _flags026116D5:word
// extern _songidx8C42F7DA:word
// extern _ticksA7263C09:long
// extern _sub_vol980B1B83:word
// extern subdat0:proc
// extern subdat1:proc
// extern _InitialDA4A7CC4:proc
// extern _CheckSongLimit402181B4:proc
// extern _RampUpFF7996DA:proc
// extern _RampDown1D382EDA:proc
// extern _ToneVolCtrl03CF265A:proc
// extern ChangePWMIntToDynCache:proc
// public _InitKey3C587B6D
// public _PollingKey3B90E3B1
// extern _keyfuncF06F3D55:proc
// public ginit_code_keypad_0E0216C1_s
