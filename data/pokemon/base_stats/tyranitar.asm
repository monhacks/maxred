	db DEX_TYRANITAR ; pokedex id

	db 100, 134, 110,  61,  95 ; 500
	;   hp  atk  def  spd  spc   BST

	db ROCK, DARK ; type
	db 45 ; catch rate
	db 218 ; base exp

	INCBIN "gfx/pokemon/front/tyranitar.pic", 0, 1 ; sprite dimensions
	dw TyranitarPicFront, TyranitarPicBack

	db TACKLE, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm DYNAMICPUNCH, AERIAL_ACE,   FOCUS_ENERGY, TOXIC,        BODY_SLAM,    \
	     ROCK_CLIMB,   DOUBLE_EDGE,  WATER_PULSE,  ICE_BEAM,     BLIZZARD,     \
	     HYPER_BEAM,   MUD_SLAP,     COUNTER,      SEISMIC_TOSS, DRAGONBREATH, \
	     THUNDERBOLT,  THUNDER,      EARTHQUAKE,   FISSURE,      DIG,          \
	     MIMIC,        DOUBLE_TEAM,  ROCK_TOMB,    METRONOME,    FLAMETHROWER, \
	     FIRE_BLAST,   IRON_TAIL,    DARK_PULSE,   REST,         THUNDER_WAVE, \
	     ROCK_SLIDE,   SUBSTITUTE,   CUT,          SURF,         STRENGTH
	; end

	db BANK(TyranitarPicFront)
	assert BANK(TyranitarPicFront) == BANK(TyranitarPicBack)
