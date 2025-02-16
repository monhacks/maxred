	db DEX_MISMAGIUS ; pokedex id

	db  60,  60,  60, 105, 105 ; 390
	;   hp  atk  def  spd  spc   BST

	db GHOST, GHOST ; type
	db 45 ; catch rate
	db 187 ; base exp

	INCBIN "gfx/pokemon/front/mismagius.pic", 0, 1 ; sprite dimensions
	dw MismagiusPicFront, MismagiusPicBack

	db TACKLE, SAND_ATTACK, QUICK_ATTACK, WATER_GUN ; level 1 learnset
	db GROWTH_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  BUBBLEBEAM,   \
	     WATER_GUN,    ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   RAGE,         \
	     MIMIC,        DOUBLE_TEAM,  REFLECT,      BIDE,         SWIFT,        \
	     SKULL_BASH,   REST,         SUBSTITUTE,   SURF
	; end

	db BANK(MismagiusPicFront)
	assert BANK(MismagiusPicFront) == BANK(MismagiusPicBack)
