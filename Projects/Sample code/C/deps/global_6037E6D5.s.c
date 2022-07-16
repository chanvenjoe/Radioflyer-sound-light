// SUBC 0.8.12 (build Apr 11 2022 16:13:40)
#include "crt0.h"

// .fast segment _fast
// FAST segment (data with / without initial value)
fast __int16 inbuf;
fast __int16 outbuf;

// .fast ends _fast

// .bss segment _rwdata
// DATA segment (with initial value)

// .bss ends _rwdata

// .bss segment _bss
// BSS segment (data without initial value)
align(128) __int16 PCMY[128];

// .bss ends _bss

// CODE segment

.code


interrupt rjmp void _PWM_Entry4EB0B003();
rjmp void _InitialDA4A7CC4();
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
interrupt rjmp void _PWM_Entry4EB0B003()
{
_AECA8DE46_43:;
_AECA8DE46_44:;
	asm	clr io[INTREQ].b0
_AECA8DE46_45:;
	asm	push AX
_AECA8DE46_46:;
	asm	push I0
_AECA8DE46_47:;
	asm	push CBL
	////////////////////////////
_AECA8DE46_48:;
	io[0x3B]	= 0x0007;
	////////////////////////////
_AECA8DE46_49:;
	asm AX = rm[outbuf+0];
_AECA8DE46_50:;
	asm	AR = AX
_AECA8DE46_51:;
	asm	I0 = AR
	////////////////////////////
_AECA8DE46_52:;
_AECA8DE46_53:;
	read_I0P2();
	io[0x16]	= sAX;
_AECA8DE46_54:;
_AECA8DE46_55:;
	read_I0P2();
	io[0x16]	= sAX;
_AECA8DE46_56:;
_AECA8DE46_57:;
	read_I0P2();
	io[0x16]	= sAX;
_AECA8DE46_58:;
_AECA8DE46_59:;
	read_I0P2();
	io[0x16]	= sAX;
_AECA8DE46_60:;
_AECA8DE46_61:;
	get_I0();
	outbuf+0 = sAX
_AECA8DE46_62:;
	asm	pop CBL
_AECA8DE46_63:;
	asm	pop I0
_AECA8DE46_64:;
	asm	pop AX
L0E8FA404_15:;
_AECA8DE46_65:;
	return;
_PWM_Entry4EB0B003_end:;
_AECA8DE46_66:;
}

rjmp void L0E8FA404_16()
{
_AECA8DE46_67:;
	////////////////////////////
_AECA8DE46_68:;
	io[0x16]	= 0x0000;
_AECA8DE46_69:;
	io[0x16]	= 0x0000;
_AECA8DE46_70:;
	io[0x16]	= 0x0000;
_AECA8DE46_71:;
	io[0x16]	= 0x0000;
_AECA8DE46_72:;
	io[0x36]	= 0x0000;
_AECA8DE46_73:;
	io[0x36]	= 0x0000;
_AECA8DE46_74:;
	io[0x36]	= 0x0000;
_AECA8DE46_75:;
	io[0x36]	= 0x0000;
_AECA8DE46_76:;
	io[0x36]	= 0x0000;
_AECA8DE46_77:;
	io[0x36]	= 0x0000;
_AECA8DE46_78:;
	io[0x36]	= 0x0000;
_AECA8DE46_79:;
	io[0x36]	= 0x0000;
_AECA8DE46_80:;
	io[0x3C]	= 0x003F;
_AECA8DE46_81:;
	sAX	= io[0x3C];
_AECA8DE46_82:;
	asm	set io[MISC].b9
_AECA8DE46_83:;
	asm	set io[MISC].b8
_AECA8DE46_84:;
	asm	set io[MISC].b4
L0E8FA404_18:;
_AECA8DE46_85:;
	return;
L0E8FA404_16_end:;
_AECA8DE46_86:;
}

rjmp void L0E8FA404_19()
{
_AECA8DE46_87:;
	////////////////////////////
_AECA8DE46_88:;
	io[0x04]	= 0x000F;
_AECA8DE46_89:;
	io[0x05]	= 0xFFFF;
_AECA8DE46_90:;
	io[0x07]	= 0x0000;
_AECA8DE46_91:;
	io[0x08]	= 0x0000;
L0E8FA404_21:;
_AECA8DE46_92:;
	return;
L0E8FA404_19_end:;
_AECA8DE46_93:;
}

rjmp void _InitialDA4A7CC4()
{
_AECA8DE46_94:;
	////////////////////////////
_AECA8DE46_95:;
	sAX	= 0xFFFF;
	asm I1 = _iADPCCACC469+0;
	*(__int16*)sSI	= sAX
_AECA8DE46_96:;
	asm AX = PCMY+0;
	inbuf+0 = sAX
_AECA8DE46_97:;
	asm AX = PCMY+0;
	outbuf+0 = sAX
_AECA8DE46_98:;
_AECA8DE46_99:;
	NEARCALL(L0E8FA404_16);
_AECA8DE46_100:;
_AECA8DE46_101:;
	NEARCALL(L0E8FA404_19);
L0E8FA404_22:;
_AECA8DE46_102:;
	return;
_InitialDA4A7CC4_end:;
_AECA8DE46_103:;
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

// extern read_I0P2:proc
// extern get_I0:proc
// public inbuf
// public outbuf
// public PCMY
// public _InitialDA4A7CC4
// extern _iADPCCACC469:word
// public _PWM_Entry4EB0B003
