	db DEX_SLUGMA ; pokedex id

	db  40,  40,  40,  20,  70 ; 190
	;   hp  atk  def  spd  spc   BST

	db FIRE, FIRE ; type
	db 190 ; catch rate
	db 78 ; base exp

	INCBIN "gfx/pokemon/front/slugma.pic", 0, 1 ; sprite dimensions
	dw SlugmaPicFront, SlugmaPicBack

	db EMBER, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    TOXIC,        BODY_SLAM,    TAKE_DOWN,    \
	     DOUBLE_EDGE,  HYPER_BEAM,   SUBMISSION,   COUNTER,      SEISMIC_TOSS, \
	     RAGE,         PSYCHIC_M,    TELEPORT,     MIMIC,        DOUBLE_TEAM,  \
	     BIDE,         METRONOME,    FIRE_BLAST,   SKULL_BASH,   REST,         \
	     PSYWAVE,      SUBSTITUTE,   STRENGTH
	; end

	db BANK(SlugmaPicFront)
	assert BANK(SlugmaPicFront) == BANK(SlugmaPicBack)
