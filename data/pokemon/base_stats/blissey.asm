	db DEX_BLISSEY ; pokedex id

	db 255,  10,  10,  55, 135 ; 465
	;   hp  atk  def  spd  spc   BST

	db NORMAL, NORMAL ; type
	db 40 ; catch rate
	db 255 ; base exp

	INCBIN "gfx/pokemon/front/blissey.pic", 0, 1 ; sprite dimensions
	dw BlisseyPicFront, BlisseyPicBack

	db TACKLE, SAND_ATTACK, QUICK_ATTACK, WATER_GUN ; level 1 learnset
	db GROWTH_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  BUBBLEBEAM,   \
	     WATER_GUN,    ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   RAGE,         \
	     MIMIC,        DOUBLE_TEAM,  REFLECT,      BIDE,         SWIFT,        \
	     SKULL_BASH,   REST,         SUBSTITUTE,   SURF
	; end

	db BANK(BlisseyPicFront)
	assert BANK(BlisseyPicFront) == BANK(BlisseyPicBack)
