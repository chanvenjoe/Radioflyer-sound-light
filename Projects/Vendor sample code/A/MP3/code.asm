

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
MP3_Ch0dec:
	PCH=            MP3_Ch0decV07
        lcall           MP3_Ch0decV07
        AX		= 0
        if NZ jmp	MP3_Ch0dec_A
        AX		= 1
MP3_Ch0dec_A:
	rets
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
set_DACL:
	I0              = rm[PCMYOU_PTR]
	jfa		set_DACL_E
	FLTI=		rm[I0++]
set_DACL_E:
	AR        = FLTO                          ;   // get filter out, and start delay 4 cycles to get next filter out
        io[DACL]        = AR                            // output PWM DAC
        rm[PCMYOU_PTR] 	= I0
	rets

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
MP3_CH0GETBTS:
	push            I0
	push            I1
	I1              = rm[PCMIN1_PTR]
	AR              = rm[I1++]
	xchg            AR
	rm[PCMIN1_PTR]  = I1
	push            AR
	I0              = mp3Data.n0
	I0.h            = mp3Data.n1
	AR              = 0x0105                        ; 256
	AR              = I0 + AR
	SF              = I1 - AR
	if AN jmp       L_MP3_Ch0GetBts_exit
//-----------------------------------
	push		CX
	push		P1
	push		I1
	push		AX
	push		BX
	push		DX
///////////////////////////////////////////////
	PCH             = main_data_backup
	lcall           main_data_backup
;-----------------------------------
	PCH		= GetMp3data
	lcall            GetMp3data
;-------------------------------------
	PCH             = main_data_backup_A
	lcall           main_data_backup_A
;---------------------------------------
	pop		DX
	pop		BX
	pop		AX
	pop		I1
	pop		P1
	pop		CX
//---------------------------------------
L_MP3_Ch0GetBts_exit:
	pop             AR
	pop             I1
	pop             I0
	rets
//-----------------------------------------------------------------
//-----------------------------------------------------------------
//-----------------------------------------------------------------
MP3_SKIPTAG:
		cx		= ar
  		if eq jmp	MP3_@SkipTag_CheckHighCount
  	MP3_@SkipTag_SkipFileBufLoop:
		cx--
		bx		= 8
	MP3_SkipFileBufLoop:
		if PA jmp 	MP3_L3_HDCh0GetBits_AVIABLE
		// Get BitStream , Return 16-bit from AR
MP3_L3_HDCh0GetBits_A0:
		pch		= MP3_Ch0GetBts
		lcall		MP3_Ch0GetBts
		PASR		= ar
MP3_L3_HDCh0GetBits_AVIABLE:
		ar		= PASR,bx
		loop		MP3_SkipFileBufLoop
  	MP3_@SkipTag_CheckHighCount:
  		ar		= ax
  		if eq jmp	MP3_SkipTag_OK
  		cx		= 0
  		ar--
  		ax		= ar
  		jmp		MP3_@SkipTag_SkipFileBufLoop
MP3_SkipTag_OK:
		rets












