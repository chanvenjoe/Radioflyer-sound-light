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


void _KeyShowLEDA84888EC();
// RCODE segment

// .model speechdsp
// .code segment _text
.code
void _KeyShowLEDA84888EC()
{
_A2C562ABC_248:;
	////////////////////////////
_A2C562ABC_249:;
	sAX	= 0x0001;
	asm I1 = dtxtonech+7;
	asm AR = rm[I1];
	asm AX = AX & AR;
	sfx_CHECKZERO();
	if(__jz__) goto L7573600E_95;
	asm set io[0x09].b0;
	goto	L7573600E_96;
L7573600E_95:;
	asm clr io[0x09].b0;
L7573600E_96:;
_A2C562ABC_250:;
	sAX	= 0x0002;
	asm I1 = dtxtonech+7;
	asm AR = rm[I1];
	asm AX = AX & AR;
	sfx_CHECKZERO();
	if(__jz__) goto L7573600E_97;
	asm set io[0x09].b1;
	goto	L7573600E_98;
L7573600E_97:;
	asm clr io[0x09].b1;
L7573600E_98:;
L7573600E_94:;
_A2C562ABC_251:;
	return;
_KeyShowLEDA84888EC_end:;
_A2C562ABC_252:;
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

// extern dtxtonech:word
// public _KeyShowLEDA84888EC
