	db DEX_GLISCOR ; pokedex id

	db  75,  95, 125,  95,  45 ; 435
	;   hp  atk  def  spd  spc   BST

	db GROUND, FLYING ; type
	db 30 ; catch rate
	db 192 ; base exp

	INCBIN "gfx/pokemon/front/gliscor.pic", 0, 1 ; sprite dimensions
	dw GliscorPicFront, GliscorPicBack

	db TACKLE, SAND_ATTACK, QUICK_ATTACK, WATER_GUN ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  BUBBLEBEAM,   \
	     WATER_GUN,    ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   RAGE,         \
	     MIMIC,        DOUBLE_TEAM,  REFLECT,      BIDE,         SWIFT,        \
	     SKULL_BASH,   REST,         SUBSTITUTE,   SURF
	; end

	db BANK(GliscorPicFront)
	assert BANK(GliscorPicFront) == BANK(GliscorPicBack)
