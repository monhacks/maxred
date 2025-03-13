	db DEX_OMANYTE ; pokedex id

	db  35,  40, 100,  35,  90
	;   hp  atk  def  spd  spc

	db ROCK, WATER ; type
	db 45 ; catch rate
	db 120 ; base exp

	INCBIN "gfx/pokemon/front/omanyte.pic", 0, 1 ; sprite dimensions
	dw OmanytePicFront, OmanytePicBack

	db WATER_GUN, WITHDRAW, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        SLUDGE_BOMB,  BODY_SLAM,    ROCK_CLIMB,   DOUBLE_EDGE,  \
	     WATER_PULSE,  ICE_BEAM,     BLIZZARD,     MUD_SLAP,     SEISMIC_TOSS, \
	     MIMIC,        DOUBLE_TEAM,  REFLECT,      ROCK_TOMB,    REST,         \
	     ROCK_SLIDE,   SUBSTITUTE,   SURF
	; end

	db BANK(OmanytePicFront)
	assert BANK(OmanytePicFront) == BANK(OmanytePicBack)
