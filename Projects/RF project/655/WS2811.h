#ifndef __WS2811_H
#define __WS2811_H

//#include "Delay.h"
//#include "Function_define.h"
//#include "SFR_Macro.h"

#define u8 unsigned char
#define u16 unsigned short
#define u32 unsigned int

#define NOP_3   asm("nop");asm("nop");asm("nop");//3 nop = 310 ns
#define NOP_9	asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");  asm("nop");asm("nop");asm("nop"); //9 nop = 740ns 12:980ns
#define T0H 	B_PORTI0=1;NOP_3//		220-420
#define T0L 	B_PORTI0=0;NOP_9//  		750-1000
#define T1L 	B_PORTI0=0;NOP_3//		220-420
#define T1H 	B_PORTI0=1;NOP_9//		750-1.6us
#define CODE_0	T0H T0L
#define CODE_1	T1H T1L
#define RES		B_PORTI0=0;/*delay(1);B_PORTI0=1;*/
#define LEDNUM 		3
#define LEDARR		8

/*#define NOP_3	_nop_();_nop_();_nop_();_nop_();// 270ns
#define NOP_9	_nop_();_nop_();_nop_();_nop_();_nop_();_nop_();_nop_();_nop_();_nop_();_nop_();// 800ns
#define T0H 	set_P00;NOP_3//		220-420
#define T0L 	clr_P00;NOP_9//  	750-1000
#define T1L 	clr_P00;NOP_3//		220-420
#define T1H 	set_P00;NOP_9//		750-1.6us
#define CODE_0	T0H T0L
#define CODE_1	T1H T1L
#define RES		clr_P00;Timer0_Delay125ns(3);set_P00;
#define LEDNUM 		64
#define LEDARR		8*/
typedef struct color
{
	unsigned long RGB; 
	u8 R;
	u8 G;
	u8 B;
}Color_Typedef;

enum color_seq
{Enum_White=0, Enum_Black, Enum_Green, Enum_Red, Enum_Blue, Enum_Purp};

#define White       0xFFFFFF
#define Black       0x000000
#define Green       0x00ff00
#define Red	        0xff0000
#define Blue        0x00001f
#define Test		0xFFDEAD
#define cmp = 		0x00800000;
#define dummy		0x000000
#define WS2811		0
#define WS2812B		1
#define LED_type	WS2812B
#define FadeoutTime	5
#define HSV_Ch_Sp	1
#define HSV_Delay1ms  	50
#define LED_Number_mode 1

#define TR_White CODE_1;CODE_1;CODE_1;CODE_1;CODE_1;CODE_1;CODE_1;CODE_1; CODE_1;CODE_1;CODE_1;CODE_1;CODE_1;CODE_1;CODE_1;CODE_1; CODE_1;CODE_1;CODE_1;CODE_1;CODE_1;CODE_1;CODE_1;CODE_1;
#define TR_Black CODE_0;CODE_0;CODE_0;CODE_0;CODE_0;CODE_0;CODE_0;CODE_0; CODE_0;CODE_0;CODE_0;CODE_0;CODE_0;CODE_0;CODE_0;CODE_0; CODE_0;CODE_0;CODE_0;CODE_0;CODE_0;CODE_0;CODE_0;CODE_0;
#define TR_Green CODE_1;CODE_1;CODE_1;CODE_1;CODE_1;CODE_1;CODE_1;CODE_1; CODE_0;CODE_0;CODE_0;CODE_0;CODE_0;CODE_0;CODE_0;CODE_0; CODE_0;CODE_0;CODE_0;CODE_0;CODE_0;CODE_0;CODE_0;CODE_0; 
#define TR_Red   CODE_0;CODE_0;CODE_0;CODE_0;CODE_0;CODE_0;CODE_0;CODE_0; CODE_1;CODE_1;CODE_1;CODE_1;CODE_1;CODE_1;CODE_1;CODE_1; CODE_0;CODE_0;CODE_0;CODE_0;CODE_0;CODE_0;CODE_0;CODE_0;
#define TR_Blue  CODE_0;CODE_0;CODE_0;CODE_0;CODE_0;CODE_0;CODE_0;CODE_0; CODE_0;CODE_0;CODE_0;CODE_0;CODE_0;CODE_0;CODE_0;CODE_0; CODE_1;CODE_1;CODE_1;CODE_1;CODE_1;CODE_1;CODE_1;CODE_1;
#define TR_Purp  CODE_0;CODE_0;CODE_0;CODE_0;CODE_0;CODE_0;CODE_0;CODE_0; CODE_1;CODE_1;CODE_1;CODE_1;CODE_1;CODE_1;CODE_1;CODE_1; CODE_1;CODE_1;CODE_1;CODE_1;CODE_1;CODE_1;CODE_1;CODE_1;
void WS_Send24bits(u32 color);
void WS_ColorSet_LED(u8 from, u8 to, u32 color);
void WS_Color_copy(u8 No, u32 color);
void WS_Refresh(void);
void WS_Key_RGB(void);
void WS_Hue_change(void);
void WS_voice_Pik(u8 mode);
u8	Get_RGB_Max(u8 R, u8 G, u8 B);
u8	Get_RGB_Min(u8 R, u8 G, u8 B);
u8	Get_Hue_Val(u8 R, u8 G, u8 B);
u32 HSV_RGB(int h, char s, char v, float R, float G, float B);
void WS_TRSF_color_set(enum color_seq color, u8 Led_num);
//void WS_Reset(void)


	

enum Hue_formular
{
	Non=0,First, Second, Third, Fourth, Fifth
};

static int h=0;

#endif