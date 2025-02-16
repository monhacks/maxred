	db DEX_GLIGAR ; pokedex id

	db  65,  75, 105,  85,  35 ; 365
	;   hp  atk  def  spd  spc   BST

	db GROUND, FLYING ; type
	db 60 ; catch rate
	db 108 ; base exp

	INCBIN "gfx/pokemon/front/gligar.pic", 0, 1 ; sprite dimensions
	dw GligarPicFront, GligarPicBack

	db TACKLE, SAND_ATTACK, QUICK_ATTACK, WATER_GUN ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  BUBBLEBEAM,   \
	     WATER_GUN,    ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   RAGE,         \
	     MIMIC,        DOUBLE_TEAM,  REFLECT,      BIDE,         SWIFT,        \
	     SKULL_BASH,   REST,         SUBSTITUTE,   SURF
	; end

	db BANK(GligarPicFront)
	assert BANK(GligarPicFront) == BANK(GligarPicBack)
