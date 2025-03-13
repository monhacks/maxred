	db DEX_KRABBY ; pokedex id

	db  30, 105,  90,  50,  25
	;   hp  atk  def  spd  spc

	db WATER, WATER ; type
	db 225 ; catch rate
	db 115 ; base exp

	INCBIN "gfx/pokemon/front/krabby.pic", 0, 1 ; sprite dimensions
	dw KrabbyPicFront, KrabbyPicBack

	db BUBBLE, LEER, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm SWORDS_DANCE, FOCUS_ENERGY, TOXIC,        BODY_SLAM,    DOUBLE_EDGE,  \
	     WATER_PULSE,  ICE_BEAM,     BLIZZARD,     MUD_SLAP,     SEISMIC_TOSS, \
	     DIG,          MIMIC,        DOUBLE_TEAM,  ROCK_TOMB,    X_SCISSOR,    \
	     REST,         ROCK_SLIDE,   SUBSTITUTE,   CUT,          SURF,         \
	     STRENGTH
	; end

	db BANK(KrabbyPicFront)
	assert BANK(KrabbyPicFront) == BANK(KrabbyPicBack)
