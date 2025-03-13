	db DEX_ELECTIVIRE ; pokedex id

	db  75, 123,  67,  95,  85 ; 445
	;   hp  atk  def  spd  spc   BST

	db ELECTRIC, ELECTRIC ; type
	db 30 ; catch rate
	db 199 ; base exp

	INCBIN "gfx/pokemon/front/electivire.pic", 0, 1 ; sprite dimensions
	dw ElectivirePicFront, ElectivirePicBack

	db QUICK_ATTACK, LEER, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm DYNAMICPUNCH, BULK_UP,      TOXIC,        BODY_SLAM,    ROCK_CLIMB,   \
	     DOUBLE_EDGE,  HYPER_BEAM,   MUD_SLAP,     CHARGE_BEAM,  COUNTER,      \
	     SEISMIC_TOSS, THUNDERBOLT,  THUNDER,      EARTHQUAKE,   DIG,          \
	     PSYCHIC_M,    LIGHT_SCREEN, MIMIC,        DOUBLE_TEAM,  REFLECT,      \
	     ROCK_TOMB,    METRONOME,    FLAMETHROWER, FIRE_BLAST,   IRON_TAIL,    \
	     REST,         THUNDER_WAVE, ROCK_SLIDE,   SUBSTITUTE,   STRENGTH,     \
	     FLASH
	; end

	db BANK(ElectivirePicFront)
	assert BANK(ElectivirePicFront) == BANK(ElectivirePicBack)
