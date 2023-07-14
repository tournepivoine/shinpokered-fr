CelesteHillOutside_Object:
	db $2 ; border block

	def_warp_events
	warp_event 18, 35, CITRINE_CITY, 5
	warp_event 19, 35, CITRINE_CITY, 5
	warp_event 16, 23, CELESTE_HILL_CAVE, 1
	warp_event 36, 11, CELESTE_HILL_CAVE, 5
	warp_event 2, 9, CELESTE_HILL_CAVE, 6
	warp_event 22, 3, CELESTE_HILL_CAVE, 7
	warp_event 18, 0, CELESTE_HILL, 1
	warp_event 19, 0, CELESTE_HILL, 2

	def_bg_events

	def_object_events

	def_warps_to CELESTE_HILL_OUTSIDE
