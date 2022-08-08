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
_A1748455A_44:;
	////////////////////////////
_A1748455A_45:;
	io[0x02]	= 0x0000;
_A1748455A_46:;
	asm	push AX
_A1748455A_47:;
	asm	push I0
_A1748455A_48:;
	asm	push CBL
_A1748455A_49:;
	io[0x3B]	= 0x0007;
	////////////////////////////
_A1748455A_50:;
	asm AX = rm[outbuf+0];
_A1748455A_51:;
	asm	AR = AX
_A1748455A_52:;
	asm	I0 = AR
	////////////////////////////
_A1748455A_53:;
_A1748455A_54:;
	read_I0P2();
	io[0x16]	= sAX;
_A1748455A_55:;
_A1748455A_56:;
	read_I0P2();
	io[0x16]	= sAX;
_A1748455A_57:;
_A1748455A_58:;
	read_I0P2();
	io[0x16]	= sAX;
_A1748455A_59:;
_A1748455A_60:;
	read_I0P2();
	io[0x16]	= sAX;
_A1748455A_61:;
_A1748455A_62:;
	get_I0();
	outbuf+0 = sAX
_A1748455A_63:;
	asm	pop CBL
_A1748455A_64:;
	asm	pop I0
_A1748455A_65:;
	asm	pop AX
L0E8FA404_15:;
_A1748455A_66:;
	return;
_PWM_Entry4EB0B003_end:;
_A1748455A_67:;
}

rjmp void L0E8FA404_16()
{
_A1748455A_68:;
	////////////////////////////
_A1748455A_69:;
	io[0x16]	= 0x0000;
_A1748455A_70:;
	io[0x16]	= 0x0000;
_A1748455A_71:;
	io[0x16]	= 0x0000;
_A1748455A_72:;
	io[0x16]	= 0x0000;
_A1748455A_73:;
	io[0x36]	= 0x0000;
_A1748455A_74:;
	io[0x36]	= 0x0000;
_A1748455A_75:;
	io[0x36]	= 0x0000;
_A1748455A_76:;
	io[0x36]	= 0x0000;
_A1748455A_77:;
	io[0x36]	= 0x0000;
_A1748455A_78:;
	io[0x36]	= 0x0000;
_A1748455A_79:;
	io[0x36]	= 0x0000;
_A1748455A_80:;
	io[0x36]	= 0x0000;
_A1748455A_81:;
	io[0x3C]	= 0x003F;
_A1748455A_82:;
	sAX	= io[0x3C];
_A1748455A_83:;
	asm	set io[MISC].b9
_A1748455A_84:;
	asm	set io[MISC].b8
_A1748455A_85:;
	asm	set io[MISC].b4
L0E8FA404_18:;
_A1748455A_86:;
	return;
L0E8FA404_16_end:;
_A1748455A_87:;
}

rjmp void L0E8FA404_19()
{
_A1748455A_88:;
	////////////////////////////
_A1748455A_89:;
	io[0x05]	= 0xFFFF;
_A1748455A_90:;
	io[0x08]	= 0x0000;
L0E8FA404_21:;
_A1748455A_91:;
	return;
L0E8FA404_19_end:;
_A1748455A_92:;
}

rjmp void _InitialDA4A7CC4()
{
_A1748455A_93:;
	////////////////////////////
_A1748455A_94:;
	sAX	= 0xFFFF;
	asm I1 = _iADPCCACC469+0;
	*(__int16*)sSI	= sAX
_A1748455A_95:;
	asm AX = PCMY+0;
	inbuf+0 = sAX
_A1748455A_96:;
	asm AX = PCMY+0;
	outbuf+0 = sAX
_A1748455A_97:;
_A1748455A_98:;
	NEARCALL(L0E8FA404_16);
_A1748455A_99:;
_A1748455A_100:;
	NEARCALL(L0E8FA404_19);
L0E8FA404_22:;
_A1748455A_101:;
	return;
_InitialDA4A7CC4_end:;
_A1748455A_102:;
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
