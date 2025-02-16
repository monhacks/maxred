	db DEX_MAGNEZONE ; pokedex id

	db  70,  70, 115,  60, 130 ; 445
	;   hp  atk  def  spd  spc   BST

	db ELECTRIC, STEEL ; type
	db 30 ; catch rate
	db 211 ; base exp

	INCBIN "gfx/pokemon/front/magnezone.pic", 0, 1 ; sprite dimensions
	dw MagnezonePicFront, MagnezonePicBack

	db TACKLE, SAND_ATTACK, QUICK_ATTACK, WATER_GUN ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  BUBBLEBEAM,   \
	     WATER_GUN,    ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   RAGE,         \
	     MIMIC,        DOUBLE_TEAM,  REFLECT,      BIDE,         SWIFT,        \
	     SKULL_BASH,   REST,         SUBSTITUTE,   SURF
	; end

	db BANK(MagnezonePicFront)
	assert BANK(MagnezonePicFront) == BANK(MagnezonePicBack)
