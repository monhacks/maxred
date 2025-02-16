	db DEX_LARVITAR ; pokedex id

	db  50,  64,  50,  41,  45 ; 250
	;   hp  atk  def  spd  spc   BST

	db ROCK, GROUND ; type
	db 45 ; catch rate
	db 67 ; base exp

	INCBIN "gfx/pokemon/front/larvitar.pic", 0, 1 ; sprite dimensions
	dw LarvitarPicFront, LarvitarPicBack

	db TACKLE, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  \
	     SUBMISSION,   COUNTER,      SEISMIC_TOSS, RAGE,         EARTHQUAKE,   \
	     FISSURE,      DIG,          MIMIC,        DOUBLE_TEAM,  BIDE,         \
	     METRONOME,    SELFDESTRUCT, FIRE_BLAST,   REST,         EXPLOSION,    \
	     ROCK_SLIDE,   SUBSTITUTE,   STRENGTH
	; end

	db BANK(LarvitarPicFront)
	assert BANK(LarvitarPicFront) == BANK(LarvitarPicBack)
