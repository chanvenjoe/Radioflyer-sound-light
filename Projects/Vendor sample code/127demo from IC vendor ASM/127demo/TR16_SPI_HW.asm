
MACRO	FlashCS_Set
	set	IO[PortB].b3	
	set	IO[PortB].b5
	ar=0x0b00		//bit11
	io[SPI_CTL]=ar		//��Ϊ������Ӳ���ģ�SPI_CTL��Ҫ����Ӳ������
ENDM				//���macro������CS��


MACRO	FlashCS_Clr
	clr	IO[PortB].b3
	clr	IO[PortB].b5
	ar=0x0300
	io[SPI_CTL]=ar		//��Ϊ������Ӳ���ģ�SPI_CTL��Ҫ����Ӳ������
ENDM				//���macro������CS��

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
	clr	IO[PortCI].b4		;;����ߵ�
	ar		=0x003f		;;PortB[5:0] 1�����ģʽ 0������ģʽ
	io[IOC_PB]	=ar
	ar		=0x0000
	io[PORTB]	=ar		;;����ߵ�
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
;spiд��
;;;;;;;;;;;;;;;;;;;;
Spi_Write_Byte:			//����һ��8bit����
	ar=SPI_CLK_WB
	io[SPI_CTL]=ar		// send_data = 1;
	jmp	Spi_Wait_Ok
Spi_Write_Word:			//����һ��16bit����
	ar=SPI_CLK_WW
	io[SPI_CTL]=ar		// send_data = 2;
	jmp	Spi_Wait_Ok
	
Spi_Read_Byte:
	ar=SPI_CLK_RB		//����һ��8bit���� 
	io[SPI_CTL]=ar		//RCV_data = 1;
	jmp	Spi_Wait_Ok
	
Spi_Read_Word:
	ar=SPI_CLK_RW		//����һ��16bit����
	io[SPI_CTL]=ar		//RCV_data = 2;
	jmp	Spi_Wait_Ok
	
Spi_Wait_Ok:
	ar=io[SPI_CTL]		//�ȴ�CLK���ͽ�����
	test	ar.b7
	jeq	Spi_Wait_Ok
	rets

//;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
//��flash��״̬�Ĵ���
//;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
FlashRead_Status:
	FlashCS_Clr
	ar=0x0005
 	io[SPI_DAT]=ar
  	call	Spi_Write_Byte		//дһ����״̬������
	call	Spi_Read_Byte		//���״̬�ļĴ���������
	FlashCS_Set
	ar=io[SPI_DAT]
	rets
//;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
//�ȴ�flash����
//;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
FlashBusy_Wait:
	IO[CLRWDT]=ar
	call	FlashRead_Status	//���״̬�Ĵ���������
	test ar.b0			//�ж�bit0   bit0��flash���л���æ�ı�־
	jnz	FlashBusy_Wait		//ֻ��flash���ڿ��У��ſ��Բ���flash
	rets
//;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
//����д������0block~15block
//;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;		
Protection_NO:
	FlashCS_Clr	;;cs��	1011
	ar=0x1C01;;;;
	io[SPI_DAT]=ar		//����һ��16bit�����ݡ���8λ�������8λ���ݣ����ñ�����λ�ã�
	call	Spi_Write_Word		//���ñ�������
	FlashCS_Set	;;cs��
	rets
		
//;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
//дʹ��
//;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;	
;Write_Flash_Enable:
;	FlashCS_Clr			//cs��		
;	ar=0x0006
;	io[SPI_DAT]=ar
;	call	Spi_Write_Byte		//����һ��8λ���ݣ�дʹ�ܵ�����
;	FlashCS_Set			//cs��
;	rets

//;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
//����һ��sector
//;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;Erase_Sector:
;
;	FlashCS_Clr			//cs��	
;	ar=rm[FlashAddrH]
;	ah=0x20
;	xchg ar
;	io[SPI_DAT]=ar
;	call	Spi_Write_Word		//����һ��16bit������
;					//��8λ�ǲ���sector�������8λ��sector�ĵ�ַ��λ
;	ar=rm[FlashAddrL]
;	xchg	ar	
;	io[SPI_DAT]=ar
;	call	Spi_Write_Word		//����һ��16bit������
;					//��8λ��sector�ĵ�ַ��λ����8λ��sector�ĵ�ַ��λ
;	FlashCS_Set			//cs��		
;	rets
	
	
//;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
//����һ��Chip
//;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;Erase_Chip:
;	FlashCS_Clr			//cs��
;	ar=0x0060
;	io[SPI_DAT]=ar
;	call	Spi_Write_Byte		//����һ��8bit�Ĳ�������оƬ��������	
;	FlashCS_Set			//cs��
;
;	rets	

//;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
//ע��ÿ��CS��ͺ󣬵�һ��8bit���ݶ������� ���ݲ�ͬ���������ͬ����Ĳ���
//;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

Deep_powerdown:

	FlashCS_Clr	;;cs��
	ar=0x00b9
  	call	Spi_Write_Byte
	FlashCS_Set	;;cs��
	rets

Rel_powerdown:
	FlashCS_Clr	;;cs��
	ar=0x00ab
  	call	Spi_Write_Byte
	FlashCS_Set	;;cs��
	rets

FlashDeep_powerdown:
	call	FlashBusy_Wait
	call	Deep_powerdown
	rets
FlashRel_powerdown:
	call	Rel_powerdown
	rets
//;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
//д����,������Ҫ����������
//;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;FlashProtection:
;	call	FlashBusy_Wait		//�ȴ�flash����
;	call	Protection_NO		//���ñ���λ��	����ӳ��������й�ϵ���ñ�������Ĳ���
;	rets
	
//;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
//����һ��sector
//;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;		
;FlashErase_Sector:
;	call	FlashBusy_Wait		//�ȴ�flash����
;	call	Write_Flash_Enable	//дʹ��
;	call	Erase_Sector		//����һ��sector    
;					//�����в����ĸ�sector�ļĴ�������Ҫ�ⲿ����
;					//FlashAddrH  FlashAddrL
;	rets
//;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
//����һ��Chip
//;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;	
;FlashErase_Chip:
;	call	FlashBusy_Wait		//�ȴ�flash����
;	call	Write_Flash_Enable	//дʹ��
;	call	Erase_Chip		//����оƬ
;	rets
	
//;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
//����һ�������ݵĵ�ַ
//;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
Read_LoadAddr:
	FlashCS_Clr	;;cs��
	ar=rm[FlashAddrH]
	ah=0x03
	xchg ar
	io[SPI_DAT]=ar
	call	Spi_Write_Word		//���Ͷ����ͬʱ��������ŷ��͵�ַ
	ar=rm[FlashAddrL]
	xchg	ar
	io[SPI_DAT]=ar
	call	Spi_Write_Word
	rets
//;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
//����һ��д���ݵĵ�ַ
//;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;Write_LoadAddr:
;	FlashCS_Clr	;;cs��
;	ar=rm[FlashAddrH]
;	ah=0x02
;	xchg ar
;	io[SPI_DAT]=ar
;	call	Spi_Write_Word		//����д���ͬʱ��������ŷ��͵�ַ
;	ar=rm[FlashAddrL]
;	xchg	ar
;	io[SPI_DAT]=ar
;	call	Spi_Write_Word
;	rets	
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

//;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
//����д256byte 
//;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;FlashWrite_Program:
;	call	FlashBusy_Wait		//�ȴ�flash����
;	call	Write_Flash_Enable	//дʹ��	
;	call	Write_LoadAddr		//����д���ݵĵ�ַ	FlashAddrH  FlashAddrL
;					//����Ĵ�������Ҫ�ⲿ����
;	push	cx
;	cx=0x007f;
;FlashWrite_Program_Start:
;	ar=rm[i0++];
;	io[SPI_DAT]=ar
;	call	Spi_Write_Word		//����д256byte
;	loop	FlashWrite_Program_Start
;	FlashCS_Set	;;cs��	
;	pop	cx
;	rets



//;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
//����д��ַ 	
//;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;FlashWrite_LoadAddr:
;	call	FlashBusy_Wait		//�ȴ�flash����
;	call	Write_Flash_Enable	//дʹ��
;	call	Write_LoadAddr		//����д��ַ	FlashAddrH  FlashAddrL
;	rets				//����Ĵ�������Ҫ�ⲿ����
;
;FlashWrite_WordData:
;	io[SPI_DAT]=ar
;	call	Spi_Write_Word		//��word	
;	rets
;FlashWrite_ByteData:
;	io[SPI_DAT]=ar
;	ar=0x0001
;	call	Spi_Write_Byte		//��byte
;	rets

//;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
//���Ͷ���ַ 	
//;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
FlashRead_LoadAddr:
	call	FlashBusy_Wait		//�ȴ�flash����
	call	Read_LoadAddr		//���Ͷ���ַ	FlashAddrH  FlashAddrL
	rets				//����Ĵ�������Ҫ�ⲿ����


//;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
//������	
//;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;		
FlashRead_Program:
	call	FlashBusy_Wait		//�ȴ�flash����
	call	Read_LoadAddr		//���Ͷ���ַ	FlashAddrH  FlashAddrL
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
	call	Spi_Read_Word		//����������
	ar=io[SPI_DAT]
	rm[i0++]=ar;
	loop	FlashRead_Program_Start
	FlashCS_Set		;;cs��
	rets
		

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		
FlashRead_WordData:		
	push	ax
	call	Spi_Read_Word		//��word����
	ar=rm[FlashAddrL]		//ͬʱ��ַ���2
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
	call	Spi_Read_Byte		//��byte����
	ar=rm[FlashAddrL]		//ͬʱ��ַ���1
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


