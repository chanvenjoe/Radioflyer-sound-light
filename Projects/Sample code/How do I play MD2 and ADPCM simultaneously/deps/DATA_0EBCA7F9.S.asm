
#include "crt0.h"
















// CODE segment					=>>VarRM[0:4095]={
  
};

.code


naked void ADPCM_CH0_Data();
naked void ADPCM_CH1_Data();
naked void ADPCM_CH2_Data();
naked void ADPCM_CH3_Data();
naked void ADPCM_CH4_Data();
naked void ADPCM_CH5_Data();
naked void ADPCM_CH6_Data();
naked void ADPCM_CH7_Data();
naked void ADPCM_CH8_Data();
naked void MidiData();




.code



.code


naked void ginit_code_data_0EBCA7F9_s(void)	=>>ginit_code_data_0EBCA7F9_s:
{
	return;					=>>rets
}








.code



.code







.data

naked void ADPCM_CH0_Data()			=>>ADPCM_CH0_Data:
{
	asm	DW "adpcm\bird_8000_4-12.XAM"	=>>DW "adpcm\bird_8000_4-12.XAM"
}

naked void ADPCM_CH1_Data()			=>>ADPCM_CH1_Data:
{
	asm	DW "adpcm\horse_16000_4-12.xam"	=>>DW "adpcm\horse_16000_4-12.xam"
}

naked void ADPCM_CH2_Data()			=>>ADPCM_CH2_Data:
{
	asm	DW "adpcm\2cat_16000_4-12.XAM"	=>>DW "adpcm\2cat_16000_4-12.XAM"
}

naked void ADPCM_CH3_Data()			=>>ADPCM_CH3_Data:
{
	asm	DW "adpcm\cat_16000_4-12.XAM"	=>>DW "adpcm\cat_16000_4-12.XAM"
}

naked void ADPCM_CH4_Data()			=>>ADPCM_CH4_Data:
{
	asm	DW "adpcm\Dog_Barking_002_16000_4-12.XAM"=>>DW "adpcm\Dog_Barking_002_16000_4-12.XAM"
}

naked void ADPCM_CH5_Data()			=>>ADPCM_CH5_Data:
{
	asm	DW "adpcm\duck_A1S_16000_4-12.XAM"=>>DW "adpcm\duck_A1S_16000_4-12.XAM"
}

naked void ADPCM_CH6_Data()			=>>ADPCM_CH6_Data:
{
	asm	DW "adpcm\frog_5th_8000_4-12.XAM"=>>DW "adpcm\frog_5th_8000_4-12.XAM"
}

naked void ADPCM_CH7_Data()			=>>ADPCM_CH7_Data:
{
	asm	DW "adpcm\Insect_chirping_16000_4-12.XAM"=>>DW "adpcm\Insect_chirping_16000_4-12.XAM"
}

naked void ADPCM_CH8_Data()			=>>ADPCM_CH8_Data:
{
	asm	DW "adpcm\sheep_16000_4-12.XAM"	=>>DW "adpcm\sheep_16000_4-12.XAM"
}

naked void MidiData()				=>>MidiData:
{
	asm	DW "midi\piano_32K_6CH.md2"	=>>DW "midi\piano_32K_6CH.md2"
}





.code













