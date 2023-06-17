BrunswickTrail_Script:
	call EnableAutoTextBoxDrawing
	ld hl, BrunswickTrailTrainerHeaders
	ld de, BrunswickTrail_ScriptPointers
	ld a, [wBrunswickTrailCurScript]
	call ExecuteCurMapScriptInTable
	ld [wBrunswickTrailCurScript], a
	ret

BrunswickTrail_ScriptPointers:
	dw CheckFightingMapTrainers
	dw DisplayEnemyTrainerTextAndStartBattle
	dw EndTrainerBattle

BrunswickTrail_TextPointers:
	dw FakeTreeEvent
	dw ZapdosGuy
	dw GZapFound

BrunswickTrailTrainerHeaders:
	def_trainers
CactusTrainerHeader:
	trainer EVENT_BEAT_CACTUS, 0, CactusBattleText, CactusBattleText, CactusBattleText
	db -1 ; end

ZapdosGuy:
	text_far _ZapdosGuy
	text_end

FakeTreeNoCut: 
	text_far _FakeTreeNoCut
	text_end

FakeTreePrompt:
	text_far _FakeTreePrompt
	text_end

; Ok, so here's how it is.
; I tried to make the text work more efficiently here, but nothing worked.
; One bug literally took me back to the fucking title screen and at that point I gave up.
; I wanted to have some text before the CUT check. It did not work. It was terrifying.
; So instead I have two different versions of the same text, despite some being the same.
; It is inefficient, but it works. There's a lot to see in this life, and I'm not wasting it in Notepad++.
FakeTreeEvent:
	text_asm
;	ld d, CUT
;	farcall HasPartyMove
;	jr z, .NoCut
;	jr nz, .HasCut	
;.HasCut
	ld hl, FakeTreePrompt
	call PrintText
	call YesNoChoice
	ld a, [wCurrentMenuItem]
	and a
	jr nz, .refused
	
	ld a, SFX_CUT
	call PlaySound

	ld hl, CactusTrainerHeader
	call TalkToTrainer
	jp TextScriptEnd ; I have tried a lot of things and it's not disappearing AAA
;.NoCut
;	ld hl, FakeTreeNoCut ; Why do you have to be this way? I scream, for I do not know.
;	call PrintText
;	ret
.refused
	jp TextScriptEnd

CactusBattleText:
	text_far _FakeTreeAttack
	text_asm
	ld a, CACTUS
	call PlayCry
	call WaitForSoundToFinish
	jp TextScriptEnd
	
GZapFound:
	text_asm
	ld hl, BirdTextCall
	call PrintText
	ld a, ZAPDOS_G
	call PlayCry
	call WaitForSoundToFinish
	
	ld a, $ff
	ld [wJoyIgnore], a
	call GBFadeOutToBlack
	ld a, HS_BRUNSWICK_ZAPDOS_G_1
	ld [wMissableObjectIndex], a
	predef HideObject
	call UpdateSprites
	call Delay3
	call GBFadeInFromBlack
	ld a, 0
	ld [wJoyIgnore], a
	ld hl, GZapRunText
	call PrintText
	jp TextScriptEnd
	
GZapRunText:
	text "It ran off"
	line "somewhere..."
	prompt
	text_end

BirdTextCall:
	text_far _BirdBattleText
	text_end

