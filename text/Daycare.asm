_DayCareIntroText::
	text "I run a DAYCARE."
	line "Would you like me"
	cont "to raise one of"
	cont "your #MON?"
	done

_DayCareWhichMonText::
	text "Which #MON"
	line "should I raise?"
	prompt

_DayCareWillLookAfterMonText::
	text "Fine, I'll look"
	line "after @"
	text_ram wcd6d
	text_start
	cont "for a while."
	prompt

_DayCareComeSeeMeInAWhileText::
	text "Come see me in"
	line "a while."
	done

_DayCareMonHasGrownText::
	text "Your @"
	text_ram wcd6d
	text_start
	line "has grown a lot!"

	para "By level, it's"
	line "grown by @"
	text_decimal wDayCareNumLevelsGrown, 1, 3
	text "!"

	para "Aren't I great?"
	prompt

_DayCareOweMoneyText::
	text "You owe me ¥@"
	text_bcd wDayCareTotalCost, 2 | LEADING_ZEROES | LEFT_ALIGN
	text_start
	line "for the return"
	cont "of this #MON."
	done

_DayCareGotMonBackText::
	text "<PLAYER> got"
	line "@"
	text_ram wDayCareMonName
	text " back!"
	done

_DayCareMonNeedsMoreTimeText::
	text "Back already?"
	line "Your @"
	text_ram wcd6d
	text_start
	cont "needs some more"
	cont "time with me."
	prompt

_MelanieText1::
	text "I take care of"
	line "injured #MON."

	para "I nursed this"
	line "BULBASAUR back to"
	cont "health!"
	done

_MelanieText2::
	text "That said..."

	para "It needs a good"
	line "trainer to take"
	cont "care of it now."

	para "I know! Would you"
	line "take care of this"
	cont "BULBASAUR?"
	done

_MelanieText3::
	text "Please take care"
	line "of BULBASAUR!"
	done

_MelanieText4::
	text "Is BULBASAUR"
	line "doing well?"
	done

_MelanieText5::
	text "Oh..."
	line "That's too bad..."
	done

_MelanieText6::
	text "Umm...your PARTY"
	line "is full."
	
	para "There's a PC over"
	line "there, if you"
	cont "don't mind..."
	done

_MelanieText7::
	text "One day, I think"
	line "someone will love"
	cont "to have it."
	
	para "Someone who began"
	line "a journey with a"
	cont "cute #MON!"
	done
