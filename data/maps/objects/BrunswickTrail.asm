BrunswickTrail_Object:
	db $43 ; border block

	def_warp_events
	warp_event 12,  9, GARNET_CAVERN_1F, 1
	warp_event 40,  5, BRUNSWICK_GROTTO, 1
	warp_event 41,  5, BRUNSWICK_GROTTO, 1

	def_bg_events

	def_object_events
	object_event 23, 11, SPRITE_FAKE_TREE, STAY, NONE, 1, CACTUS, 60 | OW_POKEMON ; person
	object_event 37, 23, SPRITE_BRUNETTE_GIRL, STAY, DOWN, 2 ; person
	object_event 40, 6, SPRITE_BIRD, STAY, UP, 3 ; person

	def_warps_to BRUNSWICK_TRAIL
