; Used by the pureRGB AI
;shinpokerednote: ADDED: doubles attack if burned or quadruples speed if paralyzed.
;It's meant to be run right before healing paralysis or burn so as to 
;undo the stat changes.
UndoBurnParStats:
	ld hl, wBattleMonStatus
	ld de, wPlayerStatsToDouble
	ldh a, [hWhoseTurn]
	and a
	jr z, .checkburn
	ld hl, wEnemyMonStatus
	ld de, wEnemyStatsToDouble
.checkburn
	ld a, [hl]		;load statuses
	and 1 << BRN	;test for burn 
	jr z, .checkpar
	ld a, $01
	ld [de], a	;set attack to be doubled to undo the stat change of BRN
	call DoubleSelectedStats
	jr .return
.checkpar
	ld a, [hl]		;load statuses
	and 1 << PAR	;test for paralyze 
	jr z, .return
	ld a, $04
	ld [de], a	;set speed to be doubled (done twice) to undo the stat change of BRN
	call DoubleSelectedStats
	call DoubleSelectedStats
.return
	xor a
	ld [de], a	;reset the stat change bits
	ret

; Reused for pureRGB AI
DoubleSelectedStats:
	ldh a, [hWhoseTurn]
	and a
	ld a, [wPlayerStatsToDouble]
	ld hl, wBattleMonAttack + 1
	jr z, .notEnemyTurn
	ld a, [wEnemyStatsToDouble]
	ld hl, wEnemyMonAttack + 1
.notEnemyTurn
	ld c, 4
	ld b, a
.loop
	srl b
	call c, .doubleStat
	inc hl
	inc hl
	dec c
	ret z
	jr .loop
.doubleStat
	ld a, [hl]
	add a
	ld [hld], a
	ld a, [hl]
	rl a
	ld [hli], a
	ret

; does nothing since no stats are ever selected (barring glitches)
;HalveSelectedStats:
;	ldh a, [hWhoseTurn]
;	and a
;	ld a, [wPlayerStatsToHalve]
;	ld hl, wBattleMonAttack
;	jr z, .notEnemyTurn
;	ld a, [wEnemyStatsToHalve]
;	ld hl, wEnemyMonAttack
;.notEnemyTurn
;	ld c, 4
;	ld b, a
;.loop
;	srl b
;	call c, .halveStat
;	inc hl
;	inc hl
;	dec c
;	ret z
;	jr .loop

;.halveStat
;	ld a, [hl]
;	srl a
;	ld [hli], a
;	rr [hl]
;	or [hl]
;	jr nz, .nonzeroStat
;	ld [hl], 1
;.nonzeroStat
	;dec hl
;	ret
