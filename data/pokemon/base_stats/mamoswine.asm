	db DEX_MAMOSWINE ; pokedex id

	db 110, 130,  80,  80,  70 ; 470
	;   hp  atk  def  spd  spc   BST

	db ICE, GROUND ; type
	db 50 ; catch rate
	db 207 ; base exp

	INCBIN "gfx/pokemon/front/mamoswine.pic", 0, 1 ; sprite dimensions
	dw MamoswinePicFront, MamoswinePicBack

	db TACKLE, SAND_ATTACK, QUICK_ATTACK, WATER_GUN ; level 1 learnset
	db GROWTH_SLOW; growth rate

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    ROCK_CLIMB,   DOUBLE_EDGE,  ICE_BEAM,     \
	     BLIZZARD,     HYPER_BEAM,   MUD_SLAP,     EARTHQUAKE,   FISSURE,      \
	     DIG,          LIGHT_SCREEN, MIMIC,        DOUBLE_TEAM,  REFLECT,      \
	     ROCK_TOMB,    REST,         ROCK_SLIDE,   SUBSTITUTE,   STRENGTH
	; end

	db BANK(MamoswinePicFront)
	assert BANK(MamoswinePicFront) == BANK(MamoswinePicBack)
