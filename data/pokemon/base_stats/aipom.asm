	db DEX_AIPOM ; pokedex id

	db  55,  70,  55,  85,  40 ; 305
	;   hp  atk  def  spd  spc   BST

	db NORMAL, NORMAL ; type
	db 45 ; catch rate
	db 94 ; base exp

	INCBIN "gfx/pokemon/front/aipom.pic", 0, 1 ; sprite dimensions
	dw AipomPicFront, AipomPicBack

	db TACKLE, SAND_ATTACK, QUICK_ATTACK, WATER_GUN ; level 1 learnset
	db GROWTH_FAST ; growth rate

	; tm/hm learnset
	tmhm DYNAMICPUNCH, AERIAL_ACE,   TOXIC,        BODY_SLAM,    DOUBLE_EDGE,  \
	     WATER_PULSE,  MUD_SLAP,     COUNTER,      SEISMIC_TOSS, SOLARBEAM,    \
	     THUNDERBOLT,  THUNDER,      DIG,          MIMIC,        DOUBLE_TEAM,  \
	     METRONOME,    IRON_TAIL,    REST,         THUNDER_WAVE, SUBSTITUTE,   \
	     CUT,          STRENGTH
	; end

	db BANK(AipomPicFront)
	assert BANK(AipomPicFront) == BANK(AipomPicBack)
