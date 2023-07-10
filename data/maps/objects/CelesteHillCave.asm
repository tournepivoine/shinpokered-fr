CelesteHillCave_Object:
	db $03 ; border block

	def_warp_events
	warp_event 18, 35, CELESTE_HILL_OUTSIDE, 3
	warp_event 19, 35, CELESTE_HILL_OUTSIDE, 3
	warp_event 19, 25, CELESTE_HILL_CAVE, 4
	warp_event 2, 16, CELESTE_HILL_CAVE, 3
	warp_event 37, 13, CELESTE_HILL_OUTSIDE, 4
	warp_event  5,  3, CELESTE_HILL_OUTSIDE, 5
	warp_event 37,  2, CELESTE_HILL_OUTSIDE, 6

	def_bg_events

	def_object_events

	def_warps_to CELESTE_HILL_CAVE
