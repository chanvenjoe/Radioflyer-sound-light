

; ~~ assembly function in C form...
	
; --------------------------------------------------------


_isWideBandFilterOnCD82ADAA:
	test		io[MISC].b8
	if ZR jmp	@iwbf_label_1725
	AX=		1
	rets
@iwbf_label_1725:
	AX=		0
	rets


; --------------------------------------------------------

ChangePWMIntToMD2:
; {
	set             io[STATUS].b13
	I1=		RENDERBUF
	CX=		4
@cpitm_loop_1836:
	AR=		io[IntVect]                      ;
	rm[I1++]=	AR                           ;	; Int5~0
	AR=		PCB
	rm[I1++]=	AR                           ;	; Int5~0 PCB
	loop            @cpitm_loop_1836


	AR=		#PWM_ENTRY
	rm[I1++]=	AR
	AR=		0
	rm[I1++]=	AR

	clr		io[STATUS].b13

	
	; ~~ write new vector table

	set             io[STATUS].b13
	I1=		RENDERBUF

	CX=		5
@cpitm_loop_1837:
	AX=		rm[I1++]
	AR=		rm[I1++]
	PCB=		AR
	AR=		AX
	io[IntVect]=	AR
	PCB=		0
	loop		@cpitm_loop_1837

	; Dis-int-vector table access
	clr		io[STATUS].b13

	rets
; }










