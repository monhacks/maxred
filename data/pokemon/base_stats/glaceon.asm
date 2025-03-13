	db DEX_GLACEON ; pokedex id

	db  65,  60, 110,  65, 130 ; 430
	;   hp  atk  def  spd  spc   BST

	db ICE, ICE ; type
	db 45 ; catch rate
	db 196 ; base exp

	INCBIN "gfx/pokemon/front/glaceon.pic", 0, 1 ; sprite dimensions
	dw GlaceonPicFront, GlaceonPicBack

	db TACKLE, SAND_ATTACK, QUICK_ATTACK, WATER_GUN ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    DOUBLE_EDGE,  WATER_PULSE,  CHILLINWATER, \
	     ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   MUD_SLAP,     DIG,          \
	     MIMIC,        DOUBLE_TEAM,  REFLECT,      METRONOME,    IRON_TAIL,    \
	     SHADOW_BALL,  REST,         SUBSTITUTE,   STRENGTH,     FLASH
	; end

	db BANK(GlaceonPicFront)
	assert BANK(GlaceonPicFront) == BANK(GlaceonPicBack)
