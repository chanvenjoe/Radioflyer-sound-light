;;-------------------------------------------------------;;
;;设置播放声音的初始地址	获得语音播放首地址
;;
;;-------------------------------------------------------;;
Sbb3_Adr_Init:
		ar		=rm[Sbb3_Num]
		jan		Sbb3_SPIAdr_Init
;;-------------------------------------------------------;;
;;语音在rom中 获得语音播放首地址
;;-------------------------------------------------------;;	
Sbb3_RomAdr_Init:
		r0		=0x0fff
		r0		&=ar
		
		p1		=#BinTab
		p1.hh		=#BinTab.h
		ar		=0x0003
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
		ax		=ar
		ar		=#BinTab.h
		ar		+=bx+c
		p1.hh		=ar
		bx		=ar

		
		ar		=pm[p1++]
		p1++
		dx		=ar
		ar		=r0
		sf		=ar-0x0000
		jeq		Sbb3_RomAdr_Init_Error
		sf		=ar-dx
		jle		Sbb3_RomAdr_Init_OK
Sbb3_RomAdr_Init_Error:
		ar		=0x0001
	Sbb3_RomAdr_Init_OK:
		ar--
		slz		ar
		clr		c
		p1		+=ar
		dx		=0x0000
		ar		=p1.hh
		ar		+=dx+c
		p1.hh		=ar
		ar		=pm[p1++]
		dx		=ar
		ar		=pm[p1++]
		clr		c
		cx		=ar
		src		cx
		src		dx
		
		ar		=dx
		ar		+=ax
		rm[Sbb3_AddrL]	=ar
		ar		=cx
		ar		+=bx+c
		rm[Sbb3_AddrH]	=ar	
		clr		c	;;通知程序是数据在rom
		rets

		
;;-------------------------------------------------------;;
;;语音在SPI中 获得语音播放首地址
;;-------------------------------------------------------;;
Sbb3_SPIAdr_Init:
		r0		=0x0fff
		r0		&=ar
		ar		=0x0006
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
		bx		=ar
		rm[FlashAddrH]	=ar
		rm[Sbb3_AddrH]	=ar
		ar		=ax
		rm[FlashAddrL]	=ar
		rm[Sbb3_AddrL]	=ar
		
		FlashCS_Set	;;cs高
		pch=		FlashRead_LoadAddr
		lcall		FlashRead_LoadAddr
		pch=		FlashRead_WordData
		lcall		FlashRead_WordData
		ax		=ar
		pch=		FlashRead_WordData
		lcall		FlashRead_WordData
		FlashCS_Set	;;cs高
		

		ar		=r0
		sf		=ar-0x0000
		jeq		Sbb3_Adr_SPI_Init_Error
		sf		=ar-ax
		jle		Sbb3_Adr_SPI_Init_Ing
Sbb3_Adr_SPI_Init_Error:
		ar		=0x0001
Sbb3_Adr_SPI_Init_Ing:
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
		bx		=ar
		ar		=rm[Sbb3_AddrL]
		ar		+=ax
		rm[Sbb3_AddrL]	=ar
		ar		=rm[Sbb3_AddrH]
		ar		+=bx+c
		rm[Sbb3_AddrH]	=ar
		FlashCS_Set	;;cs高
		set		c	;;通知程序是数据在SPI
		rets
	
	
	















;.DATA
;Tzb_Adr_Tab:
;	DW	0x0001
;	DW	#Tzb_Adr_01,#Tzb_Adr_01.H
;
;Tzb_Adr_01:
;;	DW	"Sbb3_Prg/TZB/Baby_Silen.T3Z"	
;.CODE	

	
	
	