	db DEX_MAGMAR ; pokedex id

	db  65,  95,  57,  93,  85 ; 395
	;   hp  atk  def  spd  spc   BST

	db FIRE, FIRE ; type
	db 45 ; catch rate
	db 167 ; base exp

	INCBIN "gfx/pokemon/front/magmar.pic", 0, 1 ; sprite dimensions
	dw MagmarPicFront, MagmarPicBack

	db EMBER, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm DYNAMICPUNCH, TOXIC,        ROCK_CLIMB,   DOUBLE_EDGE,  HYPER_BEAM,   \
	     MUD_SLAP,     COUNTER,      SEISMIC_TOSS, WILL_O_WISP,  PSYCHIC_M,    \
	     MIMIC,        DOUBLE_TEAM,  METRONOME,    FLAMETHROWER, FIRE_BLAST,   \
	     IRON_TAIL,    REST,         ROCK_SLIDE,   SUBSTITUTE,   STRENGTH,     \
	     FLASH
	; end

	db BANK(MagmarPicFront)
	assert BANK(MagmarPicFront) == BANK(MagmarPicBack)
