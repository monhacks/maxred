	db DEX_PSYDUCK ; pokedex id

	db  50,  52,  48,  55,  50
	;   hp  atk  def  spd  spc

	db WATER, WATER ; type
	db 190 ; catch rate
	db 80 ; base exp

	INCBIN "gfx/pokemon/front/psyduck.pic", 0, 1 ; sprite dimensions
	dw PsyduckPicFront, PsyduckPicBack

	db SCRATCH, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm DYNAMICPUNCH, AERIAL_ACE,   TOXIC,        BODY_SLAM,    ROCK_CLIMB,   \
	     DOUBLE_EDGE,  WATER_PULSE,  CHILLINWATER, ICE_BEAM,     BLIZZARD,     \
	     MUD_SLAP,     COUNTER,      SEISMIC_TOSS, DIG,          PSYCHIC_M,    \
	     LIGHT_SCREEN, MIMIC,        DOUBLE_TEAM,  IRON_TAIL,    SHADOW_BALL,  \
	     REST,         CALM_MIND,    TRI_ATTACK,   SUBSTITUTE,   SURF,         \
	     STRENGTH,     FLASH
	; end

	db BANK(PsyduckPicFront)
	assert BANK(PsyduckPicFront) == BANK(PsyduckPicBack)
