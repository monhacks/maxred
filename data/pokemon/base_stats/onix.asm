	db DEX_ONIX ; pokedex id

	db  35,  45, 160,  70,  30
	;   hp  atk  def  spd  spc

	db ROCK, GROUND ; type
	db 45 ; catch rate
	db 108 ; base exp

	INCBIN "gfx/pokemon/front/onix.pic", 0, 1 ; sprite dimensions
	dw OnixPicFront, OnixPicBack

	db TACKLE, SCREECH, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    ROCK_CLIMB,   DOUBLE_EDGE,  MUD_SLAP,     \
	     DRAGONBREATH, EARTHQUAKE,   FISSURE,      DIG,          MIMIC,        \
	     DOUBLE_TEAM,  ROCK_TOMB,    SELFDESTRUCT, IRON_TAIL,    REST,         \
	     EXPLOSION,    ROCK_SLIDE,   SUBSTITUTE,   STRENGTH
	; end

	db BANK(OnixPicFront)
	assert BANK(OnixPicFront) == BANK(OnixPicBack)
