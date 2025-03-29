	db DEX_CHARMANDER ; pokedex id

	db  39,  52,  43,  65,  50
	;   hp  atk  def  spd  spc

	db FIRE, FIRE ; type
	db 45 ; catch rate
	db 65 ; base exp

	INCBIN "gfx/pokemon/front/charmander.pic", 0, 1 ; sprite dimensions
	dw CharmanderPicFront, CharmanderPicBack

	db SCRATCH, GROWL, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm DYNAMICPUNCH, SWORDS_DANCE, FOCUS_ENERGY, TOXIC,        BODY_SLAM,    \
	     DOUBLE_EDGE,  MUD_SLAP,     COUNTER,      SEISMIC_TOSS, WILL_O_WISP,  \
	     DRAGONBREATH, DIG,          MIMIC,        DOUBLE_TEAM,  ROCK_TOMB,    \
	     FLAMETHROWER, FIRE_BLAST,   IRON_TAIL,    REST,         ROCK_SLIDE,   \
	     SUBSTITUTE,   CUT,          STRENGTH
	; end

	db BANK(CharmanderPicFront)
	assert BANK(CharmanderPicFront) == BANK(CharmanderPicBack)
