_CaveGuy:: ; Used to describe GZap, but the beauty seemed funnier. Needed some lore for Garnet Cavern, if any.
	text "I've gone through"
	line "many caves in my"
	cont "day, but this one"
	cont "is taking the"
	cont "mickey!"
	
	para "Those #MON are"
	line "way too strong!"
	done

_Lover1::
	text "Comment to be"
	line "written."
	done

_Lover2::
	text "Comment to be"
	line "written."
	done

_BrunswickBattleText1::
	text "I'm searching"
	line "for rare BIRD"
	cont "#MON!"
	done

_BrunswickEndBattleText1::
	text "Not"
	line "enough..."
	prompt

_BrunswickAfterBattleText1::
	text "AERODACTYL is the"
	line "progenitor of"
	cont "birds."
	
	para "It's my prized"
	line "#MON!"
	prompt

_BrunswickBattleText2::
	text "My hubby brought"
	line "me here!"
	done

_BrunswickEndBattleText2::
	text "Ohh..."
	prompt

_BrunswickAfterBattleText2::
	text "I saw a BIRD"
	line "#MON with huge"
	cont "feet sprint past"
	cont "me!"
	
	para "It almost blew me"
	line "away! How rude!"
	done

_BrunswickBattleText3::
	text "The fish here are"
	line "huge!"
	done

_BrunswickEndBattleText3::
	text "Washed"
	line "up..."
	prompt

_BrunswickAfterBattleText3::
	text "Catching the fish"
	line "on this island"
	cont "is really hard!"
	
	para "The #MON are"
	line "so distracting!"
	done

_FakeTreeNoCut::
	text "This tree can be"
	line "CUT!"
	done

_FakeTreePrompt::
	text "This tree can be"
	line "CUT!"
	
	para "Would you like to"
	line "use CUT?"
	prompt

; The Cut script currently doesn't load what I want it to. Sp, I commented out the RAM and made it "you".
; For this to work, I need to make a special version of HasPartyMove.
_FakeTreeAttack::
	;text_ram wcd6d
	text "You tried"
	line "to hack away..."
	
	para "But it was a"
	line "CACTUS!"
	
	para "CACTUS retaliated"
	line "in a rage!"
	prompt

; Martha can do the text for her things...
