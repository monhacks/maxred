	db DEX_AZUMARILL ; pokedex id

	db 100,  50,  80,  50,  80 ; 360
	;   hp  atk  def  spd  spc   BST

	db WATER, FAIRY ; type
	db 75 ; catch rate
	db 153 ; base exp

	INCBIN "gfx/pokemon/front/azumarill.pic", 0, 1 ; sprite dimensions
	dw AzumarillPicFront, AzumarillPicBack

	db HYDRO_PUMP, AQUA_JET, CHARM, TAIL_WHIP ; level 1 learnset
	db GROWTH_FAST ; growth rate

	; tm/hm learnset
	tmhm DYNAMICPUNCH, TOXIC,        BODY_SLAM,    DOUBLE_EDGE,  WATER_PULSE,  \
	     CHILLINWATER, ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   MUD_SLAP,     \
	     SEISMIC_TOSS, DIG,          LIGHT_SCREEN, MIMIC,        DOUBLE_TEAM,  \
	     METRONOME,    IRON_TAIL,    REST,         SUBSTITUTE,   MOONBLAST,    \
	     SURF,         STRENGTH
	; end

	db BANK(AzumarillPicFront)
	assert BANK(AzumarillPicFront) == BANK(AzumarillPicBack)
