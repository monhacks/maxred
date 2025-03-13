	db DEX_GLISCOR ; pokedex id

	db  75,  95, 125,  95,  45 ; 435
	;   hp  atk  def  spd  spc   BST

	db GROUND, FLYING ; type
	db 30 ; catch rate
	db 192 ; base exp

	INCBIN "gfx/pokemon/front/gliscor.pic", 0, 1 ; sprite dimensions
	dw GliscorPicFront, GliscorPicBack

	db TACKLE, SAND_ATTACK, QUICK_ATTACK, WATER_GUN ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm AERIAL_ACE,   SWORDS_DANCE, TOXIC,        SLUDGE_BOMB,  DOUBLE_EDGE,  \
	     HYPER_BEAM,   COUNTER,      GIGA_DRAIN,   EARTHQUAKE,   FISSURE,      \
	     DIG,          MIMIC,        DOUBLE_TEAM,  ROCK_TOMB,    X_SCISSOR,    \
	     IRON_TAIL,    DARK_PULSE,   REST,         ROCK_SLIDE,   SUBSTITUTE,   \
	     CUT,          STRENGTH
	; end

	db BANK(GliscorPicFront)
	assert BANK(GliscorPicFront) == BANK(GliscorPicBack)
