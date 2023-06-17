BrunswickGrotto_Script:
	jp EnableAutoTextBoxDrawing

BrunswickGrotto_TextPointers:
	dw GZapFound
	dw GalarianZapdosText
	dw BrunswickSign

BrunswickGrottoTrainerHeaders:
GalarianZapdosTrainerHeader:
	trainer EVENT_BEAT_ZAPDOSG, 0, GZapBattleText, GZapBattleText, GZapBattleText
	db -1

GZapFound:
	text_asm
	ld hl, BirdTextCall
	call PrintText
	ld a, ZAPDOS
	call PlayCry
	call WaitForSoundToFinish
	
	ld a, $ff
	ld [wJoyIgnore], a
	call GBFadeOutToBlack
	ld a, HS_BRUNSWICK_ZAPDOS_G_1
	ld [wMissableObjectIndex], a
	predef HideObject
	ld a, HS_BRUNSWICK_ZAPDOS_G_2
	ld [wMissableObjectIndex], a
	predef ShowObject
	call UpdateSprites
	call Delay3
	call GBFadeInFromBlack
	
	ld a, 0
	ld [wJoyIgnore], a
	
	ld hl, GZapRunText
	call PrintText
	
	jp TextScriptEnd

GalarianZapdosText:
	text_asm
	ld hl, GalarianZapdosTrainerHeader
	call TalkToTrainer
	jp TextScriptEnd

GZapBattleText:
	text_far _BirdBattleText
	text_asm
	ld a, ZAPDOS
	call PlayCry
	call WaitForSoundToFinish
	jp TextScriptEnd

GZapRunText:
	text "It ran off"
	line "somewhere..."
	prompt
	text_end

BirdTextCall:
	text_far _BirdBattleText
	text_end

BrunswickSign:
	text "GROTTO BIRD"
	line "WATCHING"
	
	para "The sign is"
	line "covered in"
	cont "scratches..."
	done
	text_end
	