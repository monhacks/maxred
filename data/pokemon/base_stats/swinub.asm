	db DEX_SWINUB ; pokedex id

	db  50,  50,  40,  50,  30 ; 220
	;   hp  atk  def  spd  spc   BST

	db ICE, GROUND ; type
	db 225 ; catch rate
	db 78 ; base exp

	INCBIN "gfx/pokemon/front/swinub.pic", 0, 1 ; sprite dimensions
	dw SwinubPicFront, SwinubPicBack

	db TACKLE, SAND_ATTACK, QUICK_ATTACK, WATER_GUN ; level 1 learnset
	db GROWTH_SLOW; growth rate

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    ROCK_CLIMB,   DOUBLE_EDGE,  ICE_BEAM,     \
	     BLIZZARD,     MUD_SLAP,     EARTHQUAKE,   FISSURE,      DIG,          \
	     LIGHT_SCREEN, MIMIC,        DOUBLE_TEAM,  REFLECT,      ROCK_TOMB,    \
	     REST,         ROCK_SLIDE,   SUBSTITUTE,   STRENGTH
	; end

	db BANK(SwinubPicFront)
	assert BANK(SwinubPicFront) == BANK(SwinubPicBack)
