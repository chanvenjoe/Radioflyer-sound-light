// SUBC 0.8.12 (build Apr 11 2022 16:13:40)
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
_A92306520_0:;
_A92306520_1:;
	asm	clr io[INTREQ].b0
_A92306520_2:;
	asm	push I0
_A92306520_3:;
	asm	push CBL
	////////////////////////////
_A92306520_4:;
	sAX	= 0x0009;
_A92306520_5:;
	asm	AR = AX
_A92306520_6:;
	asm	CBL = AR
	////////////////////////////
	////////////////////////////
_A92306520_7:;
	asm I1 = PCMYOU_PTR+0;
	sAX	= *(__int16*)sSI;
_A92306520_8:;
	asm	AR = AX
_A92306520_9:;
	asm	I0 = AR
	////////////////////////////
	////////////////////////////
_A92306520_10:;
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
_A92306520_11:;
_A92306520_12:;
	FA();
	sfx_CHECKZERO();
	if(__jz__)	goto LEAF7732F_9;
	goto	LEAF7732F_8;
LEAF7732F_9:;
	////////////////////////////
_A92306520_13:;
_A92306520_14:;
	read_I0P();
_A92306520_15:;
	asm	AR = AX
_A92306520_16:;
	asm	FLTI = AR
	////////////////////////////
	////////////////////////////
LEAF7732F_8:;
_A92306520_17:;
	////////////////////////////
_A92306520_18:;
_A92306520_19:;
	get_FLTO();
_A92306520_20:;
	asm	AR = AX
_A92306520_21:;
	asm	io[DACL] = AR
	////////////////////////////
_A92306520_22:;
	goto LEAF7732F_6;
LEAF7732F_5:;
_A92306520_23:;
_A92306520_24:;
	get_I0();
	asm I1 = PCMYOU_PTR+0;
	*(__int16*)sSI	= sAX
_A92306520_25:;
	asm	pop CBL
_A92306520_26:;
	asm	pop I0
LEAF7732F_2:;
_A92306520_27:;
	return;
_PWM99B23D7D_end:;
_A92306520_28:;
}

void _main()
{
_A92306520_29:;
	////////////////////////////
_A92306520_30:;
_A92306520_31:;
	_INITIAL0C18377D();
LEAF7732F_12:;
_A92306520_32:;
_A92306520_33:;
	asm	io[ClrWDT] = AR
	////////////////////////////
_A92306520_34:;
_A92306520_35:;
	_WaitPCM_Empty_size53398B9D();
	sCX	= 0x0000;
	sfx_CMP_AX_CX_JL();
	if(__je__)	goto LEAF7732F_14;
	goto	LEAF7732F_13;
LEAF7732F_14:;
_A92306520_36:;
	goto LEAF7732F_12;
LEAF7732F_13:;
_A92306520_37:;
_A92306520_38:;
_A92306520_39:;
	MP3_Ch0dec();
	sfx_CHECKZERO();
	if(__jnz__)	goto LEAF7732F_16;
	goto	LEAF7732F_15;
LEAF7732F_16:;
_A92306520_40:;
_A92306520_41:;
	_INITIAL0C18377D();
LEAF7732F_15:;
_A92306520_42:;
_A92306520_43:;
	goto LEAF7732F_12;
LEAF7732F_11:;
LEAF7732F_10:;
_A92306520_44:;
	return;
_main_end:;
_A92306520_45:;
}

void _WaitPCM_Empty_size53398B9D()
{
	__int16 _x_1_2;
	////////////////////////////
_A92306520_46:;
	////////////////////////////
_A92306520_47:;
	asm I1 = PCMYOU_PTR+0;
	sAX	= *(__int16*)sSI;
	asm I1 = PCMYIN_PTR+0;
	sCX	= *(__int16*)sSI;
	sAX	= sAX - sCX;
	// mark sfx_SHR_AX();
	sSI	= (int)&_x_1_2;
	*(__int16*)sSI	= sAX;
_A92306520_48:;
	sSI	= (int)&_x_1_2;
	sAX	= *(__int16*)sSI;
	sCX	= 0x0000;
	sfx_CMP_AX_CX_JL();
	if(__je__)	goto LEAF7732F_19;
	goto	LEAF7732F_18;
LEAF7732F_19:;
	////////////////////////////
_A92306520_49:;
	sAX	= 0x01FF;
	sSI	= (int)&_x_1_2;
	sCX	= *(__int16*)sSI;
	sAX	= sAX & sCX;
	sSI	= (int)&_x_1_2;
	*(__int16*)sSI	= sAX;
LEAF7732F_18:;
_A92306520_50:;
_A92306520_51:;
	sSI	= (int)&_x_1_2;
	sAX	= *(__int16*)sSI;
	sCX	= 0x0121;
	sAX	= sAX - sCX;
	sSI	= (int)&_x_1_2;
	*(__int16*)sSI	= sAX;
_A92306520_52:;
	sSI	= (int)&_x_1_2;
	sAX	= *(__int16*)sSI;
	goto LEAF7732F_17;
LEAF7732F_17:;
_A92306520_53:;
	return;
_WaitPCM_Empty_size53398B9D_end:;
_A92306520_54:;
}

void _INITIAL0C18377D()
{
	__int16 _i_1_2;
	////////////////////////////
_A92306520_55:;
	////////////////////////////
_A92306520_56:;
	sAX	= 0x0000;
_A92306520_57:;
	asm	AR = AX
_A92306520_58:;
	asm	FLTI = AR
	////////////////////////////
	////////////////////////////
_A92306520_59:;
	sAX	= 0x0000;
_A92306520_60:;
	asm	AR = AX
_A92306520_61:;
	asm	FLTI = AR
	////////////////////////////
	////////////////////////////
_A92306520_62:;
	sAX	= 0x0000;
_A92306520_63:;
	asm	AR = AX
_A92306520_64:;
	asm	FLTI = AR
	////////////////////////////
	////////////////////////////
_A92306520_65:;
	sAX	= 0x0000;
_A92306520_66:;
	asm	AR = AX
_A92306520_67:;
	asm	FLTI = AR
	////////////////////////////
	////////////////////////////
_A92306520_68:;
	sAX	= 0x0000;
_A92306520_69:;
	asm	AR = AX
_A92306520_70:;
	asm	FLTA = AR
	////////////////////////////
	////////////////////////////
_A92306520_71:;
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
_A92306520_72:;
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
_A92306520_73:;
	goto LEAF7732F_24;
LEAF7732F_23:;
_A92306520_74:;
	sAX	= 0x0000;
	asm I1 = File_flag+0;
	*(__int16*)sSI	= sAX
_A92306520_75:;
	asm AX = #MyData+0;
	asm I1 = _MyDataPnt+0;
	*(__int16*)sSI	= sAX
_A92306520_76:;
	asm AX = #MyData+0;
	asm I1 = R_bts_ch0_get_ix+0;
	*(__int16*)sSI	= sAX
_A92306520_77:;
	_i_1_2+0	= 0x01;
_A92306520_78:;
	asm I1 = _MyDataPnt+0;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_i_1_2;
	sCX	= *(__int16*)sSI;
	// mark sCX = sCX << 1;
	sAX	= sAX + sCX;
	asm I1 = MyEnd+0;
	*(__int16*)sSI	= sAX
_A92306520_79:;
	asm	AR = PASR,0
_A92306520_80:;
	asm AX = PCMY+0;
	asm I1 = PCMYIN_PTR+0;
	*(__int16*)sSI	= sAX
_A92306520_81:;
	asm AX = PCMY+0;
	asm I1 = PCMYOU_PTR+0;
	*(__int16*)sSI	= sAX
	////////////////////////////
_A92306520_82:;
	sAX	= 0x003F;
_A92306520_83:;
	asm	AR = AX
_A92306520_84:;
	asm	FLTG = AR
	////////////////////////////
	////////////////////////////
_A92306520_85:;
	sAX	= 0x1FFF;
_A92306520_86:;
	asm	AR = AX
_A92306520_87:;
	asm	FLTP = AR
	////////////////////////////
	////////////////////////////
_A92306520_88:;
	sAX	= 0x0000;
_A92306520_89:;
	asm	AR = AX
_A92306520_90:;
	asm	CBL = AR
	////////////////////////////
_A92306520_91:;
_A92306520_92:;
	GetMp3data();
_A92306520_93:;
_A92306520_94:;
	MP3_ch0InitV07();
_A92306520_95:;
	asm	set io[INTENA].b0
_A92306520_96:;
	asm	eni
LEAF7732F_20:;
_A92306520_97:;
	return;
_INITIAL0C18377D_end:;
_A92306520_98:;
}

void GetMp3data()
{
	__int16 _i_1_2;
	__int16 _j_1_4;
	////////////////////////////
_A92306520_99:;
	////////////////////////////
_A92306520_100:;
	asm AX = mp3Data+0;
	sSI	= (int)&_j_1_4;
	*(__int16*)sSI	= sAX;
_A92306520_101:;
	sSI	= (int)&_j_1_4;
	sAX	= *(__int16*)sSI;
	sCX	= 0x0005;
	// mark sCX = sCX << 1;
	sAX	= sAX + sCX;
	sSI	= (int)&_j_1_4;
	*(__int16*)sSI	= sAX;
_A92306520_102:;
	sSI	= (int)&_j_1_4;
	sAX	= *(__int16*)sSI;
	asm I1 = PCMIN1_PTR+0;
	*(__int16*)sSI	= sAX
_A92306520_103:;
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
_A92306520_104:;
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
_A92306520_105:;
	goto LEAF7732F_30;
LEAF7732F_29:;
_A92306520_106:;
	asm I1 = _MyDataPnt+0;
	sAX	= *(__int16*)sSI;
	asm I1 = MyEnd+0;
	asm CX = rm[I1];
	sfx_CMP_AX_CX_JA();
	if(__je__)	goto LEAF7732F_33;
	goto	LEAF7732F_32;
LEAF7732F_33:;
	////////////////////////////
_A92306520_107:;
	sAX	= 0x0008;
	asm I1 = File_flag+0;
	asm AR = rm[I1];
	asm AX = AX | AR;
	asm I1 = File_flag+0;
	*(__int16*)sSI	= sAX
LEAF7732F_32:;
_A92306520_108:;
LEAF7732F_26:;
_A92306520_109:;
	return;
GetMp3data_end:;
_A92306520_110:;
}

// .code ends _text


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

// extern get_FLTO:proc
// extern read_I0P:proc
// extern get_I0:proc
// extern FA:proc
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
