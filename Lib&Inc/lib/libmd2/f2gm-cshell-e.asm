

ShareVar = {

	; ~~ for backward compatible only
	
	_mp_outbufE6EABE1D = mp_outbuf
}




; ----------------------------

_md2DoRoutine82B98B9D:
; {
	PCH=		md2DoRoutine
	lcall		md2DoRoutine

L68D8F143_0:
	if ZR jmp	L68D8F143_1
	AX=		0
	rets
L68D8F143_1:
	AX=		1
	rets
; }

; ----------------------------

_md2SelectIns277ACAB1:
; {
	; AX - rpdax
	PCH=		md2SelectIns
	lcall		md2SelectIns
	jmp		L68D8F143_0
; }

; ----------------------------

_md2PlaySongF1CD4C9D:
; {
	; AX - rpdax
	PCH=		md2PlaySong
	lcall		md2PlaySong
	jmp		L68D8F143_0
; }

; ----------------------------

_md2PlayRhythmLoop446C96D5:
; {
	; AX - rpdax
	PCH=		md2PlayRhythmLoop
	lcall		md2PlayRhythmLoop
	jmp		L68D8F143_0
; }

; ----------------------------

_md2ChkSongEnd0B00CDA5:
; {
	PCH=		md2ChkSongEnd
	lcall		md2ChkSongEnd
	jmp		L68D8F143_0
; }


; ----------------------------

_md2PlayNoteC61ED125:
; {
	AR=		BP
	AR=		AR + 1
	I1=		AR

	AX=		rm[I1++]
	DX=		rm[I1]
	PCH=		md2PlayNote
	lcall		md2PlayNote
	jmp		L68D8F143_0
; }

; ----------------------------

_md2PlayPercNote818E3F25:
; {
	AR=		BP
	AR=		AR + 1
	I1=		AR

	AX=		rm[I1++]
	DX=		rm[I1]
	PCH=		md2PlayPercNote
	lcall		md2PlayPercNote
	jmp		L68D8F143_0
; }

; ----------------------------

_md2ReleaseNote7FE95EF3:
; {
	AR=		BP
	AR=		AR + 1
	I1=		AR
	AX=		rm[I1++]
	DX=		rm[I1]
	PCH=		md2ReleaseNote
	lcall		md2ReleaseNote
	jmp		L68D8F143_0
; }

; ----------------------------

_md2ReleasePercNote8CD707D5:
; {
	AR=		BP
	AR=		AR + 1
	I1=		AR
	AX=		rm[I1++]
	DX=		rm[I1]
	PCH=		md2ReleasePercNote
	lcall		md2ReleasePercNote
	jmp		L68D8F143_0
; }

; ----------------------------

_md2FindMidiEntry757C576D:
; {
	; DX:AX - rpdax --> AX:BX

	AR=		AX
	BX=		AR
	AR=		DX
	AX=		AR
	PCH=		md2FindMidiEntry
	lcall		md2FindMidiEntry
	jmp		L68D8F143_0
; }

; ----------------------------

_md2FindNextOkonD3FEE6DA:
; {
	PCH=		md2FindNextOkon
	lcall		md2FindNextOkon
	jmp		L68D8F143_0
; }

; ----------------------------

_md2PlayOkon3411E62A:
; {
	; AX - rpdax -> DX
	AR=		AX
	DX=		AR
	PCH=		md2PlayOkon
	lcall		md2PlayOkon
	jmp		L68D8F143_0
; }

; ----------------------------

_md2PlayOkonAccomp18254831:
; {
	; AX - rpdax -> DX
	AR=		AX
	DX=		AR
	PCH=		md2PlayOkonAccomp
	lcall		md2PlayOkonAccomp
	jmp		L68D8F143_0
; }

; ----------------------------

_md2ReleaseOkonF4500B9D:
; {
	; AX - rpdax -> DX
	AR=		AX
	DX=		AR
	PCH=		md2ReleaseOkon
	lcall		md2ReleaseOkon
	jmp		L68D8F143_0
; }

; ----------------------------

_md2LoopToSong6DEA50ED:
; {
	; AX - rpdax
	PCH=		md2LoopToSong
	lcall		md2LoopToSong
	jmp		L68D8F143_0
; }





















