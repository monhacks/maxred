	db DEX_MISMAGIUS ; pokedex id

	db  60,  60,  60, 105, 105 ; 390
	;   hp  atk  def  spd  spc   BST

	db GHOST, GHOST ; type
	db 45 ; catch rate
	db 187 ; base exp

	INCBIN "gfx/pokemon/front/mismagius.pic", 0, 1 ; sprite dimensions
	dw MismagiusPicFront, MismagiusPicBack

	db TACKLE, SAND_ATTACK, QUICK_ATTACK, WATER_GUN ; level 1 learnset
	db GROWTH_FAST ; growth rate

	; tm/hm learnset
	tmhm AERIAL_ACE,   TOXIC,        DOUBLE_EDGE,  HYPER_BEAM,   CHARGE_BEAM,  \
	     WILL_O_WISP,  GIGA_DRAIN,   THUNDERBOLT,  THUNDER,      PSYCHIC_M,    \
	     LIGHT_SCREEN, MIMIC,        DOUBLE_TEAM,  REFLECT,      METRONOME,    \
	     DARK_PULSE,   SHADOW_BALL,  REST,         THUNDER_WAVE, CALM_MIND,    \
	     SUBSTITUTE,   MOONBLAST,    FLASH
	; end

	db BANK(MismagiusPicFront)
	assert BANK(MismagiusPicFront) == BANK(MismagiusPicBack)
