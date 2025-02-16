	db DEX_TANGROWTH ; pokedex id

	db 100, 100, 125,  50, 110 ; 485
	;   hp  atk  def  spd  spc   BST

	db GRASS, GRASS ; type
	db 30 ; catch rate
	db 211 ; base exp

	INCBIN "gfx/pokemon/front/tangrowth.pic", 0, 1 ; sprite dimensions
	dw TangrowthPicFront, TangrowthPicBack

	db CONSTRICT, BIND, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm SWORDS_DANCE, TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  \
	     HYPER_BEAM,   RAGE,         MEGA_DRAIN,   SOLARBEAM,    MIMIC,        \
	     DOUBLE_TEAM,  BIDE,         SKULL_BASH,   REST,         SUBSTITUTE,   \
	     CUT
	; end

	db BANK(TangrowthPicFront)
	assert BANK(TangrowthPicFront) == BANK(TangrowthPicBack)
