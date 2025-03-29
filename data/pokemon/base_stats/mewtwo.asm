	db DEX_MEWTWO ; pokedex id

	db 106, 110,  90, 130, 154
	;   hp  atk  def  spd  spc

	db PSYCHIC_TYPE, PSYCHIC_TYPE ; type
	db 3 ; catch rate
	db 220 ; base exp

	INCBIN "gfx/pokemon/front/mewtwo.pic", 0, 1 ; sprite dimensions
	dw MewtwoPicFront, MewtwoPicBack

	db CONFUSION, DISABLE, SWIFT, PSYCHIC_M ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm DYNAMICPUNCH, AERIAL_ACE,   FOCUS_ENERGY, BULK_UP,      TOXIC,        \
	     BODY_SLAM,    ROCK_CLIMB,   DOUBLE_EDGE,  WATER_PULSE,  CHILLINWATER, \
	     ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   MUD_SLAP,     CHARGE_BEAM,  \
	     COUNTER,      SEISMIC_TOSS, WILL_O_WISP,  SOLARBEAM,    THUNDERBOLT,  \
	     THUNDER,      EARTHQUAKE,   PSYCHIC_M,    LIGHT_SCREEN, MIMIC,        \
	     DOUBLE_TEAM,  REFLECT,      ROCK_TOMB,    METRONOME,    FLAMETHROWER, \
	     FIRE_BLAST,   IRON_TAIL,    SHADOW_BALL,  REST,         THUNDER_WAVE, \
	     CALM_MIND,    ROCK_SLIDE,   TRI_ATTACK,   SUBSTITUTE,   STRENGTH,     \
	     FLASH
	; end

	db BANK(MewtwoPicFront)
	assert BANK(MewtwoPicFront) == BANK(MewtwoPicBack)
