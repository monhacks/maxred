	db DEX_MURKROW ; pokedex id

	db  60,  85,  42,  91,  42 ; 320
	;   hp  atk  def  spd  spc   BST

	db DARK, FLYING ; type
	db 30 ; catch rate
	db 107 ; base exp

	INCBIN "gfx/pokemon/front/murkrow.pic", 0, 1 ; sprite dimensions
	dw MurkrowPicFront, MurkrowPicBack

	db TACKLE, SAND_ATTACK, QUICK_ATTACK, WATER_GUN ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  BUBBLEBEAM,   \
	     WATER_GUN,    ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   RAGE,         \
	     MIMIC,        DOUBLE_TEAM,  REFLECT,      BIDE,         SWIFT,        \
	     SKULL_BASH,   REST,         SUBSTITUTE,   SURF
	; end

	db BANK(MurkrowPicFront)
	assert BANK(MurkrowPicFront) == BANK(MurkrowPicBack)
