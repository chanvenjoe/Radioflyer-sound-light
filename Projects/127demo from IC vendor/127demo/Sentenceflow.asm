;;******************************************************************************
;;******************************************************************************
Sentence_Pause_Enable:
		ar		=0x0001
		rm[PauseFlag]	=ar
		rets
		
Sentence_Pause_disable:
		ar		=0x0000
		rm[PauseFlag]	=ar
		rets
		
Sentence_Mute_Enable:
		ar		=0x0001
		rm[MuteFlag]	=ar
		rets
Sentence_Mute_disable:
		ar		=0x0000
		rm[MuteFlag]	=ar
		rets
;-----------------------------------------------------------
;外部需要了解的函数和寄存器
;函数名称：	Sentence_Flow
;函数名称：	Sentence_Start
;函数名称：	Sentence_Stop
;旗标寄存器:	Sentence_Flag
;-----------------------------------------------------------
Sentence_Start:
		ar		=0x0001
		rm[Sentence_Flag]=ar
		call		Sentence_Pause_disable
		rets

;-----------------------------------------------------------
;-----------------------------------------------------------
;-----------------------------------------------------------
Sentence_Flow:


		ar		=rm[Sentence_Flag]
		ar		&=0x0003
		p1		=#Sentence_Tab
		p1		+=ar
		p1		=pm[p1]
		fjmp		pm[p1]


Sentence_Tab:
		DW		#Sentence_Exit		;;Exit
		DW		#Sentence_Init		;;01 
		DW		#Sentence_Program	;;02
		DW		#Sentence_Stop		;;03


Sentence_Next:	;;换下一个流程动作

		ar		=rm[Sentence_Flag]
		ar++
		rm[Sentence_Flag]=ar
		jmp		Sentence_Flow
		
Sentence_Last:	;;换上一个流程动作

		ar		=rm[Sentence_Flag]
		ar--
		rm[Sentence_Flag]=ar
		jmp		Sentence_Flow
		
Sentence_Exit:		;;直接退出
		rets

;-----------------------------------------------------------
;函数名称:Sentence_Init
;功能描述:
;-----------------------------------------------------------
Sentence_Init:
		ar		=0x0000
		rm[Sentence_PT]	=ar
		rm[Sentence_Time]=ar
		rm[Sentence_Loop]=ar
		M_Sbb3Play_Stop
		jmp		Sentence_Next
		
;-----------------------------------------------------------
;函数名称:Sentence_Program
;功能描述:
;-----------------------------------------------------------
Sentence_Program:
		ar		=rm[Sbb3_Flag]
		jne		Sentence_Exit
		ar		=rm[Sentence_Time]
		jne		Sentence_Exit
		call		Sentence_Data
Sentence_Program_Ing:

		bx		=0x0fff
		bx		&=ar
		
		ax		=0xf000
		ax		&=ar
		
		ar		=0x1000
		sf		=ar-ax
		jeq		Sentence_Program_Loop
		ar		=0x2000
		sf		=ar-ax
		jeq		Sentence_Program_LoopEnd
		ar		=0x3000
		sf		=ar-ax
		jeq		Sentence_Program_Delay
		ar		=0xf000
		sf		=ar-ax
		jeq		Sentence_Program_Next
		

		ar		=rm[SPIorRomFlag]
		test		ar.b2
		jne		Play_SPIData
Play_ROMData:
		ar		=bx
		rm[Sbb3_Num]	=ar
		M_Sbb3Play_Start
		jmp		Sentence_Program_PTInc
Play_SPIData:
		ar		=bx
		set		ar.b15
		rm[Sbb3_Num]	=ar
		M_Sbb3Play_Start
		jmp		Sentence_Program_PTInc
		
Sentence_Program_Loop:
		ar		=rm[Sentence_PT]
		rm[SentenceLoop_PT]=ar
		ar		=0x0000
		rm[Sentence_Loop]=ar
		jmp		Sentence_Program_PTInc
Sentence_Program_LoopEnd:
		ar		=rm[Sentence_Loop]
		ar++
		rm[Sentence_Loop]=ar
		sf		=ar-bx
		jge		Sentence_Program_PTInc
		ar		=rm[SentenceLoop_PT]
		rm[Sentence_PT]	=ar
		jmp		Sentence_Program_PTInc
Sentence_Program_Delay:
		ar		=bx
		rm[Sentence_Time]=ar
		jmp		Sentence_Program_PTInc
Sentence_Program_PTInc:
		ar		=rm[Sentence_PT]
		ar++
		rm[Sentence_PT]	=ar
		jmp		Sentence_Exit
Sentence_Program_Next:
		ar		=rm[SentenceLoop]
		jne		Sentence_Start
Sentence_Stop:
		ar		=0x0000
		rm[Sentence_Flag]=ar
		M_Sbb3Play_Stop
		call		Sentence_Pause_disable
		jmp		Sentence_Exit





Sentence_Data:
;		ar		=rm[SPIorRomFlag]
;		test		ar.b2
;		jne		Sentence_SPI_Data
;		jmp		Sentence_Rom_Data
		
#If		_SPI_Rom_		== 0	;;0：SPI  1：Rom

	
Sentence_SPI_Data:

		ar		=0x000a
		rm[FlashAddrL]	=ar
		ar		=0x0000
		rm[FlashAddrH]	=ar
		pch=		FlashRead_LoadAddr
		lcall		FlashRead_LoadAddr
		pch=		FlashRead_WordData
		lcall		FlashRead_WordData
		ax		=ar
		pch=		FlashRead_WordData
		lcall		FlashRead_WordData
		rm[FlashAddrH]	=ar
		ar		=ax
		rm[FlashAddrL]	=ar
		FlashCS_Set	;;cs高
		
		pch=		FlashRead_LoadAddr
		lcall		FlashRead_LoadAddr
		pch=		FlashRead_WordData
		lcall		FlashRead_WordData
		ax		=ar
		FlashCS_Set	;;cs高
		
		
		ar		=rm[SentenceNum]
		jeq		Sentence_SPI_Data_Error
		sf		=ar-ax
		jle		Sentence_SPI_Data_OK
Sentence_SPI_Data_Error:
		ar		=0x0001
Sentence_SPI_Data_OK:
		ar--
		bx		=0x0000
		slz		ar
		slc		bx
		slz		ar
		slc		bx
		
		ax		=ar
		ar		=rm[FlashAddrL]
		ar		+=ax
		rm[FlashAddrL]	=ar
		ar		=rm[FlashAddrH]
		ar		+=bx+c
		rm[FlashAddrH]	=ar
		pch=		FlashRead_LoadAddr
		lcall		FlashRead_LoadAddr
		pch=		FlashRead_WordData
		lcall		FlashRead_WordData
		ax		=ar
		pch=		FlashRead_WordData
		lcall		FlashRead_WordData
		rm[FlashAddrH]	=ar
		ar		=ax
		rm[FlashAddrL]	=ar
		FlashCS_Set	;;cs高
		
		ar		=rm[Sentence_PT]
		slz		ar
		ax		=ar
		ar		=rm[FlashAddrL]
		ar		+=ax
		rm[FlashAddrL]	=ar
		ax		=0x0000
		ar		=rm[FlashAddrH]
		ar		+=ax+c
		rm[FlashAddrH]	=ar
		pch=		FlashRead_LoadAddr
		lcall		FlashRead_LoadAddr
		pch=		FlashRead_WordData
		lcall		FlashRead_WordData
		push		ar
		FlashCS_Set	;;cs高
		pop		ar
		rets
#else

Sentence_Rom_Data:
		p1		=#BinTab
		p1.hh		=#BinTab.h
		ar		=0x0005
		p1		+=ar
		ar		=pm[p1++]
		ax		=ar
		ar		=pm[p1++]
		bx		=ar
		
		clr		c
		src		bx
		src		ax
		
		ar		=#BinTab
		ar		+=ax
		p1		=ar
		ar		=#BinTab.h
		ar		+=bx+c
		p1.hh		=ar
		
		ar		=pm[p1++]
		ax		=ar
		ar		=rm[SentenceNum]
		jeq		Sentence_Rom_Data_Error
		sf		=ar-ax
		jle		Sentence_Rom_Data_OK
Sentence_Rom_Data_Error:
		ar		=0x0001
Sentence_Rom_Data_OK:
		ar--
		bx		=0x0000
		slz		ar
		slc		bx
		ax		=ar
		
		ar		=p1
		ar		+=ax
		p1		=ar
		ar		=p1.hh
		ar		+=bx+c
		p1.hh		=ar
		
		ar		=pm[p1++]
		ax		=ar
		ar		=pm[p1++]
		bx		=ar
		clr		c
		src		bx
		src		ax
		
		ar		=#BinTab
		ar		+=ax
		p1		=ar
		ar		=#BinTab.h
		ar		+=bx+c
		p1.hh		=ar
		
		ar		=rm[Sentence_PT]
		ax		=ar
		ar		=p1
		ar		+=ax
		p1		=ar
		bx		=0x0000
		ar		=p1.hh
		ar		+=bx+c
		p1.hh		=ar
		ar		=pm[p1]
		rets
#Endif
