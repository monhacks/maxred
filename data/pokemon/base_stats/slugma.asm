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
	tmhm TOXIC,        BODY_SLAM,    DOUBLE_EDGE,  MUD_SLAP,     WILL_O_WISP,  \
	     LIGHT_SCREEN, MIMIC,        DOUBLE_TEAM,  REFLECT,      ROCK_TOMB,    \
	     SELFDESTRUCT, FLAMETHROWER, FIRE_BLAST,   REST,         ROCK_SLIDE,   \
	     SUBSTITUTE,   FLASH
	; end

	db BANK(SlugmaPicFront)
	assert BANK(SlugmaPicFront) == BANK(SlugmaPicBack)
