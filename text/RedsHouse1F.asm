_MomWakeUpText::
	text "MOM: Right."
	line "Everyone leaves"
	cont "home some day."
	cont "It said so on TV."

	para "PROF.OAK, next"
	line "door, is looking"
	cont "for you."
	done

_MomHealText1::
	text "MOM: <PLAYER>!"
	line "You should take a"
	cont "quick rest."
	prompt

_MomHealText2::
	text "MOM: Oh good!"
	line "You and your"
	cont "#MON are"
	cont "looking great!"
	cont "Take care now!"
	done

_StandByMeText::
	text "There's a movie"
	line "on TV. Four boys"
	cont "are walking on"
	cont "railroad tracks."

	para "I better go too."
	done

_TVWrongSideText::
	text "Oops, wrong side."
	done

_MomYoureBack::
	text "MOM: <PLAYER>!"
	line "Good morning!"
	
	para "I'm so proud of"
	line "you, dear! You've"
	cont "grown so much!"
	
	para "Oh! I nearly"
	line "forgot..."
	
	para "I received this"
	line "letter from"
	cont "SILPH CO."
	done

; I want the letter text to play when we use the letter, so it's gonna be like this.
_ReceivedChiefLetterText::
	text "<PLAYER> received"
	line "@"
	text_ram wStringBuffer
	text "!@"
	text_end

_ChiefLetterText::
	text "Dear <PLAYER>!"
	line "You are cordially"
	cont "invited to my"
	cont "greatest event!"
	
	para "I call it...the"
	line "SILPH GAUNTLET!"
	
	para "I have called"
	line "the greatest"
	cont "TRAINERs in all"
	cont "of KANTO! Even"
	cont "stronger than"
	cont "the ELITE FOUR!"
	
	para "You will come to"
	line "SILPH CO., yes?"
	
	para "See you then!"
	line "    - CHIEF"
	done

_MomAmazing::
	text "Oh! Isn't this"
	line "amazing, sweetie?"
	
	para "I'm sure you'll"
	line "do great!"
	
	para "I'm always here"
	line "if you need me!"
	done
