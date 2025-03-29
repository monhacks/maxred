	db DEX_ESPEON ; pokedex id

	db  65,  65,  60, 110, 130 ; 430
	;   hp  atk  def  spd  spc   BST

	db PSYCHIC_TYPE, PSYCHIC_TYPE ; type
	db 45 ; catch rate
	db 197 ; base exp

	INCBIN "gfx/pokemon/front/espeon.pic", 0, 1 ; sprite dimensions
	dw EspeonPicFront, EspeonPicBack

	db TACKLE, SAND_ATTACK, QUICK_ATTACK, WATER_GUN ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    DOUBLE_EDGE,  HYPER_BEAM,   MUD_SLAP,     \
	     DIG,          PSYCHIC_M,    LIGHT_SCREEN, MIMIC,        DOUBLE_TEAM,  \
	     REFLECT,      METRONOME,    IRON_TAIL,    SHADOW_BALL,  REST,         \
	     CALM_MIND,    SUBSTITUTE,   CUT,          FLASH
	; end

	db BANK(EspeonPicFront)
	assert BANK(EspeonPicFront) == BANK(EspeonPicBack)
