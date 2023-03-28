

#define		SPI_Rom

SPIorROM_Init:
		ar		=0x0000
		rm[SPIorRomFlag]=ar

#If		_SPI_Rom_		== 0	;;0£ºSPI  1£ºRom

SPI_Init:
		pch=		SPI_Open
		lcall		SPI_Open
		FlashCS_Set
		call		FlashRel_powerdown
		ar		=0x0000
		rm[FlashAddrL]	=ar
		rm[FlashAddrH]	=ar
		call		FlashRead_LoadAddr

		call		FlashRead_WordData
		ax		=0x5452
		sf		=ar-ax
		jne		SPI_Init_Error
	
		call		FlashRead_WordData
		ax		=0x4954
		sf		=ar-ax
		jne		SPI_Init_Error
		call		FlashRead_WordData
		ax		=0x414E
		sf		=ar-ax
		jne		SPI_Init_Error
		ar		=0x0001
		rm[SPIorRomFlag]=ar
		jmp		SPI_InitEnd
SPI_Init_Error:
		FlashCS_Set		;;cs¸ß
		loop		SPI_Init
		jmp		SPI_Init
SPI_InitEnd:

Data_FunctionSPI:

		ar=0x000a
		rm[FlashAddrL]	=ar
		ar=0x0000
		rm[FlashAddrH]	=ar
		call		FlashRead_LoadAddr
		call		FlashRead_WordData
		ax		=ar
		call		FlashRead_WordData
		bx		=ar
		FlashCS_Set
		ar		=ax
		rm[FlashAddrL]	=ar
		ar		=bx
		rm[FlashAddrH]	=ar
		call		FlashRead_LoadAddr
		call		FlashRead_WordData
		sf		=ar-0x0000
		jeq		Data_FunctionSPI_Error
		ax		=0x00ff
		sf		=ax-ar
		jan		Data_FunctionSPI_Error
		rm[SentenceNumMax]=ar
		FlashCS_Set			;;cs¸ß
		ar		=rm[SPIorRomFlag]
		set		ar.b2
		rm[SPIorRomFlag]=ar
		rets
Data_FunctionSPI_Error:
		FlashCS_Set			;;cs¸ß
		io[ClrWDT]	=ar
		jmp		Data_FunctionSPI
		rets
				
#else
		
Rom_Init:
		p1		=#BinTab
		p1.hh		=#BinTab.h
		ar		=pm[p1++]
		ax		=0x5452
		sf		=ar-ax
		jne		Rom_Init_Error
		ar		=pm[p1++]
		ax		=0x4954
		sf		=ar-ax
		jne		Rom_Init_Error
		ar		=pm[p1++]
		ax		=0x414E
		sf		=ar-ax
		jne		Rom_Init_Error
		ar		=rm[SPIorRomFlag]
		ar		=0x0002
		rm[SPIorRomFlag]=ar
		jmp		Rom_InitEnd
Rom_Init_Error:
		io[ClrWDT]	=ar
		jmp		Rom_Init
Rom_InitEnd:
Data_FunctionRom:
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

		p1		=#BinTab
		p1.hh		=#BinTab.h
		ar		=ax
		p1		+=ar
		ar		=p1.hh
		ar		+=bx+c
		p1.hh		=ar
		ar		=pm[p1]
		jeq		Data_FunctionRom_Error
		ax		=0x00ff
		sf		=ax-ar
		jan		Data_FunctionRom_Error
		rm[SentenceNumMax]=ar
		ar		=rm[SPIorRomFlag]
		clr		ar.b2
		rm[SPIorRomFlag]=ar
		rets
Data_FunctionRom_Error:
		io[ClrWDT]	=ar
		jmp		Data_FunctionRom_Error		
#Endif
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



		



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
