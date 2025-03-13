	db DEX_NIDOQUEEN ; pokedex id

	db  90,  82,  87,  76,  75
	;   hp  atk  def  spd  spc

	db POISON, GROUND ; type
	db 45 ; catch rate
	db 194 ; base exp

	INCBIN "gfx/pokemon/front/nidoqueen.pic", 0, 1 ; sprite dimensions
	dw NidoqueenPicFront, NidoqueenPicBack

	db TACKLE, SCRATCH, TAIL_WHIP, BODY_SLAM ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm DYNAMICPUNCH, AERIAL_ACE,   FOCUS_ENERGY, TOXIC,        SLUDGE_BOMB,  \
	     BODY_SLAM,    ROCK_CLIMB,   DOUBLE_EDGE,  WATER_PULSE,  ICE_BEAM,     \
	     BLIZZARD,     HYPER_BEAM,   MUD_SLAP,     COUNTER,      SEISMIC_TOSS, \
	     THUNDERBOLT,  THUNDER,      EARTHQUAKE,   FISSURE,      DIG,          \
	     MIMIC,        DOUBLE_TEAM,  REFLECT,      ROCK_TOMB,    METRONOME,    \
	     FLAMETHROWER, FIRE_BLAST,   IRON_TAIL,    SHADOW_BALL,  REST,         \
	     ROCK_SLIDE,   SUBSTITUTE,   CUT,          SURF,         STRENGTH
	; end

	db BANK(NidoqueenPicFront)
	assert BANK(NidoqueenPicFront) == BANK(NidoqueenPicBack)
