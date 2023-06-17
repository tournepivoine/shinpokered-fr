CelesteHill_Script:
	call EnableAutoTextBoxDrawing
	ld hl, CelesteHillTrainerHeaders
	ld de, CelesteHill_ScriptPointers
	ld a, [wCelesteHillCurScript]
	call ExecuteCurMapScriptInTable
	ld [wCelesteHillCurScript], a
	ret

CelesteHill_ScriptPointers:
	dw CheckFightingMapTrainers
	dw DisplayEnemyTrainerTextAndStartBattle
	dw EndTrainerBattle

; CelesteHillCoords1:
;	dbmapcoord 11, 9
;	db -1 ; end

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
	