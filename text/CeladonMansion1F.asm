_CeladonMansion1Text1::
	text "MEOWTH: Meow!@"
	text_end

_CeladonMansion1Text2::
	text "My dear #MON"
	line "keep me company."

	para "MEOWTH even brings"
	line "money home!"
	done

_CeladonMansion1Text3::
	text "CLEFAIRY: Pi"
	line "pippippi!@"
	text_end

_CeladonMansion1Text4::
	text "NIDORAN: Kya"
	line "kyaoo!@"
	text_end

_CeladonMansion1Text5::
	text "CELADON MANSION"
	line "Manager's Suite"
	done

_CeladonMansionHasTea::
	text "You shouldn't"
	line "spend all your"
	cont "money on drinks."
	para "Try this instead."
	prompt

_CeladonMansionTeaExplanation::
	text "Nothing beats"
	line "thirst like some"
	cont "hot TEA."
	para "It truly is the"
	line "best!"
	done

_CeladonMansionTeaNoRoom::
	text "Your BAG is full,"
	line "child!"
	done

_ReceivedTeaText::
	text "<PLAYER> received"
	line "@"
	text_ram wStringBuffer
	text "!@"
	text_end
