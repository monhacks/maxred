	db DEX_POLITOED ; pokedex id

	db  90,  75,  75,  70, 100 ; 410
	;   hp  atk  def  spd  spc   BST

	db WATER, WATER ; type
	db 45 ; catch rate
	db 185 ; base exp

	INCBIN "gfx/pokemon/front/politoed.pic", 0, 1 ; sprite dimensions
	dw PolitoedPicFront, PolitoedPicBack

	db LEECH_LIFE, SCREECH, BITE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm RAZOR_WIND,   WHIRLWIND,    TOXIC,        TAKE_DOWN,    DOUBLE_EDGE,  \
	     HYPER_BEAM,   RAGE,         MEGA_DRAIN,   MIMIC,        DOUBLE_TEAM,  \
	     BIDE,         SWIFT,        REST,         SUBSTITUTE
	; end

	db BANK(PolitoedPicFront)
	assert BANK(PolitoedPicFront) == BANK(PolitoedPicBack)
