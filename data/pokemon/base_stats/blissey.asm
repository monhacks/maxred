	db DEX_BLISSEY ; pokedex id

	db 255,  10,  10,  55, 135 ; 465
	;   hp  atk  def  spd  spc   BST

	db NORMAL, NORMAL ; type
	db 40 ; catch rate
	db 255 ; base exp

	INCBIN "gfx/pokemon/front/blissey.pic", 0, 1 ; sprite dimensions
	dw BlisseyPicFront, BlisseyPicBack

	db TACKLE, SAND_ATTACK, QUICK_ATTACK, WATER_GUN ; level 1 learnset
	db GROWTH_FAST ; growth rate

	; tm/hm learnset
	tmhm DYNAMICPUNCH, TOXIC,        BODY_SLAM,    ROCK_CLIMB,   DOUBLE_EDGE,  \
	     WATER_PULSE,  CHILLINWATER, ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   \
	     MUD_SLAP,     CHARGE_BEAM,  COUNTER,      SEISMIC_TOSS, SOLARBEAM,    \
	     THUNDERBOLT,  THUNDER,      EARTHQUAKE,   PSYCHIC_M,    LIGHT_SCREEN, \
	     MIMIC,        DOUBLE_TEAM,  REFLECT,      ROCK_TOMB,    METRONOME,    \
	     FLAMETHROWER, FIRE_BLAST,   SHADOW_BALL,  REST,         THUNDER_WAVE, \
	     CALM_MIND,    ROCK_SLIDE,   TRI_ATTACK,   SUBSTITUTE,   MOONBLAST,    \
	     STRENGTH,     FLASH
	; end

	db BANK(BlisseyPicFront)
	assert BANK(BlisseyPicFront) == BANK(BlisseyPicBack)
