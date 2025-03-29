	db DEX_KINGDRA ; pokedex id

	db  75,  95,  95,  85,  95 ; 445
	;   hp  atk  def  spd  spc   BST

	db WATER, DRAGON ; type
	db 45 ; catch rate
	db 207 ; base exp

	INCBIN "gfx/pokemon/front/kingdra.pic", 0, 1 ; sprite dimensions
	dw KingdraPicFront, KingdraPicBack

	db TACKLE, SAND_ATTACK, QUICK_ATTACK, WATER_GUN ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm FOCUS_ENERGY, TOXIC,        SLUDGE_BOMB,  BODY_SLAM,    DOUBLE_EDGE,  \
	     WATER_PULSE,  CHILLINWATER, ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   \
	     DRAGONBREATH, MIMIC,        DOUBLE_TEAM,  FLAMETHROWER, FIRE_BLAST,   \
	     REST,         SUBSTITUTE,   SURF,         STRENGTH
	; end

	db BANK(KingdraPicFront)
	assert BANK(KingdraPicFront) == BANK(KingdraPicBack)
