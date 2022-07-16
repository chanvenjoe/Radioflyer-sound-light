
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
_AECA8DE46_43:;					=>>_AECA8DE46_43:;
_AECA8DE46_44:;					=>>_AECA8DE46_44:;
	asm	clr io[INTREQ].b0		=>>clr io[INTREQ].b0
_AECA8DE46_45:;					=>>_AECA8DE46_45:;
	asm	push AX				=>>push AX
_AECA8DE46_46:;					=>>_AECA8DE46_46:;
	asm	push I0				=>>push I0
_AECA8DE46_47:;					=>>_AECA8DE46_47:;
	asm	push CBL			=>>push CBL
	
_AECA8DE46_48:;					=>>_AECA8DE46_48:;
	io[0x3B]	= 0x0007;		=>>AR	= 0x07;io[0x3B]	= AR
	
_AECA8DE46_49:;					=>>_AECA8DE46_49:;
	asm AX = rm[outbuf+0];			=>>AX = rm[outbuf+0]//
_AECA8DE46_50:;					=>>_AECA8DE46_50:;
	asm	AR = AX				=>>AR = AX
_AECA8DE46_51:;					=>>_AECA8DE46_51:;
	asm	I0 = AR				=>>I0 = AR
	
_AECA8DE46_52:;					=>>_AECA8DE46_52:;
_AECA8DE46_53:;					=>>_AECA8DE46_53:;
	read_I0P2();				=>>AX	= rm[I0++2];
	io[0x16]	= sAX;			=>>AR	= AX;io[0x16]	= AR
_AECA8DE46_54:;					=>>_AECA8DE46_54:;
_AECA8DE46_55:;					=>>_AECA8DE46_55:;
	read_I0P2();				=>>AX	= rm[I0++2];
	io[0x16]	= sAX;			=>>AR	= AX;io[0x16]	= AR
_AECA8DE46_56:;					=>>_AECA8DE46_56:;
_AECA8DE46_57:;					=>>_AECA8DE46_57:;
	read_I0P2();				=>>AX	= rm[I0++2];
	io[0x16]	= sAX;			=>>AR	= AX;io[0x16]	= AR
_AECA8DE46_58:;					=>>_AECA8DE46_58:;
_AECA8DE46_59:;					=>>_AECA8DE46_59:;
	read_I0P2();				=>>AX	= rm[I0++2];
	io[0x16]	= sAX;			=>>AR	= AX;io[0x16]	= AR
_AECA8DE46_60:;					=>>_AECA8DE46_60:;
_AECA8DE46_61:;					=>>_AECA8DE46_61:;
	get_I0();				=>>push	I0;pop	AX;
	outbuf+0 = sAX				=>>rm[outbuf+0]	= AX
_AECA8DE46_62:;					=>>_AECA8DE46_62:;
	asm	pop CBL				=>>pop CBL
_AECA8DE46_63:;					=>>_AECA8DE46_63:;
	asm	pop I0				=>>pop I0
_AECA8DE46_64:;					=>>_AECA8DE46_64:;
	asm	pop AX				=>>pop AX
L0E8FA404_15:;					=>>L0E8FA404_15:;
_AECA8DE46_65:;					=>>_AECA8DE46_65:;
	return;					=>>pop ar;p1.hh = ar;pop mr2;pop mr1;pop mr0;pop mx;pop p1;pop i1;pop r3;pop r2;pop r1;pop r0;pop dx;pop cx;pop bx;pop ax;reti
_PWM_Entry4EB0B003_end:;			=>>_PWM_Entry4EB0B003_end:;
_AECA8DE46_66:;					=>>_AECA8DE46_66:;
}

rjmp void L0E8FA404_16()			=>>L0E8FA404_16:
{
_AECA8DE46_67:;					=>>_AECA8DE46_67:;
	
_AECA8DE46_68:;					=>>_AECA8DE46_68:;
	io[0x16]	= 0x0000;		=>>AR	= 0x00;io[0x16]	= AR
_AECA8DE46_69:;					=>>_AECA8DE46_69:;
	io[0x16]	= 0x0000;		=>>AR	= 0x00;io[0x16]	= AR
_AECA8DE46_70:;					=>>_AECA8DE46_70:;
	io[0x16]	= 0x0000;		=>>AR	= 0x00;io[0x16]	= AR
_AECA8DE46_71:;					=>>_AECA8DE46_71:;
	io[0x16]	= 0x0000;		=>>AR	= 0x00;io[0x16]	= AR
_AECA8DE46_72:;					=>>_AECA8DE46_72:;
	io[0x36]	= 0x0000;		=>>AR	= 0x00;io[0x36]	= AR
_AECA8DE46_73:;					=>>_AECA8DE46_73:;
	io[0x36]	= 0x0000;		=>>AR	= 0x00;io[0x36]	= AR
_AECA8DE46_74:;					=>>_AECA8DE46_74:;
	io[0x36]	= 0x0000;		=>>AR	= 0x00;io[0x36]	= AR
_AECA8DE46_75:;					=>>_AECA8DE46_75:;
	io[0x36]	= 0x0000;		=>>AR	= 0x00;io[0x36]	= AR
_AECA8DE46_76:;					=>>_AECA8DE46_76:;
	io[0x36]	= 0x0000;		=>>AR	= 0x00;io[0x36]	= AR
_AECA8DE46_77:;					=>>_AECA8DE46_77:;
	io[0x36]	= 0x0000;		=>>AR	= 0x00;io[0x36]	= AR
_AECA8DE46_78:;					=>>_AECA8DE46_78:;
	io[0x36]	= 0x0000;		=>>AR	= 0x00;io[0x36]	= AR
_AECA8DE46_79:;					=>>_AECA8DE46_79:;
	io[0x36]	= 0x0000;		=>>AR	= 0x00;io[0x36]	= AR
_AECA8DE46_80:;					=>>_AECA8DE46_80:;
	io[0x3C]	= 0x003F;		=>>AR	= 0x3F;io[0x3C]	= AR
_AECA8DE46_81:;					=>>_AECA8DE46_81:;
	sAX	= io[0x3C];			=>>AR	= io[0x3C];AX	= AR
_AECA8DE46_82:;					=>>_AECA8DE46_82:;
	asm	set io[MISC].b9			=>>set io[MISC].b9
_AECA8DE46_83:;					=>>_AECA8DE46_83:;
	asm	set io[MISC].b8			=>>set io[MISC].b8
_AECA8DE46_84:;					=>>_AECA8DE46_84:;
	asm	set io[MISC].b4			=>>set io[MISC].b4
L0E8FA404_18:;					=>>L0E8FA404_18:;
_AECA8DE46_85:;					=>>_AECA8DE46_85:;
	return;					=>>rets
L0E8FA404_16_end:;				=>>L0E8FA404_16_end:;
_AECA8DE46_86:;					=>>_AECA8DE46_86:;
}

rjmp void L0E8FA404_19()			=>>L0E8FA404_19:
{
_AECA8DE46_87:;					=>>_AECA8DE46_87:;
	
_AECA8DE46_88:;					=>>_AECA8DE46_88:;
	io[0x04]	= 0x000F;		=>>AR	= 0x0F;io[0x04]	= AR
_AECA8DE46_89:;					=>>_AECA8DE46_89:;
	io[0x05]	= 0xFFFF;		=>>AR	= 0xFFFF;io[0x05]	= AR
_AECA8DE46_90:;					=>>_AECA8DE46_90:;
	io[0x07]	= 0x0000;		=>>AR	= 0x00;io[0x07]	= AR
_AECA8DE46_91:;					=>>_AECA8DE46_91:;
	io[0x08]	= 0x0000;		=>>AR	= 0x00;io[0x08]	= AR
L0E8FA404_21:;					=>>L0E8FA404_21:;
_AECA8DE46_92:;					=>>_AECA8DE46_92:;
	return;					=>>rets
L0E8FA404_19_end:;				=>>L0E8FA404_19_end:;
_AECA8DE46_93:;					=>>_AECA8DE46_93:;
}

rjmp void _InitialDA4A7CC4()			=>>_InitialDA4A7CC4:
{
_AECA8DE46_94:;					=>>_AECA8DE46_94:;
	
_AECA8DE46_95:;					=>>_AECA8DE46_95:;
	sAX	= 0xFFFF;			=>>AX	= 0xFFFF
	asm I1 = _iADPCCACC469+0;		=>>I1 = _iADPCCACC469+0//
	*(__int16*)sSI	= sAX			=>>rm[I1]	= AX
_AECA8DE46_96:;					=>>_AECA8DE46_96:;
	asm AX = PCMY+0;			=>>AX = PCMY+0//
	inbuf+0 = sAX				=>>rm[inbuf+0]	= AX
_AECA8DE46_97:;					=>>_AECA8DE46_97:;
	asm AX = PCMY+0;			=>>AX = PCMY+0//
	outbuf+0 = sAX				=>>rm[outbuf+0]	= AX
_AECA8DE46_98:;					=>>_AECA8DE46_98:;
_AECA8DE46_99:;					=>>_AECA8DE46_99:;
	NEARCALL(L0E8FA404_16);			=>>call	L0E8FA404_16
_AECA8DE46_100:;				=>>_AECA8DE46_100:;
_AECA8DE46_101:;				=>>_AECA8DE46_101:;
	NEARCALL(L0E8FA404_19);			=>>call	L0E8FA404_19
L0E8FA404_22:;					=>>L0E8FA404_22:;
_AECA8DE46_102:;				=>>_AECA8DE46_102:;
	return;					=>>rets
_InitialDA4A7CC4_end:;				=>>_InitialDA4A7CC4_end:;
_AECA8DE46_103:;				=>>_AECA8DE46_103:;
}








.code



.code







.data





.code










