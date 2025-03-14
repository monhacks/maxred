	object_const_def
	const_export SAFFRONMART_CLERK
	const_export SAFFRONMART_CLERK_TM1
	const_export SAFFRONMART_CLERK_TM2
	const_export SAFFRONMART_SUPER_NERD
	const_export SAFFRONMART_COOLTRAINER_F

SaffronMart_Object:
	db $0 ; border block

	def_warp_events
	warp_event  3,  9, LAST_MAP, 5
	warp_event  4,  9, LAST_MAP, 5

	def_bg_events

	def_object_events
	object_event  0,  7, SPRITE_CLERK, STAY, RIGHT, TEXT_SAFFRONMART_CLERK
	object_event  0,  3, SPRITE_CLERK, STAY, RIGHT, TEXT_SAFFRONMART_CLERK_TM1
	object_event  0,  5, SPRITE_CLERK, STAY, RIGHT, TEXT_SAFFRONMART_CLERK_TM2
	object_event  4,  2, SPRITE_SUPER_NERD, STAY, NONE, TEXT_SAFFRONMART_SUPER_NERD
	object_event  6,  5, SPRITE_COOLTRAINER_F, WALK, ANY_DIR, TEXT_SAFFRONMART_COOLTRAINER_F

	def_warps_to SAFFRON_MART
