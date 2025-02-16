	db DEX_LEAFEON ; pokedex id

	db  65, 110, 130,  60,  65 ; 430
	;   hp  atk  def  spd  spc   BST

	db GRASS, GRASS ; type
	db 45 ; catch rate
	db 196 ; base exp

	INCBIN "gfx/pokemon/front/leafeon.pic", 0, 1 ; sprite dimensions
	dw LeafeonPicFront, LeafeonPicBack

	db TACKLE, SAND_ATTACK, QUICK_ATTACK, WATER_GUN ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  BUBBLEBEAM,   \
	     WATER_GUN,    ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   RAGE,         \
	     MIMIC,        DOUBLE_TEAM,  REFLECT,      BIDE,         SWIFT,        \
	     SKULL_BASH,   REST,         SUBSTITUTE,   SURF
	; end

	db BANK(LeafeonPicFront)
	assert BANK(LeafeonPicFront) == BANK(LeafeonPicBack)
