
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
			call		dtxDoEvent
	; }
	@pwm_label_1615:
	
	I1=		dtxRender
	AR=		SATV
	CX=		3
@pwmentry_loop_1443:
	AR=		rm[I1++]
	SATV=		AR
	AR=		rm[I1--]
	SATV=		AR
	AR=		SATV
	rm[I1++2]=	AR
	loop		@pwmentry_loop_1443


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


