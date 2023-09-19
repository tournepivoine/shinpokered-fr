CitrineFerryDock_Object:
	db $f ; border block

	def_warp_events
	warp_event 14,  0, CITRINE_CITY, 7
	warp_event 14,  2, SEAGALLOP_FERRY, 1

	def_bg_events

	def_object_events

	def_warps_to CITRINE_FERRY_DOCK
