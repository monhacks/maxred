	db DEX_AZUMARILL ; pokedex id

	db 100,  50,  80,  50,  80 ; 360
	;   hp  atk  def  spd  spc   BST

	db WATER, FAIRY ; type
	db 75 ; catch rate
	db 153 ; base exp

	INCBIN "gfx/pokemon/front/azumarill.pic", 0, 1 ; sprite dimensions
	dw AzumarillPicFront, AzumarillPicBack

	db TACKLE, SAND_ATTACK, QUICK_ATTACK, WATER_GUN ; level 1 learnset
	db GROWTH_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  BUBBLEBEAM,   \
	     WATER_GUN,    ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   RAGE,         \
	     MIMIC,        DOUBLE_TEAM,  REFLECT,      BIDE,         SWIFT,        \
	     SKULL_BASH,   REST,         SUBSTITUTE,   SURF
	; end

	db BANK(AzumarillPicFront)
	assert BANK(AzumarillPicFront) == BANK(AzumarillPicBack)
