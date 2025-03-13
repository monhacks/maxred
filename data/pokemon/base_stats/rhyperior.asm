	db DEX_RHYPERIOR ; pokedex id

	db 115, 140, 130,  40,  55 ; 475
	;   hp  atk  def  spd  spc   BST

	db GROUND, ROCK ; type
	db 30 ; catch rate
	db 217 ; base exp

	INCBIN "gfx/pokemon/front/rhyperior.pic", 0, 1 ; sprite dimensions
	dw RhyperiorPicFront, RhyperiorPicBack

	db HORN_ATTACK, STOMP, TAIL_WHIP, FURY_ATTACK ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm DYNAMICPUNCH, SWORDS_DANCE, TOXIC,        BODY_SLAM,    ROCK_CLIMB,   \
	     DOUBLE_EDGE,  ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   MUD_SLAP,     \
	     COUNTER,      SEISMIC_TOSS, THUNDERBOLT,  THUNDER,      EARTHQUAKE,   \
	     FISSURE,      DIG,          MIMIC,        DOUBLE_TEAM,  ROCK_TOMB,    \
	     METRONOME,    FLAMETHROWER, FIRE_BLAST,   IRON_TAIL,    REST,         \
	     ROCK_SLIDE,   SUBSTITUTE,   CUT,          SURF,         STRENGTH
	; end

	db BANK(RhyperiorPicFront)
	assert BANK(RhyperiorPicFront) == BANK(RhyperiorPicBack)
