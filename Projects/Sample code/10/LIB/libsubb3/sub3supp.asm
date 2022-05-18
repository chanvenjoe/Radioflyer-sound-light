

#ifdef _MSPEECHDSP_

Subb3_Init:
	PCH=            SDSP_Sbb3_Ch0InitV05
	lcall           SDSP_Sbb3_Ch0InitV05
	rets

Subb3_Dec:
	PCH=		SDSP_Sbb3_Ch0decV05
	lcall		SDSP_Sbb3_Ch0decV05
        AX=		0
        if NZ jmp	@sdsp_sbb2_ch0dec_a
        AX=		1
@sdsp_sbb2_ch0dec_a:
	rets
	
#else

Subb3_Init:
	PCH=            Sbb3_Ch0InitV05
	lcall           Sbb3_Ch0InitV05
	rets

Subb3_Dec:
	PCH=		Sbb3_Ch0decV05
	lcall		Sbb3_Ch0decV05
        AX=		0
        if NZ jmp	@sdsp_sbb2_ch0dec_a
        AX=		1
@sdsp_sbb2_ch0dec_a:
	rets
	
#endif



	
