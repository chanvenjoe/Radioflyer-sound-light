
MACRO	FlashCS_Set
	set	IO[PortB].b3	
	set	IO[PortB].b5
	ar=0x0b00		//bit11
	io[SPI_CTL]=ar		//因为我们是硬件的，SPI_CTL需要设置硬件参数
ENDM				//这个macro是设置CS高


MACRO	FlashCS_Clr
	clr	IO[PortB].b3
	clr	IO[PortB].b5
	ar=0x0300
	io[SPI_CTL]=ar		//因为我们是硬件的，SPI_CTL需要设置硬件参数
ENDM				//这个macro是设置CS高

SPI_Open:
	set	io[STATUS].b8	// Enable SPI Control
	FlashCS_Set
	set	io[IOC_PCI].b6
	set	io[IOC_PCI].b5
	set	io[IOC_PCI].b4
	set	IO[PortCI].b6
	set	IO[PortCI].b5
	set	IO[PortCI].b4
	rets
	
SPI_Close:
	clr	io[STATUS].b8	// Enable SPI Control
	FlashCS_Set		// cs=1

	set	io[IOC_PCI].b6
	set	io[IOC_PCI].b5
	set	io[IOC_PCI].b4
	clr	IO[PortCI].b6
	clr	IO[PortCI].b5
	clr	IO[PortCI].b4		;;输出高低
	ar		=0x003f		;;PortB[5:0] 1：输出模式 0：输入模式
	io[IOC_PB]	=ar
	ar		=0x0000
	io[PORTB]	=ar		;;输出高低
	rets
	
	
;#define		SPI_CLK_WB		0x1311		;16M
;#define		SPI_CLK_WW		0x1312		;16M
;#define		SPI_CLK_RB		0x1321		;16M
;#define		SPI_CLK_RW		0x1322		;16M

;#define		SPI_CLK_WB		0x2311		;8M
;#define		SPI_CLK_WW		0x2312		;8M
;#define		SPI_CLK_RB		0x2321		;8M
;#define		SPI_CLK_RW		0x2322		;8M

#define			SPI_CLK_WB		0x3311		;4M
#define			SPI_CLK_WW		0x3312		;4M
#define			SPI_CLK_RB		0x3321		;4M
#define			SPI_CLK_RW		0x3322		;4M


;;;;;;;;;;;;;;;;;;;;
;spi写入
;;;;;;;;;;;;;;;;;;;;
Spi_Write_Byte:			//发送一个8bit数据
	ar=SPI_CLK_WB
	io[SPI_CTL]=ar		// send_data = 1;
	jmp	Spi_Wait_Ok
Spi_Write_Word:			//发送一个16bit数据
	ar=SPI_CLK_WW
	io[SPI_CTL]=ar		// send_data = 2;
	jmp	Spi_Wait_Ok
	
Spi_Read_Byte:
	ar=SPI_CLK_RB		//接收一个8bit数据 
	io[SPI_CTL]=ar		//RCV_data = 1;
	jmp	Spi_Wait_Ok
	
Spi_Read_Word:
	ar=SPI_CLK_RW		//接收一个16bit数据
	io[SPI_CTL]=ar		//RCV_data = 2;
	jmp	Spi_Wait_Ok
	
Spi_Wait_Ok:
	ar=io[SPI_CTL]		//等待CLK发送结束、
	test	ar.b7
	jeq	Spi_Wait_Ok
	rets

//;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
//读flash的状态寄存器
//;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
FlashRead_Status:
	FlashCS_Clr
	ar=0x0005
 	io[SPI_DAT]=ar
  	call	Spi_Write_Byte		//写一个读状态的命令
	call	Spi_Read_Byte		//获得状态的寄存器的数据
	FlashCS_Set
	ar=io[SPI_DAT]
	rets
//;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
//等待flash空闲
//;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
FlashBusy_Wait:
	IO[CLRWDT]=ar
	call	FlashRead_Status	//获得状态寄存器的数据
	test ar.b0			//判断bit0   bit0是flash空闲或者忙的标志
	jnz	FlashBusy_Wait		//只有flash处于空闲，才可以操作flash
	rets
//;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
//设置写保护区0block~15block
//;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;		
Protection_NO:
	FlashCS_Clr	;;cs低	1011
	ar=0x1C01;;;;
	io[SPI_DAT]=ar		//发送一个16bit的数据。低8位是命令。高8位数据（设置保护区位置）
	call	Spi_Write_Word		//设置保护区，
	FlashCS_Set	;;cs高
	rets
		
//;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
//写使能
//;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;	
;Write_Flash_Enable:
;	FlashCS_Clr			//cs低		
;	ar=0x0006
;	io[SPI_DAT]=ar
;	call	Spi_Write_Byte		//发送一个8位数据，写使能的命令
;	FlashCS_Set			//cs高
;	rets

//;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
//擦除一个sector
//;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;Erase_Sector:
;
;	FlashCS_Clr			//cs低	
;	ar=rm[FlashAddrH]
;	ah=0x20
;	xchg ar
;	io[SPI_DAT]=ar
;	call	Spi_Write_Word		//发送一个16bit的数据
;					//低8位是擦除sector的命令。高8位是sector的地址高位
;	ar=rm[FlashAddrL]
;	xchg	ar	
;	io[SPI_DAT]=ar
;	call	Spi_Write_Word		//发送一个16bit的数据
;					//低8位是sector的地址中位。高8位是sector的地址低位
;	FlashCS_Set			//cs高		
;	rets
	
	
//;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
//擦除一个Chip
//;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;Erase_Chip:
;	FlashCS_Clr			//cs低
;	ar=0x0060
;	io[SPI_DAT]=ar
;	call	Spi_Write_Byte		//发送一个8bit的擦除整个芯片数据命令	
;	FlashCS_Set			//cs高
;
;	rets	

//;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
//注意每次CS变低后，第一个8bit数据都是命令 根据不同的命令带不同后面的参数
//;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

Deep_powerdown:

	FlashCS_Clr	;;cs低
	ar=0x00b9
  	call	Spi_Write_Byte
	FlashCS_Set	;;cs高
	rets

Rel_powerdown:
	FlashCS_Clr	;;cs低
	ar=0x00ab
  	call	Spi_Write_Byte
	FlashCS_Set	;;cs高
	rets

FlashDeep_powerdown:
	call	FlashBusy_Wait
	call	Deep_powerdown
	rets
FlashRel_powerdown:
	call	Rel_powerdown
	rets
//;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
//写保护,设置需要保护的区块
//;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;FlashProtection:
;	call	FlashBusy_Wait		//等待flash空闲
;	call	Protection_NO		//设置保护位置	这个子程序里面有关系设置保护区块的参数
;	rets
	
//;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
//擦除一个sector
//;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;		
;FlashErase_Sector:
;	call	FlashBusy_Wait		//等待flash空闲
;	call	Write_Flash_Enable	//写使能
;	call	Erase_Sector		//擦除一个sector    
;					//里面有擦除哪个sector的寄存器，需要外部设置
;					//FlashAddrH  FlashAddrL
;	rets
//;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
//擦除一个Chip
//;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;	
;FlashErase_Chip:
;	call	FlashBusy_Wait		//等待flash空闲
;	call	Write_Flash_Enable	//写使能
;	call	Erase_Chip		//擦除芯片
;	rets
	
//;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
//发送一个读数据的地址
//;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
Read_LoadAddr:
	FlashCS_Clr	;;cs低
	ar=rm[FlashAddrH]
	ah=0x03
	xchg ar
	io[SPI_DAT]=ar
	call	Spi_Write_Word		//发送读命令。同时后面紧跟着发送地址
	ar=rm[FlashAddrL]
	xchg	ar
	io[SPI_DAT]=ar
	call	Spi_Write_Word
	rets
//;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
//发送一个写数据的地址
//;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;Write_LoadAddr:
;	FlashCS_Clr	;;cs低
;	ar=rm[FlashAddrH]
;	ah=0x02
;	xchg ar
;	io[SPI_DAT]=ar
;	call	Spi_Write_Word		//发送写命令。同时后面紧跟着发送地址
;	ar=rm[FlashAddrL]
;	xchg	ar
;	io[SPI_DAT]=ar
;	call	Spi_Write_Word
;	rets	
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

//;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
//连续写256byte 
//;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;FlashWrite_Program:
;	call	FlashBusy_Wait		//等待flash空闲
;	call	Write_Flash_Enable	//写使能	
;	call	Write_LoadAddr		//发送写数据的地址	FlashAddrH  FlashAddrL
;					//里面寄存器，需要外部设置
;	push	cx
;	cx=0x007f;
;FlashWrite_Program_Start:
;	ar=rm[i0++];
;	io[SPI_DAT]=ar
;	call	Spi_Write_Word		//连续写256byte
;	loop	FlashWrite_Program_Start
;	FlashCS_Set	;;cs高	
;	pop	cx
;	rets



//;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
//发送写地址 	
//;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;FlashWrite_LoadAddr:
;	call	FlashBusy_Wait		//等待flash空闲
;	call	Write_Flash_Enable	//写使能
;	call	Write_LoadAddr		//发送写地址	FlashAddrH  FlashAddrL
;	rets				//里面寄存器，需要外部设置
;
;FlashWrite_WordData:
;	io[SPI_DAT]=ar
;	call	Spi_Write_Word		//读word	
;	rets
;FlashWrite_ByteData:
;	io[SPI_DAT]=ar
;	ar=0x0001
;	call	Spi_Write_Byte		//读byte
;	rets

//;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
//发送读地址 	
//;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
FlashRead_LoadAddr:
	call	FlashBusy_Wait		//等待flash空闲
	call	Read_LoadAddr		//发送读地址	FlashAddrH  FlashAddrL
	rets				//里面寄存器，需要外部设置


//;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
//连续读	
//;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;		
FlashRead_Program:
	call	FlashBusy_Wait		//等待flash空闲
	call	Read_LoadAddr		//发送读地址	FlashAddrH  FlashAddrL
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
	call	Spi_Read_Word		//连续读数据
	ar=io[SPI_DAT]
	rm[i0++]=ar;
	loop	FlashRead_Program_Start
	FlashCS_Set		;;cs高
	rets
		

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		
FlashRead_WordData:		
	push	ax
	call	Spi_Read_Word		//读word数据
	ar=rm[FlashAddrL]		//同时地址会加2
	ax=0x0002
	ar+=ax
	rm[FlashAddrL]=ar
	ax=0x0000
	ar=rm[FlashAddrH]
	ar+=ax+c
	rm[FlashAddrH]=ar
	pop	ax
	ar=io[SPI_DAT]
	rets

		
	
FlashRead_ByteData:
	push	ax
	call	Spi_Read_Byte		//读byte数据
	ar=rm[FlashAddrL]		//同时地址会加1
	ax=0x0001
	ar+=ax
	rm[FlashAddrL]=ar
	ax=0x0000
	ar=rm[FlashAddrH]
	ar+=ax+c
	rm[FlashAddrH]=ar
	pop	ax
	ar=io[SPI_DAT]
	rets
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;	


