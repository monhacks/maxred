	db DEX_PORYGON_Z ; pokedex id

	db  85,  80,  70,  90, 135 ; 455
	;   hp  atk  def  spd  spc   BST

	db NORMAL, NORMAL ; type
	db 30 ; catch rate
	db 185 ; base exp

	INCBIN "gfx/pokemon/front/porygonz.pic", 0, 1 ; sprite dimensions
	dw PorygonzPicFront, PorygonzPicBack

	db TACKLE, SAND_ATTACK, QUICK_ATTACK, WATER_GUN ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm AERIAL_ACE,   FOCUS_ENERGY, TOXIC,        DOUBLE_EDGE,  ICE_BEAM,     \
	     BLIZZARD,     HYPER_BEAM,   CHARGE_BEAM,  SOLARBEAM,    THUNDERBOLT,  \
	     THUNDER,      PSYCHIC_M,    MIMIC,        DOUBLE_TEAM,  REFLECT,      \
	     FLAMETHROWER, FIRE_BLAST,   IRON_TAIL,    DARK_PULSE,   SHADOW_BALL,  \
	     REST,         THUNDER_WAVE, TRI_ATTACK,   SUBSTITUTE,   FLASH
	; end

	db BANK(PorygonzPicFront)
	assert BANK(PorygonzPicFront) == BANK(PorygonzPicBack)
