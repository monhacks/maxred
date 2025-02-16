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
	tmhm TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  BUBBLEBEAM,   \
	     WATER_GUN,    ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   RAGE,         \
	     MIMIC,        DOUBLE_TEAM,  REFLECT,      BIDE,         SWIFT,        \
	     SKULL_BASH,   REST,         SUBSTITUTE,   SURF
	; end

	db BANK(PiloswinePicFront)
	assert BANK(PiloswinePicFront) == BANK(PiloswinePicBack)
