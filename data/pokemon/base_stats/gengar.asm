	db DEX_GENGAR ; pokedex id

	db  60,  65,  60, 110, 130
	;   hp  atk  def  spd  spc

	db GHOST, POISON ; type
	db 45 ; catch rate
	db 190 ; base exp

	INCBIN "gfx/pokemon/front/gengar.pic", 0, 1 ; sprite dimensions
	dw GengarPicFront, GengarPicBack

	db LICK, CONFUSE_RAY, NIGHT_SHADE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm DYNAMICPUNCH, TOXIC,        SLUDGE_BOMB,  BODY_SLAM,    DOUBLE_EDGE,  \
	     HYPER_BEAM,   COUNTER,      SEISMIC_TOSS, WILL_O_WISP,  GIGA_DRAIN,   \
	     THUNDERBOLT,  THUNDER,      PSYCHIC_M,    MIMIC,        DOUBLE_TEAM,  \
	     METRONOME,    SELFDESTRUCT, DARK_PULSE,   SHADOW_BALL,  REST,         \
	     EXPLOSION,    SUBSTITUTE,   STRENGTH,     FLASH
	; end

	db BANK(GengarPicFront)
	assert BANK(GengarPicFront) == BANK(GengarPicBack)
