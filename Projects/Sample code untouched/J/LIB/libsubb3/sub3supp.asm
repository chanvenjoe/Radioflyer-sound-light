

#ifdef _MSPEECHDSP_

Subb3_Init:
	PCH=            SDSP_Sbb3_Ch0InitV07
	ljmp		SDSP_Sbb3_Ch0InitV07

Subb3_Dec:
	PCH=		SDSP_Sbb3_Ch0decV07
	lcall		SDSP_Sbb3_Ch0decV07
        AX=		0
        if NZ jmp	@sdsp_sbb2_ch0dec_a
        AX=		1
@sdsp_sbb2_ch0dec_a:
	rets

#else

Subb3_Init:
	PCH=            Sbb3_Ch0InitV07
	ljmp		Sbb3_Ch0InitV07

Subb3_Dec:
	PCH=		Sbb3_Ch0decV07
	lcall		Sbb3_Ch0decV07
        AX=		0
        if NZ jmp	@sdsp_sbb2_ch0dec_a
        AX=		1
@sdsp_sbb2_ch0dec_a:
	rets

#endif



; C function wrapper, may need add more preserve registers


Sbb_Skipdata:
; {
	push		AX
	push		BX
	push		CX
	push		DX
	push		R2
	push		R3

	push		R1			; ~~ skip high
	push		R0			;         low

	PCH=		_Sbb_SkipdataE1C72441
	lcall		_Sbb_SkipdataE1C72441
	
	pop		R1
	pop		R0
	pop		R3
	pop		R2
	pop		DX
	pop		CX
	pop		BX
	pop		AX
	rets
; }












