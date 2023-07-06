HallOfFame_Script:
	call EnableAutoTextBoxDrawing
	ld hl, HallOfFame_ScriptPointers
	ld a, [wHallOfFameCurScript]
	jp CallFunctionInTable

HallofFameRoomScript_5a4aa:
	xor a
	ld [wJoyIgnore], a
	ld [wHallOfFameCurScript], a
	ret

HallOfFame_ScriptPointers:
	dw HallofFameRoomScript0
	dw HallofFameRoomScript1
	dw HallofFameRoomScript2
	dw HallofFameRoomScript3

HallofFameRoomScript3:
	ret

HallofFameRoomScript2:
	call Delay3
	ld a, [wLetterPrintingDelayFlags]
	push af
	xor a
	ld [wJoyIgnore], a
	predef HallOfFamePC
	pop af
	ld [wLetterPrintingDelayFlags], a
	ld hl, wFlags_D733
	res 1, [hl]
	inc hl
	set 0, [hl]
	xor a
	ld hl, wLoreleisRoomCurScript
	ld [hli], a ; wLoreleisRoomCurScript
	ld [hli], a ; wBrunosRoomCurScript
	ld [hl], a ; wAgathasRoomCurScript
	ld [wLancesRoomCurScript], a
	ld [wHallOfFameCurScript], a
	; Elite 4 events
	ResetEventRange INDIGO_PLATEAU_EVENTS_START, INDIGO_PLATEAU_EVENTS_END, 1
	xor a
	ld [wHallOfFameCurScript], a
	ld a, PALLET_TOWN
	ld [wLastBlackoutMap], a
	farcall SaveSAVtoSRAM
	ld b, 5
.delayLoop
	ld c, 600 / 5
	call DelayFrames
	dec b
	jr nz, .delayLoop
	call WaitForTextScrollButtonPress
	jp Init

HallofFameRoomScript0:
	ld a, $ff
	ld [wJoyIgnore], a
	ld hl, wSimulatedJoypadStatesEnd
	ld de, RLEMovement5a528
	call DecodeRLEList
	dec a
	ld [wSimulatedJoypadStatesIndex], a
	call StartSimulatingJoypadStates
	ld a, $1
	ld [wHallOfFameCurScript], a
	ret

RLEMovement5a528:
	db D_UP, 5
	db -1 ; end

HallofFameRoomScript1:
	ld a, [wSimulatedJoypadStatesIndex]
	and a
	ret nz
	ld a, PLAYER_DIR_RIGHT
	ld [wPlayerMovingDirection], a
	ld a, $1
	ldh [hSpriteIndex], a
	call SetSpriteMovementBytesToFF
	ld a, SPRITE_FACING_LEFT
	ldh [hSpriteFacingDirection], a
	call SetSpriteFacingDirectionAndDelay
	call Delay3
	xor a
	ld [wJoyIgnore], a
	inc a ; PLAYER_DIR_RIGHT
	ld [wPlayerMovingDirection], a
	ld a, $1
	ldh [hSpriteIndexOrTextID], a
	call DisplayTextID
	ld a, $ff
	ld [wJoyIgnore], a
	
	call PostGameSetup
	call ResetLegendaryPokemon
	
	ld a, $2
	ld [wHallOfFameCurScript], a
	ret

HallOfFame_TextPointers:
	dw HallofFameRoomText1

HallofFameRoomText1:
	text_far _HallofFameRoomText1
	text_end

; Post-Game Functionality
; This script is adapted from the Silph Co. 11F script that reforms Saffron City.
; It replaces the Cerulean Cave Guard bit, adapting him into the whole ordeal.

PostGameSetup:
	ld hl, ObjectsToHide
.loop1 ; Hides
	ld a, [hli]
	cp $ff
	jr z, .skip
	push hl
	ld [wMissableObjectIndex], a
	predef HideObject
	pop hl
	jr .loop1
.skip
	ld hl, ObjectsToShow
.loop2 ; Shows
	ld a, [hli]
	cp -1
	ret z
	push hl
	ld [wMissableObjectIndex], a
	predef ShowObject
	pop hl
	jr .loop2

; Begin conditional shows for Legendary Pokemon.
; Here, we check if a Pokemon is owned, and if it is, we reset their events.
; It's really suboptimal and I think there is a way to make it better.
ResetLegendaryPokemon:
	ld a, DEX_ARTICUNO ; Load dex number
	ld [wd11e], a ; Store in wd11e (input for IsPokemonBitSet)
	ld hl, wPokedexOwned ; Grab the owned thing while you're at it
	call HoFIsPokemonBitSet ; Is it owned?
	jr nz, .skipArticuno ; If owned, skip
	ResetEvent EVENT_BEAT_ARTICUNO ; If not, reset the event...
	ld a, HS_ARTICUNO
	ld [wMissableObjectIndex], a
	predef ShowObject ; And restore the hide/show.
.skipArticuno ; Rinse and repeat.
	ld a, DEX_ZAPDOS
	ld [wd11e], a
	call HoFIsPokemonBitSet
	jr z, .skipZapdos
	ResetEvent EVENT_BEAT_ZAPDOS
	ld a, HS_ZAPDOS
	ld [wMissableObjectIndex], a
	predef ShowObject
.skipZapdos
	ld a, DEX_MOLTRES
	ld [wd11e], a
	call HoFIsPokemonBitSet
	jr z, .skipMoltres
	ResetEvent EVENT_BEAT_MOLTRES
	ld a, HS_MOLTRES
	ld [wMissableObjectIndex], a
	predef ShowObject
.skipMoltres
	; Omega is special.
	; If Omega wasn't obtained, it'll be available somewhere else on Silph Co. 11F.
	; Commented out until we actually do this.
;	ld a, DEX_OMEGA
;	ld [wd11e], a
;	call HoFIsPokemonBitSet
;	jr nz, .skipOmega
;	ResetEvent EVENT_BEAT_OMEGA_2
;	ld a, HS_OMEGA_2
;	ld [wMissableObjectIndex], a
;	predef ShowObject
;.skipOmega
	; Mew's hints aren't until the post-game, but is available regardless.
	; So, we put this here.
	ld a, DEX_MEW
	ld [wd11e], a
	call HoFIsPokemonBitSet
	jr z, .skipMew
	ResetEvent EVENT_BEAT_MEW
	ld a, HS_MEW
	ld [wMissableObjectIndex], a
	predef ShowObject
.skipMew
	; If you haven't cleared the game yet, you've not met the Galarian Birds.
	; So we may as well skip processing all this.
	CheckEvent EVENT_POST_GAME_ATTAINED
	jp z, .skipGalarianBirdsAndMewtwo
	ld a, DEX_ARTICUNO_G
	ld [wd11e], a
	call HoFIsPokemonBitSet
	jr z, .skipArticunoG
	ResetEvent EVENT_BEAT_ARTICUNO_G
	ld a, HS_GARNET_ARTICUNO_G
	ld [wMissableObjectIndex], a
	predef ShowObject
.skipArticunoG
	ld a, DEX_ZAPDOS_G
	ld [wd11e], a
	call HoFIsPokemonBitSet
	jr z, .skipZapdosG
	ResetEvent EVENT_BEAT_ZAPDOSG
	ld a, HS_BRUNSWICK_ZAPDOS_G_2
	ld [wMissableObjectIndex], a
	predef ShowObject
.skipZapdosG
	ld a, DEX_MOLTRES_G
	ld [wd11e], a
	call HoFIsPokemonBitSet
	jr z, .skipMoltresG
	ResetEvent EVENT_BEAT_GALARIAN_MOLTRES
	ld a, HS_MOLTRES_G
	ld [wMissableObjectIndex], a
	predef ShowObject
.skipMoltresG
	ld a, DEX_MEWTWO
	ld [wd11e], a
	call HoFIsPokemonBitSet
	jr z, .skipGalarianBirdsAndMewtwo
	ResetEvent EVENT_BEAT_MEWTWO
	ld a, HS_MEWTWO
	ld [wMissableObjectIndex], a
	predef ShowObject
.skipGalarianBirdsAndMewtwo
	; We set this last to save on processing earlier in the script.
	SetEvent EVENT_POST_GAME_ATTAINED
	ret
	
ObjectsToShow:
	db HS_ROUTE_1_OAK ; Oak post-game fight
	db -1 ; end

ObjectsToHide:
	db HS_BILLS_NIDORINO ; Bill's Garden access
	db HS_MANSION_GUARD ; Pokemon Mansion basement access
	db HS_MT_MOON_CRATER_GUARD ; Mt. Moon Crater access
	db HS_CERULEAN_CAVE_GUY ; Cerulean Cave access
	db -1 ; end

; Farcalling this caused weird issues so I'm just using a clone
; This is a function used in engine/menus/pokedex.asm to check if a Pokemon is in the dex.
; We use this to reset Legendary Pokemon after the Elite Four.
; tests if a pokemon's bit is set in the seen or owned pokemon bit fields
; INPUT:
; [wd11e] = pokedex number
; hl = address of bit field
; OUTPUT:
; 0 = Not Owned
; 1 = Owned
HoFIsPokemonBitSet:
	ld hl, wPokedexOwned
	ld a, [wd11e]
	dec a
	ld c, a
	ld b, FLAG_TEST
	predef FlagActionPredef
	ld a, c
	and a
	ret
