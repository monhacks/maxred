SafariZoneNortheast_Object:
	db $0 ; border block

	def_warp_events
	warp_event 24, 25, SAFARI_ZONE_EAST, 5
	warp_event 25, 25, SAFARI_ZONE_EAST, 6
	warp_event  0,  6, SAFARI_ZONE_NORTH, 9
	warp_event  0,  7, SAFARI_ZONE_NORTH, 10
	warp_event 25,  3, SAFARI_ZONE_NE_REST_HOUSE, 1

	def_bg_events

	def_object_events

	def_warps_to SAFARI_ZONE_NORTHEAST