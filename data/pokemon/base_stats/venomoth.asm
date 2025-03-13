	db DEX_VENOMOTH ; pokedex id

	db  70,  65,  60,  90,  90
	;   hp  atk  def  spd  spc

	db BUG, POISON ; type
	db 75 ; catch rate
	db 138 ; base exp

	INCBIN "gfx/pokemon/front/venomoth.pic", 0, 1 ; sprite dimensions
	dw VenomothPicFront, VenomothPicBack

	db TACKLE, DISABLE, POISONPOWDER, LEECH_LIFE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm AERIAL_ACE,   TOXIC,        SLUDGE_BOMB,  DOUBLE_EDGE,  HYPER_BEAM,   \
	     GIGA_DRAIN,   SOLARBEAM,    PSYCHIC_M,    MIMIC,        DOUBLE_TEAM,  \
	     REFLECT,      SHADOW_BALL,  REST,         SUBSTITUTE,   FLASH
	; end

	db BANK(VenomothPicFront)
	assert BANK(VenomothPicFront) == BANK(VenomothPicBack)
