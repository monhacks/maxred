	db DEX_ARTICUNO ; pokedex id

	db  90,  85, 100,  85, 125 ; 485
	;   hp  atk  def  spd  spc   BST

	db ICE, FLYING ; type
	db 3 ; catch rate
	db 215 ; base exp

	INCBIN "gfx/pokemon/front/articuno.pic", 0, 1 ; sprite dimensions
	dw ArticunoPicFront, ArticunoPicBack

	db PECK, ICE_BEAM, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm AERIAL_ACE,   FOCUS_ENERGY, TOXIC,        BODY_SLAM,    DOUBLE_EDGE,  \
	     WATER_PULSE,  CHILLINWATER, ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   \
	     MUD_SLAP,     DRAGONBREATH, PSYCHIC_M,    LIGHT_SCREEN, MIMIC,        \
	     DOUBLE_TEAM,  REFLECT,      HURRICANE,    REST,         SUBSTITUTE,   \
	     FLY,          FLASH
	; end

	db BANK(ArticunoPicFront)
	assert BANK(ArticunoPicFront) == BANK(ArticunoPicBack)
