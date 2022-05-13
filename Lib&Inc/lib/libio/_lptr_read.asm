_lptr_read:
	AR=		DX
	test		AR.b11
	if ZR jmp	@_lptr_read_label_1510

	P1.hh=		AR
	AR=		AX
	P1=		AR
	AX=		pm[P1]
	P1.hh=		0
	rets

@_lptr_read_label_1510:

	AR=		AX
	I1=		AR
	AX=		rm[I1]
	rets


_lptr_read32:
	AR=		DX
	test		AR.b11
	if ZR jmp	@_lptr_read_label_1510_32

	P1.hh=		AR
	AR=		AX
	P1=		AR
	AX=		pm[P1++]
	DX=		pm[P1]
	P1.hh=		0
	rets

@_lptr_read_label_1510_32:

	AR=		AX
	I1=		AR
	AX=		rm[I1++]
	DX=		rm[I1]
	rets


