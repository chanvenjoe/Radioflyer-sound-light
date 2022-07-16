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


rjmp void _InitialDA4A7CC4();
// RCODE segment

// .model speechdsp
// .code segment _text
.code
rjmp void L0E8FA404_24()
{
_A0432E234_66:;
	////////////////////////////
_A0432E234_67:;
	io[0x16]	= 0x0000;
_A0432E234_68:;
	io[0x16]	= 0x0000;
_A0432E234_69:;
	io[0x16]	= 0x0000;
_A0432E234_70:;
	io[0x16]	= 0x0000;
_A0432E234_71:;
	io[0x36]	= 0x0000;
_A0432E234_72:;
	io[0x36]	= 0x0000;
_A0432E234_73:;
	io[0x36]	= 0x0000;
_A0432E234_74:;
	io[0x36]	= 0x0000;
_A0432E234_75:;
	io[0x36]	= 0x0000;
_A0432E234_76:;
	io[0x36]	= 0x0000;
_A0432E234_77:;
	io[0x36]	= 0x0000;
_A0432E234_78:;
	io[0x36]	= 0x0000;
_A0432E234_79:;
	io[0x3E]	= 0x2000;
_A0432E234_80:;
	io[0x3C]	= 0x003F;
_A0432E234_81:;
	sAX	= io[0x3C];
_A0432E234_82:;
	asm	set io[MISC].b9
_A0432E234_83:;
	asm	set io[MISC].b8
_A0432E234_84:;
	asm	set io[MISC].b4
L0E8FA404_26:;
_A0432E234_85:;
	return;
L0E8FA404_24_end:;
_A0432E234_86:;
}

rjmp void L0E8FA404_27()
{
_A0432E234_87:;
	////////////////////////////
_A0432E234_88:;
	io[0x04]	= 0x000F;
_A0432E234_89:;
	io[0x05]	= 0xFFFF;
_A0432E234_90:;
	io[0x07]	= 0x0000;
_A0432E234_91:;
	io[0x08]	= 0xFFFF;
L0E8FA404_29:;
_A0432E234_92:;
	return;
L0E8FA404_27_end:;
_A0432E234_93:;
}

rjmp void _InitialDA4A7CC4()
{
_A0432E234_94:;
	////////////////////////////
_A0432E234_95:;
	sAX	= 0xFFFF;
	asm I1 = _iADPCCACC469+0;
	*(__int16*)sSI	= sAX
_A0432E234_96:;
_A0432E234_97:;
	NEARCALL(L0E8FA404_24);
_A0432E234_98:;
_A0432E234_99:;
	NEARCALL(L0E8FA404_27);
L0E8FA404_30:;
_A0432E234_100:;
	return;
_InitialDA4A7CC4_end:;
_A0432E234_101:;
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

// public _InitialDA4A7CC4
// extern _iADPCCACC469:word
// extern PWM_ENTRY:proc
