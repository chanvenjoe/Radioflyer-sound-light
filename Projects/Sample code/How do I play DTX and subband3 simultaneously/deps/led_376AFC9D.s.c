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


rjmp void _KeyShowLEDA84888EC();
// RCODE segment

// .model speechdsp
// .code segment _text
.code
rjmp void _KeyShowLEDA84888EC()
{
_A5A7AA303_243:;
	////////////////////////////
_A5A7AA303_244:;
	sAX	= 0x0001;
	asm I1 = dtxtonech+7;
	asm AR = rm[I1];
	asm AX = AX & AR;
	sfx_CHECKZERO();
	if(__jz__) goto L7573600E_96;
	asm set io[0x09].b0;
	goto	L7573600E_97;
L7573600E_96:;
	asm clr io[0x09].b0;
L7573600E_97:;
_A5A7AA303_245:;
	sAX	= 0x0002;
	asm I1 = dtxtonech+7;
	asm AR = rm[I1];
	asm AX = AX & AR;
	sfx_CHECKZERO();
	if(__jz__) goto L7573600E_98;
	asm set io[0x09].b1;
	goto	L7573600E_99;
L7573600E_98:;
	asm clr io[0x09].b1;
L7573600E_99:;
L7573600E_95:;
_A5A7AA303_246:;
	return;
_KeyShowLEDA84888EC_end:;
_A5A7AA303_247:;
}

// .code ends _text

// .code segment _ginit
.code

// -=-=-=-=-=-=-=-=-=-=-
naked void ginit_code_led_376AFC9D_s(void)
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
// extern GetKey:proc
// extern isWideBandFilterOn:proc
// public _KeyShowLEDA84888EC
// public ginit_code_led_376AFC9D_s
