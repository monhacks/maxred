	db DEX_SYLVEON ; pokedex id

	db 110,  65,  65,  60, 130 ; 430
	;   hp  atk  def  spd  spc   BST

	db FAIRY, FAIRY ; type
	db 45 ; catch rate
	db 197 ; base exp

	INCBIN "gfx/pokemon/front/sylveon.pic", 0, 1 ; sprite dimensions
	dw SylveonPicFront, SylveonPicBack

	db TACKLE, SAND_ATTACK, QUICK_ATTACK, WATER_GUN ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  BUBBLEBEAM,   \
	     WATER_GUN,    ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   RAGE,         \
	     MIMIC,        DOUBLE_TEAM,  REFLECT,      BIDE,         SWIFT,        \
	     SKULL_BASH,   REST,         SUBSTITUTE,   SURF
	; end

	db BANK(SylveonPicFront)
	assert BANK(SylveonPicFront) == BANK(SylveonPicBack)
