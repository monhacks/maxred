	db DEX_KABUTO ; pokedex id

	db  30,  80,  90,  55,  45
	;   hp  atk  def  spd  spc

	db ROCK, WATER ; type
	db 45 ; catch rate
	db 119 ; base exp

	INCBIN "gfx/pokemon/front/kabuto.pic", 0, 1 ; sprite dimensions
	dw KabutoPicFront, KabutoPicBack

	db SCRATCH, HARDEN, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    ROCK_CLIMB,   DOUBLE_EDGE,  WATER_PULSE,  \
	     ICE_BEAM,     BLIZZARD,     MUD_SLAP,     SEISMIC_TOSS, GIGA_DRAIN,   \
	     DIG,          MIMIC,        DOUBLE_TEAM,  REFLECT,      ROCK_TOMB,    \
	     REST,         ROCK_SLIDE,   SUBSTITUTE,   CUT,          SURF
	; end

	db BANK(KabutoPicFront)
	assert BANK(KabutoPicFront) == BANK(KabutoPicBack)
