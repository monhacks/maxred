VictoryRoadB1F_Object:
	db $7d ; border block

	def_warp_events
	warp_event  4,  3, VICTORY_ROAD_1F, 5
	warp_event 11,  1, VICTORY_ROAD_OAKS_ROOM, 1
	warp_event 18,  0, VICTORY_ROAD_OAKS_ROOM, 2

	def_bg_events

	def_object_events

	def_warps_to VICTORY_ROAD_B1F