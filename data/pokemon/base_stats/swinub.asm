	db DEX_SWINUB ; pokedex id

	db  50,  50,  40,  50,  30 ; 220
	;   hp  atk  def  spd  spc   BST

	db ICE, GROUND ; type
	db 225 ; catch rate
	db 78 ; base exp

	INCBIN "gfx/pokemon/front/swinub.pic", 0, 1 ; sprite dimensions
	dw SwinubPicFront, SwinubPicBack

	db TACKLE, SAND_ATTACK, QUICK_ATTACK, WATER_GUN ; level 1 learnset
	db GROWTH_SLOW; growth rate

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  BUBBLEBEAM,   \
	     WATER_GUN,    ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   RAGE,         \
	     MIMIC,        DOUBLE_TEAM,  REFLECT,      BIDE,         SWIFT,        \
	     SKULL_BASH,   REST,         SUBSTITUTE,   SURF
	; end

	db BANK(SwinubPicFront)
	assert BANK(SwinubPicFront) == BANK(SwinubPicBack)
