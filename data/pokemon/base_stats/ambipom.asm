	db DEX_AMBIPOM ; pokedex id

	db  75, 100,  66, 115,  60 ; 426
	;   hp  atk  def  spd  spc   BST

	db NORMAL, NORMAL ; type
	db 45 ; catch rate
	db 186 ; base exp

	INCBIN "gfx/pokemon/front/ambipom.pic", 0, 1 ; sprite dimensions
	dw AmbipomPicFront, AmbipomPicBack

	db TACKLE, SAND_ATTACK, QUICK_ATTACK, WATER_GUN ; level 1 learnset
	db GROWTH_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  BUBBLEBEAM,   \
	     WATER_GUN,    ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   RAGE,         \
	     MIMIC,        DOUBLE_TEAM,  REFLECT,      BIDE,         SWIFT,        \
	     SKULL_BASH,   REST,         SUBSTITUTE,   SURF
	; end

	db BANK(AmbipomPicFront)
	assert BANK(AmbipomPicFront) == BANK(AmbipomPicBack)
