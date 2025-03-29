RockTunnelB2F_Object:
	db $3 ; border block

	def_warp_events
	warp_event 23,  7, ROCK_TUNNEL_B1F, 5
	warp_event 17, 21, ROCK_TUNNEL_B1F, 6
	warp_event  9,  3, ROCK_TUNNEL_B1F, 7
	warp_event  5, 21, ROCK_TUNNEL_B1F, 8

	def_bg_events

	def_object_events

	def_warps_to ROCK_TUNNEL_B2F