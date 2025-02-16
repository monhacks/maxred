	db DEX_HONCHKROW ; pokedex id

	db 100, 125,  52,  71,  52 ; 400
	;   hp  atk  def  spd  spc   BST

	db DARK, FLYING ; type
	db 30 ; catch rate
	db 187 ; base exp

	INCBIN "gfx/pokemon/front/honchkrow.pic", 0, 1 ; sprite dimensions
	dw HonchkrowPicFront, HonchkrowPicBack

	db TACKLE, SAND_ATTACK, QUICK_ATTACK, WATER_GUN ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  BUBBLEBEAM,   \
	     WATER_GUN,    ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   RAGE,         \
	     MIMIC,        DOUBLE_TEAM,  REFLECT,      BIDE,         SWIFT,        \
	     SKULL_BASH,   REST,         SUBSTITUTE,   SURF
	; end

	db BANK(HonchkrowPicFront)
	assert BANK(HonchkrowPicFront) == BANK(HonchkrowPicBack)
