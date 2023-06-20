CelesteHill_Script:
	call EnableAutoTextBoxDrawing
	ld hl, CelesteHillTrainerHeaders
	ld de, CelesteHill_ScriptPointers
	ld a, [wCelesteHillCurScript]
	call ExecuteCurMapScriptInTable
	ld [wCelesteHillCurScript], a
	ret

CelesteHill_ScriptPointers:
	dw GMoltFound
	dw CheckFightingMapTrainers
	dw DisplayEnemyTrainerTextAndStartBattle
	dw EndTrainerBattle

; Galarian Moltres fight script.
; Unlike other legendary Pokemon, Moltres will engage the player first.
GMoltFound:
	CheckEvent EVENT_BEAT_GALARIAN_MOLTRES
	jr nz, .done
	ld hl, CelesteHillCoords1
	call ArePlayerCoordsInArray
	jp nc, CheckFightingMapTrainers
	ld a, [wCoordIndex]
	ld [wcf0d], a
	xor a
	ldh [hJoyHeld], a
	ld a, $f0
	ld [wJoyIgnore], a
	
	ld a, $1
	ldh [hSpriteIndex], a
	call SetSpriteMovementBytesToFF
	ld de, GMoltMovement
	call MoveSprite
	
	ld a, $1
	ldh [hSpriteIndexOrTextID], a
	call DisplayTextID
.done
	ret

CelesteHillCoords1:
	dbmapcoord 11, 9
	db -1 ; end

GMoltMovement:
	db NPC_MOVEMENT_DOWN
	db NPC_MOVEMENT_DOWN
	db -1 ;end

CelesteHill_TextPointers:
	dw GalarianMoltresText
	dw CelesteHillSign

CelesteHillTrainerHeaders:
	def_trainers
GalarianMoltresTrainerHeader:
	trainer EVENT_BEAT_GALARIAN_MOLTRES, 0, GalarianMoltresBattleText, GalarianMoltresBattleText, GalarianMoltresBattleText
	db -1 ; end

GalarianMoltresText:
	text_asm
	ld hl, GalarianMoltresTrainerHeader
	call TalkToTrainer
	jp TextScriptEnd

GalarianMoltresBattleText:
	text_far _BirdBattleText
	text_asm
	ld a, MOLTRES_G
	call PlayCry
	call WaitForSoundToFinish
	jp TextScriptEnd

CelesteHillSign:
	text_far _CelesteHillSign
	text_end
	