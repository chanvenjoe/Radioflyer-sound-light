.code
#define		File_HXAM		1
#define		File_T3Z		2
#define		File_HPAM		3
#define		File_CELP		4
#define		File_TBS		5
#define		File_TBR		6
#define		File_PCM		7
#define		File_DAT		8
#define		File_XAL		9
.data
Sound_adr_Table:
DW #Sound_adr_00000,#Sound_adr_00000.h,File_T3Z
Sound_adr_00000:
DW	"demo@33K6bps.T3Z"
