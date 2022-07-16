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

// .bss ends _bss

// CODE segment

.code


rjmp void _main();
rjmp void _KeyPlaySongC44FFB6D();
rjmp void _KeyPlayStop0C3B8DB1();
rjmp void _KeyPlayNextAFBA8CED();
rjmp void _KeyPlayPrev8E98A35A();
rjmp void _KeyModEEAB4D5A();
rjmp void _KeySubb3A3BA54B6D();
rjmp void _KeySubb3B3F6456DA();
// RCODE segment

// .model speechdsp
// .code segment _text
.code
rjmp void _main()
{
_A2C562ABC_0:;
	////////////////////////////
_A2C562ABC_1:;
_A2C562ABC_2:;
	_InitialDA4A7CC4();
_A2C562ABC_3:;
_A2C562ABC_4:;
	_InitKey3C587B6D();
_A2C562ABC_5:;
	asm set io[0x06].b0;
_A2C562ABC_6:;
	asm set io[0x06].b1;
_A2C562ABC_7:;
	asm clr io[0x09].b0;
_A2C562ABC_8:;
	asm clr io[0x09].b1;
_A2C562ABC_9:;
_A2C562ABC_10:;
	ChangePWMIntToDynCache();
_A2C562ABC_11:;
_A2C562ABC_12:;
	dtxInitialize();
LF66E16C1_5:;
_A2C562ABC_13:;
_A2C562ABC_14:;
	asm AX = #melody+0;
	asm DX = #melody.n2
	asm set DX.b11
	PUSH(sDX);
	PUSH(sAX);
	_dtxFindToneEntry12F3B4ED(STACK[sSP + 0], STACK[sSP + 1]);
	RESTORESP(2);
	sfx_CHECKZERO();
	if(__jz__)	goto LF66E16C1_6;
	goto	LF66E16C1_4;
LF66E16C1_6:;
	////////////////////////////
LF66E16C1_8:;
_A2C562ABC_15:;
_A2C562ABC_16:;
	goto LF66E16C1_8;
LF66E16C1_7:;
_A2C562ABC_17:;
	goto LF66E16C1_5;
LF66E16C1_4:;
_A2C562ABC_18:;
_A2C562ABC_19:;
	dtxInitParameters();
_A2C562ABC_20:;
_A2C562ABC_21:;
	dtxReadTune();
_A2C562ABC_22:;
	sAX	= 0x0000;
	asm I1 = _songidx8C42F7DA+0;
	*(__int16*)sSI	= sAX
_A2C562ABC_23:;
	sAX	= 0x7FFF;
	asm I1 = dtxfltg+0;
	*(__int16*)sSI	= sAX
LF66E16C1_10:;
_A2C562ABC_24:;
_A2C562ABC_25:;
	asm	io[ClrWDT] = AR
	////////////////////////////
_A2C562ABC_26:;
_A2C562ABC_27:;
	_PollingKey3B90E3B1();
_A2C562ABC_28:;
_A2C562ABC_29:;
	_KeyShowLEDA84888EC();
_A2C562ABC_30:;
_A2C562ABC_31:;
	_ToneVolCtrl03CF265A();
_A2C562ABC_32:;
	sAX	= 0;
	asm I1 = _flags026116D5+0;
	asm AR = rm[I1];
	asm test AR.b0;
	if(__jz__) goto LF66E16C1_12;
	sAX	= 1;
LF66E16C1_12:;
	sfx_CHECKZERO();
	if(__jnz__)	goto LF66E16C1_13;
	goto	LF66E16C1_11;
LF66E16C1_13:;
	////////////////////////////
_A2C562ABC_33:;
_A2C562ABC_34:;
	Subb3_Dec();
	sfx_CHECKZERO();
	if(__jnz__)	goto LF66E16C1_15;
	goto	LF66E16C1_14;
LF66E16C1_15:;
	////////////////////////////
_A2C562ABC_35:;
	asm set io[0x09].b0;
_A2C562ABC_36:;
	asm I1 = _flags026116D5+0;
	asm AR = rm[I1];
	asm clr AR.b0;
	asm rm[I1] = AR;
_A2C562ABC_37:;
_A2C562ABC_38:;
	_Sub3ZeroFillABFF23AA();
LF66E16C1_14:;
_A2C562ABC_39:;
	goto LF66E16C1_16;
LF66E16C1_11:;
	////////////////////////////
_A2C562ABC_40:;
_A2C562ABC_41:;
	_Sub3ZeroFillABFF23AA();
LF66E16C1_16:;
_A2C562ABC_42:;
_A2C562ABC_43:;
	asm clr io[0x09].b0;
_A2C562ABC_44:;
	goto LF66E16C1_10;
LF66E16C1_9:;
LF66E16C1_3:;
_A2C562ABC_45:;
	return;
_main_end:;
_A2C562ABC_46:;
}

rjmp void _KeyPlaySongC44FFB6D()
{
_A2C562ABC_47:;
	////////////////////////////
_A2C562ABC_48:;
	asm I1 = _flags026116D5+0;
	asm AR = rm[I1];
	asm clr AR.b0;
	asm rm[I1] = AR;
_A2C562ABC_49:;
_A2C562ABC_50:;
	_dtxCheckSongEnd870A9712();
	sfx_CHECKZERO();
	if(__jnz__)	goto LF66E16C1_19;
	goto	LF66E16C1_18;
LF66E16C1_19:;
	////////////////////////////
_A2C562ABC_51:;
_A2C562ABC_52:;
	asm I1 = _songidx8C42F7DA+0;
	sAX	= *(__int16*)sSI;
	PUSH(sAX);
	_dtxPlaySong5B7DBDA5(STACK[sSP + 0]);
	RESTORESP(1);
	goto LF66E16C1_20;
LF66E16C1_18:;
	////////////////////////////
_A2C562ABC_53:;
_A2C562ABC_54:;
	dtxStopSong();
LF66E16C1_20:;
_A2C562ABC_55:;
LF66E16C1_17:;
_A2C562ABC_56:;
	return;
_KeyPlaySongC44FFB6D_end:;
_A2C562ABC_57:;
}

rjmp void _KeyPlayStop0C3B8DB1()
{
_A2C562ABC_58:;
	////////////////////////////
_A2C562ABC_59:;
_A2C562ABC_60:;
	dtxStopSong();
LF66E16C1_21:;
_A2C562ABC_61:;
	return;
_KeyPlayStop0C3B8DB1_end:;
_A2C562ABC_62:;
}

rjmp void _KeyPlayNextAFBA8CED()
{
_A2C562ABC_63:;
	////////////////////////////
_A2C562ABC_64:;
_A2C562ABC_65:;
	dtxStopSong();
_A2C562ABC_66:;
	asm I1 = _songidx8C42F7DA+0;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_songidx8C42F7DA;
	sCX	= *(__int16*)sSI;
	sCX++;
	*(__int16*)sSI	= sCX;
_A2C562ABC_67:;
_A2C562ABC_68:;
	_CheckSongLimit402181B4();
_A2C562ABC_69:;
_A2C562ABC_70:;
	_KeyPlaySongC44FFB6D();
LF66E16C1_22:;
_A2C562ABC_71:;
	return;
_KeyPlayNextAFBA8CED_end:;
_A2C562ABC_72:;
}

rjmp void _KeyPlayPrev8E98A35A()
{
_A2C562ABC_73:;
	////////////////////////////
_A2C562ABC_74:;
_A2C562ABC_75:;
	dtxStopSong();
_A2C562ABC_76:;
	asm I1 = _songidx8C42F7DA+0;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_songidx8C42F7DA;
	sCX	= *(__int16*)sSI;
	sCX--;
	*(__int16*)sSI	= sCX;
_A2C562ABC_77:;
_A2C562ABC_78:;
	_CheckSongLimit402181B4();
_A2C562ABC_79:;
_A2C562ABC_80:;
	_KeyPlaySongC44FFB6D();
LF66E16C1_23:;
_A2C562ABC_81:;
	return;
_KeyPlayPrev8E98A35A_end:;
_A2C562ABC_82:;
}

rjmp void _KeyModEEAB4D5A()
{
_A2C562ABC_83:;
	////////////////////////////
_A2C562ABC_84:;
	asm AX = dtxtonech+7;
	PUSH(sAX);
	sAX	= 0x0001;
	asm I1 = dtxtonech+7;
	sCX	= *(__int16*)sSI;
	sAX	= sAX + sCX;
	asm AR = 0x0003;
	asm AX = AX & AR;
	sSI	= POP();
	*(__int16*)sSI	= sAX;
_A2C562ABC_85:;
	asm AX = dtxtonech+15;
	PUSH(sAX);
	sAX	= 0x0001;
	asm I1 = dtxtonech+15;
	sCX	= *(__int16*)sSI;
	sAX	= sAX + sCX;
	asm AR = 0x0003;
	asm AX = AX & AR;
	sSI	= POP();
	*(__int16*)sSI	= sAX;
LF66E16C1_24:;
_A2C562ABC_86:;
	return;
_KeyModEEAB4D5A_end:;
_A2C562ABC_87:;
}

rjmp void _KeySubb3A3BA54B6D()
{
_A2C562ABC_88:;
	////////////////////////////
_A2C562ABC_89:;
_A2C562ABC_90:;
	dtxStopSong();
_A2C562ABC_91:;
_A2C562ABC_92:;
	asm AX = #subdat0+0;
	asm DX = #subdat0.n2
	asm set DX.b11
	PUSH(sDX);
	PUSH(sAX);
	_Sub3Play422CAD6D(STACK[sSP + 0], STACK[sSP + 1]);
	RESTORESP(2);
_A2C562ABC_93:;
	asm I1 = _flags026116D5+0;
	asm AR = rm[I1];
	asm set AR.b0;
	asm rm[I1] = AR;
LF66E16C1_25:;
_A2C562ABC_94:;
	return;
_KeySubb3A3BA54B6D_end:;
_A2C562ABC_95:;
}

rjmp void _KeySubb3B3F6456DA()
{
_A2C562ABC_96:;
	////////////////////////////
_A2C562ABC_97:;
_A2C562ABC_98:;
	dtxStopSong();
_A2C562ABC_99:;
_A2C562ABC_100:;
	asm AX = #subdat1+0;
	asm DX = #subdat1.n2
	asm set DX.b11
	PUSH(sDX);
	PUSH(sAX);
	_Sub3Play422CAD6D(STACK[sSP + 0], STACK[sSP + 1]);
	RESTORESP(2);
_A2C562ABC_101:;
	asm I1 = _flags026116D5+0;
	asm AR = rm[I1];
	asm set AR.b0;
	asm rm[I1] = AR;
LF66E16C1_26:;
_A2C562ABC_102:;
	return;
_KeySubb3B3F6456DA_end:;
_A2C562ABC_103:;
}

// .code ends _text

// .data segment _rdata
.data
// .data ends _rdata


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
	(int)&_KeyPlayNextAFBA8CED[0], 0x0000, 0x0000, (int)&_KeyPlayPrev8E98A35A[0], 0x0000, 0x0000, (int)&_KeyModEEAB4D5A[0], 0x0000, 
	0x0000, (int)&_KeySubb3A3BA54B6D[0], 0x0000, 0x0000, (int)&_KeySubb3B3F6456DA[0], 0x0000, 0x0000
};

// .code ends _text

// .data segment _linkd
.data
// LINKFILE (RO) segment

// .data ends _linkd

// .code segment _text
.code
// .code ends _text

// extern dtxfltg:word
// extern dtxtonech:word
// extern dtxInitialize:proc
// extern dtxInitParameters:proc
// extern dtxReadTune:proc
// extern dtxStopSong:proc
// extern _dtxFindToneEntry12F3B4ED:proc
// extern _dtxPlaySong5B7DBDA5:proc
// extern _dtxCheckSongEnd870A9712:proc
// extern _flags026116D5:word
// extern _songidx8C42F7DA:word
// extern subdat0:proc
// extern subdat1:proc
// extern _InitialDA4A7CC4:proc
// extern _CheckSongLimit402181B4:proc
// extern _ToneVolCtrl03CF265A:proc
// extern ChangePWMIntToDynCache:proc
// extern _InitKey3C587B6D:proc
// extern _PollingKey3B90E3B1:proc
// public _keyfuncF06F3D55
// extern _KeyShowLEDA84888EC:proc
// extern Subb3_Dec:proc
// extern _Sub3ZeroFillABFF23AA:proc
// extern _Sub3Play422CAD6D:proc
// extern PWM_ENTRY:proc
// extern melody:proc
// public _main
// public _KeyPlaySongC44FFB6D
// public _KeyPlayStop0C3B8DB1
// public _KeyPlayNextAFBA8CED
// public _KeyPlayPrev8E98A35A
// public _KeyModEEAB4D5A
// public _KeySubb3A3BA54B6D
// public _KeySubb3B3F6456DA
