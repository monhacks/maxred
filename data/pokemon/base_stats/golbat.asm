	db DEX_GOLBAT ; pokedex id

	db  75,  80,  70,  90,  75 ; 390
	;   hp  atk  def  spd  spc   BST

	db POISON, FLYING ; type
	db 90 ; catch rate
	db 171 ; base exp

	INCBIN "gfx/pokemon/front/golbat.pic", 0, 1 ; sprite dimensions
	dw GolbatPicFront, GolbatPicBack

	db LEECH_LIFE, SCREECH, BITE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm AERIAL_ACE,   FOCUS_ENERGY, TOXIC,        SLUDGE_BOMB,  DOUBLE_EDGE,  \
	     GIGA_DRAIN,   MIMIC,        DOUBLE_TEAM,  X_SCISSOR,    DARK_PULSE,   \
	     SHADOW_BALL,  REST,         SUBSTITUTE,   FLY
	; end

	db BANK(GolbatPicFront)
	assert BANK(GolbatPicFront) == BANK(GolbatPicBack)
