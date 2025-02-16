	db DEX_HOUNDOOM ; pokedex id

	db  75,  90,  50,  95, 110 ; 420
	;   hp  atk  def  spd  spc   BST

	db DARK, FIRE ; type
	db 120 ; catch rate
	db 114 ; base exp

	INCBIN "gfx/pokemon/front/houndoom.pic", 0, 1 ; sprite dimensions
	dw HoundoomPicFront, HoundoomPicBack

	db TACKLE, SAND_ATTACK, QUICK_ATTACK, WATER_GUN ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  BUBBLEBEAM,   \
	     WATER_GUN,    ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   RAGE,         \
	     MIMIC,        DOUBLE_TEAM,  REFLECT,      BIDE,         SWIFT,        \
	     SKULL_BASH,   REST,         SUBSTITUTE,   SURF
	; end

	db BANK(HoundoomPicFront)
	assert BANK(HoundoomPicFront) == BANK(HoundoomPicBack)
