	db DEX_LICKILICKY ; pokedex id

	db 110,  85,  95,  50,  80 ; 420
	;   hp  atk  def  spd  spc   BST

	db NORMAL, NORMAL ; type
	db 30 ; catch rate
	db 193 ; base exp

	INCBIN "gfx/pokemon/front/lickilicky.pic", 0, 1 ; sprite dimensions
	dw LickilickyPicFront, LickilickyPicBack

	db WRAP, SUPERSONIC, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm DYNAMICPUNCH, SWORDS_DANCE, FOCUS_ENERGY, TOXIC,        BODY_SLAM,    \
	     ROCK_CLIMB,   DOUBLE_EDGE,  WATER_PULSE,  ICE_BEAM,     BLIZZARD,     \
	     HYPER_BEAM,   MUD_SLAP,     COUNTER,      SEISMIC_TOSS, SOLARBEAM,    \
	     THUNDERBOLT,  THUNDER,      EARTHQUAKE,   FISSURE,      DIG,          \
	     PSYCHIC_M,    MIMIC,        DOUBLE_TEAM,  ROCK_TOMB,    METRONOME,    \
	     SELFDESTRUCT, FLAMETHROWER, FIRE_BLAST,   IRON_TAIL,    SHADOW_BALL,  \
	     REST,         ROCK_SLIDE,   SUBSTITUTE,   CUT,          SURF,         \
	     STRENGTH
	; end

	db BANK(LickilickyPicFront)
	assert BANK(LickilickyPicFront) == BANK(LickilickyPicBack)
