; Bill's Garden is being built based on the original playground rumours.
; Essentially, most people would claim that it was filled with all those one-time deals.
; So here, we add those: Eevee, Starters, Hitmons, and Fossils, plus Totartle.
; Only difference is Hisuian Formes, which otherwise are basically impossible to fit.
; Legendary Birds were also in the mythos but there's no space and it sounds terrible.
BillsGardenWildMons:
	def_grass_wildmons 10 ; encounter rate
	db 47, EEVEE ; People are here for Eevee so just give them the ~40% chance...
	db 49, EEVEE
	db 51, CHARMANDER
	db 48, BULBASAUR
	db 49, HITMONLEE
	db 47, HITMONCHAN
	db 52, HITMONTOP
	db 52, ELECTRODE_H
	db 52, ARCANINE_H
	db 53, DECILLA
	end_grass_wildmons

	def_water_wildmons 10 ; encounter rate
	db 47, KABUTO
	db 49, OMANYTE
	db 51, SQUIRTLE
	db 48, KABUTO
	db 49, OMANYTE
	db 47, WARTORTLE
	db 52, WARTORTLE
	db 54, AERODACTYL ; In games like DPP, you can encounter fliers on Water. Most notably, Zubat. No space on land so this is the best we got.
	db 54, LAPRAS
	db 56, TOTARTLE
	end_water_wildmons