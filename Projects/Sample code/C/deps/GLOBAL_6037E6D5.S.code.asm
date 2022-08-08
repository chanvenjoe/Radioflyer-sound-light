; global.c Code Start!!;
VarRM[0:127]={
 inbuf,outbuf 
};

; //// CODE segment					
VarRM[0:4095]={
 BaseOn128#PCMY[128] 
};

; //
.code
; //
; //
; //interrupt rjmp void _PWM_Entry4EB0B003();
; //rjmp void _InitialDA4A7CC4();
; //
; //
; //
; //
.code
; //
; //
; //
.data
; //
; //
; //
.code
; //interrupt rjmp void _PWM_Entry4EB0B003()	
_PWM_Entry4EB0B003:
; //{						
	push ax
	push bx
	push cx
	push dx
	push r0
	push r1
	push r2
	push r3
	push i1
	push p1
	push mx
	push mr0
	push mr1
	push mr2
	ar = p1.hh
	push ar
; //_A1690E9DD_44:;					
_A1690E9DD_44:
; //	
; //_A1690E9DD_45:;					
_A1690E9DD_45:
; //	io[0x02]	= 0x0000;		
	AR	= 0x00
	io[0x02]	= AR
; //_A1690E9DD_46:;					
_A1690E9DD_46:
; //	asm	push AX				
	push AX
; //_A1690E9DD_47:;					
_A1690E9DD_47:
; //	asm	push I0				
	push I0
; //_A1690E9DD_48:;					
_A1690E9DD_48:
; //	asm	push CBL			
	push CBL
; //_A1690E9DD_49:;					
_A1690E9DD_49:
; //	io[0x3B]	= 0x0007;		
	AR	= 0x07
	io[0x3B]	= AR
; //	
; //_A1690E9DD_50:;					
_A1690E9DD_50:
; //	asm AX = rm[outbuf+0];			
	AX = rm[outbuf+0]//
; //_A1690E9DD_51:;					
_A1690E9DD_51:
; //	asm	AR = AX				
	AR = AX
; //_A1690E9DD_52:;					
_A1690E9DD_52:
; //	asm	I0 = AR				
	I0 = AR
; //	
; //_A1690E9DD_53:;					
_A1690E9DD_53:
; //_A1690E9DD_54:;					
_A1690E9DD_54:
; //	read_I0P2();				
	AX	= rm[I0++2]
; //	io[0x16]	= sAX;			
	AR	= AX
	io[0x16]	= AR
; //_A1690E9DD_55:;					
_A1690E9DD_55:
; //_A1690E9DD_56:;					
_A1690E9DD_56:
; //	read_I0P2();				
	AX	= rm[I0++2]
; //	io[0x16]	= sAX;			
	AR	= AX
	io[0x16]	= AR
; //_A1690E9DD_57:;					
_A1690E9DD_57:
; //_A1690E9DD_58:;					
_A1690E9DD_58:
; //	read_I0P2();				
	AX	= rm[I0++2]
; //	io[0x16]	= sAX;			
	AR	= AX
	io[0x16]	= AR
; //_A1690E9DD_59:;					
_A1690E9DD_59:
; //_A1690E9DD_60:;					
_A1690E9DD_60:
; //	read_I0P2();				
	AX	= rm[I0++2]
; //	io[0x16]	= sAX;			
	AR	= AX
	io[0x16]	= AR
; //_A1690E9DD_61:;					
_A1690E9DD_61:
; //_A1690E9DD_62:;					
_A1690E9DD_62:
; //	get_I0();				
	push	I0
	pop	AX
; //	outbuf+0 = sAX				
	rm[outbuf+0]	= AX
; //_A1690E9DD_63:;					
_A1690E9DD_63:
; //	asm	pop CBL				
	pop CBL
; //_A1690E9DD_64:;					
_A1690E9DD_64:
; //	asm	pop I0				
	pop I0
; //_A1690E9DD_65:;					
_A1690E9DD_65:
; //	asm	pop AX				
	pop AX
; //L0E8FA404_15:;					
L0E8FA404_15:
; //_A1690E9DD_66:;					
_A1690E9DD_66:
; //	return;					
	pop ar
	p1.hh = ar
	pop mr2
	pop mr1
	pop mr0
	pop mx
	pop p1
	pop i1
	pop r3
	pop r2
	pop r1
	pop r0
	pop dx
	pop cx
	pop bx
	pop ax
	reti
; //_PWM_Entry4EB0B003_end:;			
_PWM_Entry4EB0B003_end:
; //_A1690E9DD_67:;					
_A1690E9DD_67:
; //}
; //
; //rjmp void L0E8FA404_16()			
L0E8FA404_16:
; //{
; //_A1690E9DD_68:;					
_A1690E9DD_68:
; //	
; //_A1690E9DD_69:;					
_A1690E9DD_69:
; //	io[0x16]	= 0x0000;		
	AR	= 0x00
	io[0x16]	= AR
; //_A1690E9DD_70:;					
_A1690E9DD_70:
; //	io[0x16]	= 0x0000;		
	AR	= 0x00
	io[0x16]	= AR
; //_A1690E9DD_71:;					
_A1690E9DD_71:
; //	io[0x16]	= 0x0000;		
	AR	= 0x00
	io[0x16]	= AR
; //_A1690E9DD_72:;					
_A1690E9DD_72:
; //	io[0x16]	= 0x0000;		
	AR	= 0x00
	io[0x16]	= AR
; //_A1690E9DD_73:;					
_A1690E9DD_73:
; //	io[0x36]	= 0x0000;		
	AR	= 0x00
	io[0x36]	= AR
; //_A1690E9DD_74:;					
_A1690E9DD_74:
; //	io[0x36]	= 0x0000;		
	AR	= 0x00
	io[0x36]	= AR
; //_A1690E9DD_75:;					
_A1690E9DD_75:
; //	io[0x36]	= 0x0000;		
	AR	= 0x00
	io[0x36]	= AR
; //_A1690E9DD_76:;					
_A1690E9DD_76:
; //	io[0x36]	= 0x0000;		
	AR	= 0x00
	io[0x36]	= AR
; //_A1690E9DD_77:;					
_A1690E9DD_77:
; //	io[0x36]	= 0x0000;		
	AR	= 0x00
	io[0x36]	= AR
; //_A1690E9DD_78:;					
_A1690E9DD_78:
; //	io[0x36]	= 0x0000;		
	AR	= 0x00
	io[0x36]	= AR
; //_A1690E9DD_79:;					
_A1690E9DD_79:
; //	io[0x36]	= 0x0000;		
	AR	= 0x00
	io[0x36]	= AR
; //_A1690E9DD_80:;					
_A1690E9DD_80:
; //	io[0x36]	= 0x0000;		
	AR	= 0x00
	io[0x36]	= AR
; //_A1690E9DD_81:;					
_A1690E9DD_81:
; //	io[0x3C]	= 0x003F;		
	AR	= 0x3F
	io[0x3C]	= AR
; //_A1690E9DD_82:;					
_A1690E9DD_82:
; //	sAX	= io[0x3C];			
	AR	= io[0x3C]
	AX	= AR
; //_A1690E9DD_83:;					
_A1690E9DD_83:
; //	asm	set io[MISC].b9			
	set io[MISC].b9
; //_A1690E9DD_84:;					
_A1690E9DD_84:
; //	asm	set io[MISC].b8			
	set io[MISC].b8
; //_A1690E9DD_85:;					
_A1690E9DD_85:
; //	asm	set io[MISC].b4			
	set io[MISC].b4
; //L0E8FA404_18:;					
L0E8FA404_18:
; //_A1690E9DD_86:;					
_A1690E9DD_86:
; //	return;					
	rets
; //L0E8FA404_16_end:;				
L0E8FA404_16_end:
; //_A1690E9DD_87:;					
_A1690E9DD_87:
; //}
; //
; //rjmp void L0E8FA404_19()			
L0E8FA404_19:
; //{
; //_A1690E9DD_88:;					
_A1690E9DD_88:
; //	
; //_A1690E9DD_89:;					
_A1690E9DD_89:
; //	io[0x05]	= 0xFFFF;		
	AR	= 0xFFFF
	io[0x05]	= AR
; //_A1690E9DD_90:;					
_A1690E9DD_90:
; //	io[0x08]	= 0x0000;		
	AR	= 0x00
	io[0x08]	= AR
; //L0E8FA404_21:;					
L0E8FA404_21:
; //_A1690E9DD_91:;					
_A1690E9DD_91:
; //	return;					
	rets
; //L0E8FA404_19_end:;				
L0E8FA404_19_end:
; //_A1690E9DD_92:;					
_A1690E9DD_92:
; //}
; //
; //rjmp void _InitialDA4A7CC4()			
_InitialDA4A7CC4:
; //{
; //_A1690E9DD_93:;					
_A1690E9DD_93:
; //	
; //_A1690E9DD_94:;					
_A1690E9DD_94:
; //	sAX	= 0xFFFF;			
	AX	= 0xFFFF
; //	asm I1 = _iADPCCACC469+0;		
	I1 = _iADPCCACC469+0//
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_A1690E9DD_95:;					
_A1690E9DD_95:
; //	asm AX = PCMY+0;			
	AX = PCMY+0//
; //	inbuf+0 = sAX				
	rm[inbuf+0]	= AX
; //_A1690E9DD_96:;					
_A1690E9DD_96:
; //	asm AX = PCMY+0;			
	AX = PCMY+0//
; //	outbuf+0 = sAX				
	rm[outbuf+0]	= AX
; //_A1690E9DD_97:;					
_A1690E9DD_97:
; //_A1690E9DD_98:;					
_A1690E9DD_98:
; //	NEARCALL(L0E8FA404_16);			
	call	L0E8FA404_16
; //_A1690E9DD_99:;					
_A1690E9DD_99:
; //_A1690E9DD_100:;				
_A1690E9DD_100:
; //	NEARCALL(L0E8FA404_19);			
	call	L0E8FA404_19
; //L0E8FA404_22:;					
L0E8FA404_22:
; //_A1690E9DD_101:;				
_A1690E9DD_101:
; //	return;					
	rets
; //_InitialDA4A7CC4_end:;				
_InitialDA4A7CC4_end:
; //_A1690E9DD_102:;				
_A1690E9DD_102:
; //}
; //
; //
; //
; //
; //
; //
; //
; //
.code
; //
; //
; //
.code
; //
; //
; //
; //
; //
; //
; //
.data
; //
; //
; //
; //
; //
.code
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
