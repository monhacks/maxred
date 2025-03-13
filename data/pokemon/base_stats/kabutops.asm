	db DEX_KABUTOPS ; pokedex id

	db  60, 115, 105,  80,  70
	;   hp  atk  def  spd  spc

	db ROCK, WATER ; type
	db 45 ; catch rate
	db 201 ; base exp

	INCBIN "gfx/pokemon/front/kabutops.pic", 0, 1 ; sprite dimensions
	dw KabutopsPicFront, KabutopsPicBack

	db SCRATCH, HARDEN, ABSORB, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm AERIAL_ACE,   SWORDS_DANCE, TOXIC,        BODY_SLAM,    ROCK_CLIMB,   \
	     DOUBLE_EDGE,  WATER_PULSE,  ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   \
	     MUD_SLAP,     SEISMIC_TOSS, GIGA_DRAIN,   DIG,          MIMIC,        \
	     DOUBLE_TEAM,  REFLECT,      ROCK_TOMB,    X_SCISSOR,    REST,         \
	     ROCK_SLIDE,   SUBSTITUTE,   CUT,          SURF
	; end

	db BANK(KabutopsPicFront)
	assert BANK(KabutopsPicFront) == BANK(KabutopsPicBack)
