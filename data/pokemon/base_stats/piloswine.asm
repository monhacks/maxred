	db DEX_PILOSWINE ; pokedex id

	db 100, 100,  80,  50,  60 ; 390
	;   hp  atk  def  spd  spc   BST

	db ICE, GROUND ; type
	db 75 ; catch rate
	db 160 ; base exp

	INCBIN "gfx/pokemon/front/piloswine.pic", 0, 1 ; sprite dimensions
	dw PiloswinePicFront, PiloswinePicBack

	db TACKLE, SAND_ATTACK, QUICK_ATTACK, WATER_GUN ; level 1 learnset
	db GROWTH_SLOW; growth rate

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    ROCK_CLIMB,   DOUBLE_EDGE,  ICE_BEAM,     \
	     BLIZZARD,     MUD_SLAP,     EARTHQUAKE,   FISSURE,      DIG,          \
	     LIGHT_SCREEN, MIMIC,        DOUBLE_TEAM,  REFLECT,      ROCK_TOMB,    \
	     REST,         ROCK_SLIDE,   SUBSTITUTE,   STRENGTH
	; end

	db BANK(PiloswinePicFront)
	assert BANK(PiloswinePicFront) == BANK(PiloswinePicBack)
