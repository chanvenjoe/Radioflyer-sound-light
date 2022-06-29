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
__int16 _sub_vol980B1B83;
__int16 _ticksA7263C09[2];

// .bss ends _bss

// CODE segment

.code


rjmp void _RampUpFF7996DA();
rjmp void _RampDown1D382EDA();
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
rjmp void _RampUpFF7996DA()
{
_A735335B1_61:;
	////////////////////////////
_A735335B1_62:;
	asm I1 = _sub_vol980B1B83+0;
	sAX	= *(__int16*)sSI;
	asm AR = 0x003F;
	asm AX = AX & AR;
	sCX	= 0x003F;
	sfx_CMP_AX_CX_JE();
	if(__je__)	goto L0E8FA404_19;
	goto	L0E8FA404_18;
L0E8FA404_19:;
_A735335B1_63:;
	sAX	= 0x0000;
	goto L0E8FA404_17;
L0E8FA404_18:;
_A735335B1_64:;
_A735335B1_65:;
_A735335B1_66:;
	_GetTickCount18DC070C();
	asm I1 = _ticksA7263C09+0;
	sCX	= *(__int16*)sSI++;
	sBX	= *(__int16*)sSI--;
	sfx_SUBLONG();
	sCX	= 0x0000;
	sBX	= 0x0005;
	sfx_CMPLONG_JA();
	if(__je__)	goto L0E8FA404_21;
	goto	L0E8FA404_20;
L0E8FA404_21:;
	////////////////////////////
_A735335B1_67:;
_A735335B1_68:;
	_GetTickCount18DC070C();
	asm I1 = _ticksA7263C09+0;
	sfx_STORSILONG();
	////////////////////////////
_A735335B1_69:;
	sSI	= (int)&_sub_vol980B1B83;
	sAX	= *(__int16*)sSI;
	sAX++;
	*(__int16*)sSI	= sAX;
	io[0x3C]	= sAX;
L0E8FA404_20:;
_A735335B1_70:;
_A735335B1_71:;
	sAX	= 0x0001;
	goto L0E8FA404_17;
L0E8FA404_17:;
_A735335B1_72:;
	return;
_RampUpFF7996DA_end:;
_A735335B1_73:;
}

rjmp void _RampDown1D382EDA()
{
_A735335B1_74:;
	////////////////////////////
_A735335B1_75:;
	asm I1 = _sub_vol980B1B83+0;
	sAX	= *(__int16*)sSI;
	asm AR = 0x003F;
	asm AX = AX & AR;
	sCX	= 0x0000;
	sfx_CMP_AX_CX_JE();
	if(__je__)	goto L0E8FA404_24;
	goto	L0E8FA404_23;
L0E8FA404_24:;
_A735335B1_76:;
	sAX	= 0x0000;
	goto L0E8FA404_22;
L0E8FA404_23:;
_A735335B1_77:;
_A735335B1_78:;
_A735335B1_79:;
	_GetTickCount18DC070C();
	asm I1 = _ticksA7263C09+0;
	sCX	= *(__int16*)sSI++;
	sBX	= *(__int16*)sSI--;
	sfx_SUBLONG();
	sCX	= 0x0000;
	sBX	= 0x0005;
	sfx_CMPLONG_JA();
	if(__je__)	goto L0E8FA404_26;
	goto	L0E8FA404_25;
L0E8FA404_26:;
	////////////////////////////
_A735335B1_80:;
_A735335B1_81:;
	_GetTickCount18DC070C();
	asm I1 = _ticksA7263C09+0;
	sfx_STORSILONG();
	////////////////////////////
_A735335B1_82:;
	sSI	= (int)&_sub_vol980B1B83;
	sAX	= *(__int16*)sSI;
	sAX--;
	*(__int16*)sSI	= sAX;
	io[0x3C]	= sAX;
L0E8FA404_25:;
_A735335B1_83:;
_A735335B1_84:;
	sAX	= 0x0001;
	goto L0E8FA404_22;
L0E8FA404_22:;
_A735335B1_85:;
	return;
_RampDown1D382EDA_end:;
_A735335B1_86:;
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

// .data ends _linkd

// .code segment _text
.code
// .code ends _text

// extern _GetTickCount18DC070C:proc
// public _ticksA7263C09
// public _sub_vol980B1B83
// public _RampUpFF7996DA
// public _RampDown1D382EDA
