// SUBC 0.8.9 (build Jun 29 2020 12:00:34)
#include "crt0.h"

// .fast segment _fast
// FAST segment (data with / without initial value)

// .fast ends _fast

// .bss segment _rwdata
// DATA segment (with initial value)

// .bss ends _rwdata

// .bss segment _bss
// BSS segment (data without initial value)

// .bss ends _bss

// CODE segment

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
// RCODE segment

// .model speechdsp
// .code segment _text
.code
// .code ends _text

// .code segment _ginit
.code

// -=-=-=-=-=-=-=-=-=-=-
naked void ginit_code_data_0EBCA7F9_s(void)
{
	return;
}

// .code ends _ginit


// -=-=-=-=-=-=-=-=-=-=-
// strlit segment

// .code segment _text
.code
// .code ends _text

// .code segment _text
.code

// -=-=-=-=-=-=-=-=-=-=-
// read only segment

// .code ends _text

// .data segment _linkd
.data
// LINKFILE (RO) segment
naked void ADPCM_CH0_Data()
{
	asm	DW "adpcm\bird_8000_4-12.XAM"
}

naked void ADPCM_CH1_Data()
{
	asm	DW "adpcm\horse_16000_4-12.xam"
}

naked void ADPCM_CH2_Data()
{
	asm	DW "adpcm\2cat_16000_4-12.XAM"
}

naked void ADPCM_CH3_Data()
{
	asm	DW "adpcm\cat_16000_4-12.XAM"
}

naked void ADPCM_CH4_Data()
{
	asm	DW "adpcm\Dog_Barking_002_16000_4-12.XAM"
}

naked void ADPCM_CH5_Data()
{
	asm	DW "adpcm\duck_A1S_16000_4-12.XAM"
}

naked void ADPCM_CH6_Data()
{
	asm	DW "adpcm\frog_5th_8000_4-12.XAM"
}

naked void ADPCM_CH7_Data()
{
	asm	DW "adpcm\Insect_chirping_16000_4-12.XAM"
}

naked void ADPCM_CH8_Data()
{
	asm	DW "adpcm\sheep_16000_4-12.XAM"
}

naked void MidiData()
{
	asm	DW "midi\piano_32K_6CH.md2"
}


// .data ends _linkd

// .code segment _text
.code
// .code ends _text

// public ADPCM_CH0_Data
// public ADPCM_CH1_Data
// public ADPCM_CH2_Data
// public ADPCM_CH3_Data
// public ADPCM_CH4_Data
// public ADPCM_CH5_Data
// public ADPCM_CH6_Data
// public ADPCM_CH7_Data
// public ADPCM_CH8_Data
// public MidiData
// public ginit_code_data_0EBCA7F9_s
