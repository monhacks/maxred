	db DEX_ELECTABUZZ ; pokedex id

	db  65,  83,  57, 105,  85 ; 395
	;   hp  atk  def  spd  spc   BST

	db ELECTRIC, ELECTRIC ; type
	db 45 ; catch rate
	db 156 ; base exp

	INCBIN "gfx/pokemon/front/electabuzz.pic", 0, 1 ; sprite dimensions
	dw ElectabuzzPicFront, ElectabuzzPicBack

	db QUICK_ATTACK, LEER, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm DYNAMICPUNCH, BULK_UP,      TOXIC,        BODY_SLAM,    ROCK_CLIMB,   \
	     DOUBLE_EDGE,  HYPER_BEAM,   MUD_SLAP,     CHARGE_BEAM,  COUNTER,      \
	     SEISMIC_TOSS, THUNDERBOLT,  THUNDER,      PSYCHIC_M,    LIGHT_SCREEN, \
	     MIMIC,        DOUBLE_TEAM,  REFLECT,      METRONOME,    IRON_TAIL,    \
	     REST,         THUNDER_WAVE, ROCK_SLIDE,   SUBSTITUTE,   STRENGTH,     \
	     FLASH
	; end

	db BANK(ElectabuzzPicFront)
	assert BANK(ElectabuzzPicFront) == BANK(ElectabuzzPicBack)
