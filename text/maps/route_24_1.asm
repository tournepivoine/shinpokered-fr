_Route24Text_51510::
	text "Félicitations!"
	line "Tu as battu les"
	cont "5 dresseurs!@"
	text_end

_Route24Text_51515::
	text_start

IF DEF(_JPTXT)	;joenote - dirty joke lost in translation
	para "Ouvre tes mains"
	line "pendant que je"
	cont "sors mes pépites."
ELSE
	para "Tu as gagné un"
	line "fabuleux prix!"
ENDC
	prompt

_Route24Text_5151a::
	text "<PLAYER> obtient:"
	line "@"
	text_ram wStringBuffer
	text "!@"
	text_end

_Route24Text_51521::
	text "Votre inventaire"
	line "est plein!"
	done

_Route24Text_51526::
	text "Veux-tu rejoindre"
	line "les rangs de la"
	cont "TEAM ROCKET?"

	para "Nous sommes des"
	line "dresseurs de"
	cont "#MON très"
	cont "méchants!"

	para "Ca t'intéresse?"

	para "T'es sûr?"

	para "Allez, viens!"

	para "Bon, je t'ai dit"
	line "de venir avec"
	cont "nous!"

	para "Je vois..."

	para "Je vais me"
	line "montrer plus"
	cont "persuasif!"
	done

_Route24Text_5152b::
	text "Arrgh!"
	line "Tu es très fort!"
	prompt

_Route24Text_51530::
	text "Tu pourrais vite"
	line "devenir un chef"
	cont "au sein de la"
	cont "TEAM ROCKET!"
	done
