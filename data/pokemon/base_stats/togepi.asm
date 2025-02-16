	db DEX_TOGEPI ; pokedex id

	db  35,  20,  65,  20,  65 ; 205
	;   hp  atk  def  spd  spc   BST

	db FAIRY, FAIRY ; type
	db 190 ; catch rate
	db 74 ; base exp

	INCBIN "gfx/pokemon/front/togepi.pic", 0, 1 ; sprite dimensions
	dw TogepiPicFront, TogepiPicBack

	db TACKLE, SAND_ATTACK, QUICK_ATTACK, WATER_GUN ; level 1 learnset
	db GROWTH_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  BUBBLEBEAM,   \
	     WATER_GUN,    ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   RAGE,         \
	     MIMIC,        DOUBLE_TEAM,  REFLECT,      BIDE,         SWIFT,        \
	     SKULL_BASH,   REST,         SUBSTITUTE,   SURF
	; end

	db BANK(TogepiPicFront)
	assert BANK(TogepiPicFront) == BANK(TogepiPicBack)
