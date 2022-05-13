

_dtxDoEvent05EA2C8C:
	PCH=		dtxDoEvent
	lcall		dtxDoEvent
L3F7E7BE2_0:
	AX=		0
	if NZ jmp	L3F7E7BE2_1
	AX=		1
L3F7E7BE2_1:
	rets



_dtxFindToneEntry12F3B4ED:
; DX:AX just right "flashadr"
	AR=		AX
	BX=		AR
	AR=		DX
	AX=		AR
	PCH=		dtxFindToneEntry
	lcall		dtxFindToneEntry
	jmp		L3F7E7BE2_0


_dtxPlaySong5B7DBDA5:
; AX - just right "index"
	PCH=		dtxPlaySong
	lcall		dtxPlaySong
	jmp		L3F7E7BE2_0


_dtxCheckSongEnd870A9712:
	PCH=		dtxCheckSongEnd
	lcall		dtxCheckSongEnd
	jmp		L3F7E7BE2_0


















