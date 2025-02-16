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
	tmhm TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  BUBBLEBEAM,   \
	     WATER_GUN,    ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   RAGE,         \
	     MIMIC,        DOUBLE_TEAM,  REFLECT,      BIDE,         SWIFT,        \
	     SKULL_BASH,   REST,         SUBSTITUTE,   SURF
	; end

	db BANK(MisdreavusPicFront)
	assert BANK(MisdreavusPicFront) == BANK(MisdreavusPicBack)
