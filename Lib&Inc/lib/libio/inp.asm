

; ~~ --------------------------
; int inp(unsigned int port)
inp:
	AR=		BP
	AR=		AR + 1		; ~~ port
	I1=		AR
	AR=		rm[I1]
	AR=		AR & 0x1F
	
#ifdef _MSPEECHDSP_
	P1=		#inp_00
#else	
	P1=		#inp_00
	P1.hh=		0
#endif

	slz		AR, 1
	P1=		P1 + AR
	fjmp		pm[P1]
@inp_label_1517:
	AX=		AR
	rets

inp_00:
	AR=		io[0x00]
	jmp		@inp_label_1517
inp_01:
	AR=		io[0x01]
	jmp		@inp_label_1517
inp_02:
	AR=		io[0x02]
	jmp		@inp_label_1517
inp_03:
	AR=		io[0x03]
	jmp		@inp_label_1517
inp_04:
	AR=		io[0x04]
	jmp		@inp_label_1517
inp_05:
	AR=		io[0x05]
	jmp		@inp_label_1517
inp_06:
	AR=		io[0x06]
	jmp		@inp_label_1517
inp_07:
	AR=		io[0x07]
	jmp		@inp_label_1517
inp_08:
	AR=		io[0x08]
	jmp		@inp_label_1517
inp_09:
	AR=		io[0x09]
	jmp		@inp_label_1517
inp_0A:
	AR=		io[0x0A]
	jmp		@inp_label_1517
inp_0B:
	AR=		io[0x0B]
	jmp		@inp_label_1517
inp_0C:
	AR=		io[0x0C]
	jmp		@inp_label_1517
inp_0D:
	AR=		io[0x0D]
	jmp		@inp_label_1517
inp_0E:
	AR=		io[0x0E]
	jmp		@inp_label_1517
inp_0F:
	AR=		io[0x0F]
	jmp		@inp_label_1517
inp_10:
	AR=		io[0x10]
	jmp		@inp_label_1517
inp_11:
	AR=		io[0x11]
	jmp		@inp_label_1517
inp_12:
	AR=		io[0x12]
	jmp		@inp_label_1517
inp_13:
	AR=		io[0x13]
	jmp		@inp_label_1517
inp_14:
	AR=		io[0x14]
	jmp		@inp_label_1517
inp_15:
	AR=		io[0x15]
	jmp		@inp_label_1517
inp_16:
	AR=		io[0x16]
	jmp		@inp_label_1517
inp_17:
	AR=		io[0x17]
	jmp		@inp_label_1517
inp_18:
	AR=		io[0x18]
	jmp		@inp_label_1517
inp_19:
	AR=		io[0x19]
	jmp		@inp_label_1517
inp_1A:
	AR=		io[0x1A]
	jmp		@inp_label_1517
inp_1B:
#ifndef _MSPEECHDSP2_
	AR=		io[0x1B]
#else
	AR=		0
#endif
	jmp		@inp_label_1517
inp_1C:
	AR=		io[0x1C]
	jmp		@inp_label_1517
inp_1D:
	;~ AR=		io[0x1D]
	AR=		0
	jmp		@inp_label_1517
inp_1E:
	AR=		io[0x1E]
	jmp		@inp_label_1517
inp_1F:
	AR=		io[0x1F]
	jmp		@inp_label_1517


