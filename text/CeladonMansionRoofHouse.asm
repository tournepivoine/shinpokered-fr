_CeladonMansion5Text1::
	text "I am SHINJUKU"
	line "JACKY!"

	para "I know everything"
	line "about the world"
	cont "of #MON!"
	
	para "Hm? You think you" ; if making rematches, use this for prebeat
	line "can take me?"
	done

; Unused for now. Doesn't make much sense.
_JackyPostBeatText::
	text "Wanna fight again?"
	line "I'm out of your"
	cont "league!"
	prompt

_JackyYes::
	text "Let's see if you"
	line "can walk the"
	cont "walk! Come on!"
	done

_JackyNo::
	text "Maybe another"
	line "time..."
	done

_JackyWinText::
	text "I'm"
	line "faster than"
	cont "lightning!"
	prompt

_JackyLossText::
	text "I can't"
	line "believe I lost!"
	prompt

_JackyThief::
	text "Hey, what do you"
	line "think you're"
	cont "doing?!"
	done

_JackyAfterBattle::
	text "It was like you"
	line "were fighting in"
	cont "slow motion..."
	
	para "Ok! I will give"
	line "you a #MON"
	cont "to help you on"
	cont "your quest!"
	
	para "Over there is a"
	line "@"
	text_ram wcd6d
	text "!"
	
	para "Go, go, take it!"
	
;	para "I look forward"
;	line "to our next bout!"
	done

_JackyGift::
	text_ram wcd6d
	text " has"
	line "incredibly good"
	cont "evolutionary"
	cont "potential!"
	
	para "It will help"
	line "you greatly in"
	cont "your next bout!"
	done

_JackyN64::
	text "It's a NINTENDO"
	line "64! The latest"
	cont "game console!"
	done

_JackyTVMario::
	text "A plumber is"
	line "jumping around"
	cont "in 3D! Wow!"
	done

_JackyTVWaveRace::
	text "Some guys in"
	line "helmets are"
	cont "racing on the"
	cont "waves!"
	done

