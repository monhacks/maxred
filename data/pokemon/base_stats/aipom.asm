	db DEX_AIPOM ; pokedex id

	db  55,  70,  55,  85,  40 ; 305
	;   hp  atk  def  spd  spc   BST

	db NORMAL, NORMAL ; type
	db 45 ; catch rate
	db 94 ; base exp

	INCBIN "gfx/pokemon/front/aipom.pic", 0, 1 ; sprite dimensions
	dw AipomPicFront, AipomPicBack

	db TACKLE, SAND_ATTACK, QUICK_ATTACK, WATER_GUN ; level 1 learnset
	db GROWTH_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  BUBBLEBEAM,   \
	     WATER_GUN,    ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   RAGE,         \
	     MIMIC,        DOUBLE_TEAM,  REFLECT,      BIDE,         SWIFT,        \
	     SKULL_BASH,   REST,         SUBSTITUTE,   SURF
	; end

	db BANK(AipomPicFront)
	assert BANK(AipomPicFront) == BANK(AipomPicBack)
