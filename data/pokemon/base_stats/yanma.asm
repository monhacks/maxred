	db DEX_YANMA ; pokedex id

	db  65,  65,  45,  95,  75 ; 345
	;   hp  atk  def  spd  spc   BST

	db BUG, FLYING ; type
	db 75 ; catch rate
	db 147 ; base exp

	INCBIN "gfx/pokemon/front/yanma.pic", 0, 1 ; sprite dimensions
	dw YanmaPicFront, YanmaPicBack

	db TACKLE, SAND_ATTACK, QUICK_ATTACK, WATER_GUN ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  BUBBLEBEAM,   \
	     WATER_GUN,    ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   RAGE,         \
	     MIMIC,        DOUBLE_TEAM,  REFLECT,      BIDE,         SWIFT,        \
	     SKULL_BASH,   REST,         SUBSTITUTE,   SURF
	; end

	db BANK(YanmaPicFront)
	assert BANK(YanmaPicFront) == BANK(YanmaPicBack)
