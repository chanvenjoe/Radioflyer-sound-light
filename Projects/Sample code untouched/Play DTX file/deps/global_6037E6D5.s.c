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
__int16 _flags026116D5;
__int16 _songidx8C42F7DA;

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
rjmp void L0E8FA404_19()
{
_A01B23225_68:;
	////////////////////////////
_A01B23225_69:;
	io[0x16]	= 0x0000;
_A01B23225_70:;
	io[0x16]	= 0x0000;
_A01B23225_71:;
	io[0x16]	= 0x0000;
_A01B23225_72:;
	io[0x16]	= 0x0000;
_A01B23225_73:;
	io[0x36]	= 0x0000;
_A01B23225_74:;
	io[0x36]	= 0x0000;
_A01B23225_75:;
	io[0x36]	= 0x0000;
_A01B23225_76:;
	io[0x36]	= 0x0000;
_A01B23225_77:;
	io[0x36]	= 0x0000;
_A01B23225_78:;
	io[0x36]	= 0x0000;
_A01B23225_79:;
	io[0x36]	= 0x0000;
_A01B23225_80:;
	io[0x36]	= 0x0000;
_A01B23225_81:;
	io[0x3C]	= 0x003F;
_A01B23225_82:;
	sAX	= io[0x3C];
_A01B23225_83:;
	asm	set io[MISC].b9
_A01B23225_84:;
	asm	set io[MISC].b8
_A01B23225_85:;
	asm	set io[MISC].b4
L0E8FA404_21:;
_A01B23225_86:;
	return;
L0E8FA404_19_end:;
_A01B23225_87:;
}

rjmp void L0E8FA404_22()
{
_A01B23225_88:;
	////////////////////////////
_A01B23225_89:;
	io[0x04]	= 0x000F;
_A01B23225_90:;
	io[0x05]	= 0xFFFF;
_A01B23225_91:;
	io[0x07]	= 0x0000;
_A01B23225_92:;
	io[0x08]	= 0xFFFF;
L0E8FA404_24:;
_A01B23225_93:;
	return;
L0E8FA404_22_end:;
_A01B23225_94:;
}

rjmp void _InitialDA4A7CC4()
{
_A01B23225_95:;
	////////////////////////////
_A01B23225_96:;
	sAX	= 0x0000;
	asm I1 = _songidx8C42F7DA+0;
	*(__int16*)sSI	= sAX
_A01B23225_97:;
_A01B23225_98:;
	NEARCALL(L0E8FA404_19);
_A01B23225_99:;
_A01B23225_100:;
	NEARCALL(L0E8FA404_22);
_A01B23225_101:;
	sAX	= 0x0000;
	asm I1 = _flags026116D5+0;
	*(__int16*)sSI	= sAX
L0E8FA404_25:;
_A01B23225_102:;
	return;
_InitialDA4A7CC4_end:;
_A01B23225_103:;
}

rjmp void _CheckSongLimit402181B4()
{
_A01B23225_104:;
	////////////////////////////
_A01B23225_105:;
	asm I1 = _songidx8C42F7DA+0;
	sAX	= *(__int16*)sSI;
	sCX	= 0x0000;
	sfx_CMP_AX_CX_JL();
	if(__je__)	goto L0E8FA404_28;
	goto	L0E8FA404_27;
L0E8FA404_28:;
	////////////////////////////
_A01B23225_106:;
	asm I1 = dtxsongcnt+0;
	sAX	= *(__int16*)sSI;
	sCX	= 0x0001;
	sAX	= sAX - sCX;
	asm I1 = _songidx8C42F7DA+0;
	*(__int16*)sSI	= sAX
	goto L0E8FA404_29;
L0E8FA404_27:;
	////////////////////////////
_A01B23225_107:;
	asm I1 = _songidx8C42F7DA+0;
	sAX	= *(__int16*)sSI;
	asm I1 = dtxsongcnt+0;
	asm CX = rm[I1];
	sfx_CMP_AX_CX_JGE();
	if(__je__)	goto L0E8FA404_31;
	goto	L0E8FA404_30;
L0E8FA404_31:;
	////////////////////////////
_A01B23225_108:;
	sAX	= 0x0000;
	asm I1 = _songidx8C42F7DA+0;
	*(__int16*)sSI	= sAX
L0E8FA404_30:;
_A01B23225_109:;
L0E8FA404_29:;
_A01B23225_110:;
L0E8FA404_26:;
_A01B23225_111:;
	return;
_CheckSongLimit402181B4_end:;
_A01B23225_112:;
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
// public _flags026116D5
// public _songidx8C42F7DA
// public _InitialDA4A7CC4
// public _CheckSongLimit402181B4
// public ginit_code_global_6037E6D5_s
