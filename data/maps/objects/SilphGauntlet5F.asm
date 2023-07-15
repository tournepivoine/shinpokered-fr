SilphGauntlet5F_Object:
	db $0 ; border block

	def_warp_events
	warp_event  2,  15, SILPH_GAUNTLET_4F, 2
	warp_event  2,  3, SILPH_GAUNTLET_6F, 1

	def_bg_events

	def_object_events
	object_event  1, 10, SPRITE_ROCKER, STAY, RIGHT, 1, OPP_JUGGLER, 6
	object_event  6,  6, SPRITE_BIKER, STAY, DOWN, 2, OPP_BIKER, 16
	object_event  6, 15, SPRITE_GAMBLER, STAY, RIGHT, 3, OPP_CUE_BALL, 10
	object_event 14, 10, SPRITE_SWIMMER, STAY, RIGHT, 4, OPP_SWIMMER, 16
	object_event 14,  2, SPRITE_ROCKER, STAY, DOWN, 5, OPP_TAMER, 6
	object_event  4,  2, SPRITE_COOLTRAINER_M, STAY, DOWN, 6, OPP_COOLTRAINER_M, 4
	object_event  9,  5, SPRITE_COOLTRAINER_F, STAY, UP, 7, OPP_COOLTRAINER_F, 4

	def_warps_to SILPH_GAUNTLET_5F
