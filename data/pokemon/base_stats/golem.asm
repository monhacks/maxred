	db DEX_GOLEM ; pokedex id

	db  80, 110, 130,  45,  55
	;   hp  atk  def  spd  spc

	db ROCK, GROUND ; type
	db 45 ; catch rate
	db 177 ; base exp

	INCBIN "gfx/pokemon/front/golem.pic", 0, 1 ; sprite dimensions
	dw GolemPicFront, GolemPicBack

	db TACKLE, DEFENSE_CURL, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm DYNAMICPUNCH, BULK_UP,      TOXIC,        BODY_SLAM,    ROCK_CLIMB,   \
	     DOUBLE_EDGE,  HYPER_BEAM,   MUD_SLAP,     COUNTER,      SEISMIC_TOSS, \
	     EARTHQUAKE,   FISSURE,      DIG,          MIMIC,        DOUBLE_TEAM,  \
	     ROCK_TOMB,    METRONOME,    SELFDESTRUCT, FLAMETHROWER, FIRE_BLAST,   \
	     REST,         EXPLOSION,    ROCK_SLIDE,   SUBSTITUTE,   STRENGTH
	; end

	db BANK(GolemPicFront)
	assert BANK(GolemPicFront) == BANK(GolemPicBack)
