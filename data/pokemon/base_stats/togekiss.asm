	db DEX_TOGEKISS ; pokedex id

	db  85,  50,  95,  80, 115 ; 425
	;   hp  atk  def  spd  spc   BST

	db FAIRY, FLYING ; type
	db 30 ; catch rate
	db 220 ; base exp

	INCBIN "gfx/pokemon/front/togekiss.pic", 0, 1 ; sprite dimensions
	dw TogekissPicFront, TogekissPicBack

	db TACKLE, SAND_ATTACK, QUICK_ATTACK, WATER_GUN ; level 1 learnset
	db GROWTH_FAST ; growth rate

	; tm/hm learnset
	tmhm AERIAL_ACE,   TOXIC,        BODY_SLAM,    DOUBLE_EDGE,  WATER_PULSE,  \
	     HYPER_BEAM,   MUD_SLAP,     COUNTER,      SEISMIC_TOSS, SOLARBEAM,    \
	     PSYCHIC_M,    LIGHT_SCREEN, MIMIC,        DOUBLE_TEAM,  REFLECT,      \
	     METRONOME,    FLAMETHROWER, FIRE_BLAST,   SHADOW_BALL,  REST,         \
	     THUNDER_WAVE, TRI_ATTACK,   SUBSTITUTE,   MOONBLAST,    FLY,          \
	     FLASH
	; end

	db BANK(TogekissPicFront)
	assert BANK(TogekissPicFront) == BANK(TogekissPicBack)
