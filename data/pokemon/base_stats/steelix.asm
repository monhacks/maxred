	db DEX_STEELIX ; pokedex id

	db  75,  85, 200,  30,  55 ; 445
	;   hp  atk  def  spd  spc   BST

	db STEEL, GROUND ; type
	db 25 ; catch rate
	db 196 ; base exp

	INCBIN "gfx/pokemon/front/steelix.pic", 0, 1 ; sprite dimensions
	dw SteelixPicFront, SteelixPicBack

	db TACKLE, SAND_ATTACK, QUICK_ATTACK, WATER_GUN ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    ROCK_CLIMB,   DOUBLE_EDGE,  HYPER_BEAM,   \
	     MUD_SLAP,     DRAGONBREATH, EARTHQUAKE,   FISSURE,      DIG,          \
	     MIMIC,        DOUBLE_TEAM,  ROCK_TOMB,    SELFDESTRUCT, IRON_TAIL,    \
	     DARK_PULSE,   REST,         EXPLOSION,    ROCK_SLIDE,   SUBSTITUTE,   \
	     CUT,          STRENGTH
	; end

	db BANK(SteelixPicFront)
	assert BANK(SteelixPicFront) == BANK(SteelixPicBack)
