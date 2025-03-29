	db DEX_SLOWPOKE ; pokedex id

	db  90,  65,  65,  15,  40
	;   hp  atk  def  spd  spc

	db WATER, PSYCHIC_TYPE ; type
	db 190 ; catch rate
	db 99 ; base exp

	INCBIN "gfx/pokemon/front/slowpoke.pic", 0, 1 ; sprite dimensions
	dw SlowpokePicFront, SlowpokePicBack

	db CONFUSION, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    DOUBLE_EDGE,  WATER_PULSE,  CHILLINWATER, \
	     ICE_BEAM,     BLIZZARD,     MUD_SLAP,     COUNTER,      SEISMIC_TOSS, \
	     EARTHQUAKE,   FISSURE,      DIG,          PSYCHIC_M,    LIGHT_SCREEN, \
	     MIMIC,        DOUBLE_TEAM,  REFLECT,      FLAMETHROWER, FIRE_BLAST,   \
	     IRON_TAIL,    SHADOW_BALL,  REST,         THUNDER_WAVE, CALM_MIND,    \
	     TRI_ATTACK,   SUBSTITUTE,   SURF,         STRENGTH,     FLASH
	; end

	db BANK(SlowpokePicFront)
	assert BANK(SlowpokePicFront) == BANK(SlowpokePicBack)
