_lptr_write:
	AR=		BP
	AR=		AR + 2		; ~~ hadr
	I1=		AR

	AR=		rm[I1--]
	test		AR.b11
	if ZR jmp	@_lptr_write_label_1510

	P1.hh=		AR
	P1=		rm[I1]
	AR=		BP
	AR=		AR + 3		; ~~ data
	I1=		AR
	AR=		rm[I1]
	pm[P1]=		AR
	P1.hh=		0
	rets

@_lptr_write_label_1510:
	AR=		rm[I1]
	push		I1
	AR=		BP
	AR=		AR + 3		; ~~ data
	I1=		AR
	AR=		rm[I1]
	pop		I1
	rm[I1]=		AR
	rets


_lptr_write32:
	AR=		BP
	AR=		AR + 2		; ~~ hadr
	I1=		AR

	AR=		rm[I1--]
	test		AR.b11
	if ZR jmp	@_lptr_write_label_1510_32

	P1.hh=		AR
	P1=		rm[I1]
	AR=		BP
	AR=		AR + 3		; ~~ data
	I1=		AR
	AR=		rm[I1++]
	pm[P1++]=	AR
	AR=		rm[I1++]
	pm[P1++]=	AR
	P1.hh=		0
	rets

@_lptr_write_label_1510_32:
	AR=		rm[I1]
	push		I1
	AR=		BP
	AR=		AR + 3		; ~~ data
	I1=		AR
	AX=		rm[I1++]
	DX=		rm[I1]
	pop		I1
	rm[I1++]=	AX
	rm[I1]=		DX
	rets
