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
_A569F39CC_44:;
	////////////////////////////
_A569F39CC_45:;
	io[0x02]	= 0x0000;
_A569F39CC_46:;
	asm	push AX
_A569F39CC_47:;
	asm	push I0
_A569F39CC_48:;
	asm	push CBL
_A569F39CC_49:;
	io[0x3B]	= 0x0007;
	////////////////////////////
_A569F39CC_50:;
	asm AX = rm[outbuf+0];
_A569F39CC_51:;
	asm	AR = AX
_A569F39CC_52:;
	asm	I0 = AR
	////////////////////////////
_A569F39CC_53:;
_A569F39CC_54:;
	read_I0P2();
	io[0x16]	= sAX;
_A569F39CC_55:;
_A569F39CC_56:;
	read_I0P2();
	io[0x16]	= sAX;
_A569F39CC_57:;
_A569F39CC_58:;
	read_I0P2();
	io[0x16]	= sAX;
_A569F39CC_59:;
_A569F39CC_60:;
	read_I0P2();
	io[0x16]	= sAX;
_A569F39CC_61:;
_A569F39CC_62:;
	get_I0();
	outbuf+0 = sAX
_A569F39CC_63:;
	asm	pop CBL
_A569F39CC_64:;
	asm	pop I0
_A569F39CC_65:;
	asm	pop AX
L0E8FA404_15:;
_A569F39CC_66:;
	return;
_PWM_Entry4EB0B003_end:;
_A569F39CC_67:;
}

rjmp void L0E8FA404_16()
{
_A569F39CC_68:;
	////////////////////////////
_A569F39CC_69:;
	io[0x16]	= 0x0000;
_A569F39CC_70:;
	io[0x16]	= 0x0000;
_A569F39CC_71:;
	io[0x16]	= 0x0000;
_A569F39CC_72:;
	io[0x16]	= 0x0000;
_A569F39CC_73:;
	io[0x36]	= 0x0000;
_A569F39CC_74:;
	io[0x36]	= 0x0000;
_A569F39CC_75:;
	io[0x36]	= 0x0000;
_A569F39CC_76:;
	io[0x36]	= 0x0000;
_A569F39CC_77:;
	io[0x36]	= 0x0000;
_A569F39CC_78:;
	io[0x36]	= 0x0000;
_A569F39CC_79:;
	io[0x36]	= 0x0000;
_A569F39CC_80:;
	io[0x36]	= 0x0000;
_A569F39CC_81:;
	io[0x3C]	= 0x003F;
_A569F39CC_82:;
	sAX	= io[0x3C];
_A569F39CC_83:;
	asm	set io[MISC].b9
_A569F39CC_84:;
	asm	set io[MISC].b8
_A569F39CC_85:;
	asm	set io[MISC].b4
L0E8FA404_18:;
_A569F39CC_86:;
	return;
L0E8FA404_16_end:;
_A569F39CC_87:;
}

rjmp void L0E8FA404_19()
{
_A569F39CC_88:;
	////////////////////////////
_A569F39CC_89:;
	io[0x05]	= 0xFFFF;
_A569F39CC_90:;
	io[0x08]	= 0x0000;
L0E8FA404_21:;
_A569F39CC_91:;
	return;
L0E8FA404_19_end:;
_A569F39CC_92:;
}

rjmp void _InitialDA4A7CC4()
{
_A569F39CC_93:;
	////////////////////////////
_A569F39CC_94:;
	sAX	= 0xFFFF;
	asm I1 = _iADPCCACC469+0;
	*(__int16*)sSI	= sAX
_A569F39CC_95:;
	asm AX = PCMY+0;
	inbuf+0 = sAX
_A569F39CC_96:;
	asm AX = PCMY+0;
	outbuf+0 = sAX
_A569F39CC_97:;
_A569F39CC_98:;
	NEARCALL(L0E8FA404_16);
_A569F39CC_99:;
_A569F39CC_100:;
	NEARCALL(L0E8FA404_19);
L0E8FA404_22:;
_A569F39CC_101:;
	return;
_InitialDA4A7CC4_end:;
_A569F39CC_102:;
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
