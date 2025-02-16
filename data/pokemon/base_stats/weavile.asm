	db DEX_WEAVILE ; pokedex id

	db  70, 120,  65, 125,  45 ; 425
	;   hp  atk  def  spd  spc   BST

	db DARK, ICE ; type
	db 45 ; catch rate
	db 199 ; base exp

	INCBIN "gfx/pokemon/front/weavile.pic", 0, 1 ; sprite dimensions
	dw WeavilePicFront, WeavilePicBack

	db TACKLE, SAND_ATTACK, QUICK_ATTACK, WATER_GUN ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  BUBBLEBEAM,   \
	     WATER_GUN,    ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   RAGE,         \
	     MIMIC,        DOUBLE_TEAM,  REFLECT,      BIDE,         SWIFT,        \
	     SKULL_BASH,   REST,         SUBSTITUTE,   SURF
	; end

	db BANK(WeavilePicFront)
	assert BANK(WeavilePicFront) == BANK(WeavilePicBack)
