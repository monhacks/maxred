	db DEX_TYRANITAR ; pokedex id

	db 100, 134, 110,  61,  95 ; 500
	;   hp  atk  def  spd  spc   BST

	db ROCK, DARK ; type
	db 45 ; catch rate
	db 218 ; base exp

	INCBIN "gfx/pokemon/front/tyranitar.pic", 0, 1 ; sprite dimensions
	dw TyranitarPicFront, TyranitarPicBack

	db TACKLE, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  \
	     SUBMISSION,   COUNTER,      SEISMIC_TOSS, RAGE,         EARTHQUAKE,   \
	     FISSURE,      DIG,          MIMIC,        DOUBLE_TEAM,  BIDE,         \
	     METRONOME,    SELFDESTRUCT, FIRE_BLAST,   REST,         EXPLOSION,    \
	     ROCK_SLIDE,   SUBSTITUTE,   STRENGTH
	; end

	db BANK(TyranitarPicFront)
	assert BANK(TyranitarPicFront) == BANK(TyranitarPicBack)
