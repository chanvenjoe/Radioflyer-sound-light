
#include "crt0.h"
















// CODE segment					=>>VarRM[0:4095]={
  
};

.code


naked void ADPCM_CH0_Data();
naked void ADPCM_CH1_Data();
naked void ADPCM_CH2_Data();
naked void ADPCM_CH3_Data();
naked void ADPCM_CH4_Data();




.code



.data







.code



.code




__int16 _adpdata32993E3B[24] = {		=>>_adpdata32993E3B:
	(int)&ADPCM_CH0_Data, (int)&ADPCM_CH0_Data.h|0x0800, 0x1FFF, 0x003F, (int)&ADPCM_CH1_Data, (int)&ADPCM_CH1_Data.h|0x0800, 0x3FFF, 0x003F, =>>DW #ADPCM_CH0_Data,#ADPCM_CH0_Data.h|0x0800,0x1FFF,0x003F,#ADPCM_CH1_Data,#ADPCM_CH1_Data.h|0x0800,0x3FFF,0x003F,
	(int)&ADPCM_CH2_Data, (int)&ADPCM_CH2_Data.h|0x0800, 0x3FFF, 0x003F, (int)&ADPCM_CH3_Data, (int)&ADPCM_CH3_Data.h|0x0800, 0x3FFF, 0x003F, =>>DW #ADPCM_CH2_Data,#ADPCM_CH2_Data.h|0x0800,0x3FFF,0x003F,#ADPCM_CH3_Data,#ADPCM_CH3_Data.h|0x0800,0x3FFF,0x003F,
	(int)&ADPCM_CH4_Data, (int)&ADPCM_CH4_Data.h|0x0800, 0x3FFF, 0x003F, 0x0000, 0x0000, 0x0000, 0x0000=>>DW #ADPCM_CH4_Data,#ADPCM_CH4_Data.h|0x0800,0x3FFF,0x003F,0x0000,0x0000,0x0000,0x0000,
};




.data

naked void ADPCM_CH0_Data()			=>>ADPCM_CH0_Data:
{
	asm	DW "adpcm\Media1_8000_4-12.xam"	=>>DW "adpcm\Media1_8000_4-12.xam"
}

naked void ADPCM_CH1_Data()			=>>ADPCM_CH1_Data:
{
	asm	DW "adpcm\Media1_16000_4-12.xam"=>>DW "adpcm\Media1_16000_4-12.xam"
}

naked void ADPCM_CH2_Data()			=>>ADPCM_CH2_Data:
{
	asm	DW "adpcm\Media2_16000_4-12.xam"=>>DW "adpcm\Media2_16000_4-12.xam"
}

naked void ADPCM_CH3_Data()			=>>ADPCM_CH3_Data:
{
	asm	DW "adpcm\Media3_16000_4-12.xam"=>>DW "adpcm\Media3_16000_4-12.xam"
}

naked void ADPCM_CH4_Data()			=>>ADPCM_CH4_Data:
{
	asm	DW "adpcm\Media4_16000_4-12.xam"=>>DW "adpcm\Media4_16000_4-12.xam"
}





.code








