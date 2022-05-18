
; ~.~------------------------------------------
; void PWM_ENTRY(void) interrupt 0
; ---------------------------------------------
PWM_ENTRY:
; {
	clr 		io[INTREQ].b0	; Clear Int0 Request!!

	push		AX
	push		BX
	push		CX
	push		DX
	push		I0
	push		I1
	push		P1
	AR=		P1.hh
	push		AR
	push		MX
	push		MR0
	push		MR1
	push		MR2
	push		CBL
#ifdef _MSPEECHDSP_

#else
	AR=		MACOP
	push		AR
	MACOP=		0
#endif

	CBL=		0

	I1=		dtxRender
	io[DACL]=	rm[I1++2]
	io[DACL]=	rm[I1++2]
	io[DACL]=	rm[I1++2]
	io[DACL]=	rm[I1++2]

	; dtxDoChannel();
		PCH=		dtxDoChannel
		lcall		dtxDoChannel

	; if(dtxnote)
		I1=		dtxnote
		AX=		rm[I1++]
		AR=		rm[I1]
		AR=		AR | AX
		if ZR jmp	@pwm_label_1615
	; {

		; dtxDoEvent();
			PCH=		dtxDoEvent
			lcall		dtxDoEvent
	; }
	@pwm_label_1615:

	
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

	I1=		dtxRender
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
	pop		AR
	MACOP=		AR
#endif
	pop		CBL
	pop		MR2
	pop		MR1
	pop		MR0
	pop		MX
	pop		AR
	P1.hh=		AR
	pop		P1
	pop		I1
	pop		I0
	pop		DX
	pop		CX
	pop		BX
	pop		AX
	reti

PWM_ENTRY_END:	
; }




