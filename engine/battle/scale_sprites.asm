; scales both uncompressed sprite chunks by two in every dimension (creating 2x2 output pixels per input pixel)
; assumes that input sprite chunks are 4x4 tiles, and the rightmost and bottommost 4 pixels will be ignored
; resulting in a 7*7 tile output sprite chunk
ScaleSpriteByTwo:
	ld de, sSpriteBuffer1 + (4*4*8) - 5          ; last byte of input data, last 4 rows already skipped
	ld hl, sSpriteBuffer0 + SPRITEBUFFERSIZE - 1 ; end of destination buffer
	call ScaleLastSpriteColumnByTwo               ; last tile column is special case
	call ScaleFirstThreeSpriteColumnsByTwo        ; scale first 3 tile columns
	ld de, sSpriteBuffer2 + (4*4*8) - 5          ; last byte of input data, last 4 rows already skipped
	ld hl, sSpriteBuffer1 + SPRITEBUFFERSIZE - 1 ; end of destination buffer
	call ScaleLastSpriteColumnByTwo               ; last tile column is special case

ScaleFirstThreeSpriteColumnsByTwo:
	ld b, $3 ; 3 tile columns
.columnLoop
	ld c, 4*8 - 4 ; $1c, 4 tiles minus 4 unused rows
.columnInnerLoop
	push bc
	ld a, [de]
	ld bc, -(7*8)+1       ; $ffc9, scale lower nybble and seek to previous output column
	call ScalePixelsByTwo
	ld a, [de]
	dec de
	swap a
	ld bc, 7*8+1-2        ; $37, scale upper nybble and seek back to current output column and to the next 2 rows
	call ScalePixelsByTwo
	pop bc
	dec c
	jr nz, .columnInnerLoop
	dec de
	dec de
	dec de
	dec de
	ld a, b
	ld bc, -7*8 ; $ffc8, skip one output column (which has already been written along with the current one)
	add hl, bc
	ld b, a
	dec b
	jr nz, .columnLoop
	ret

ScaleLastSpriteColumnByTwo:
	ld a, 4*8 - 4 ; $1c, 4 tiles minus 4 unused rows
	ld [H_SPRITEINTERLACECOUNTER], a
	ld bc, -1
.columnInnerLoop
	ld a, [de]
	dec de
	swap a                    ; only high nybble contains information
	call ScalePixelsByTwo
	ld a, [H_SPRITEINTERLACECOUNTER]
	dec a
	ld [H_SPRITEINTERLACECOUNTER], a
	jr nz, .columnInnerLoop
	dec de                    ; skip last 4 rows of new column
	dec de
	dec de
	dec de
	ret

; scales the given 4 bits in a (4x1 pixels) to 2 output bytes (8x2 pixels)
; hl: destination pointer
; bc: destination pointer offset (added after the two bytes have been written)
ScalePixelsByTwo:
	push hl
	and $f
	ld hl, DuplicateBitsTable
	add l
	ld l, a
	jr nc, .noCarry
	inc h
.noCarry
	ld a, [hl]
	pop hl
	ld [hld], a  ; write output byte twice to make it 2 pixels high
	ld [hl], a
	add hl, bc   ; add offset
	ret

;joenote - needed for loading the 48x48 spaceworld back sprites
LoadUncompressedBackPics:
	ld a, $66
	ld c, a
	ld de, vBackPic
	jp LoadUncompressedSpriteData	

; repeats each input bit twice
DuplicateBitsTable:
	db $00, $03, $0c, $0f
	db $30, $33, $3c, $3f
	db $c0, $c3, $cc, $cf
	db $f0, $f3, $fc, $ff
