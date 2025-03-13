	db DEX_SEADRA ; pokedex id

	db  55,  65,  95,  85,  95
	;   hp  atk  def  spd  spc

	db WATER, WATER ; type
	db 75 ; catch rate
	db 155 ; base exp

	INCBIN "gfx/pokemon/front/seadra.pic", 0, 1 ; sprite dimensions
	dw SeadraPicFront, SeadraPicBack

	db BUBBLE, SMOKESCREEN, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm FOCUS_ENERGY, TOXIC,        SLUDGE_BOMB,  DOUBLE_EDGE,  WATER_PULSE,  \
	     CHILLINWATER, ICE_BEAM,     BLIZZARD,     DRAGONBREATH, MIMIC,        \
	     DOUBLE_TEAM,  REST,         SUBSTITUTE,   SURF
	; end

	db BANK(SeadraPicFront)
	assert BANK(SeadraPicFront) == BANK(SeadraPicBack)
