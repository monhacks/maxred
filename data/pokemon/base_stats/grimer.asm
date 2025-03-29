	db DEX_GRIMER ; pokedex id

	db  80,  80,  50,  25,  40
	;   hp  atk  def  spd  spc

	db POISON, POISON ; type
	db 190 ; catch rate
	db 90 ; base exp

	INCBIN "gfx/pokemon/front/grimer.pic", 0, 1 ; sprite dimensions
	dw GrimerPicFront, GrimerPicBack

	db POUND, DISABLE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm DYNAMICPUNCH, TOXIC,        SLUDGE_BOMB,  BODY_SLAM,    MUD_SLAP,     \
	     GIGA_DRAIN,   THUNDERBOLT,  THUNDER,      DIG,          MIMIC,        \
	     DOUBLE_TEAM,  ROCK_TOMB,    SELFDESTRUCT, FLAMETHROWER, FIRE_BLAST,   \
	     DARK_PULSE,   SHADOW_BALL,  REST,         EXPLOSION,    SUBSTITUTE,   \
	     STRENGTH
	; end

	db BANK(GrimerPicFront)
	assert BANK(GrimerPicFront) == BANK(GrimerPicBack)
