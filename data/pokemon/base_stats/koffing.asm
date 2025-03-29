	db DEX_KOFFING ; pokedex id

	db  40,  65,  95,  35,  60
	;   hp  atk  def  spd  spc

	db POISON, POISON ; type
	db 190 ; catch rate
	db 114 ; base exp

	INCBIN "gfx/pokemon/front/koffing.pic", 0, 1 ; sprite dimensions
	dw KoffingPicFront, KoffingPicBack

	db TACKLE, SMOG, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        SLUDGE_BOMB,  DOUBLE_EDGE,  CHARGE_BEAM,  WILL_O_WISP,  \
	     THUNDERBOLT,  THUNDER,      MIMIC,        DOUBLE_TEAM,  SELFDESTRUCT, \
	     FLAMETHROWER, FIRE_BLAST,   DARK_PULSE,   SHADOW_BALL,  REST,         \
	     EXPLOSION,    SUBSTITUTE,   FLASH
	; end

	db BANK(KoffingPicFront)
	assert BANK(KoffingPicFront) == BANK(KoffingPicBack)
