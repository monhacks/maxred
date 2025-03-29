	db DEX_SCIZOR ; pokedex id

	db  70, 130, 100,  65,  55 ; 420
	;   hp  atk  def  spd  spc   BST

	db BUG, STEEL ; type
	db 25 ; catch rate
	db 200 ; base exp

	INCBIN "gfx/pokemon/front/scizor.pic", 0, 1 ; sprite dimensions
	dw ScizorPicFront, ScizorPicBack

	db TACKLE, SAND_ATTACK, QUICK_ATTACK, WATER_GUN ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm DYNAMICPUNCH, AERIAL_ACE,   SWORDS_DANCE, FOCUS_ENERGY, TOXIC,        \
	     BODY_SLAM,    DOUBLE_EDGE,  HYPER_BEAM,   MUD_SLAP,     COUNTER,      \
	     LIGHT_SCREEN, MIMIC,        DOUBLE_TEAM,  X_SCISSOR,    REST,         \
	     SUBSTITUTE,   CUT,          STRENGTH
	; end

	db BANK(ScizorPicFront)
	assert BANK(ScizorPicFront) == BANK(ScizorPicBack)
