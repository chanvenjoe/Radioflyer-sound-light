;;********************************************************************
;Spi Interface:
;Cs=I1
;Sck=Pa1
;Si=Pa0
;So=Pa0
;;********************************************************************
#If		_IDE_OR_PCB_		!= 0	;;

MACRO	FlashCS_Set
	set	io[IOC_PB].b5
	set	io[PORTB].b5
ENDM

MACRO	FlashCS_Clr
	set	io[IOC_PB].b5
	clr	io[PORTB].b5
ENDM

MACRO	FlashCLK_Set
	set	io[IOC_PB].b0
	set	io[PORTB].b0
ENDM
 
MACRO	FlashCLK_Clr
	set	io[IOC_PB].b0
	clr	io[PORTB].b0
ENDM

MACRO	FlashMOSI_IOC
	set	io[IOC_PB].b1
ENDM

MACRO	FlashMOSI_Set
	set	io[PORTB].b1
ENDM
 
MACRO	FlashMOSI_Clr
	clr	io[PORTB].b1
ENDM

MACRO	FlashMISO_IOC
	clr	io[IOC_PB].b2
ENDM
	
MACRO	FlashMISO_Test
	test	io[PORTB].b2
ENDM


#else

MACRO	FlashCS_Set
	set	io[IOC_PB].b2
	set	io[PORTB].b2
ENDM

MACRO	FlashCS_Clr
	set	io[IOC_PB].b2
	clr	io[PORTB].b2

ENDM

MACRO	FlashCLK_Set
	set	io[IOC_PB].b0
	set	io[PORTB].b0
ENDM
 
MACRO	FlashCLK_Clr
	set	io[IOC_PB].b0
	clr	io[PORTB].b0
ENDM

MACRO	FlashMOSI_IOC
	set	io[IOC_PB].b1
ENDM

MACRO	FlashMOSI_Set
	set	io[PORTB].b1
ENDM
 
MACRO	FlashMOSI_Clr
	clr	io[PORTB].b1
ENDM

MACRO	FlashMISO_IOC
	clr	io[IOC_PB].b1
ENDM
	
MACRO	FlashMISO_Test
	test	io[PORTB].b1
ENDM

#endif





;;;;;;;;;;;;;;;;;;;;
;spi写入
;;;;;;;;;;;;;;;;;;;;
Spi_Write_Word:
	FlashMOSI_IOC
	push	cx
	cx=0x000f
	xchg	ar 
	jmp	Spi_Write_Data_Lp
Spi_Write_Byte:
	FlashMOSI_IOC
	push	cx
	cx=0x0007
	xchg	ar
	jmp	Spi_Write_Data_Lp
	
Spi_Write_Data_Lp:
	slc	ar
	jac	Spi_Write_H
Spi_Write_L:
	FlashMOSI_Clr	//Si=0
	jmp	Spi_Write_Next       
Spi_Write_H:
	FlashMOSI_Set	//Si=1
Spi_Write_Next:
	FlashCLK_Set
	FlashCLK_Clr
	loop	Spi_Write_Data_Lp
	pop	cx
	FlashMISO_IOC
	rets

;;;;;;;;;;;;;;;;;;;;
;spi读出
;;;;;;;;;;;;;;;;;;;;
Spi_Read_Word:
	FlashMISO_IOC
	push	cx
	cx=0x000f
	ar=0x0000
	jmp	Spi_Read_Data_Lp
Spi_Read_Byte:
       	FlashMISO_IOC			;;;///
	push	cx
	cx=0x0007
	ar=0x0000
	jmp	Spi_Read_Data_Lp
	
Spi_Read_Data_Lp:
	FlashCLK_Set
	
	FlashMISO_Test
        jnz	Spi_Read_Data_H
Spi_Read_Data_L:    
        clr	c
        jmp	Spi_Read_Data_Next
Spi_Read_Data_H:
	set	c
Spi_Read_Data_Next:
	slc	ar
        FlashCLK_Clr  				;//Sclk=0
        Loop	Spi_Read_Data_Lp 
	pop	cx
	xchg	ar
	rets   

FlashRead_Status:
	FlashCS_Clr
	ar=0x0005
  	call	Spi_Write_Byte
 	ar=0x0001
	call	Spi_Read_Byte
	FlashCS_Set
	rets
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
FlashBusy_Wait:
	IO[CLRWDT]=ar
	call	FlashRead_Status
	test ar.b0
	jnz	FlashBusy_Wait
	rets
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;设置写保护区0block~15block
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;		
Protection_NO:
	FlashCS_Clr	;;cs低	1011
	ar=0x1C01;;;;
  	call	Spi_Write_Word
	FlashCS_Set	;;cs高
	rets
		
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;使能写功能
;;;;	
Write_Flash_Enable:
	FlashCS_Clr	;;cs低
	ar=0x0006
  	call	Spi_Write_Byte
	FlashCS_Set	;;cs高
	rets

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
Erase_Sector:
	FlashCS_Clr	;;cs低
	
	ar=rm[FlashAddrH]
	ah=00
	xchg ar
	ar+=0x0020
  	call	Spi_Write_Word
	ar=rm[FlashAddrL]
	xchg ar
	call	Spi_Write_Word
  
	FlashCS_Set	;;cs高		
	rets
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
FlashProtection:
	call	FlashBusy_Wait
;	call	Write_Flash_Enable
	call	Protection_NO
	call	FlashBusy_Wait
	rets
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;			
FlashErase_Sector:
	call	FlashBusy_Wait
	call	Write_Flash_Enable
	call	Erase_Sector
	rets
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

Read_LoadAddr:

	FlashCS_Clr	;;cs低
	ar=rm[FlashAddrH]
	ah=00
	xchg ar
	ar+=0x0003
  	call	Spi_Write_Word
	ar=rm[FlashAddrL]
	xchg ar
  	call	Spi_Write_Word
	rets
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;		
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
Write_LoadAddr:
	FlashCS_Clr	;;cs低
	ar=rm[FlashAddrH]
	ah=00
	xchg ar
	ar+=0x0002
  	call	Spi_Write_Word
	ar=rm[FlashAddrL]
	xchg ar
  	call	Spi_Write_Word
	rets	
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
FlashWrite_Program:
	call	FlashBusy_Wait
	call	Write_Flash_Enable
	call	Write_LoadAddr
	push	cx
	cx=31;
FlashWrite_Program_Start:
	ar=rm[i0++];
  	call	Spi_Write_Word
	ar=rm[i0++];
  	call	Spi_Write_Word
	ar=rm[i0++];
  	call	Spi_Write_Word
	ar=rm[i0++];
  	call	Spi_Write_Word
	loop	FlashWrite_Program_Start
	FlashCS_Set	;;cs高
	pop	cx
	rets
		
FlashWrite_LoadAddr:

	call	FlashBusy_Wait
	call	Write_Flash_Enable
	call	Write_LoadAddr
	rets

FlashWrite_WordData:
  	call	Spi_Write_Word
	rets
FlashWrite_ByteData:
  	call	Spi_Write_Byte
	rets

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		
FlashRead_Program:

	call	FlashBusy_Wait
	call	Read_LoadAddr
	push	cx
	slz	cx
	ar=rm[FlashAddrL]
	ar+=cx
	rm[FlashAddrL]=ar
	cx=0x0000
	ar=rm[FlashAddrH]
	ar+=cx+c
	rm[FlashAddrH]=ar
	pop	cx
	cx--		
FlashRead_Program_Start:
	call	Spi_Read_Word
	rm[i0++]=ar;
	loop	FlashRead_Program_Start
	FlashCS_Set	;;cs高
	rets
		
FlashRead_LoadAddr:

	call	FlashBusy_Wait
	call	Read_LoadAddr
	rets
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		
FlashRead_WordData:
	push	ax
	ar=rm[FlashAddrL]
	ax=0x0002
	ar+=ax
	rm[FlashAddrL]=ar
	ax=0x0000
	ar=rm[FlashAddrH]
	ar+=ax+c
	rm[FlashAddrH]=ar
	pop	ax
	call	Spi_Read_Word
	rets

		
FlashRead_ByteData:
	push	ax
	ar=rm[FlashAddrL]
	ax=0x0001
	ar+=ax
	rm[FlashAddrL]=ar
	ax=0x0000
	ar=rm[FlashAddrH]
	ar+=ax+c
	rm[FlashAddrH]=ar
	pop	ax
	call	Spi_Read_Byte
	rets	


	
	
	
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;	

Flash_Init:

	FlashCS_Set
	ar=0x2000
	rm[FlashAddrL]=ar
	ar=0x0000
	rm[FlashAddrH]=ar
	call	FlashRead_LoadAddr
	
	call	FlashRead_WordData
	ax=0x5452
	sf=ar-ax
	jne	Flash_Init
	
	call	FlashRead_WordData
	ax=0x4954
	sf=ar-ax
	jne	Flash_Init

	call	FlashRead_WordData
	ax=0x414E
	sf=ar-ax
	jne	Flash_Init

	call	FlashRead_WordData
	call	FlashRead_WordData
	
	call	FlashRead_WordData
	ax	=ar
	call	FlashRead_WordData
	bx	=ar
	
	i1	=FlashKeyBuf
	cx	=0x0007
FlashKeyBuf_Lp:
	call	FlashRead_WordData
	rm[i1++]=ar
	loop	FlashKeyBuf_Lp
	
	call	FlashRead_WordData
	rm[DefaultVoL]=ar		;;音量默认，循环默认，低电压默认
	
	i1	=FlashLVDBuf
	call	FlashRead_WordData
	rm[i1++]=ar
	call	FlashRead_WordData
	rm[i1++]=ar
	call	FlashRead_WordData
	rm[i1++]=ar
	call	FlashRead_WordData
	rm[i1++]=ar
	
	call	FlashRead_WordData
	rm[Default_TimeL]=ar
	call	FlashRead_WordData
	rm[Default_TimeH]=ar
	FlashCS_Set
	
	
	ar		=ax
	rm[FlashAddrL]	=ar
	ar		=bx
	rm[FlashAddrH]	=ar
	call		FlashRead_LoadAddr
	call		FlashRead_WordData
	ax		=0x00ff
	sf		=ax-ar
	jan		Flash_Init
	rm[SPINumMax]	=ar
	FlashCS_Set		;;cs高
	rets




	


	
	
