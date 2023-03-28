;函数名称：	Sbb3Play_Task
;函数名称：	Sbb3Play_Start
;函数名称：	Sbb3Play_Stop


;旗标寄存器:	Sbb3_Flag
;Sbb3_Flag	bit15	Play			1=Play，0=No Play
;		bit14	RampUp or RampDown	1=RampUp，0=RampDown
;		bit12	歌曲无缝循环		1=loop，0=no loop

;		bit5	数据来源 rom or spi	1=spi，0=rom
;		bit4	Sbb3_Num		1=未使用，0=使用后可更改
;		bit3	流程
;		bit2	流程
;		bit1	流程
;		bit0	流程
;-----------------------------------------------------------
Sbb3Play_Start:
		ar		=rm[Sbb3_Flag]
		clr		ar.b12		;;loop旗标	1=loop	0=no loop
		jmp		Sbb3Play_Start_Ing

Sbb3Play_StartLp:
		ar		=rm[Sbb3_Flag]
		set		ar.b12		;;loop旗标	1=loop	0=no loop
		
Sbb3Play_Start_Ing:
		clr		ar.b14		;;RampUp or RampDown	1=RampUp，0=RampDown
		set		ar.b4		;;Sbb3_Num	未使用
		rm[Sbb3_Flag]	=ar
		clr		ar.b3
		clr		ar.b2
		clr		ar.b1
		set		ar.b0
		rm[Sbb3_Flag]	=ar
		rets
;-----------------------------------------------------------
;-----------------------------------------------------------
;-----------------------------------------------------------
;函数名称:Sbb3Play_Task
;功能描述:Sbb3播放声音
;入口旗标寄存器:Sbb3_Flag  
;-----------------------------------------------------------
Sbb3Play_Task:



Sbb3Play_Step:


		
		ar		=rm[Sbb3_Flag]
		ar		&=0x0007
		p1		=#Sbb3Play_Tab
		p1		+=ar
		p1		=pm[p1]
		fjmp		pm[p1]


Sbb3Play_Tab:
		DW		#Sbb3Play_Exit		;;Exit
		DW		#Sbb3Play_RampDown	;;01
		DW		#Sbb3Play_Init		;;02
		DW		#Sbb3Play_Program	;;03
		DW		#Sbb3Play_Stop		;;04
		DW		#Sbb3Play_Stop		;;05
		DW		#Sbb3Play_Stop		;;06
		DW		#Sbb3Play_Stop		;;07
Sbb3Play_Next:	;;换下一个流程动作

		ar		=rm[Sbb3_Flag]
		ar++
		rm[Sbb3_Flag]=ar
		jmp		Sbb3Play_Step
		
Sbb3Play_Last:	;;换上一个流程动作

		ar		=rm[Sbb3_Flag]
		ar--
		rm[Sbb3_Flag]	=ar
		jmp		Sbb3Play_Step
		
Sbb3Play_Exit:		;;直接退出
		rets
		
;-----------------------------------------------------------
;函数名称:Sbb3Play_RampDown
;功能描述:
;-----------------------------------------------------------
Sbb3Play_RampDown:
		ar		=rm[Sbb3_Flag]
		test		ar.b15
		jeq		Sbb3Play_RampDown_Exit
		clr		ar.b14
		rm[Sbb3_Flag]	=ar

		ar		=rm[Sbb3Filter_Gain]
		jne		Sbb3Play_Exit
Sbb3Play_RampDown_Exit:
		jmp		Sbb3Play_Next
;-----------------------------------------------------------
;函数名称:Sbb3Play_Init
;功能描述:
;-----------------------------------------------------------
Sbb3Play_Init:
		call		Sbb3PlayFlash_Clr
		call		Sbb3Play_Clr
		call		Sbb3Play_Adr
		ar		=0x0000	
		rm[Sbb3Filter_Gain]=ar;
		FLTI            =ar
                FLTI            =ar
                FLTI            =ar
                FLTI            =ar
                FLTA            =ar
		ar		=rm[Samplech0Rate]
		Audio_Config_Adjust_Fltp
		FLTP            =ar
		
		ar		=Sbb3Buf
		rm[Sbb3YOU_PTR]	=ar;
		ar++
		rm[Sbb3YIN_PTR]	=ar;
		
		
		
		ENA		INT0		;;开启中断0
		ENI
		jmp		Sbb3Play_Next
;-----------------------------------------------------------
;函数名称:Sbb3Play_Program
;功能描述:
;-----------------------------------------------------------
Sbb3Play_Program:
		call		Sbb3Play_DeCode
		jac		Sbb3Play_Program_Next
		ar		=rm[Sbb3_Flag]
		set		ar.b15
		set		ar.b14
		rm[Sbb3_Flag]	=ar
		jmp		Sbb3Play_Exit
		
Sbb3Play_Program_Next:
		ar		=rm[Sbb3_Flag]
		test		ar.b12
		jne		Sbb3Play_Program_Ing
		jmp		Sbb3Play_Stop
		
Sbb3Play_Program_Ing:
		call		Sbb3Play_Adr
		ar		=rm[Samplech0Rate]
		Audio_Config_Adjust_Fltp
		FLTP            =ar
		jmp		Sbb3Play_Exit
		
		
;-----------------------------------------------------------
;函数名称:Sbb3Play_Stop
;功能描述:
;-----------------------------------------------------------
Sbb3Play_Stop:
		ar		=rm[Sbb3_Flag]
		test		ar.b15
		jeq		Sbb3Play_Stop_Exit
		ar		=0x800f
		rm[Sbb3_Flag]	=ar

		ar		=rm[Sbb3Filter_Gain]
		jne		Sbb3Play_Stop
Sbb3Play_Stop_Exit:
		ar		=0x0000
		rm[Sbb3_Flag]	=ar
		jmp		Sbb3Play_Exit
		
		
	
;-----------------------------------------------------------
;函数名称:Sbb_Ch0GetBts
;功能描述:
;-----------------------------------------------------------
Sbb_Ch0GetBts:
		ar		=rm[Sbb3_Flag]
		test		ar.b5
		jne		Sbb_Ch0GetBts_SPI
Sbb_Ch0GetBts_Rom:
		push		p1
		push		ax
		ar		=p1.hh 
		push		ar 		
		p1		=rm[Sbb3_AddrL]
		ar		=rm[Sbb3_AddrH]
		p1.hh		=ar 
		ar		=pm[p1++]
		xchg		ar
		
		push		ar 		
		rm[Sbb3_AddrL]=p1
		ar		=p1.hh		
		rm[Sbb3_AddrH]=ar 
		pop		ax 		
		pop		ar 
		p1.hh		=ar 
		ar		=ax 
		pop		ax 
		pop		p1
		rets
		
Sbb_Ch0GetBts_SPI:
		push		i0
		push		CBL
		CBL		=0x0008
		i0		=rm[Sbb3FlashOU_PTR]
		ar		=rm[i0++]
		rm[Sbb3FlashOU_PTR]=i0
		xchg		ar
		pop		CBL
		pop		i0
		rets
		



;-----------------------------------------------------------
;函数名称:Sbb3Play_Clr
;功能描述:清寄存器
;-----------------------------------------------------------
Sbb3Play_Clr:
		i1		=Sbb3Buf
		cx		=0x01ff
		ar		=0x0000
		jmp		Sbb3Play_Clr_Lp
		
Sbb3PlayFlash_Clr:
		i1		=Sbb3FlashBuf
		cx		=0x00ff
		ar		=0x0000		
		jmp		Sbb3Play_Clr_Lp
Sbb3Play_Clr_Lp:
		rm[i1++]	=ar
		Loop		Sbb3Play_Clr_Lp
		rets


;-----------------------------------------------------------
;函数名称:Sbb3Play_Adr
;功能描述:获得地址
;-----------------------------------------------------------
Sbb3Play_Adr:
	;;-------------------------------------------------------;;
	;;设置播放声音的初始地址
	;;-------------------------------------------------------;;
		pch=		Sbb3_Adr_Init	
		lcall		Sbb3_Adr_Init
		jac		Sbb3Play_init_SPI
Sbb3Play_init_Rom:
		ar		=rm[Sbb3_Flag]
		clr		ar.b4
		clr		ar.b5
		rm[Sbb3_Flag]	=ar
Sbb3Play_init_Rom_again:
		Sbb3_Ch0Init
		jzr		Sbb3Play_init_Rom_again 
		rets
		
		
		
Sbb3Play_init_SPI:
		ar		=rm[Sbb3_Flag]
		clr		ar.b4
		set		ar.b5
		rm[Sbb3_Flag]	=ar
		call		Sbb3_ReadDataToBufFirst
Sbb3Play_init_SPI_again:
		Sbb3_Ch0Init
		jzr		Sbb3Play_init_SPI_again 
		rets
		
		
		
		
Sbb3_ReadDataToBufFirst:
		ar		=Sbb3FlashBuf
		rm[Sbb3FlashIN_PTR]=ar
		rm[Sbb3FlashOU_PTR]=ar
		cx		=0x0100
		jmp		Sbb3_ReadDataToBuf_Prg
		
Sbb3_ReadDataToBuf:
		ar		=rm[Sbb3FlashIN_PTR]
		ax		=ar
		ar		=rm[Sbb3FlashOU_PTR]
		ar		=ar-ax
		ax		=0x00ff
		ar		&=ax
		jeq		Sbb3_ReadDataToBuf_End
		cx		=ar
Sbb3_ReadDataToBuf_Prg:
		CBL		=8
		ar		=rm[Sbb3_AddrL]
		rm[FlashAddrL]	=ar
		ar		=rm[Sbb3_AddrH]
		rm[FlashAddrH]	=ar
		i0		=rm[Sbb3FlashIN_PTR]
		pch=		FlashRead_Program
		lcall		FlashRead_Program
		rm[Sbb3FlashIN_PTR]=i0
		ar		=rm[FlashAddrL]
		rm[Sbb3_AddrL]	=ar
		ar		=rm[FlashAddrH]
		rm[Sbb3_AddrH]	=ar
Sbb3_ReadDataToBuf_End:
		
		rets
		
		
;-----------------------------------------------------------
;函数名称:Sbb3Play_DeCode
;功能描述:
;-----------------------------------------------------------
Sbb3Play_DeCode:
;		ax		=rm[Sbb3YOU_PTR]
;		ar		=rm[Sbb3YIN_PTR]
;Sbb3Play_Empty:
;		ar		=ax-ar
;		jan		Sbb3Play_Empty_Over
;		jmp		Sbb3Play_Empty_OK
;	Sbb3Play_Empty_Over:
;		ax		=0x01ff
;		ar		&=ax
;	Sbb3Play_Empty_OK:
;		ax		=0x121
;		sf		=ar-ax
;		jan		Sbb3Play_DeCode_Exit
		
;		ar		=rm[Sbb3YIN_PTR]
;		rm[VolBuf]	=ar

		
		ar		=rm[Sbb3_Flag]
		test		ar.b5
		jne		Sbb3Play_DeCode_SPI
Sbb3Play_DeCode_Rom:
		ar=0
		CBL=ar
		Sbb3_Ch0dec
                jzr		Sbb3Play_DeCode_Rom_Next
;		ar		=9
;		CBL		=ar
;		ar		=rm[VolBuf]
;		i0		=ar
;		cx		=0x011f
;		pch=		WaveGain_Prg
;		lcall		WaveGain_Prg
		clr		c
		rets
Sbb3Play_DeCode_Rom_Next:
;		ar		=9
;		CBL		=ar
;		ar		=rm[VolBuf]
;		i0		=ar
;		cx		=0x011f
;		pch=		WaveGain_Prg
;		lcall		WaveGain_Prg
		set		c
		rets


Sbb3Play_DeCode_SPI:
		ar=0
		CBL=ar
		Sbb3_Ch0dec
                jzr		Sbb3Play_DeCode_SPI_Next
		call		Sbb3_ReadDataToBuf
		
;		ar		=9
;		CBL		=ar
;		ar		=rm[VolBuf]
;		i0		=ar
;		cx		=0x011f
;		pch=		WaveGain_Prg
;		lcall		WaveGain_Prg
		clr		c
		rets

Sbb3Play_DeCode_SPI_Next:
		call		Sbb3_ReadDataToBuf
		
;		ar		=9
;		CBL		=ar
;		ar		=rm[VolBuf]
;		i0		=ar
;		cx		=0x011f
;		pch=		WaveGain_Prg
;		lcall		WaveGain_Prg
		set		c
		rets

Sbb3Play_DeCode_Exit:
		rets

Sbb3Play_PWM:	
		push		ax
		
		ar		=rm[Sbb3_Flag]
		test		ar.b15
		jeq		Sbb3Play_PWM_Exit
		
	
		ar		=rm[Sbb3_Flag]
		ax		=ar
		
		ar		=rm[MuteFlag]
		jeq		Sbb3Play_PWM_Mute
		ax		=0x0000
Sbb3Play_PWM_Mute:
		ar		=rm[PauseFlag]
		jeq		Sbb3Play_PWM_Ing
		ar		=rm[Sbb3Filter_Gain]
		jeq		Sbb3Play_PWM_Exit
		ax		=0x0000
		jmp		Sbb3Play_PWM_Ing

Sbb3Play_PWM_Ing:
		ar		=rm[Filter_GainNum]
		jne		Sbb3Play_PWM_RampUpDownEnd

		ar		=rm[Sbb3Volum]
		cx		=ar
		ar		=rm[Sbb3Filter_Gain]
		i0		=ar
		ar		=ax
		pch=		Play_RampUpDown
		lcall		Play_RampUpDown
		rm[Sbb3Filter_Gain]=ar
		
Sbb3Play_PWM_RampUpDownEnd:

		ar		=rm[Samplech0Rate]
		Audio_Config_Adjust_Fltp
		FLTP            =ar

		ar		=rm[Sbb3Filter_Gain]
		FLTG		=ar

		i0		=rm[Sbb3YOU_PTR]
		ar		=9
		CBL		=ar
		cx		=0x0003
	Sbb3Play_PWM_Lp:
		jfa		Sbb3Play_PWM_Out
		ar		=0x0000
		FLTI		=rm[i0]
		rm[i0++]	=ar
	Sbb3Play_PWM_Out:
		ar		=FLTO
                io[DACL]        =ar
		nop
		nop
		loop		Sbb3Play_PWM_Lp
		rm[Sbb3YOU_PTR]	=i0
Sbb3Play_PWM_Exit:
		pop		ax
                rets
	



#include		"Sbb3_Prg\Sbb3_setup.asm"









;-----------------------------------------------------------
; 型号不同选择的obj文件不同
;;-----------------------------------------------------------

#ifdef _MSPEECHDSP_

	Macro		Sbb3_Ch0Init
		PCH=            SDSP_Sbb3_Ch0InitV06
		lcall           SDSP_Sbb3_Ch0InitV06
	Endm
	
	Macro		Sbb3_Ch0dec

		PCH=		SDSP_Sbb3_Ch0decV06
		lcall		SDSP_Sbb3_Ch0decV06
	Endm
	
	#linkobj	"Sbb3_Prg\SDSP_Sbb3_Ch0decV06.obj"
	

#else




	Macro		Sbb3_Ch0Init
		PCH=            Sbb3_Ch0InitV06
		lcall           Sbb3_Ch0InitV06
	Endm
	
	Macro		Sbb3_Ch0dec

		PCH=		Sbb3_Ch0decV06
		lcall		Sbb3_Ch0decV06
	Endm
	
	

	#linkobj	"Sbb3_Prg\Sbb3_Ch0decV06.obj"
#endif



