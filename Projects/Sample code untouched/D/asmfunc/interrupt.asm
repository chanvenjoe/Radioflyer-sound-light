
; ~.~------------------------------------------
; void PWM_ENTRY(void) interrupt 0
; ---------------------------------------------
PWM_ENTRY:
; {
	clr 		io[INTREQ].b0	; Clear Int0 Request!!
	set		io[PortCI].b0
	push		AX
	push		BX
	push		CX
	push		DX
	push		R0
	push		R1
	push		R2
	push		R3
	push		I0
	push		I1
	push		P1
	AR=		P1.hh
	push		AR
	push		P0
	AR=		P0.hh
	push		AR
	push		MX
	push		MR0
	push		MR1
	push		MR2
	push		CBL
#ifdef _MSPEECHDSP_

#else
	push		MACOP
	MACOP=		0
#endif

	CBL=		0

	I1=		ADPCMY
	io[DACL]=	rm[I1++2]
	io[DACL]=	rm[I1++2]
	io[DACL]=	rm[I1++2]
	io[DACL]=	rm[I1++2]

	PCH=		DoADPCM
	lcall		DoADPCM
	
	; -=-=-=-=-=-=-=-=-=-
	; dtx + subband3 sound mix

	I1=		SUBFLTI
	FLTI=		rm[I1++]
	FLTI=		rm[I1++]
	FLTI=		rm[I1++]
	FLTI=		rm[I1++]
	FLTA=		rm[I1++]
	FLTP=		rm[I1++]
	FLTG=		rm[I1]
	AR=		FLTO

	MX=		1
	CBL=		9

	I1=		ADPCMY
	I0=		rm[PCMYOU_PTR]
	CX=		3
@pwm_loop_1340:
	if FA jmp	@pwm_label_1340

	AR=		rm[I0++]
	FLTI=		AR
@pwm_label_1340:
	AR=		FLTO

#ifdef _MSPEECHDSP_	
	MULSS
#else
	MR=		MX * AR
#endif
	; ~~ can not use SATV because subband3 use it already
	AX=		rm[I1++]
	AR=		MR0
	AX=		AX + AR
	AR=		rm[I1--]
	AR=		AR + MR1 + C
	if AN jmp	@pwm_label_1021
	SF=		AR - 0
	if NE jmp	@pwm_label_1149
	test		AX.b15
	if ZR jmp	@pwm_label_1022
@pwm_label_1149:
	AX=		0x7FFF
	jmp		@pwm_label_1022
@pwm_label_1021:
	SF=		AR - 0xFF
	if NE jmp	@pwm_label_1149_1
	test		AX.b15
	if NZ jmp	@pwm_label_1022
@pwm_label_1149_1:
	AX=		0x8001
@pwm_label_1022:
	rm[I1++2]=	AX
	loop		@pwm_loop_1340

	I1=		SUBFLTI
	rm[I1++]=	FLTI
	rm[I1++]=	FLTI
	rm[I1++]=	FLTI
	rm[I1++]=	FLTI
	rm[I1++]=	FLTA

	rm[PCMYOU_PTR]=	I0

	; -=-=-=-=-=-=-=-=-=-


#ifdef _MSPEECHDSP_

#else
	pop		MACOP
#endif
	pop		CBL
	pop		MR2
	pop		MR1
	pop		MR0
	pop		MX
	pop		AR
	P0.hh=		AR
	pop		P0
	pop		AR
	P1.hh=		AR
	pop		P1
	pop		I1
	pop		I0
	pop		R3
	pop		R2
	pop		R1
	pop		R0
	pop		DX
	pop		CX
	pop		BX
	pop		AX
	clr		io[PortCI].b0
	reti

PWM_ENTRY_END:	
; }




