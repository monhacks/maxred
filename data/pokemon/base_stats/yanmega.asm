	db DEX_YANMEGA ; pokedex id

	db  86,  76,  86,  95, 116 ; 469
	;   hp  atk  def  spd  spc   BST

	db BUG, FLYING ; type
	db 30 ; catch rate
	db 198 ; base exp

	INCBIN "gfx/pokemon/front/yanmega.pic", 0, 1 ; sprite dimensions
	dw YanmegaPicFront, YanmegaPicBack

	db TACKLE, SAND_ATTACK, QUICK_ATTACK, WATER_GUN ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  BUBBLEBEAM,   \
	     WATER_GUN,    ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   RAGE,         \
	     MIMIC,        DOUBLE_TEAM,  REFLECT,      BIDE,         SWIFT,        \
	     SKULL_BASH,   REST,         SUBSTITUTE,   SURF
	; end

	db BANK(YanmegaPicFront)
	assert BANK(YanmegaPicFront) == BANK(YanmegaPicBack)
