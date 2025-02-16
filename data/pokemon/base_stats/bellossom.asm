	db DEX_BELLOSSOM ; pokedex id

	db  75,  80,  85,  50, 100 ; 390
	;   hp  atk  def  spd  spc   BST

	db GRASS, GRASS ; type
	db 45 ; catch rate
	db 184 ; base exp

	INCBIN "gfx/pokemon/front/bellossom.pic", 0, 1 ; sprite dimensions
	dw BellossomPicFront, BellossomPicBack

	db LEECH_LIFE, SCREECH, BITE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm RAZOR_WIND,   WHIRLWIND,    TOXIC,        TAKE_DOWN,    DOUBLE_EDGE,  \
	     HYPER_BEAM,   RAGE,         MEGA_DRAIN,   MIMIC,        DOUBLE_TEAM,  \
	     BIDE,         SWIFT,        REST,         SUBSTITUTE
	; end

	db BANK(BellossomPicFront)
	assert BANK(BellossomPicFront) == BANK(BellossomPicBack)
