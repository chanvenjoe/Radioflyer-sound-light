
; ~~ --------------------------
; int outp(unsigned int port, unsigned int value)
outp:
	AR=		BP
	AR=		AR + 1		; ~~ port
	I1=		AR
	AR=		rm[I1++]
	AR=		AR & 0x1F

#ifdef _MSPEECHDSP_	
	P1=		#outp_00
#else	
	P1=		#outp_00
	P1.hh=		0
#endif

	slz		AR, 1
	P1=		P1 + AR
	AR=		rm[I1]
	fjmp		pm[P1]
outp_00:
	io[0x00]=	AR
	rets
outp_01:
	io[0x01]=	AR
	rets
outp_02:
	io[0x02]=	AR
	rets
outp_03:
	io[0x03]=	AR
	rets
outp_04:
	io[0x04]=	AR
	rets
outp_05:
	io[0x05]=	AR
	rets
outp_06:
	io[0x06]=	AR
	rets
outp_07:
	io[0x07]=	AR
	rets
outp_08:
	io[0x08]=	AR
	rets
outp_09:
	io[0x09]=	AR
	rets
outp_0A:
	io[0x0A]=	AR
	rets
outp_0B:
	io[0x0B]=	AR
	rets
outp_0C:
	io[0x0C]=	AR
	rets
outp_0D:
	io[0x0D]=	AR
	rets
outp_0E:
	io[0x0E]=	AR
	rets
outp_0F:
	io[0x0F]=	AR
	rets
outp_10:
	io[0x10]=	AR
	rets
outp_11:
	io[0x11]=	AR
	rets
outp_12:
	io[0x12]=	AR
	rets
outp_13:
	io[0x13]=	AR
	rets
outp_14:
	io[0x14]=	AR
	rets
outp_15:
	io[0x15]=	AR
	rets
outp_16:
	io[0x16]=	AR
	rets
outp_17:
	io[0x17]=	AR
	rets
outp_18:
	io[0x18]=	AR
	rets
outp_19:
	io[0x19]=	AR
	rets
outp_1A:
	io[0x1A]=	AR
	rets
outp_1B:
#ifndef _MSPEECHDSP2_
	io[0x1B]=	AR
#endif
	rets
outp_1C:
	;~ io[0x1C]=	AR
	nop
	rets
outp_1D:
	io[0x1D]=	AR
	rets
outp_1E:
	io[0x1E]=	AR
	rets
outp_1F:
	io[0x1F]=	AR
	rets

