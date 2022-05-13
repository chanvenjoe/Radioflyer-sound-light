

.data


.code




VarRM[0:127] = {

	RsbbSampleRate,

}


VarRM[128:511] = {

}

VarRM[512:4095] = {



}

ShareVar = {


}

.data


.code

_F_Subband_Dec172623A5:
	PCH=		Subband_Dec
	lcall		Subband_Dec
	if NZ jmp	@f_subbandec_label_1517

	AX=		0
	rets
@f_subbandec_label_1517:
	AX=		1
	rets

; -----------------------------------

_F_Subband_Init5BE22983:
	AR=		0
	rm[decMode]=	AR

	AR=		0x0200
	rm[Subban_Bank7_OFFSET]= AR

	AR=		9
	rm[Decode_CBL]=	AR
	rm[Encode_CBL]= AR

	PCH=		Init_SubDec
	lcall		Init_SubDec

	AX=		rm[RsbbSampleRate]
	rets

