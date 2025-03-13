	db DEX_CROBAT ; pokedex id

	db  85,  90,  80, 130,  80 ; 465
	;   hp  atk  def  spd  spc   BST

	db POISON, FLYING ; type
	db 90 ; catch rate
	db 204 ; base exp

	INCBIN "gfx/pokemon/front/crobat.pic", 0, 1 ; sprite dimensions
	dw CrobatPicFront, CrobatPicBack

	db LEECH_LIFE, SCREECH, BITE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm AERIAL_ACE,   FOCUS_ENERGY, TOXIC,        SLUDGE_BOMB,  BODY_SLAM,    \
	     DOUBLE_EDGE,  HYPER_BEAM,   GIGA_DRAIN,   MIMIC,        DOUBLE_TEAM,  \
	     X_SCISSOR,    DARK_PULSE,   SHADOW_BALL,  REST,         SUBSTITUTE,   \
	     FLY
	; end

	db BANK(CrobatPicFront)
	assert BANK(CrobatPicFront) == BANK(CrobatPicBack)
