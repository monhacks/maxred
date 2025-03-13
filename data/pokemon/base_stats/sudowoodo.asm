	db DEX_SUDOWOODO ; pokedex id

	db  70, 100, 115,  30,  30 ; 345
	;   hp  atk  def  spd  spc   BST

	db ROCK, ROCK ; type
	db 65 ; catch rate
	db 135 ; base exp

	INCBIN "gfx/pokemon/front/sudowoodo.pic", 0, 1 ; sprite dimensions
	dw SudowoodoPicFront, SudowoodoPicBack

	db TACKLE, SAND_ATTACK, QUICK_ATTACK, WATER_GUN ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm DYNAMICPUNCH, TOXIC,        BODY_SLAM,    DOUBLE_EDGE,  HYPER_BEAM,   \
	     MUD_SLAP,     COUNTER,      SEISMIC_TOSS, EARTHQUAKE,   FISSURE,      \
	     DIG,          MIMIC,        DOUBLE_TEAM,  ROCK_TOMB,    METRONOME,    \
	     SELFDESTRUCT, REST,         CALM_MIND,    EXPLOSION,    ROCK_SLIDE,   \
	     SUBSTITUTE,   STRENGTH
	; end

	db BANK(SudowoodoPicFront)
	assert BANK(SudowoodoPicFront) == BANK(SudowoodoPicBack)
