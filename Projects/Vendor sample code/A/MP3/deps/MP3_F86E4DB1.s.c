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
__int16 _MyDataPnt;
__int16 MyEnd;
__int16 R_bts_ch0_get_ix;
__int16 PCMYIN_PTR;
__int16 PCMYOU_PTR;
__int16 PCMIN;
align(512) __int16 PCMY[512];

// .bss ends _bss

// CODE segment

.code


naked void MyData();
interrupt void _PWM99B23D7D();
void _main();
void _WaitPCM_Empty_size53398B9D();
void _INITIAL0C18377D();
void GetMp3data();
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
interrupt void _PWM99B23D7D()
{
	__int16 _i_1_2;
	////////////////////////////
_AAD201390_0:;
_AAD201390_1:;
	asm	clr io[INTREQ].b0
_AAD201390_2:;
	asm	push I0
_AAD201390_3:;
	asm	push CBL
	////////////////////////////
_AAD201390_4:;
	sAX	= 0x0009;
_AAD201390_5:;
	asm	AR = AX
_AAD201390_6:;
	asm	CBL = AR
	////////////////////////////
_AAD201390_7:;
	asm I1 = PCMYOU_PTR+0;
	sAX	= *(__int16*)sSI;
_AAD201390_8:;
	asm	AR = AX
_AAD201390_9:;
	asm	I0 = AR
_AAD201390_10:;
	_i_1_2+0	= 0x00;
LEAF7732F_3:;
	sSI	= (int)&_i_1_2;
	sAX	= *(__int16*)sSI;
	sCX	= 0x0004;
	sfx_CMP_AX_CX_JL();
	if(__je__)	goto LEAF7732F_7;
	goto	LEAF7732F_5;
LEAF7732F_7:;
	goto LEAF7732F_4;
LEAF7732F_6:;
	sSI	= (int)&_i_1_2;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_i_1_2;
	asm AR = 0x0001;
	sCX	= *(__int16*)sSI;
	asm rm[I1] = CX + AR;
	goto LEAF7732F_3;
LEAF7732F_4:;
	////////////////////////////
_AAD201390_11:;
_AAD201390_12:;
	FA();
	sfx_CHECKZERO();
	if(__jz__)	goto LEAF7732F_9;
	goto	LEAF7732F_8;
LEAF7732F_9:;
	////////////////////////////
_AAD201390_13:;
_AAD201390_14:;
	read_I0P();
_AAD201390_15:;
	asm	AR = AX
_AAD201390_16:;
	asm	FLTI = AR
LEAF7732F_8:;
_AAD201390_17:;
	////////////////////////////
_AAD201390_18:;
_AAD201390_19:;
	get_FLTO();
_AAD201390_20:;
	asm	AR = AX
_AAD201390_21:;
	asm	io[DACL] = AR
	goto LEAF7732F_6;
LEAF7732F_5:;
_AAD201390_22:;
_AAD201390_23:;
_AAD201390_24:;
	get_I0();
	asm I1 = PCMYOU_PTR+0;
	*(__int16*)sSI	= sAX
_AAD201390_25:;
	asm	pop CBL
_AAD201390_26:;
	asm	pop I0
LEAF7732F_2:;
_AAD201390_27:;
	return;
_PWM99B23D7D_end:;
_AAD201390_28:;
}

void _main()
{
_AAD201390_29:;
	////////////////////////////
_AAD201390_30:;
_AAD201390_31:;
	_INITIAL0C18377D();
LEAF7732F_12:;
_AAD201390_32:;
_AAD201390_33:;
	asm	io[ClrWDT] = AR
	////////////////////////////
_AAD201390_34:;
_AAD201390_35:;
	_WaitPCM_Empty_size53398B9D();
	sCX	= 0x0000;
	sfx_CMP_AX_CX_JL();
	if(__je__)	goto LEAF7732F_14;
	goto	LEAF7732F_13;
LEAF7732F_14:;
_AAD201390_36:;
	goto LEAF7732F_12;
LEAF7732F_13:;
_AAD201390_37:;
_AAD201390_38:;
_AAD201390_39:;
	MP3_Ch0dec();
	sfx_CHECKZERO();
	if(__jnz__)	goto LEAF7732F_16;
	goto	LEAF7732F_15;
LEAF7732F_16:;
_AAD201390_40:;
_AAD201390_41:;
	_INITIAL0C18377D();
LEAF7732F_15:;
_AAD201390_42:;
	goto LEAF7732F_12;
LEAF7732F_11:;
LEAF7732F_10:;
_AAD201390_43:;
	return;
_main_end:;
_AAD201390_44:;
}

void _WaitPCM_Empty_size53398B9D()
{
	__int16 _x_1_2;
	////////////////////////////
_AAD201390_45:;
_AAD201390_46:;
	asm I1 = PCMYOU_PTR+0;
	sAX	= *(__int16*)sSI;
	asm I1 = PCMYIN_PTR+0;
	sCX	= *(__int16*)sSI;
	sAX	= sAX - sCX;
	// mark sfx_SHR_AX();
	sSI	= (int)&_x_1_2;
	*(__int16*)sSI	= sAX;
_AAD201390_47:;
	sSI	= (int)&_x_1_2;
	sAX	= *(__int16*)sSI;
	sCX	= 0x0000;
	sfx_CMP_AX_CX_JL();
	if(__je__)	goto LEAF7732F_19;
	goto	LEAF7732F_18;
LEAF7732F_19:;
	////////////////////////////
_AAD201390_48:;
	sAX	= 0x01FF;
	sSI	= (int)&_x_1_2;
	sCX	= *(__int16*)sSI;
	sAX	= sAX & sCX;
	sSI	= (int)&_x_1_2;
	*(__int16*)sSI	= sAX;
LEAF7732F_18:;
_AAD201390_49:;
_AAD201390_50:;
	sSI	= (int)&_x_1_2;
	sAX	= *(__int16*)sSI;
	sCX	= 0x0121;
	sAX	= sAX - sCX;
	sSI	= (int)&_x_1_2;
	*(__int16*)sSI	= sAX;
_AAD201390_51:;
	sSI	= (int)&_x_1_2;
	sAX	= *(__int16*)sSI;
	goto LEAF7732F_17;
LEAF7732F_17:;
_AAD201390_52:;
	return;
_WaitPCM_Empty_size53398B9D_end:;
_AAD201390_53:;
}

void _INITIAL0C18377D()
{
	__int16 _i_1_2;
	////////////////////////////
_AAD201390_54:;
	////////////////////////////
_AAD201390_55:;
	sAX	= 0x0000;
_AAD201390_56:;
	asm	AR = AX
_AAD201390_57:;
	asm	FLTI = AR
	////////////////////////////
_AAD201390_58:;
	sAX	= 0x0000;
_AAD201390_59:;
	asm	AR = AX
_AAD201390_60:;
	asm	FLTI = AR
	////////////////////////////
_AAD201390_61:;
	sAX	= 0x0000;
_AAD201390_62:;
	asm	AR = AX
_AAD201390_63:;
	asm	FLTI = AR
	////////////////////////////
_AAD201390_64:;
	sAX	= 0x0000;
_AAD201390_65:;
	asm	AR = AX
_AAD201390_66:;
	asm	FLTI = AR
	////////////////////////////
_AAD201390_67:;
	sAX	= 0x0000;
_AAD201390_68:;
	asm	AR = AX
_AAD201390_69:;
	asm	FLTA = AR
_AAD201390_70:;
	_i_1_2+0	= 0x00;
LEAF7732F_21:;
	sSI	= (int)&_i_1_2;
	sAX	= *(__int16*)sSI;
	sCX	= 0x0200;
	sfx_CMP_AX_CX_JL();
	if(__je__)	goto LEAF7732F_25;
	goto	LEAF7732F_23;
LEAF7732F_25:;
	goto LEAF7732F_22;
LEAF7732F_24:;
	sSI	= (int)&_i_1_2;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_i_1_2;
	asm AR = 0x0001;
	sCX	= *(__int16*)sSI;
	asm rm[I1] = CX + AR;
	goto LEAF7732F_21;
LEAF7732F_22:;
_AAD201390_71:;
	asm AX = PCMY+0;
	PUSH(sAX);
	sSI	= (int)&_i_1_2;
	sAX	= *(__int16*)sSI;
	// mark sAX = sAX << 1;
	sCX	= POP();
	sAX	= sAX + sCX;
	PUSH(sAX);
	sAX	= 0x0000;
	sSI	= POP();
	*(__int16*)sSI	= sAX;
	goto LEAF7732F_24;
LEAF7732F_23:;
_AAD201390_72:;
_AAD201390_73:;
	sAX	= 0x0000;
	asm I1 = File_flag+0;
	*(__int16*)sSI	= sAX
_AAD201390_74:;
	asm AX = #MyData+0;
	asm I1 = _MyDataPnt+0;
	*(__int16*)sSI	= sAX
_AAD201390_75:;
	asm AX = #MyData+0;
	asm I1 = R_bts_ch0_get_ix+0;
	*(__int16*)sSI	= sAX
_AAD201390_76:;
	_i_1_2+0	= 0x3616;
_AAD201390_77:;
	asm I1 = _MyDataPnt+0;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_i_1_2;
	sCX	= *(__int16*)sSI;
	// mark sCX = sCX << 1;
	sAX	= sAX + sCX;
	asm I1 = MyEnd+0;
	*(__int16*)sSI	= sAX
_AAD201390_78:;
	asm	AR = PASR,0
_AAD201390_79:;
	asm AX = PCMY+0;
	asm I1 = PCMYIN_PTR+0;
	*(__int16*)sSI	= sAX
_AAD201390_80:;
	asm AX = PCMY+0;
	asm I1 = PCMYOU_PTR+0;
	*(__int16*)sSI	= sAX
	////////////////////////////
_AAD201390_81:;
	sAX	= 0x003F;
_AAD201390_82:;
	asm	AR = AX
_AAD201390_83:;
	asm	FLTG = AR
	////////////////////////////
_AAD201390_84:;
	sAX	= 0x1FFF;
_AAD201390_85:;
	asm	AR = AX
_AAD201390_86:;
	asm	FLTP = AR
	////////////////////////////
_AAD201390_87:;
	sAX	= 0x0000;
_AAD201390_88:;
	asm	AR = AX
_AAD201390_89:;
	asm	CBL = AR
_AAD201390_90:;
_AAD201390_91:;
	GetMp3data();
_AAD201390_92:;
_AAD201390_93:;
	MP3_ch0InitV07();
_AAD201390_94:;
	asm	set io[INTENA].b0
_AAD201390_95:;
	asm	eni
LEAF7732F_20:;
_AAD201390_96:;
	return;
_INITIAL0C18377D_end:;
_AAD201390_97:;
}

void GetMp3data()
{
	__int16 _i_1_2;
	__int16 _j_1_4;
	////////////////////////////
_AAD201390_98:;
_AAD201390_99:;
	asm AX = mp3Data+0;
	sSI	= (int)&_j_1_4;
	*(__int16*)sSI	= sAX;
_AAD201390_100:;
	sSI	= (int)&_j_1_4;
	sAX	= *(__int16*)sSI;
	sCX	= 0x0005;
	// mark sCX = sCX << 1;
	sAX	= sAX + sCX;
	sSI	= (int)&_j_1_4;
	*(__int16*)sSI	= sAX;
_AAD201390_101:;
	sSI	= (int)&_j_1_4;
	sAX	= *(__int16*)sSI;
	asm I1 = PCMIN1_PTR+0;
	*(__int16*)sSI	= sAX
_AAD201390_102:;
	_i_1_2+0	= 0x00;
LEAF7732F_27:;
	sSI	= (int)&_i_1_2;
	sAX	= *(__int16*)sSI;
	sCX	= 0x0100;
	sfx_CMP_AX_CX_JL();
	if(__je__)	goto LEAF7732F_31;
	goto	LEAF7732F_29;
LEAF7732F_31:;
	goto LEAF7732F_28;
LEAF7732F_30:;
	sSI	= (int)&_i_1_2;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_i_1_2;
	asm AR = 0x0001;
	sCX	= *(__int16*)sSI;
	asm rm[I1] = CX + AR;
	goto LEAF7732F_27;
LEAF7732F_28:;
	////////////////////////////
_AAD201390_103:;
	sSI	= (int)&_j_1_4;
	sAX	= *(__int16*)sSI;
	PUSH(sAX);
	asm I1 = _MyDataPnt+0;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_MyDataPnt;
	sCX	= *(__int16*)sSI;
	sCX++;
	*(__int16*)sSI	= sCX;
	sDI	= sAX;
	sAX	= *(__int16*)sDI;
	sSI	= POP();
	*(__int16*)sSI	= sAX;
	sSI	= (int)&_j_1_4;
	asm AR = 0x0001;
	sAX	= *(__int16*)sSI;
	asm rm[I1] = AX + AR;
	goto LEAF7732F_30;
LEAF7732F_29:;
_AAD201390_104:;
_AAD201390_105:;
	asm I1 = _MyDataPnt+0;
	sAX	= *(__int16*)sSI;
	asm I1 = MyEnd+0;
	asm CX = rm[I1];
	sfx_CMP_AX_CX_JA();
	if(__je__)	goto LEAF7732F_33;
	goto	LEAF7732F_32;
LEAF7732F_33:;
	////////////////////////////
_AAD201390_106:;
	sAX	= 0x0008;
	asm I1 = File_flag+0;
	asm AR = rm[I1];
	asm AX = AX | AR;
	asm I1 = File_flag+0;
	*(__int16*)sSI	= sAX
LEAF7732F_32:;
_AAD201390_107:;
LEAF7732F_26:;
_AAD201390_108:;
	return;
GetMp3data_end:;
_AAD201390_109:;
}

// .code ends _text

// .code segment _ginit
.code

// -=-=-=-=-=-=-=-=-=-=-
naked void ginit_code_MP3_F86E4DB1_s(void)
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
naked void MyData()
{
	asm	DW "demo.mp3"
}


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
// public _MyDataPnt
// public MyEnd
// public R_bts_ch0_get_ix
// public PCMYIN_PTR
// public PCMYOU_PTR
// public PCMIN
// public PCMY
// extern mp3Data:word
// extern File_flag:word
// extern PCMIN1_PTR:word
// extern MP3_Ch0dec:proc
// extern MP3_ch0InitV07:proc
// public _WaitPCM_Empty_size53398B9D
// public GetMp3data
// public _INITIAL0C18377D
// public MyData
// public _PWM99B23D7D
// public _main
// public ginit_code_MP3_F86E4DB1_s
