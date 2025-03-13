	db DEX_AMBIPOM ; pokedex id

	db  75, 100,  66, 115,  60 ; 426
	;   hp  atk  def  spd  spc   BST

	db NORMAL, NORMAL ; type
	db 45 ; catch rate
	db 186 ; base exp

	INCBIN "gfx/pokemon/front/ambipom.pic", 0, 1 ; sprite dimensions
	dw AmbipomPicFront, AmbipomPicBack

	db TACKLE, SAND_ATTACK, QUICK_ATTACK, WATER_GUN ; level 1 learnset
	db GROWTH_FAST ; growth rate

	; tm/hm learnset
	tmhm DYNAMICPUNCH, AERIAL_ACE,   TOXIC,        BODY_SLAM,    DOUBLE_EDGE,  \
	     HYPER_BEAM,   WATER_PULSE,  MUD_SLAP,     COUNTER,      SEISMIC_TOSS, \
	     SOLARBEAM,    THUNDERBOLT,  THUNDER,      DIG,          MIMIC,        \
	     DOUBLE_TEAM,  METRONOME,    IRON_TAIL,    REST,         THUNDER_WAVE, \
	     SUBSTITUTE,   CUT,          STRENGTH
	; end

	db BANK(AmbipomPicFront)
	assert BANK(AmbipomPicFront) == BANK(AmbipomPicBack)
