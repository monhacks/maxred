	db DEX_SNORLAX ; pokedex id

	db 160, 110,  65,  30,  65
	;   hp  atk  def  spd  spc

	db NORMAL, NORMAL ; type
	db 25 ; catch rate
	db 154 ; base exp

	INCBIN "gfx/pokemon/front/snorlax.pic", 0, 1 ; sprite dimensions
	dw SnorlaxPicFront, SnorlaxPicBack

	db HEADBUTT, AMNESIA, REST, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm DYNAMICPUNCH, TOXIC,        BODY_SLAM,    ROCK_CLIMB,   DOUBLE_EDGE,  \
	     WATER_PULSE,  CHILLINWATER, ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   \
	     MUD_SLAP,     COUNTER,      SEISMIC_TOSS, SOLARBEAM,    THUNDERBOLT,  \
	     THUNDER,      EARTHQUAKE,   FISSURE,      PSYCHIC_M,    MIMIC,        \
	     DOUBLE_TEAM,  REFLECT,      ROCK_TOMB,    METRONOME,    SELFDESTRUCT, \
	     FLAMETHROWER, FIRE_BLAST,   SHADOW_BALL,  REST,         ROCK_SLIDE,   \
	     SUBSTITUTE,   SURF,         STRENGTH
	; end

	db BANK(SnorlaxPicFront)
	assert BANK(SnorlaxPicFront) == BANK(SnorlaxPicBack)
