_ChiefMonologue::
	text "CHIEF: <PLAYER>!"
	line "Congratulations"
	cont "for making it"
	cont "this far. I'm" 
	cont "sure it was an"
	cont "arduous task."

	para "However, I can't" 
	line "let you leave"
	cont "this place. You"
	cont "are still looking"
	cont "for the ultimate"
	cont "#MON, aren't"
	cont "you?"
	
	para "That MASTER"
	line "BALL... I should"
	cont "never have given"
	cont "it to you! With"
	cont "MEWTWO loose and"
	cont "GIOVANNI gone,"
	cont "our company is"
	cont "going under!"
	prompt

_ChiefMonologueMasterBallNotUsed::
	text "Now there's only"
	line "one way to catch" 
	cont "MEWTWO, and it's"
	cont "in your hands!" 
	
	para "<PLAYER>!"
	
	para "Give me that BALL!"
	prompt

_ChiefMonologueMasterBallUsed::
	text "...what? You used"
	line "the MASTER BALL?!"
	
	para "You stupid child!"
	line "I can't believe"
	cont "this!"
	
	para "Argh..."
	
	para "<PLAYER>!"
	line "You...you..." ; Trying to emphasise rage. I think this is the best we can get.
	
	para "You are in for"
	line "a world of hurt!" ; Like Giovanni, but with a slightly more pompous tone in using "hurt".
	prompt

_ChiefDefeatedText::
	text "No! I..."
	line "I..."
	prompt

_ChiefVictoryText::
	text "CHIEF: Ha!"
	line "Now hand it over!"
	prompt

_ChiefAfterBattleText::
	text "CHIEF: I suppose"
	line "the child that"
	cont "brought down"
	cont "GIOVANNI has to"
	cont "be stronger than"
	cont "me. No product"
	cont "I have is capable"
	cont "of trouncing you."

	para "I wanted to make"
	line "an ultimate BALL"
	cont "for a perfect"
	cont "#MON."
	
	para "Something we can"
	line "mass produce."
	
	para "Perhaps it wasn't"
	line "meant to be..." 

	para "Go."
	
	para "Otherwise..."
	
	para "MEWTWO's hatred"
	line "will crush this"
	cont "world."
	
	done

_ChiefPCText::
	text "It's a PC with"
	line "blueprints for"
	cont "OMEGADGE!"
	
	para "It was meant"
	line "for..."
	
	para "The CELADON GAME"
	line "CORNER?!"
	done

_ChiefPainting1::
	text "It's a painting"
	line "of an unknown"
	cont "#MON."
	
	para "It's small and"
	line "has large feet."
	done

_ChiefPainting2::
	text "It's a painting"
	line "of GAWARHED, an"
	cont "extinct #MON!"
	done
