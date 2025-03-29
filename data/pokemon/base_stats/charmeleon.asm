	db DEX_CHARMELEON ; pokedex id

	db  58,  64,  58,  80,  65
	;   hp  atk  def  spd  spc

	db FIRE, FIRE ; type
	db 45 ; catch rate
	db 142 ; base exp

	INCBIN "gfx/pokemon/front/charmeleon.pic", 0, 1 ; sprite dimensions
	dw CharmeleonPicFront, CharmeleonPicBack

	db SCRATCH, GROWL, EMBER, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm DYNAMICPUNCH, SWORDS_DANCE, FOCUS_ENERGY, TOXIC,        BODY_SLAM,    \
	     DOUBLE_EDGE,  MUD_SLAP,     COUNTER,      SEISMIC_TOSS, WILL_O_WISP,  \
	     DRAGONBREATH, DIG,          MIMIC,        DOUBLE_TEAM,  ROCK_TOMB,    \
	     FLAMETHROWER, FIRE_BLAST,   IRON_TAIL,    REST,         ROCK_SLIDE,   \
	     SUBSTITUTE,   CUT,          STRENGTH
	; end

	db BANK(CharmeleonPicFront)
	assert BANK(CharmeleonPicFront) == BANK(CharmeleonPicBack)
