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
_A5A7AA303_0:;
	////////////////////////////
_A5A7AA303_1:;
_A5A7AA303_2:;
	_InitialDA4A7CC4();
_A5A7AA303_3:;
_A5A7AA303_4:;
	_InitKey3C587B6D();
_A5A7AA303_5:;
	asm set io[0x06].b0;
_A5A7AA303_6:;
	asm set io[0x06].b1;
_A5A7AA303_7:;
	asm clr io[0x09].b0;
_A5A7AA303_8:;
	asm clr io[0x09].b1;
_A5A7AA303_9:;
_A5A7AA303_10:;
	ChangePWMIntToDynCache();
_A5A7AA303_11:;
_A5A7AA303_12:;
	dtxInitialize();
L9FD7D12A_4:;
_A5A7AA303_13:;
_A5A7AA303_14:;
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
_A5A7AA303_15:;
	goto L9FD7D12A_7;
L9FD7D12A_6:;
	goto L9FD7D12A_4;
L9FD7D12A_3:;
_A5A7AA303_16:;
_A5A7AA303_17:;
	dtxInitParameters();
_A5A7AA303_18:;
_A5A7AA303_19:;
	dtxReadTune();
_A5A7AA303_20:;
	sAX	= 0x0000;
	asm I1 = _songidx8C42F7DA+0;
	*(__int16*)sSI	= sAX
_A5A7AA303_21:;
	sAX	= 0x7FFF;
	asm I1 = dtxfltg+0;
	*(__int16*)sSI	= sAX
L9FD7D12A_9:;
_A5A7AA303_22:;
_A5A7AA303_23:;
	asm	io[ClrWDT] = AR
	////////////////////////////
_A5A7AA303_24:;
_A5A7AA303_25:;
	_PollingKey3B90E3B1();
_A5A7AA303_26:;
_A5A7AA303_27:;
	_KeyShowLEDA84888EC();
_A5A7AA303_28:;
_A5A7AA303_29:;
	_ToneVolCtrl03CF265A();
_A5A7AA303_30:;
_A5A7AA303_31:;
	_WaitPCM_Empty_size53398B9D();
	sCX	= 0x0000;
	sfx_CMP_AX_CX_JL();
	if(__je__)	goto L9FD7D12A_11;
	goto	L9FD7D12A_10;
L9FD7D12A_11:;
_A5A7AA303_32:;
	goto L9FD7D12A_9;
L9FD7D12A_10:;
_A5A7AA303_33:;
_A5A7AA303_34:;
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
_A5A7AA303_35:;
_A5A7AA303_36:;
	Subb3_Dec();
	sfx_CHECKZERO();
	if(__jnz__)	goto L9FD7D12A_16;
	goto	L9FD7D12A_15;
L9FD7D12A_16:;
	////////////////////////////
_A5A7AA303_37:;
	asm I1 = _flags026116D5+0;
	asm AR = rm[I1];
	asm clr AR.b0;
	asm rm[I1] = AR;
_A5A7AA303_38:;
_A5A7AA303_39:;
	_Sub3ZeroFillABFF23AA();
L9FD7D12A_15:;
_A5A7AA303_40:;
	goto L9FD7D12A_17;
L9FD7D12A_12:;
	////////////////////////////
_A5A7AA303_41:;
_A5A7AA303_42:;
	_Sub3ZeroFillABFF23AA();
L9FD7D12A_17:;
_A5A7AA303_43:;
	goto L9FD7D12A_9;
L9FD7D12A_8:;
L9FD7D12A_2:;
_A5A7AA303_44:;
	return;
_main_end:;
_A5A7AA303_45:;
}

rjmp void _KeyPlaySongC44FFB6D()
{
_A5A7AA303_46:;
	////////////////////////////
_A5A7AA303_47:;
	asm I1 = _flags026116D5+0;
	asm AR = rm[I1];
	asm clr AR.b0;
	asm rm[I1] = AR;
_A5A7AA303_48:;
_A5A7AA303_49:;
	_dtxCheckSongEnd870A9712();
	sfx_CHECKZERO();
	if(__jnz__)	goto L9FD7D12A_20;
	goto	L9FD7D12A_19;
L9FD7D12A_20:;
	////////////////////////////
_A5A7AA303_50:;
_A5A7AA303_51:;
	asm I1 = _songidx8C42F7DA+0;
	sAX	= *(__int16*)sSI;
	_dtxPlaySong5B7DBDA5(STACK[sSP + 0]);
	goto L9FD7D12A_21;
L9FD7D12A_19:;
	////////////////////////////
_A5A7AA303_52:;
_A5A7AA303_53:;
	dtxStopSong();
L9FD7D12A_21:;
_A5A7AA303_54:;
L9FD7D12A_18:;
_A5A7AA303_55:;
	return;
_KeyPlaySongC44FFB6D_end:;
_A5A7AA303_56:;
}

rjmp void _KeyPlayStop0C3B8DB1()
{
_A5A7AA303_57:;
	////////////////////////////
_A5A7AA303_58:;
_A5A7AA303_59:;
	dtxStopSong();
L9FD7D12A_22:;
_A5A7AA303_60:;
	return;
_KeyPlayStop0C3B8DB1_end:;
_A5A7AA303_61:;
}

rjmp void _KeyPlayNextAFBA8CED()
{
_A5A7AA303_62:;
	////////////////////////////
_A5A7AA303_63:;
_A5A7AA303_64:;
	dtxStopSong();
_A5A7AA303_65:;
	asm I1 = _songidx8C42F7DA+0;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_songidx8C42F7DA;
	sCX	= *(__int16*)sSI;
	sCX++;
	*(__int16*)sSI	= sCX;
_A5A7AA303_66:;
_A5A7AA303_67:;
	_CheckSongLimit402181B4();
_A5A7AA303_68:;
_A5A7AA303_69:;
	_KeyPlaySongC44FFB6D();
L9FD7D12A_23:;
_A5A7AA303_70:;
	return;
_KeyPlayNextAFBA8CED_end:;
_A5A7AA303_71:;
}

rjmp void _KeyPlayPrev8E98A35A()
{
_A5A7AA303_72:;
	////////////////////////////
_A5A7AA303_73:;
_A5A7AA303_74:;
	dtxStopSong();
_A5A7AA303_75:;
	asm I1 = _songidx8C42F7DA+0;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_songidx8C42F7DA;
	sCX	= *(__int16*)sSI;
	sCX--;
	*(__int16*)sSI	= sCX;
_A5A7AA303_76:;
_A5A7AA303_77:;
	_CheckSongLimit402181B4();
_A5A7AA303_78:;
_A5A7AA303_79:;
	_KeyPlaySongC44FFB6D();
L9FD7D12A_24:;
_A5A7AA303_80:;
	return;
_KeyPlayPrev8E98A35A_end:;
_A5A7AA303_81:;
}

rjmp void _KeyModEEAB4D5A()
{
_A5A7AA303_82:;
	////////////////////////////
_A5A7AA303_83:;
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
_A5A7AA303_84:;
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
_A5A7AA303_85:;
	return;
_KeyModEEAB4D5A_end:;
_A5A7AA303_86:;
}

rjmp void _KeySubb3A3BA54B6D()
{
_A5A7AA303_87:;
	////////////////////////////
_A5A7AA303_88:;
_A5A7AA303_89:;
	dtxStopSong();
_A5A7AA303_90:;
_A5A7AA303_91:;
	asm AX = #subdat0+0;
	asm DX = #subdat0.n2
	asm set DX.b11
	PUSH(sDX);
	PUSH(sAX);
	_Sub3Play422CAD6D(STACK[sSP + 0], STACK[sSP + 1]);
	RESTORESP(2);
_A5A7AA303_92:;
	asm I1 = _flags026116D5+0;
	asm AR = rm[I1];
	asm set AR.b0;
	asm rm[I1] = AR;
L9FD7D12A_26:;
_A5A7AA303_93:;
	return;
_KeySubb3A3BA54B6D_end:;
_A5A7AA303_94:;
}

rjmp void _KeySubb3B3F6456DA()
{
_A5A7AA303_95:;
	////////////////////////////
_A5A7AA303_96:;
_A5A7AA303_97:;
	dtxStopSong();
_A5A7AA303_98:;
_A5A7AA303_99:;
	asm AX = #subdat1+0;
	asm DX = #subdat1.n2
	asm set DX.b11
	PUSH(sDX);
	PUSH(sAX);
	_Sub3Play422CAD6D(STACK[sSP + 0], STACK[sSP + 1]);
	RESTORESP(2);
_A5A7AA303_100:;
	asm I1 = _flags026116D5+0;
	asm AR = rm[I1];
	asm set AR.b0;
	asm rm[I1] = AR;
L9FD7D12A_27:;
_A5A7AA303_101:;
	return;
_KeySubb3B3F6456DA_end:;
_A5A7AA303_102:;
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
