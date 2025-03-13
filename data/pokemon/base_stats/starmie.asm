	db DEX_STARMIE ; pokedex id

	db  60,  75,  85, 115, 100
	;   hp  atk  def  spd  spc

	db WATER, PSYCHIC_TYPE ; type
	db 60 ; catch rate
	db 207 ; base exp

	INCBIN "gfx/pokemon/front/starmie.pic", 0, 1 ; sprite dimensions
	dw StarmiePicFront, StarmiePicBack

	db TACKLE, WATER_GUN, HARDEN, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        DOUBLE_EDGE,  WATER_PULSE,  ICE_BEAM,     BLIZZARD,     \
	     HYPER_BEAM,   CHARGE_BEAM,  SOLARBEAM,    THUNDERBOLT,  THUNDER,      \
	     PSYCHIC_M,    LIGHT_SCREEN, MIMIC,        DOUBLE_TEAM,  REFLECT,      \
	     FLAMETHROWER, FIRE_BLAST,   REST,         THUNDER_WAVE, TRI_ATTACK,   \
	     SUBSTITUTE,   SURF,         FLASH
	; end

	db BANK(StarmiePicFront)
	assert BANK(StarmiePicFront) == BANK(StarmiePicBack)
