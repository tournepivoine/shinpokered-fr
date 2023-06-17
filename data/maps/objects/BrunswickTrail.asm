BrunswickTrail_Object:
	db $43 ; border block

	def_warp_events
	warp_event 24, 11, CELESTE_HILL_CAVE, 1
	warp_event 46,  5, BRUNSWICK_GROTTO, 1

	def_bg_events

	def_object_events
	object_event 29, 11, SPRITE_FAKE_TREE, STAY, NONE, 1, CACTUS, 60 | OW_POKEMON ; person
	object_event 37, 23, SPRITE_BRUNETTE_GIRL, STAY, DOWN, 2 ; person

	def_warps_to BRUNSWICK_TRAIL
