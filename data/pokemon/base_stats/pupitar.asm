	db DEX_PUPITAR ; pokedex id

	db  70,  84,  70,  51,  65 ; 340
	;   hp  atk  def  spd  spc   BST

	db ROCK, GROUND ; type
	db 45 ; catch rate
	db 144 ; base exp

	INCBIN "gfx/pokemon/front/pupitar.pic", 0, 1 ; sprite dimensions
	dw PupitarPicFront, PupitarPicBack

	db TACKLE, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  \
	     SUBMISSION,   COUNTER,      SEISMIC_TOSS, RAGE,         EARTHQUAKE,   \
	     FISSURE,      DIG,          MIMIC,        DOUBLE_TEAM,  BIDE,         \
	     METRONOME,    SELFDESTRUCT, FIRE_BLAST,   REST,         EXPLOSION,    \
	     ROCK_SLIDE,   SUBSTITUTE,   STRENGTH
	; end

	db BANK(PupitarPicFront)
	assert BANK(PupitarPicFront) == BANK(PupitarPicBack)
