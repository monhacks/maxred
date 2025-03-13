	db DEX_MISDREAVUS ; pokedex id

	db  60,  60,  60,  85,  85 ; 350
	;   hp  atk  def  spd  spc   BST

	db GHOST, GHOST ; type
	db 45 ; catch rate
	db 147 ; base exp

	INCBIN "gfx/pokemon/front/misdreavus.pic", 0, 1 ; sprite dimensions
	dw MisdreavusPicFront, MisdreavusPicBack

	db TACKLE, SAND_ATTACK, QUICK_ATTACK, WATER_GUN ; level 1 learnset
	db GROWTH_FAST ; growth rate

	; tm/hm learnset
	tmhm AERIAL_ACE,   TOXIC,        DOUBLE_EDGE,  CHARGE_BEAM,  WILL_O_WISP,  \
	     GIGA_DRAIN,   THUNDERBOLT,  THUNDER,      PSYCHIC_M,    LIGHT_SCREEN, \
	     MIMIC,        DOUBLE_TEAM,  REFLECT,      METRONOME,    DARK_PULSE,   \
	     SHADOW_BALL,  REST,         THUNDER_WAVE, CALM_MIND,    SUBSTITUTE,   \
	     MOONBLAST,    FLASH
	; end

	db BANK(MisdreavusPicFront)
	assert BANK(MisdreavusPicFront) == BANK(MisdreavusPicBack)
