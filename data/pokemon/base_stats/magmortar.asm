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
	tmhm DYNAMICPUNCH, TOXIC,        ROCK_CLIMB,   DOUBLE_EDGE,  HYPER_BEAM,   \
	     MUD_SLAP,     COUNTER,      SEISMIC_TOSS, WILL_O_WISP,  SOLARBEAM,    \
	     THUNDERBOLT,  THUNDER,      EARTHQUAKE,   PSYCHIC_M,    MIMIC,        \
	     DOUBLE_TEAM,  ROCK_TOMB,    METRONOME,    FLAMETHROWER, FIRE_BLAST,   \
	     IRON_TAIL,    REST,         ROCK_SLIDE,   SUBSTITUTE,   STRENGTH,     \
	     FLASH
	; end

	db BANK(MagmortarPicFront)
	assert BANK(MagmortarPicFront) == BANK(MagmortarPicBack)
