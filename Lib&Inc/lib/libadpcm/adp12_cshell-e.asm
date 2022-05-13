




_SDSP_ADPCM_4Bit_SingleCH_decoder94C4563E:
; {
	PCH=            SDSP_ADPCM_4Bit_SingleCH_decoder
        lcall           SDSP_ADPCM_4Bit_SingleCH_decoder	; Z fail
        AX=		1
        if NZ jmp	L9E1082DD_0
        AX=		0
L9E1082DD_0:
	rets
; }



























