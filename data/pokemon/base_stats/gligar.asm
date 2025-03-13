	db DEX_GLIGAR ; pokedex id

	db  65,  75, 105,  85,  35 ; 365
	;   hp  atk  def  spd  spc   BST

	db GROUND, FLYING ; type
	db 60 ; catch rate
	db 108 ; base exp

	INCBIN "gfx/pokemon/front/gligar.pic", 0, 1 ; sprite dimensions
	dw GligarPicFront, GligarPicBack

	db TACKLE, SAND_ATTACK, QUICK_ATTACK, WATER_GUN ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm AERIAL_ACE,   SWORDS_DANCE, TOXIC,        SLUDGE_BOMB,  DOUBLE_EDGE,  \
	     COUNTER,      GIGA_DRAIN,   EARTHQUAKE,   FISSURE,      DIG,          \
	     MIMIC,        DOUBLE_TEAM,  ROCK_TOMB,    X_SCISSOR,    IRON_TAIL,    \
	     DARK_PULSE,   REST,         ROCK_SLIDE,   SUBSTITUTE,   CUT,          \
	     STRENGTH
	; end

	db BANK(GligarPicFront)
	assert BANK(GligarPicFront) == BANK(GligarPicBack)
