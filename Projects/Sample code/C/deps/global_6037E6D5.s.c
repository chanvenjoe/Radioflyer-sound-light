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
_AE3845712_43:;
_AE3845712_44:;
	asm	clr io[INTREQ].b0
_AE3845712_45:;
	asm	push AX
_AE3845712_46:;
	asm	push I0
_AE3845712_47:;
	asm	push CBL
	////////////////////////////
_AE3845712_48:;
	io[0x3B]	= 0x0007;
	////////////////////////////
_AE3845712_49:;
	asm AX = rm[outbuf+0];
_AE3845712_50:;
	asm	AR = AX
_AE3845712_51:;
	asm	I0 = AR
	////////////////////////////
_AE3845712_52:;
_AE3845712_53:;
	read_I0P2();
	io[0x16]	= sAX;
_AE3845712_54:;
_AE3845712_55:;
	read_I0P2();
	io[0x16]	= sAX;
_AE3845712_56:;
_AE3845712_57:;
	read_I0P2();
	io[0x16]	= sAX;
_AE3845712_58:;
_AE3845712_59:;
	read_I0P2();
	io[0x16]	= sAX;
_AE3845712_60:;
_AE3845712_61:;
	get_I0();
	outbuf+0 = sAX
_AE3845712_62:;
	asm	pop CBL
_AE3845712_63:;
	asm	pop I0
_AE3845712_64:;
	asm	pop AX
L0E8FA404_15:;
_AE3845712_65:;
	return;
_PWM_Entry4EB0B003_end:;
_AE3845712_66:;
}

rjmp void L0E8FA404_16()
{
_AE3845712_67:;
	////////////////////////////
_AE3845712_68:;
	io[0x16]	= 0x0000;
_AE3845712_69:;
	io[0x16]	= 0x0000;
_AE3845712_70:;
	io[0x16]	= 0x0000;
_AE3845712_71:;
	io[0x16]	= 0x0000;
_AE3845712_72:;
	io[0x36]	= 0x0000;
_AE3845712_73:;
	io[0x36]	= 0x0000;
_AE3845712_74:;
	io[0x36]	= 0x0000;
_AE3845712_75:;
	io[0x36]	= 0x0000;
_AE3845712_76:;
	io[0x36]	= 0x0000;
_AE3845712_77:;
	io[0x36]	= 0x0000;
_AE3845712_78:;
	io[0x36]	= 0x0000;
_AE3845712_79:;
	io[0x36]	= 0x0000;
_AE3845712_80:;
	io[0x3C]	= 0x003F;
_AE3845712_81:;
	sAX	= io[0x3C];
_AE3845712_82:;
	asm	set io[MISC].b9
_AE3845712_83:;
	asm	set io[MISC].b8
_AE3845712_84:;
	asm	set io[MISC].b4
L0E8FA404_18:;
_AE3845712_85:;
	return;
L0E8FA404_16_end:;
_AE3845712_86:;
}

rjmp void L0E8FA404_19()
{
_AE3845712_87:;
	////////////////////////////
_AE3845712_88:;
	io[0x04]	= 0x000F;
_AE3845712_89:;
	io[0x05]	= 0xFFFF;
_AE3845712_90:;
	io[0x07]	= 0x0000;
_AE3845712_91:;
	io[0x08]	= 0x0000;
L0E8FA404_21:;
_AE3845712_92:;
	return;
L0E8FA404_19_end:;
_AE3845712_93:;
}

rjmp void _InitialDA4A7CC4()
{
_AE3845712_94:;
	////////////////////////////
_AE3845712_95:;
	sAX	= 0xFFFF;
	asm I1 = _iADPCCACC469+0;
	*(__int16*)sSI	= sAX
_AE3845712_96:;
	asm AX = PCMY+0;
	inbuf+0 = sAX
_AE3845712_97:;
	asm AX = PCMY+0;
	outbuf+0 = sAX
_AE3845712_98:;
_AE3845712_99:;
	NEARCALL(L0E8FA404_16);
_AE3845712_100:;
_AE3845712_101:;
	NEARCALL(L0E8FA404_19);
L0E8FA404_22:;
_AE3845712_102:;
	return;
_InitialDA4A7CC4_end:;
_AE3845712_103:;
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
