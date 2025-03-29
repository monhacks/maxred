	db DEX_DROWZEE ; pokedex id

	db  60,  48,  45,  42,  90
	;   hp  atk  def  spd  spc

	db PSYCHIC_TYPE, PSYCHIC_TYPE ; type
	db 190 ; catch rate
	db 102 ; base exp

	INCBIN "gfx/pokemon/front/drowzee.pic", 0, 1 ; sprite dimensions
	dw DrowzeePicFront, DrowzeePicBack

	db POUND, HYPNOSIS, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm DYNAMICPUNCH, TOXIC,        BODY_SLAM,    DOUBLE_EDGE,  MUD_SLAP,     \
	     COUNTER,      SEISMIC_TOSS, PSYCHIC_M,    LIGHT_SCREEN, MIMIC,        \
	     DOUBLE_TEAM,  REFLECT,      METRONOME,    DARK_PULSE,   SHADOW_BALL,  \
	     REST,         THUNDER_WAVE, CALM_MIND,    TRI_ATTACK,   SUBSTITUTE,   \
	     FLASH
	; end

	db BANK(DrowzeePicFront)
	assert BANK(DrowzeePicFront) == BANK(DrowzeePicBack)
