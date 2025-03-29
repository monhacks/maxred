	db DEX_MAGCARGO ; pokedex id

	db  50,  50, 120,  30,  80 ; 310
	;   hp  atk  def  spd  spc   BST

	db FIRE, ROCK ; type
	db 75 ; catch rate
	db 154 ; base exp

	INCBIN "gfx/pokemon/front/magcargo.pic", 0, 1 ; sprite dimensions
	dw MagcargoPicFront, MagcargoPicBack

	db EMBER, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    DOUBLE_EDGE,  HYPER_BEAM,   MUD_SLAP,     \
	     WILL_O_WISP,  SOLARBEAM,    EARTHQUAKE,   FISSURE,      LIGHT_SCREEN, \
	     MIMIC,        DOUBLE_TEAM,  REFLECT,      ROCK_TOMB,    SELFDESTRUCT, \
	     FLAMETHROWER, FIRE_BLAST,   REST,         ROCK_SLIDE,   SUBSTITUTE,   \
	     STRENGTH,     FLASH
	; end

	db BANK(MagcargoPicFront)
	assert BANK(MagcargoPicFront) == BANK(MagcargoPicBack)
