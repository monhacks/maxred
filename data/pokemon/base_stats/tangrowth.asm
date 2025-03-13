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
	tmhm DYNAMICPUNCH, AERIAL_ACE,   SWORDS_DANCE, TOXIC,        SLUDGE_BOMB,  \
	     BODY_SLAM,    DOUBLE_EDGE,  HYPER_BEAM,   MUD_SLAP,     GIGA_DRAIN,   \
	     SOLARBEAM,    EARTHQUAKE,   MIMIC,        DOUBLE_TEAM,  REFLECT,      \
	     ROCK_TOMB,    REST,         ROCK_SLIDE,   SUBSTITUTE,   CUT,          \
	     STRENGTH,     FLASH
	; end

	db BANK(TangrowthPicFront)
	assert BANK(TangrowthPicFront) == BANK(TangrowthPicBack)
