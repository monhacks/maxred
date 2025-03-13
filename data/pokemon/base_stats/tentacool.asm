	db DEX_TENTACOOL ; pokedex id

	db  40,  40,  35,  70, 100
	;   hp  atk  def  spd  spc

	db WATER, POISON ; type
	db 190 ; catch rate
	db 105 ; base exp

	INCBIN "gfx/pokemon/front/tentacool.pic", 0, 1 ; sprite dimensions
	dw TentacoolPicFront, TentacoolPicBack

	db ACID, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm SWORDS_DANCE, FOCUS_ENERGY, TOXIC,        SLUDGE_BOMB,  DOUBLE_EDGE,  \
	     WATER_PULSE,  CHILLINWATER, ICE_BEAM,     BLIZZARD,     GIGA_DRAIN,   \
	     LIGHT_SCREEN, MIMIC,        DOUBLE_TEAM,  REFLECT,      REST,         \
	     SUBSTITUTE,   CUT,          SURF,         FLASH
	; end

	db BANK(TentacoolPicFront)
	assert BANK(TentacoolPicFront) == BANK(TentacoolPicBack)
