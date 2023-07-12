RedsHouse1F_Script:
	call EnableAutoTextBoxDrawing
	ld hl, RedsHouse1F_ScriptPointers
	ld a, [wRedsHouse1FCurScript]
	jp CallFunctionInTable

RedsHouse1F_ScriptPointers:
	dw ChiefLetter1
	dw ChiefLetter2

ChiefLetter1:
	CheckEvent EVENT_POST_GAME_ATTAINED
	jr z, .done
	CheckEvent EVENT_LETTER_RECEIVED
	jr nz, .done
	; with the way this is being done, coords will be unnecessary.
	; this will trigger the minute you enter the house.
	call UpdateSprites
	call PlayerSeeMom
	
	ld a, $ff
	ld [wJoyIgnore], a
	ld hl, wSimulatedJoypadStatesEnd
	ld de, PlayerSeeMom_RLEMovement
	call DecodeRLEList
	dec a
	ld [wSimulatedJoypadStatesIndex], a
	call StartSimulatingJoypadStates
	
	ld a, $2
	ld [wRedsHouse1FCurScript], a
	ld [wCurMapScript], a
.done
	ret

ChiefLetter2:
	ld a, [wSimulatedJoypadStatesIndex]
	and a
	ret nz
	call Delay3

	ld a, $1
	ldh [hSpriteIndex], a
	
	ld a, SPRITE_FACING_LEFT
	ldh [hSpriteFacingDirection], a
	call SetSpriteFacingDirectionAndDelay
	
	ld hl, MomGreeting
	call PrintText
	SetEvent EVENT_LETTER_RECEIVED
	
	ld a, $1
	ld [wRedsHouse1FCurScript], a
	ld [wCurMapScript], a
	ret

PlayerSeeMom:
	ld c, 10
	call DelayFrames
	
	ld [wEmotionBubbleSpriteIndex], a
	xor a ; EXCLAMATION_BUBBLE
	ld [wWhichEmotionBubble], a
	predef EmotionBubble
	ld c, 20
	call DelayFrames
	ret

PlayerSeeMom_RLEMovement:
	db D_LEFT, 1
	db D_DOWN, 3
	db -1 ; end

RedsHouse1F_TextPointers:
	dw RedsHouse1FMomText
	dw RedsHouse1FTVText
	dw MomGreeting

RedsHouse1FMomText:
	text_asm
	ld a, [wd72e]
	bit 3, a ; received a Pokémon from Oak?
	jr nz, .heal
	ld hl, MomWakeUpText
	call PrintText
	jr .done
.heal
	call MomHealPokemon
.done
	jp TextScriptEnd

MomWakeUpText:
	text_far _MomWakeUpText
	text_end

MomHealPokemon:
	ld hl, MomHealText1
	call PrintText
	call GBFadeOutToWhite
	call ReloadMapData
	predef HealParty
	ld a, MUSIC_PKMN_HEALED
;	ld [wNewSoundID], a
	call PlayMusic

	call WaitForSongToFinish
;.next
;	ld a, [wChannelSoundIDs]
;	cp MUSIC_PKMN_HEALED
;	jr z, .next

	ld a, [wMapMusicSoundID]
;	ld [wNewSoundID], a
	call PlayMusic
	call GBFadeInFromWhite
	ld hl, MomHealText2
	jp PrintText

MomHealText1:
	text_far _MomHealText1
	text_end
MomHealText2:
	text_far _MomHealText2
	text_end

RedsHouse1FTVText:
	text_asm
	ld a, [wSpritePlayerStateData1FacingDirection]
	cp SPRITE_FACING_UP
	ld hl, TVWrongSideText
	jr nz, .got_text
	ld hl, StandByMeText
.got_text
	call PrintText
	jp TextScriptEnd

StandByMeText:
	text_far _StandByMeText
	text_end

TVWrongSideText:
	text_far _TVWrongSideText
	text_end

; Post-Game stuff here.

MomGreeting:
	text_asm
	ld hl, MomYoureBack
	call PrintText
	lb bc, SILPHLETTER, 1
	call GiveItem
	ld hl, ReceivedChiefLetterText
	call PrintText
	ld a, [wSimulatedJoypadStatesEnd] ; ensuring that the text doesn't autoskip.
	and a ; yep, here too.
	call z, WaitForTextScrollButtonPress ; and here.
	call EnableAutoTextBoxDrawing ; and here.
	ld hl, ChiefLetterText
	call PrintText
	ld hl, MomAmazing
	call PrintText
	jp TextScriptEnd

ChiefLetterText:
	text_far _ChiefLetterText
	text_end

MomYoureBack:
	text_far _MomYoureBack
	text_end

ReceivedChiefLetterText:
	text_far _ReceivedChiefLetterText
	text_end

MomAmazing:
	text_far _MomAmazing
	text_end
