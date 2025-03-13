	db DEX_KANGASKHAN ; pokedex id

	db 105,  95,  80,  90,  40
	;   hp  atk  def  spd  spc

	db NORMAL, NORMAL ; type
	db 45 ; catch rate
	db 175 ; base exp

	INCBIN "gfx/pokemon/front/kangaskhan.pic", 0, 1 ; sprite dimensions
	dw KangaskhanPicFront, KangaskhanPicBack

	db COMET_PUNCH, RAGE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm DYNAMICPUNCH, AERIAL_ACE,   FOCUS_ENERGY, BULK_UP,      TOXIC,        \
	     BODY_SLAM,    ROCK_CLIMB,   DOUBLE_EDGE,  WATER_PULSE,  ICE_BEAM,     \
	     BLIZZARD,     HYPER_BEAM,   MUD_SLAP,     COUNTER,      SEISMIC_TOSS, \
	     SOLARBEAM,    THUNDERBOLT,  THUNDER,      EARTHQUAKE,   FISSURE,      \
	     DIG,          MIMIC,        DOUBLE_TEAM,  ROCK_TOMB,    FLAMETHROWER, \
	     FIRE_BLAST,   IRON_TAIL,    SHADOW_BALL,  REST,         ROCK_SLIDE,   \
	     SUBSTITUTE,   CUT,          SURF,         STRENGTH
	; end

	db BANK(KangaskhanPicFront)
	assert BANK(KangaskhanPicFront) == BANK(KangaskhanPicBack)
