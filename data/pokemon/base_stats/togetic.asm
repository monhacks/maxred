	db DEX_TOGETIC ; pokedex id

	db  55,  40,  85,  40, 105 ; 325
	;   hp  atk  def  spd  spc   BST

	db FAIRY, FLYING ; type
	db 75 ; catch rate
	db 114 ; base exp

	INCBIN "gfx/pokemon/front/togetic.pic", 0, 1 ; sprite dimensions
	dw TogeticPicFront, TogeticPicBack

	db TACKLE, SAND_ATTACK, QUICK_ATTACK, WATER_GUN ; level 1 learnset
	db GROWTH_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  BUBBLEBEAM,   \
	     WATER_GUN,    ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   RAGE,         \
	     MIMIC,        DOUBLE_TEAM,  REFLECT,      BIDE,         SWIFT,        \
	     SKULL_BASH,   REST,         SUBSTITUTE,   SURF
	; end

	db BANK(TogeticPicFront)
	assert BANK(TogeticPicFront) == BANK(TogeticPicBack)
