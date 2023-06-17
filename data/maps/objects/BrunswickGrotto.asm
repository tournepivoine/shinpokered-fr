BrunswickGrotto_Object:
	db $0 ; border block

	def_warp_events
	warp_event 24, 23, BRUNSWICK_TRAIL, 2
	warp_event 25, 23, BRUNSWICK_TRAIL, 2

	def_bg_events
	bg_event 22,  9, 3 ; signage
	
	def_object_events
	object_event  6,  4, SPRITE_BIRD, STAY, DOWN, 1 ; person
	object_event 27,  2, SPRITE_BIRD, STAY, LEFT, 2, ZAPDOS_G, 70 | OW_POKEMON ; person

	def_warps_to BRUNSWICK_GROTTO
