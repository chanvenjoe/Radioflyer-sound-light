
#include "crt0.h"



fast __int16 inbuf;
fast __int16 outbuf;










align(128) __int16 PCMY[128];


						=>>VarRM[0:127]={
 inbuf,outbuf 
};
// CODE segment					=>>VarRM[0:4095]={
 BaseOn128#PCMY[128] 
};

.code


interrupt rjmp void _PWM_Entry4EB0B003();
rjmp void _InitialDA4A7CC4();




.code



.data



.code
interrupt rjmp void _PWM_Entry4EB0B003()	=>>_PWM_Entry4EB0B003:
{						=>>push ax;push bx;push cx;push dx;push r0;push r1;push r2;push r3;push i1;push p1;push mx;push mr0;push mr1;push mr2;ar = p1.hh;push ar;
_AA01D89BC_44:;					=>>_AA01D89BC_44:;
	
_AA01D89BC_45:;					=>>_AA01D89BC_45:;
	io[0x02]	= 0x0000;		=>>AR	= 0x00;io[0x02]	= AR
_AA01D89BC_46:;					=>>_AA01D89BC_46:;
	asm	push AX				=>>push AX
_AA01D89BC_47:;					=>>_AA01D89BC_47:;
	asm	push I0				=>>push I0
_AA01D89BC_48:;					=>>_AA01D89BC_48:;
	asm	push CBL			=>>push CBL
_AA01D89BC_49:;					=>>_AA01D89BC_49:;
	io[0x3B]	= 0x0007;		=>>AR	= 0x07;io[0x3B]	= AR
	
_AA01D89BC_50:;					=>>_AA01D89BC_50:;
	asm AX = rm[outbuf+0];			=>>AX = rm[outbuf+0]//
_AA01D89BC_51:;					=>>_AA01D89BC_51:;
	asm	AR = AX				=>>AR = AX
_AA01D89BC_52:;					=>>_AA01D89BC_52:;
	asm	I0 = AR				=>>I0 = AR
	
_AA01D89BC_53:;					=>>_AA01D89BC_53:;
_AA01D89BC_54:;					=>>_AA01D89BC_54:;
	read_I0P2();				=>>AX	= rm[I0++2];
	io[0x16]	= sAX;			=>>AR	= AX;io[0x16]	= AR
_AA01D89BC_55:;					=>>_AA01D89BC_55:;
_AA01D89BC_56:;					=>>_AA01D89BC_56:;
	read_I0P2();				=>>AX	= rm[I0++2];
	io[0x16]	= sAX;			=>>AR	= AX;io[0x16]	= AR
_AA01D89BC_57:;					=>>_AA01D89BC_57:;
_AA01D89BC_58:;					=>>_AA01D89BC_58:;
	read_I0P2();				=>>AX	= rm[I0++2];
	io[0x16]	= sAX;			=>>AR	= AX;io[0x16]	= AR
_AA01D89BC_59:;					=>>_AA01D89BC_59:;
_AA01D89BC_60:;					=>>_AA01D89BC_60:;
	read_I0P2();				=>>AX	= rm[I0++2];
	io[0x16]	= sAX;			=>>AR	= AX;io[0x16]	= AR
_AA01D89BC_61:;					=>>_AA01D89BC_61:;
_AA01D89BC_62:;					=>>_AA01D89BC_62:;
	get_I0();				=>>push	I0;pop	AX;
	outbuf+0 = sAX				=>>rm[outbuf+0]	= AX
_AA01D89BC_63:;					=>>_AA01D89BC_63:;
	asm	pop CBL				=>>pop CBL
_AA01D89BC_64:;					=>>_AA01D89BC_64:;
	asm	pop I0				=>>pop I0
_AA01D89BC_65:;					=>>_AA01D89BC_65:;
	asm	pop AX				=>>pop AX
L0E8FA404_15:;					=>>L0E8FA404_15:;
_AA01D89BC_66:;					=>>_AA01D89BC_66:;
	return;					=>>pop ar;p1.hh = ar;pop mr2;pop mr1;pop mr0;pop mx;pop p1;pop i1;pop r3;pop r2;pop r1;pop r0;pop dx;pop cx;pop bx;pop ax;reti
_PWM_Entry4EB0B003_end:;			=>>_PWM_Entry4EB0B003_end:;
_AA01D89BC_67:;					=>>_AA01D89BC_67:;
}

rjmp void L0E8FA404_16()			=>>L0E8FA404_16:
{
_AA01D89BC_68:;					=>>_AA01D89BC_68:;
	
_AA01D89BC_69:;					=>>_AA01D89BC_69:;
	io[0x16]	= 0x0000;		=>>AR	= 0x00;io[0x16]	= AR
_AA01D89BC_70:;					=>>_AA01D89BC_70:;
	io[0x16]	= 0x0000;		=>>AR	= 0x00;io[0x16]	= AR
_AA01D89BC_71:;					=>>_AA01D89BC_71:;
	io[0x16]	= 0x0000;		=>>AR	= 0x00;io[0x16]	= AR
_AA01D89BC_72:;					=>>_AA01D89BC_72:;
	io[0x16]	= 0x0000;		=>>AR	= 0x00;io[0x16]	= AR
_AA01D89BC_73:;					=>>_AA01D89BC_73:;
	io[0x36]	= 0x0000;		=>>AR	= 0x00;io[0x36]	= AR
_AA01D89BC_74:;					=>>_AA01D89BC_74:;
	io[0x36]	= 0x0000;		=>>AR	= 0x00;io[0x36]	= AR
_AA01D89BC_75:;					=>>_AA01D89BC_75:;
	io[0x36]	= 0x0000;		=>>AR	= 0x00;io[0x36]	= AR
_AA01D89BC_76:;					=>>_AA01D89BC_76:;
	io[0x36]	= 0x0000;		=>>AR	= 0x00;io[0x36]	= AR
_AA01D89BC_77:;					=>>_AA01D89BC_77:;
	io[0x36]	= 0x0000;		=>>AR	= 0x00;io[0x36]	= AR
_AA01D89BC_78:;					=>>_AA01D89BC_78:;
	io[0x36]	= 0x0000;		=>>AR	= 0x00;io[0x36]	= AR
_AA01D89BC_79:;					=>>_AA01D89BC_79:;
	io[0x36]	= 0x0000;		=>>AR	= 0x00;io[0x36]	= AR
_AA01D89BC_80:;					=>>_AA01D89BC_80:;
	io[0x36]	= 0x0000;		=>>AR	= 0x00;io[0x36]	= AR
_AA01D89BC_81:;					=>>_AA01D89BC_81:;
	io[0x3C]	= 0x003F;		=>>AR	= 0x3F;io[0x3C]	= AR
_AA01D89BC_82:;					=>>_AA01D89BC_82:;
	sAX	= io[0x3C];			=>>AR	= io[0x3C];AX	= AR
_AA01D89BC_83:;					=>>_AA01D89BC_83:;
	asm	set io[MISC].b9			=>>set io[MISC].b9
_AA01D89BC_84:;					=>>_AA01D89BC_84:;
	asm	set io[MISC].b8			=>>set io[MISC].b8
_AA01D89BC_85:;					=>>_AA01D89BC_85:;
	asm	set io[MISC].b4			=>>set io[MISC].b4
L0E8FA404_18:;					=>>L0E8FA404_18:;
_AA01D89BC_86:;					=>>_AA01D89BC_86:;
	return;					=>>rets
L0E8FA404_16_end:;				=>>L0E8FA404_16_end:;
_AA01D89BC_87:;					=>>_AA01D89BC_87:;
}

rjmp void L0E8FA404_19()			=>>L0E8FA404_19:
{
_AA01D89BC_88:;					=>>_AA01D89BC_88:;
	
_AA01D89BC_89:;					=>>_AA01D89BC_89:;
	io[0x05]	= 0xFFFF;		=>>AR	= 0xFFFF;io[0x05]	= AR
_AA01D89BC_90:;					=>>_AA01D89BC_90:;
	io[0x08]	= 0x0000;		=>>AR	= 0x00;io[0x08]	= AR
L0E8FA404_21:;					=>>L0E8FA404_21:;
_AA01D89BC_91:;					=>>_AA01D89BC_91:;
	return;					=>>rets
L0E8FA404_19_end:;				=>>L0E8FA404_19_end:;
_AA01D89BC_92:;					=>>_AA01D89BC_92:;
}

rjmp void _InitialDA4A7CC4()			=>>_InitialDA4A7CC4:
{
_AA01D89BC_93:;					=>>_AA01D89BC_93:;
	
_AA01D89BC_94:;					=>>_AA01D89BC_94:;
	sAX	= 0xFFFF;			=>>AX	= 0xFFFF
	asm I1 = _iADPCCACC469+0;		=>>I1 = _iADPCCACC469+0//
	*(__int16*)sSI	= sAX			=>>rm[I1]	= AX
_AA01D89BC_95:;					=>>_AA01D89BC_95:;
	asm AX = PCMY+0;			=>>AX = PCMY+0//
	inbuf+0 = sAX				=>>rm[inbuf+0]	= AX
_AA01D89BC_96:;					=>>_AA01D89BC_96:;
	asm AX = PCMY+0;			=>>AX = PCMY+0//
	outbuf+0 = sAX				=>>rm[outbuf+0]	= AX
_AA01D89BC_97:;					=>>_AA01D89BC_97:;
_AA01D89BC_98:;					=>>_AA01D89BC_98:;
	NEARCALL(L0E8FA404_16);			=>>call	L0E8FA404_16
_AA01D89BC_99:;					=>>_AA01D89BC_99:;
_AA01D89BC_100:;				=>>_AA01D89BC_100:;
	NEARCALL(L0E8FA404_19);			=>>call	L0E8FA404_19
L0E8FA404_22:;					=>>L0E8FA404_22:;
_AA01D89BC_101:;				=>>_AA01D89BC_101:;
	return;					=>>rets
_InitialDA4A7CC4_end:;				=>>_InitialDA4A7CC4_end:;
_AA01D89BC_102:;				=>>_AA01D89BC_102:;
}








.code



.code







.data





.code










