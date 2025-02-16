	db DEX_MAGMORTAR ; pokedex id

	db  75,  95,  67,  83, 125 ; 445
	;   hp  atk  def  spd  spc   BST

	db FIRE, FIRE ; type
	db 30 ; catch rate
	db 199 ; base exp

	INCBIN "gfx/pokemon/front/magmortar.pic", 0, 1 ; sprite dimensions
	dw MagmortarPicFront, MagmortarPicBack

	db EMBER, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    TOXIC,        BODY_SLAM,    TAKE_DOWN,    \
	     DOUBLE_EDGE,  HYPER_BEAM,   SUBMISSION,   COUNTER,      SEISMIC_TOSS, \
	     RAGE,         PSYCHIC_M,    TELEPORT,     MIMIC,        DOUBLE_TEAM,  \
	     BIDE,         METRONOME,    FIRE_BLAST,   SKULL_BASH,   REST,         \
	     PSYWAVE,      SUBSTITUTE,   STRENGTH
	; end

	db BANK(MagmortarPicFront)
	assert BANK(MagmortarPicFront) == BANK(MagmortarPicBack)
