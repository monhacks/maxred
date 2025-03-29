	db DEX_CHARIZARD ; pokedex id

	db  78,  84,  78, 100,  85
	;   hp  atk  def  spd  spc

	db FIRE, FLYING ; type
	db 45 ; catch rate
	db 209 ; base exp

	INCBIN "gfx/pokemon/front/charizard.pic", 0, 1 ; sprite dimensions
	dw CharizardPicFront, CharizardPicBack

	db SCRATCH, GROWL, EMBER, LEER ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm DYNAMICPUNCH, AERIAL_ACE,   SWORDS_DANCE, FOCUS_ENERGY, TOXIC,        \
	     BODY_SLAM,    DOUBLE_EDGE,  HYPER_BEAM,   MUD_SLAP,     COUNTER,      \
	     SEISMIC_TOSS, WILL_O_WISP,  DRAGONBREATH, EARTHQUAKE,   FISSURE,      \
	     DIG,          MIMIC,        DOUBLE_TEAM,  ROCK_TOMB,    FLAMETHROWER, \
	     FIRE_BLAST,   IRON_TAIL,    REST,         ROCK_SLIDE,   SUBSTITUTE,   \
	     CUT,          FLY,          STRENGTH
	; end

	db BANK(CharizardPicFront)
	assert BANK(CharizardPicFront) == BANK(CharizardPicBack)
