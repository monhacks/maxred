	db DEX_SLOWBRO ; pokedex id

	db  95,  75, 110,  30,  80
	;   hp  atk  def  spd  spc

	db WATER, PSYCHIC_TYPE ; type
	db 75 ; catch rate
	db 164 ; base exp

	INCBIN "gfx/pokemon/front/slowbro.pic", 0, 1 ; sprite dimensions
	dw SlowbroPicFront, SlowbroPicBack

	db CONFUSION, DISABLE, HEADBUTT, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm DYNAMICPUNCH, AERIAL_ACE,   TOXIC,        BODY_SLAM,    DOUBLE_EDGE,  \
	     WATER_PULSE,  CHILLINWATER, ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   \
	     MUD_SLAP,     COUNTER,      SEISMIC_TOSS, EARTHQUAKE,   FISSURE,      \
	     DIG,          PSYCHIC_M,    LIGHT_SCREEN, MIMIC,        DOUBLE_TEAM,  \
	     REFLECT,      FLAMETHROWER, FIRE_BLAST,   IRON_TAIL,    SHADOW_BALL,  \
	     REST,         THUNDER_WAVE, CALM_MIND,    TRI_ATTACK,   SUBSTITUTE,   \
	     SURF,         STRENGTH,     FLASH
	; end

	db BANK(SlowbroPicFront)
	assert BANK(SlowbroPicFront) == BANK(SlowbroPicBack)
