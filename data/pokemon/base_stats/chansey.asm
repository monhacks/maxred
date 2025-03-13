	db DEX_CHANSEY ; pokedex id

	db 250,   5,   5,  50, 105
	;   hp  atk  def  spd  spc

	db NORMAL, NORMAL ; type
	db 30 ; catch rate
	db 255 ; base exp

	INCBIN "gfx/pokemon/front/chansey.pic", 0, 1 ; sprite dimensions
	dw ChanseyPicFront, ChanseyPicBack

	db POUND, DOUBLESLAP, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_FAST ; growth rate

	; tm/hm learnset
	tmhm DYNAMICPUNCH, TOXIC,        BODY_SLAM,    ROCK_CLIMB,   DOUBLE_EDGE,  \
	     WATER_PULSE,  CHILLINWATER, ICE_BEAM,     BLIZZARD,     MUD_SLAP,     \
	     CHARGE_BEAM,  COUNTER,      SEISMIC_TOSS, SOLARBEAM,    THUNDERBOLT,  \
	     THUNDER,      EARTHQUAKE,   PSYCHIC_M,    LIGHT_SCREEN, MIMIC,        \
	     DOUBLE_TEAM,  REFLECT,      ROCK_TOMB,    METRONOME,    FLAMETHROWER, \
	     FIRE_BLAST,   SHADOW_BALL,  REST,         THUNDER_WAVE, CALM_MIND,    \
	     ROCK_SLIDE,   TRI_ATTACK,   SUBSTITUTE,   MOONBLAST,    STRENGTH,     \
	     FLASH
	; end

	db BANK(ChanseyPicFront)
	assert BANK(ChanseyPicFront) == BANK(ChanseyPicBack)
