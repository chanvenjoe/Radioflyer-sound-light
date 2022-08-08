.CODE
;-----------------------------------------------------------------------------
; Definition
;-----------------------------------------------------------------------------
;#Define		Sub2_In_Spi	;;定义声音放SPI, 档案放在\BIN_DATA\SPI_FLASH\ADPCM_SUB2.BIN
#Define		Sub2_In_Pm	;;定义声音放PM
#define		SubBooster	; Enable volume booster for subband

; For TRSF16256
;#define		Sbb3_UsePRAM		; use 32MHz bank,turn off if not need  
;#define		RAMBANK		15 	; 32MHz bank at ...

;-----------------------------------------------------------------------------
; Memory Allocation
;-----------------------------------------------------------------------------
VarRM[0:127] = {
	PCMYIN_PTR
	PCMYOU_PTR

	Play_Sub2_Flag
	Sub2_Num				;;//声音数目
	SampleCh0Rate				;;//声音播放率
	Sub2_Adr_H				;;//SpiFlash Address H
	Sub2_Adr_L				;;//SpiFlash Address L

#ifdef	SubBooster
	WaveGainValue				; Subband booster
	PCMY_Booster
#endif	// SubBooster

	;;Sdsp_Sub2_Buf[42]
}

VarRM[128:511] = {
	;;Sdsp_Sub2_Buf[75]
}

VarRM[512:4095] = {
ReAllocate#512
	BaseOn512#PCMY[512]
;;ReAllocate#1024
	;Sdsp_Sub2_Buf[1696]			;576+576+272+272
}
;-----------------------------------------------------------------------------
;;//定义obj在VarRM[0:127]的开始地址
;#OBJReAllocate	SDSP_Sbb3_Ch0decV02, 86
;;;//obj在VarRM[128:511]的开始地址
;#OBJReAllocate	SDSP_Sbb3_Ch0decV02, 437
;;;//obj在VarRM[512:4095]的开始地址
;#OBJReAllocate	SDSP_Sbb3_Ch0decV02, 1024

#ifdef	_MSPEECHDSP_
	#OBJReAllocate SDSP_Sbb3_Ch0decV03, 1024	// TRSF16128
#else
	#OBJReAllocate Sbb3_Ch0decV03, 1024		// TRSF16127
#endif	// _MSPEECHDSP_

;-----------------------------------------------------------------------------
;-----------------------------------------------------------------------------
;上电调用
Subband2_Init:
#Ifdef		Sub2_In_Spi
		Pch			= SpiFlash_PowerOn_Int
		Lcall			SpiFlash_PowerOn_Int
#Endif

#ifdef	SubBooster
		/*WaveGain Value Default is 0			
	                   -10   ~   0      ~  10
	     	subtract volume    <- Default  -> add volume					
		*/						
		AR			= 2             //Volume gain
		RM[WaveGainValue]	= AR

		Pch			= SFDSP_VolumeBooster_GainInitV02	//initial volume boost
		Lcall			SFDSP_VolumeBooster_GainInitV02
#endif	// SubBooster

		Call			Sub_Clr_PCMY		;;CLR PCMY
		Ar			= 9
		Cbl			= Ar
		Ar			= PCMY
		Rm[PCMYIN_PTR]		= Ar
		Rm[PCMYOU_PTR]		= Ar
#ifdef	SubBooster
		Rm[PCMY_Booster]	= AR
#endif	// SubBooster
		Ar			= 0
		Rm[Play_Sub2_Flag]	= Ar

		Ar			= 0
		FLTI			= Ar
		FLTI			= Ar
		FLTI			= Ar
		FLTI			= Ar
		FLTA			= Ar
		Ar			= 0x3F
		FLTG			= Ar
		Ar			= FLTO
		NOP
		ENA			INT0			;;开启中断0
		ENI
Subband2_Init_Exit:
		Rets

;-----------------------------------------------------------------------------
;主循环调用
Subband2_Play:
		Ar			= Rm[Play_Sub2_Flag]
		Jzr			Subband2_Play_Exit
	Subband2_Decode:
		Call			WaitPCMY_Empty_Size_Sub2
		Jan			Subband2_Decode_Exit
#ifdef	_MSPEECHDSP_
		PCH            		= SDSP_Sbb3_Ch0decV03
		LCALL           	SDSP_Sbb3_Ch0decV03
#else
		PCH	            	= Sbb3_Ch0decV03
		LCALL           	Sbb3_Ch0decV03
#endif	// _MSPEECHDSP_
		Jnz			Subband2_Decode_Ready	;;// AZ=1 Is End Of Decode
	Subband2_End:
		Call			Sdsp_Ramp_Down
		Ar			= 0
		Rm[Play_Sub2_Flag]	= Ar
		Ar			= 0
		Jmp			Subband2_Play_Exit

	Subband2_Decode_Ready:

#ifdef	SubBooster
  		CBL			= 9

		I0			= RM[PCMY_Booster]
		CX			= 0x011F		; 288
	volume_loop:
		AR      		= RM[I0]

		PCH			= SFDSP_VolumeBooster_WaveGainV02
		LCALL			SFDSP_VolumeBooster_WaveGainV02 

		RM[I0++]		= AR
		LOOP			volume_loop

		RM[PCMY_Booster]	= I0
#endif	// SubBooster

	Subband2_Decode_Exit:
		Ar			= 1

Subband2_Play_Exit:
		Rets
;-----------------------------------------------------------------------------
Play_Sub2_Int:
		Call			Sub_Clr_PCMY		;;CLR PCMY
		Ar			= 9
		Cbl			= Ar
		Ar			= PCMY
		Rm[PCMYIN_PTR]		= Ar
		Rm[PCMYOU_PTR]		= Ar
#ifdef	SubBooster
		Rm[PCMY_Booster]	= AR
#endif	// SubBooster
		;;------------------------------------------------------------
		Call			Play_Sub2_Adr_Int		;;初始化地址
		;;------------------------------------------------------------
		Ar			= 1			;;开启播放标致
		Rm[Play_Sub2_Flag]	= Ar

		Ar			= 0
		FLTI			= Ar
		FLTI			= Ar
		FLTI			= Ar
		FLTI			= Ar
		FLTA			= Ar
		Ar			= 0x3F
		FLTG			= Ar
		Ar			= FLTO
		NOP
		Pch			= Open_PwmOrDac
		Lcall			Open_PwmOrDac		;;打开声音输出方式

		ENA			INT0			;;开启中断0
		ENI
		;;------------------------------------------------------------
	Play_Sub2_Int_Again:
#ifdef	_MSPEECHDSP_
		PCH			= SDSP_Sbb3_Ch0InitV03
		LCALL			SDSP_Sbb3_Ch0InitV03
#else
		PCH			= Sbb3_Ch0InitV03
		LCALL			Sbb3_Ch0InitV03
#endif	// _MSPEECHDSP_

#ifdef	SubBooster
		/*WaveGain Value Default is 0			
	                   -10   ~   0      ~  10
	     	subtract volume    <- Default  -> add volume					
		*/						
		AR			= 2             //Volume gain
		RM[WaveGainValue]	= AR

		Pch			= SFDSP_VolumeBooster_GainInitV02	//initial volume boost
		Lcall			SFDSP_VolumeBooster_GainInitV02
#endif	// SubBooster

		Jzr			Play_Sub2_Int_Again 		;;// Cant Find Header!! Initial Error!!
Play_Sub2_Int_Exit:
		Rets
;-----------------------------------------------------------------------------
Sub2_Play_End:
		Ar			= Rm[Play_Sub2_Flag]
		Jzr			Sub2_Play_End_Exit

		Call			Sdsp_Ramp_Down
		Ar			= 0
		Rm[Play_Sub2_Flag]	= Ar
Sub2_Play_End_Exit:
		Rets
;-----------------------------------------------------------------------------
;中断调用
Play_Sub2_Isr:
		Ar			= Rm[Play_Sub2_Flag]
		Jzr			Play_Sub2_Isr_Exit
		push			I0
		Push			Cbl
		Push			Cx
		I0			= rm[PCMYOU_PTR]
		Ar			= 9
		Cbl			= Ar
		Cx			= 3
	Sub2_Filter_Loop:
		Jfa			Sub2_Filter_Out
		Ar			= 0
		FLTI			= Rm[I0]
		Rm[I0++]		= Ar
	Sub2_Filter_Out:
		Ar			= FLTO
		IO[DACL]		= Ar
		Nop
		Nop
		Loop			Sub2_Filter_Loop
		rm[PCMYOU_PTR] 		= I0
		Pop			Cx
		Pop			Cbl
		Pop			I0
Play_Sub2_Isr_Exit:
		Rets

;-----------------------------------------------------------------------------
;播放语音地址初始化
;函数输入值为 Rm[Sub2_Num]
Play_Sub2_Adr_Int:
	;---------------------------------------------------------------------
#Ifdef		Sub2_In_Spi
		Ar			= 4			;;Sub2在总表4位置
		Rm[Flash_Adr_L]		= Ar
		Ar			= 0
		Rm[Flash_Adr_H]		= Ar
		Pch			= SpiFlash_Read_WordFlow
		Lcall			SpiFlash_Read_WordFlow
		Ax			= Ar
		Pch			= SpiFlash_Read_WordFlow
		Lcall			SpiFlash_Read_WordFlow
		Rm[Flash_Adr_H]		= Ar
		Ar			= Ax
		Rm[Flash_Adr_L]		= Ar
		Pch			= SpiFlash_Read_WordFlow
		Lcall			SpiFlash_Read_WordFlow

		Ax			= Ar			;;Ar:歌曲总数
		Ar			= Rm[Sub2_Num]
		Sf			= Ar - Ax
		Jan			Sub2_Num_OK
		Ar			= 0
Sub2_Num_OK:
		Rm[Sub2_Num]		= Ar
		Slz			Ar,2
		Slz			Ar,1
		Ax			= Ar

		Ar			= Rm[Flash_Adr_L]
		Ar			= Ar + Ax
		Rm[Flash_Adr_L]		= Ar

		Ar			= Rm[Flash_Adr_H]
		Ar			= Ar + 0 + C
		Rm[Flash_Adr_H]		= Ar

		Pch			= SpiFlash_Read_WordFlow
		Lcall			SpiFlash_Read_WordFlow
		Ah			= 0
;		Ar			= 0			;;格式
		Pch			= SpiFlash_Read_WordFlow
		Lcall			SpiFlash_Read_WordFlow
;		Ar			= 0			;;播放率

		Pch			= SpiFlash_Read_WordFlow
		Lcall			SpiFlash_Read_WordFlow
		Rm[Sub2_Adr_L]		= Ar			;;Adr_L
		Pch			= SpiFlash_Read_WordFlow
		Lcall			SpiFlash_Read_WordFlow
		Rm[Sub2_Adr_H]		= Ar			;;Adr_H
#Endif
;-----------------------------------------------------------------------------
#Ifdef		Sub2_In_pm
		P1.Hh			= #Sub2_Adr_Tab.N2
		P1			= #Sub2_Adr_Tab
		Ax			= Pm[P1]
		Ar			= Rm[Sub2_Num]
		Sf			= Ar - Ax
		Jan			Sub2_Num_OK
		Ar			= 0
Sub2_Num_OK:
		Rm[Sub2_Num]		= Ar
		Slz			Ar, 2
		Ar			= Ar + 1
		P1			= P1 + Ar

		Ar			= Pm[P1++]		;;格式
		Ah			= 0
		Ar			= Pm[P1++]		;;播放率
		Ar			= 0

		Ar			= Pm[P1++]
		Rm[Sub2_Adr_L]		= Ar			;;Adr_L
		Ar			= Pm[P1++]
		rm[Sub2_Adr_H]		= Ar			;;Adr_H
#Endif
Play_Sub2_Adr_Int_Exit:
		Rets
;-----------------------------------------------------------------------------
Sub_Clr_PCMY:
		Ar			= 0
		Cx			= 511
		I1			= PCMY
Sub_Clr_PCMY_LP:
		Rm[I1++]		= Ar
		Loop			Sub_Clr_Pcmy_Lp
		Rets
;-----------------------------------------------------------------------------
;//   |----------|--------------------|---------------------|  size 512
;//             PCMYIN_PTR       PCMYOU_PTR
;// return AN=1 is less 288
Waitpcmy_Empty_Size_Sub2:
		Ar			= rm[PCMYIN_PTR]
		Ax			= rm[PCMYOU_PTR]
		Ar			= Ax - Ar;
		Jan			Getpcmy_Empty_In_Gt_Sub2
		Jmp			Getpcmy_Empty_Next_Sub2
	Getpcmy_Empty_In_Gt_Sub2:
		;;// Length = 512 - Pcmyin_Ptr + Pcmyou_Ptr
		Ax			= 0X01Ff;
		Ar			= Ar & Ax
	Getpcmy_Empty_Next_Sub2:
		;;// Check Empty Size > 288
		Ax			= 0X0121;
		Sf			= Ar - Ax
		Rets

;-----------------------------------------------------------------------------
Sbb_Ch0GetBts:
		Call			Sub2_Read_A_Word
		Rets

;-----------------------------------------------------------------------------
Sub2_Read_A_Word:
	;---------------------------------------------------------------------
#Ifdef		Sub2_In_Spi
		Ar			= rm[Sub2_Adr_L]
		Rm[Flash_Adr_L]		= Ar
		Ar			= rm[Sub2_Adr_H]
		Rm[Flash_Adr_H]		= Ar
		Pch			= SpiFlash_Read_WordFlow
		Lcall			SpiFlash_Read_WordFlow
		Xchg			Ar
		Push			Ar
		;---------------------------------------------
		Ar			= Rm[Flash_Adr_L]
		rm[Sub2_Adr_L]		= Ar
		Ar			= Rm[Flash_Adr_H]
		rm[Sub2_Adr_H]		= Ar
		;---------------------------------------------
		Pop			Ar
#Endif
	;---------------------------------------------------------------------
#Ifdef		Sub2_In_Pm
		Push			P1
		Push			Ax
		Ar			= P1.Hh
		Push			Ar

		P1			= Rm[Sub2_Adr_L]
		Ar			= Rm[Sub2_Adr_H]
		P1.Hh			= Ar
		Ar			= Pm[P1++]
		Xchg			Ar
		Ax			= Ar
		;---------------------------------------------
		Rm[Sub2_Adr_L]		= P1
		Ar			= P1.Hh
		Rm[Sub2_Adr_H] 		= Ar
		;---------------------------------------------
		Pop			Ar
		P1.Hh			= Ar
		Ar			= Ax
		Pop			Ax
		Pop			P1
#Endif
		Rets

;-----------------------------------------------------------------------------
;当声音正在播放的时候，突然打断声音会有bo音，
;需要进行ramp_down处理：
;-----------------------------------------------------------------------------
Sdsp_Ramp_Down:
		Push			Mx
		Push			Mr0
		Push			Mr1
		Push			Mr2
Ramp_Down_Cbl_9:
		Ar  			= 9
		Cbl  			= Ar
		Cx    			= 0x01FF   			;;512 Word
		Ar   			= Rm[PCMYOU_PTR]
		I0   			= Ar
		I1   			= Ar
		Bx   			= 0x00FF
Ramp_Down_Lp1:
		Ar			= Rm[I0]
		Mx			= Ar
		Ar			= Bx
		_M_MULUS
		Ar			= Mr0
		Xchg			Ar
		Ah			= Mr1
		Rm[I0++]		= Ar
		Ar			= Bx
		Jzr			Test1
		Bx--
Test1:
		Loop			Ramp_Down_Lp1
Test2:   ;;>8Ms
	  	Io[Clrwdt]		= Ar			; Clear Watch Dog
	  	Ar  			= Rm[PCMYOU_PTR]
	  	Ar  			= Ar - I1
	  	Ax  			= 0x01FF
	  	Ar  			= Ar & Ax
	  	Dx  			= 0x0101
	  	Sf  			= Ar - Dx
		Jan	   		Test2
		Jmp  			Ramp_Down_Exit
;-----------------------------------------------------------------------------
Ramp_Down_Cbl_8:
		Ar  			= 8
	  	Cbl  			= Ar
	  	Cx    			= 0x00FF   		;;256 Word
	  	Ar   			= Rm[PCMYOU_PTR]
	    	I0   			= Ar
	    	I1   			= Ar
	    	Bx  	 		= 0x00FF
Ramp_Down_Lp11:
		Ar			= Rm[I0]
		Mx			= Ar
		Ar			= Bx
		_M_MULUS
		Ar			= Mr0
		Xchg			Ar
		Ah			= Mr1
		Rm[I0++]		= Ar
		Ar			= Bx
	  	Jzr			Test11
	  	Bx--
		Bx--
Test11:
	  	Loop 			Ramp_Down_Lp11
Test21:   ;;>8Ms
	  	Io[Clrwdt]		= Ar			; Clear Watch Dog
	  	Ar  			= Rm[PCMYOU_PTR]
	  	Ar  			= Ar - I1
	  	Ax  			= 0x00FF
	  	Ar  			= Ar & Ax
	  	Dx  			= 0x0081
	  	Sf  			= Ar - Dx
	  	Jan   			Test21
Ramp_Down_Exit:
		Pop			Mr2
		Pop			Mr1
		Pop			Mr0
		Pop			Mx

		Rets
;-----------------------------------------------------------------------------
; Object Link
;-----------------------------------------------------------------------------
#ifdef	SubBooster
	#LinkOBJ "LIB\SFDSP_VolumeBoosterV02.obj"
#endif	// SubBooster

#ifdef	_MSPEECHDSP_
	#LinkOBJ "LIB\SDSP_Sbb3_Ch0decV03.obj"		
#else
	#LinkOBJ "LIB\Sbb3_Ch0decV03.obj"
#endif	// _MSPEECHDSP_
;-----------------------------------------------------------------------------
#Ifdef		Sub2_In_Pm
Sub2_Adr_Tab:
Dw		20					;;歌曲总数
;		格式	,播放率,	低地址,		高地址
Dw		0x0002,	0x0000,		#Sub2_Adr_01,	#Sub2_Adr_01.H
Dw		0x0002,	0x0000,		#Sub2_Adr_02,	#Sub2_Adr_02.H
Dw		0x0002,	0x0000,		#Sub2_Adr_03,	#Sub2_Adr_03.H
Dw		0x0002,	0x0000,		#Sub2_Adr_04,	#Sub2_Adr_04.H
Dw		0x0002,	0x0000,		#Sub2_Adr_05,	#Sub2_Adr_05.H
Dw		0x0002,	0x0000,		#Sub2_Adr_06,	#Sub2_Adr_06.H
Dw		0x0002,	0x0000,		#Sub2_Adr_07,	#Sub2_Adr_07.H
Dw		0x0002,	0x0000,		#Sub2_Adr_08,	#Sub2_Adr_08.H
Dw		0x0002,	0x0000,		#Sub2_Adr_09,	#Sub2_Adr_09.H
Dw		0x0002,	0x0000,		#Sub2_Adr_10,	#Sub2_Adr_10.H
Dw		0x0002,	0x0000,		#Sub2_Adr_11,	#Sub2_Adr_11.H
Dw		0x0002,	0x0000,		#Sub2_Adr_12,	#Sub2_Adr_12.H
Dw		0x0002,	0x0000,		#Sub2_Adr_13,	#Sub2_Adr_13.H
Dw		0x0002,	0x0000,		#Sub2_Adr_14,	#Sub2_Adr_14.H
Dw		0x0002,	0x0000,		#Sub2_Adr_15,	#Sub2_Adr_15.H
Dw		0x0002,	0x0000,		#Sub2_Adr_16,	#Sub2_Adr_16.H
Dw		0x0002,	0x0000,		#Sub2_Adr_17,	#Sub2_Adr_17.H
Dw		0x0002,	0x0000,		#Sub2_Adr_18,	#Sub2_Adr_18.H
Dw		0x0002,	0x0000,		#Sub2_Adr_19,	#Sub2_Adr_19.H
Dw		0x0002,	0x0000,		#Sub2_Adr_20,	#Sub2_Adr_20.H
.DATA
;-----------------------------------------------------------------------------------------
Sub2_Adr_01:
	Dw	"TZB/11.TZB"
Sub2_Adr_02:
	Dw	"TZB/02.T3Z"
Sub2_Adr_03:
	Dw	"TZB/03.T3Z"
Sub2_Adr_04:
	Dw	"TZB/04.T3Z"
Sub2_Adr_05:
	Dw	"TZB/05.T3Z"
Sub2_Adr_06:
	Dw	"TZB/06.T3Z"
Sub2_Adr_07:
	Dw	"TZB/07.T3Z"
Sub2_Adr_08:
	Dw	"TZB/08.T3Z"
Sub2_Adr_09:
	Dw	"TZB/09.T3Z"
Sub2_Adr_10:
	Dw	"TZB/10.T3Z"
Sub2_Adr_11:
	Dw	"TZB/11.T3Z"
Sub2_Adr_12:
	Dw	"TZB/12.T3Z"
Sub2_Adr_13:
	Dw	"TZB/A00@23Kbps.TZB"
Sub2_Adr_14:
	Dw	"TZB/A01@23Kbps.TZB"
Sub2_Adr_15:
	Dw	"TZB/a05@22K6bps.TZB"
Sub2_Adr_16:
	Dw	"TZB/a03@23K2bps.TZB"
Sub2_Adr_17:
	Dw	"TZB/a04@22K9bps.TZB"
Sub2_Adr_18:
	Dw	"TZB/15.T3Z"
Sub2_Adr_19:
	Dw	"TZB/16.T3Z"
Sub2_Adr_20:
	Dw	"TZB/a05@22K6bps.TZB"
;Dw	"Tzb/10.TZB"
#Endif
;-----------------------------------------------------------------------------
; MAC Macro
;-----------------------------------------------------------------------------
MACRO		_M_MULUS
#ifdef _MSPEECHDSP_
		MULUS
#else
		MACOP			= 0x0002
		MR			= MX * AR
#endif
		ENDM
;-----------------------------------------------------------------------------