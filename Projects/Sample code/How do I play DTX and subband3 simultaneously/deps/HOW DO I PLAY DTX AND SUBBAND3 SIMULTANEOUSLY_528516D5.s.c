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
_AFFC519C6_0:;
	////////////////////////////
_AFFC519C6_1:;
_AFFC519C6_2:;
	_InitialDA4A7CC4();
_AFFC519C6_3:;
_AFFC519C6_4:;
	_InitKey3C587B6D();
_AFFC519C6_5:;
	asm set io[0x06].b0;
_AFFC519C6_6:;
	asm set io[0x06].b1;
_AFFC519C6_7:;
	asm clr io[0x09].b0;
_AFFC519C6_8:;
	asm clr io[0x09].b1;
_AFFC519C6_9:;
_AFFC519C6_10:;
	ChangePWMIntToDynCache();
_AFFC519C6_11:;
_AFFC519C6_12:;
	dtxInitialize();
L9FD7D12A_4:;
_AFFC519C6_13:;
_AFFC519C6_14:;
	asm AX = #melody+0;
	asm DX = #melody.n2
	asm set DX.b11
	_dtxFindToneEntry12F3B4ED(STACK[sSP + 0], STACK[sSP + 1]);
	sfx_CHECKZERO();
	if(__jz__)	goto L9FD7D12A_5;
	goto	L9FD7D12A_3;
L9FD7D12A_5:;
	////////////////////////////
L9FD7D12A_7:;
_AFFC519C6_15:;
	goto L9FD7D12A_7;
L9FD7D12A_6:;
	goto L9FD7D12A_4;
L9FD7D12A_3:;
_AFFC519C6_16:;
_AFFC519C6_17:;
	dtxInitParameters();
_AFFC519C6_18:;
_AFFC519C6_19:;
	dtxReadTune();
_AFFC519C6_20:;
	sAX	= 0x0000;
	asm I1 = _songidx8C42F7DA+0;
	*(__int16*)sSI	= sAX
_AFFC519C6_21:;
	sAX	= 0x7FFF;
	asm I1 = dtxfltg+0;
	*(__int16*)sSI	= sAX
L9FD7D12A_9:;
_AFFC519C6_22:;
_AFFC519C6_23:;
	asm	io[ClrWDT] = AR
	////////////////////////////
_AFFC519C6_24:;
_AFFC519C6_25:;
	_PollingKey3B90E3B1();
_AFFC519C6_26:;
_AFFC519C6_27:;
	_KeyShowLEDA84888EC();
_AFFC519C6_28:;
_AFFC519C6_29:;
	_ToneVolCtrl03CF265A();
_AFFC519C6_30:;
_AFFC519C6_31:;
	_WaitPCM_Empty_size53398B9D();
	sCX	= 0x0000;
	sfx_CMP_AX_CX_JL();
	if(__je__)	goto L9FD7D12A_11;
	goto	L9FD7D12A_10;
L9FD7D12A_11:;
_AFFC519C6_32:;
	goto L9FD7D12A_9;
L9FD7D12A_10:;
_AFFC519C6_33:;
_AFFC519C6_34:;
	sAX	= 0;
	asm I1 = _flags026116D5+0;
	asm AR = rm[I1];
	asm test AR.b0;
	if(__jz__) goto L9FD7D12A_13;
	sAX	= 1;
L9FD7D12A_13:;
	sfx_CHECKZERO();
	if(__jnz__)	goto L9FD7D12A_14;
	goto	L9FD7D12A_12;
L9FD7D12A_14:;
	////////////////////////////
_AFFC519C6_35:;
_AFFC519C6_36:;
	Subb3_Dec();
	sfx_CHECKZERO();
	if(__jnz__)	goto L9FD7D12A_16;
	goto	L9FD7D12A_15;
L9FD7D12A_16:;
	////////////////////////////
_AFFC519C6_37:;
	asm I1 = _flags026116D5+0;
	asm AR = rm[I1];
	asm clr AR.b0;
	asm rm[I1] = AR;
_AFFC519C6_38:;
_AFFC519C6_39:;
	_Sub3ZeroFillABFF23AA();
L9FD7D12A_15:;
_AFFC519C6_40:;
	goto L9FD7D12A_17;
L9FD7D12A_12:;
	////////////////////////////
_AFFC519C6_41:;
_AFFC519C6_42:;
	_Sub3ZeroFillABFF23AA();
L9FD7D12A_17:;
_AFFC519C6_43:;
	goto L9FD7D12A_9;
L9FD7D12A_8:;
L9FD7D12A_2:;
_AFFC519C6_44:;
	return;
_main_end:;
_AFFC519C6_45:;
}

rjmp void _KeyPlaySongC44FFB6D()
{
_AFFC519C6_46:;
	////////////////////////////
_AFFC519C6_47:;
	asm I1 = _flags026116D5+0;
	asm AR = rm[I1];
	asm clr AR.b0;
	asm rm[I1] = AR;
_AFFC519C6_48:;
_AFFC519C6_49:;
	_dtxCheckSongEnd870A9712();
	sfx_CHECKZERO();
	if(__jnz__)	goto L9FD7D12A_20;
	goto	L9FD7D12A_19;
L9FD7D12A_20:;
	////////////////////////////
_AFFC519C6_50:;
_AFFC519C6_51:;
	asm I1 = _songidx8C42F7DA+0;
	sAX	= *(__int16*)sSI;
	_dtxPlaySong5B7DBDA5(STACK[sSP + 0]);
	goto L9FD7D12A_21;
L9FD7D12A_19:;
	////////////////////////////
_AFFC519C6_52:;
_AFFC519C6_53:;
	dtxStopSong();
L9FD7D12A_21:;
_AFFC519C6_54:;
L9FD7D12A_18:;
_AFFC519C6_55:;
	return;
_KeyPlaySongC44FFB6D_end:;
_AFFC519C6_56:;
}

rjmp void _KeyPlayStop0C3B8DB1()
{
_AFFC519C6_57:;
	////////////////////////////
_AFFC519C6_58:;
_AFFC519C6_59:;
	dtxStopSong();
L9FD7D12A_22:;
_AFFC519C6_60:;
	return;
_KeyPlayStop0C3B8DB1_end:;
_AFFC519C6_61:;
}

rjmp void _KeyPlayNextAFBA8CED()
{
_AFFC519C6_62:;
	////////////////////////////
_AFFC519C6_63:;
_AFFC519C6_64:;
	dtxStopSong();
_AFFC519C6_65:;
	asm I1 = _songidx8C42F7DA+0;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_songidx8C42F7DA;
	sCX	= *(__int16*)sSI;
	sCX++;
	*(__int16*)sSI	= sCX;
_AFFC519C6_66:;
_AFFC519C6_67:;
	_CheckSongLimit402181B4();
_AFFC519C6_68:;
_AFFC519C6_69:;
	_KeyPlaySongC44FFB6D();
L9FD7D12A_23:;
_AFFC519C6_70:;
	return;
_KeyPlayNextAFBA8CED_end:;
_AFFC519C6_71:;
}

rjmp void _KeyPlayPrev8E98A35A()
{
_AFFC519C6_72:;
	////////////////////////////
_AFFC519C6_73:;
_AFFC519C6_74:;
	dtxStopSong();
_AFFC519C6_75:;
	asm I1 = _songidx8C42F7DA+0;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_songidx8C42F7DA;
	sCX	= *(__int16*)sSI;
	sCX--;
	*(__int16*)sSI	= sCX;
_AFFC519C6_76:;
_AFFC519C6_77:;
	_CheckSongLimit402181B4();
_AFFC519C6_78:;
_AFFC519C6_79:;
	_KeyPlaySongC44FFB6D();
L9FD7D12A_24:;
_AFFC519C6_80:;
	return;
_KeyPlayPrev8E98A35A_end:;
_AFFC519C6_81:;
}

rjmp void _KeyModEEAB4D5A()
{
_AFFC519C6_82:;
	////////////////////////////
_AFFC519C6_83:;
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
_AFFC519C6_84:;
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
L9FD7D12A_25:;
_AFFC519C6_85:;
	return;
_KeyModEEAB4D5A_end:;
_AFFC519C6_86:;
}

rjmp void _KeySubb3A3BA54B6D()
{
_AFFC519C6_87:;
	////////////////////////////
_AFFC519C6_88:;
_AFFC519C6_89:;
	dtxStopSong();
_AFFC519C6_90:;
_AFFC519C6_91:;
	asm AX = #subdat0+0;
	asm DX = #subdat0.n2
	asm set DX.b11
	PUSH(sDX);
	PUSH(sAX);
	_Sub3Play422CAD6D(STACK[sSP + 0], STACK[sSP + 1]);
	RESTORESP(2);
_AFFC519C6_92:;
	asm I1 = _flags026116D5+0;
	asm AR = rm[I1];
	asm set AR.b0;
	asm rm[I1] = AR;
L9FD7D12A_26:;
_AFFC519C6_93:;
	return;
_KeySubb3A3BA54B6D_end:;
_AFFC519C6_94:;
}

rjmp void _KeySubb3B3F6456DA()
{
_AFFC519C6_95:;
	////////////////////////////
_AFFC519C6_96:;
_AFFC519C6_97:;
	dtxStopSong();
_AFFC519C6_98:;
_AFFC519C6_99:;
	asm AX = #subdat1+0;
	asm DX = #subdat1.n2
	asm set DX.b11
	PUSH(sDX);
	PUSH(sAX);
	_Sub3Play422CAD6D(STACK[sSP + 0], STACK[sSP + 1]);
	RESTORESP(2);
_AFFC519C6_100:;
	asm I1 = _flags026116D5+0;
	asm AR = rm[I1];
	asm set AR.b0;
	asm rm[I1] = AR;
L9FD7D12A_27:;
_AFFC519C6_101:;
	return;
_KeySubb3B3F6456DA_end:;
_AFFC519C6_102:;
}

// .code ends _text

// .data segment _rdata
.data
// .data ends _rdata

// .code segment _ginit
.code

// -=-=-=-=-=-=-=-=-=-=-
naked void ginit_code_HOW_DO_I_PLAY_DTX_AND_SUBBAND3_SIMULTANEOUSLY_528516D5_s(void)
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
	(int)&_KeyPlayNextAFBA8CED, 0x0000, 0x0000, (int)&_KeyPlayPrev8E98A35A, 0x0000, 0x0000, (int)&_KeyModEEAB4D5A, 0x0000, 
	0x0000, (int)&_KeySubb3A3BA54B6D, 0x0000, 0x0000, (int)&_KeySubb3B3F6456DA, 0x0000, 0x0000
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
// extern dtxfltg:word
// extern dtxsongcnt:word
// extern dtxtonech:word
// extern dtxRender:long
// extern dtxInitialize:proc
// extern dtxInitParameters:proc
// extern dtxReadTune:proc
// extern dtxStopSong:proc
// extern dtxStartBGServe:proc
// extern dtxStopBGServe:proc
// extern _dtxDoEvent05EA2C8C:proc
// extern _dtxFindToneEntry12F3B4ED:proc
// extern _dtxPlaySong5B7DBDA5:proc
// extern _dtxCheckSongEnd870A9712:proc
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
// extern _InitKey3C587B6D:proc
// extern _PollingKey3B90E3B1:proc
// public _keyfuncF06F3D55
// extern _KeyShowLEDA84888EC:proc
// extern bts_ch0_get_ix:long
// extern PCMYIN_PTR:word
// extern PCMYOU_PTR:word
// extern PCMIN:word
// extern SampleCh0Rate:word
// extern PCMY:word
// extern Subb3_Init:proc
// extern Subb3_Dec:proc
// extern _WaitPCM_Empty_size53398B9D:proc
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
// public ginit_code_HOW_DO_I_PLAY_DTX_AND_SUBBAND3_SIMULTANEOUSLY_528516D5_s
