

#include <lptr.h>

#include "playadp.h"


LinkFile(ADPCM_CH0_Data, "adpcm\\2cat_16000_4-8.xam");
LinkFile(ADPCM_CH1_Data, "adpcm\\cat_16000_4-8.xam");
LinkFile(ADPCM_CH2_Data, "adpcm\\Dog_Barking_002_16000_4-8.xam");
LinkFile(ADPCM_CH3_Data, "adpcm\\duck_A1S_16000_4-8.xam");
LinkFile(ADPCM_CH4_Data, "adpcm\\frog_5th_8000_4-8.xam");
LinkFile(ADPCM_CH5_Data, "adpcm\\Insect_chirping_16000_4-8.xam");
LinkFile(ADPCM_CH6_Data, "adpcm\\sheep_16000_4-8.xam");


const ADPTAB adpdata[] = {

	{ (lptr_t)ADPCM_CH0_Data, 0x3FFF, 0x003F },
	{ (lptr_t)ADPCM_CH1_Data, 0x3FFF, 0x003F },
	{ (lptr_t)ADPCM_CH2_Data, 0x3FFF, 0x003F },
	{ (lptr_t)ADPCM_CH3_Data, 0x3FFF, 0x003F },
	{ (lptr_t)ADPCM_CH4_Data, 0x1FFF, 0x003F },
	{ (lptr_t)ADPCM_CH5_Data, 0x3FFF, 0x003F },
	{ (lptr_t)ADPCM_CH6_Data, 0x3FFF, 0x003F },
	{ 0, 0, 0 },
};





