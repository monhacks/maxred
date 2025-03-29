	db DEX_TOGETIC ; pokedex id

	db  55,  40,  85,  40, 105 ; 325
	;   hp  atk  def  spd  spc   BST

	db FAIRY, FLYING ; type
	db 75 ; catch rate
	db 114 ; base exp

	INCBIN "gfx/pokemon/front/togetic.pic", 0, 1 ; sprite dimensions
	dw TogeticPicFront, TogeticPicBack

	db TACKLE, SAND_ATTACK, QUICK_ATTACK, WATER_GUN ; level 1 learnset
	db GROWTH_FAST ; growth rate

	; tm/hm learnset
	tmhm AERIAL_ACE,   TOXIC,        BODY_SLAM,    DOUBLE_EDGE,  WATER_PULSE,  \
	     MUD_SLAP,     COUNTER,      SEISMIC_TOSS, SOLARBEAM,    PSYCHIC_M,    \
	     LIGHT_SCREEN, MIMIC,        DOUBLE_TEAM,  REFLECT,      METRONOME,    \
	     FLAMETHROWER, FIRE_BLAST,   SHADOW_BALL,  REST,         THUNDER_WAVE, \
	     TRI_ATTACK,   SUBSTITUTE,   MOONBLAST,    FLY,          FLASH
	; end

	db BANK(TogeticPicFront)
	assert BANK(TogeticPicFront) == BANK(TogeticPicBack)
