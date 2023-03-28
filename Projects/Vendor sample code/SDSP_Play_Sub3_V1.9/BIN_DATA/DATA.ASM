;;========================================================
/*
;;使用Troview工具生产Bin文档；
;;DEFINEROM	后接文档路径和名字，如:Spi_Flash\XXX.Bin是路径和文档名称,可自定义;
;;SIZE	后接文档尺寸,如：2048K (Byte)=16M，根据声音尺寸自定义；

本文档建有两类表格：总表格、子表格
总表格：包含各子表格的地址；
子表格：包含命令和各声音地址，如：Adpcm地址、Sub3地址、Midi地址等，根据需求增建；

子表格的格式位：
1、HXAM、HPAM和SUB3表格定义如下：
Dw		歌曲总数
Dw		格式,	播放次数,低地址,	高地址
：		：	：	：	：
：		：	：	：	：
Dw		格式,	播放次数,低地址,	高地址	；根据歌曲总数定义

2、格式定义：	0001H的低8Bit XX01H表示:Adpcm格式;
		00102H的低8Bit XX02H表示:Sub3格式;
3、播放次数定义：
		0000H：播放1次；
		0001H：播放2次；
		0XXXH：播放X+1次；
		8000H：Bit15=1,一直循环播放；		
*/
;;========================================================
DEFINEROM 	Spi_Flash\Adpcm8_Sub8_MD2.Bin  	SIZE 	1024K	;=8M
BEGIN
LINKORG		0000H
;;========================================================
DW		Adpcm_Adr_Tab&0FFFFH,	Adpcm_Adr_Tab>>16	;0	Adpcm地址表格
DW		Sub3_Adr_Tab&0FFFFH,	Sub3_Adr_Tab>>16	;4	Sub2地址表格
DW		Midi_Adr_Tab&0FFFFH,	Midi_Adr_Tab>>16	;12	Midi地址表格
;DW		Rec_Star_Adr&0FFFFH,	Rec_Star_Adr>>16	;16	录音起始地址
;DW		Rec_End_Adr&0FFFFH,	Rec_End_Adr>>16		;20	录音结束地址
DW		0FFFFH
DW		0FFFFH
;;========================================================
LinkData		Null.txt  					Adpcm_Adr_Tab	{UnSign}
Dw		8					;;歌曲总数
;		格式 ,播放次数, 低地址             	, 高地址
Dw		0001H,0010H,Adpcm_Adr_01&0FFFFH,Adpcm_Adr_01>>16	;1
Dw		0001H,0010H,Adpcm_Adr_02&0FFFFH,Adpcm_Adr_02>>16	;2
Dw		0001H,0010H,Adpcm_Adr_03&0FFFFH,Adpcm_Adr_03>>16	;3
Dw		0001H,0010H,Adpcm_Adr_04&0FFFFH,Adpcm_Adr_04>>16	;4
Dw		0001H,0010H,Adpcm_Adr_05&0FFFFH,Adpcm_Adr_05>>16	;5
Dw		0001H,0010H,Adpcm_Adr_06&0FFFFH,Adpcm_Adr_06>>16	;6
Dw		0001H,0010H,Adpcm_Adr_07&0FFFFH,Adpcm_Adr_07>>16	;7
Dw		0001H,0010H,Adpcm_Adr_08&0FFFFH,Adpcm_Adr_08>>16	;8
;Dw		0001H,0010H,Adpcm_Adr_09&0FFFFH,Adpcm_Adr_09>>16	;9
;Dw		0001H,0010H,Adpcm_Adr_10&0FFFFH,Adpcm_Adr_10>>16	;10
;;========================================================
LinkData		Null.txt  					Sub3_Adr_Tab	{UnSign}
Dw		8					;;歌曲总数
;		格式   ,播放次数, 	低地址             	, 高地址
Dw		0002H,0000H,Sub3_Adr_01&0FFFFH,Sub3_Adr_01>>16	;1
Dw		0002H,0000H,Sub3_Adr_02&0FFFFH,Sub3_Adr_02>>16	;2
Dw		0002H,00A8H,Sub3_Adr_03&0FFFFH,Sub3_Adr_03>>16	;3
Dw		0002H,0064H,Sub3_Adr_04&0FFFFH,Sub3_Adr_04>>16	;4
Dw		0002H,0118H,Sub3_Adr_05&0FFFFH,Sub3_Adr_05>>16	;5
Dw		0002H,0118H,Sub3_Adr_06&0FFFFH,Sub3_Adr_06>>16	;6
Dw		0002H,01A4H,Sub3_Adr_07&0FFFFH,Sub3_Adr_07>>16	;7
Dw		0002H,0078H,Sub3_Adr_08&0FFFFH,Sub3_Adr_08>>16	;8
;Dw		0002H,00118H,Sub3_Adr_09&0FFFFH,Sub3_Adr_09>>16	;9
;Dw		0002H,001A4H,Sub3_Adr_10&0FFFFH,Sub3_Adr_10>>16	;10

;;==========================MD2==========================
LinkData 		Null.txt				Midi_Adr_Tab	{UnSign}
;		 	低地址             	, 高地址
Dw		Midi_Adr_01&0FFFFH,Midi_Adr_01>>16	;1
Dw		Midi_Adr_02&0FFFFH,Midi_Adr_02>>16	;2

LinkData 		Wav\Piano_32K_6CH.md2		Midi_Adr_01	{UnSign}	;;PCM格式的Midi
LinkData 		Wav\Demo_New4_32K_12CH.md2	Midi_Adr_02	{UnSign} ;;ADPCM格式的Midi 

;;==========================ADPCM==========================
LinkData 		wav\42.Dog Barking_8000_4-12.HXAM		Adpcm_Adr_01	{UnSign}
LinkData 		wav\43.Cat Meow_8000_4-12.HXAM		Adpcm_Adr_02	{UnSign}
LinkData 		wav\44.Elephant_8000_4-12.HXAM		Adpcm_Adr_03	{UnSign}
LinkData		wav\45.Jungle_8000_4-12.HXAM		Adpcm_Adr_04	{UnSign}
LinkData 		wav\46.Lion_8000_4-12.HXAM		Adpcm_Adr_05	{UnSign}
LinkData		wav\47.Rooster_8000_4-12.HXAM		Adpcm_Adr_06	{UnSign}
LinkData 		wav\48.Duck_8000_4-12.HXAM		Adpcm_Adr_07	{UnSign}
LinkData		wav\49.Horse_8000_4-12.HXAM       		Adpcm_Adr_08	{UnSign}
;LinkData 	wav\猫叫声1_16000_4-12.HXAM		Adpcm_Adr_09	{UnSign}
;LinkData		wav\鸟叫声_16000_4-12.HXAM		Adpcm_Adr_10	{UnSign}

;;==========================SUB3==============================
LinkData 		wav\s3b.T3Z		Sub3_Adr_01	{UnSign}
LinkData 		wav\s8.T3Z		Sub3_Adr_02	{UnSign}
LinkData 		wav\x1_22kP.TLB		Sub3_Adr_03	{UnSign}
LinkData		wav\x2P.TLB		Sub3_Adr_04	{UnSign}
LinkData 		wav\x3P.TLB		Sub3_Adr_05	{UnSign}
LinkData		wav\x4P.TLB		Sub3_Adr_06	{UnSign}
LinkData 		wav\x5P.TLB		Sub3_Adr_07	{UnSign}
LinkData		wav\x6P.TLB		Sub3_Adr_08	{UnSign}
;LinkData 	wav\x4U.TLB		Sub3_Adr_09	{UnSign}
;LinkData 	wav\x5U.TLB		Sub3_Adr_10	{UnSign}
;;========================================================
LinkData		Null.txt  			Voice_End_Adr	{UnSign}
;;========================================================
;;========================================================
;LINKORG	180000H			;根据需求配置录音起始地址
LinkData		Null.txt  			Rec_Star_Adr	{UnSign}

;LINKORG	200000H			;根据需求配置录音结束地址
LinkData		Null.txt  			Rec_End_Adr	{UnSign}
;;========================================================
End




