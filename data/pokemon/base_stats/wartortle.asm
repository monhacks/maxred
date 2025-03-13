	db DEX_WARTORTLE ; pokedex id

	db  59,  63,  80,  58,  65
	;   hp  atk  def  spd  spc

	db WATER, WATER ; type
	db 45 ; catch rate
	db 143 ; base exp

	INCBIN "gfx/pokemon/front/wartortle.pic", 0, 1 ; sprite dimensions
	dw WartortlePicFront, WartortlePicBack

	db TACKLE, TAIL_WHIP, BUBBLE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm DYNAMICPUNCH, TOXIC,        BODY_SLAM,    DOUBLE_EDGE,  WATER_PULSE,  \
	     CHILLINWATER, ICE_BEAM,     BLIZZARD,     MUD_SLAP,     COUNTER,      \
	     SEISMIC_TOSS, DIG,          MIMIC,        DOUBLE_TEAM,  REFLECT,      \
	     ROCK_TOMB,    IRON_TAIL,    REST,         SUBSTITUTE,   SURF,         \
	     STRENGTH
	; end

	db BANK(WartortlePicFront)
	assert BANK(WartortlePicFront) == BANK(WartortlePicBack)
