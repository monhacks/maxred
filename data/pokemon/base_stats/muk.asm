	db DEX_MUK ; pokedex id

	db 105, 105,  75,  50,  65
	;   hp  atk  def  spd  spc

	db POISON, POISON ; type
	db 75 ; catch rate
	db 157 ; base exp

	INCBIN "gfx/pokemon/front/muk.pic", 0, 1 ; sprite dimensions
	dw MukPicFront, MukPicBack

	db POUND, DISABLE, POISON_GAS, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm DYNAMICPUNCH, TOXIC,        SLUDGE_BOMB,  BODY_SLAM,    HYPER_BEAM,   \
	     MUD_SLAP,     GIGA_DRAIN,   THUNDERBOLT,  THUNDER,      DIG,          \
	     MIMIC,        DOUBLE_TEAM,  ROCK_TOMB,    SELFDESTRUCT, FLAMETHROWER, \
	     FIRE_BLAST,   DARK_PULSE,   SHADOW_BALL,  REST,         EXPLOSION,    \
	     SUBSTITUTE,   STRENGTH
	; end

	db BANK(MukPicFront)
	assert BANK(MukPicFront) == BANK(MukPicBack)
