	db DEX_SNEASEL ; pokedex id

	db  55,  95,  55, 115,  35 ; 355
	;   hp  atk  def  spd  spc   BST

	db DARK, ICE ; type
	db 60 ; catch rate
	db 132 ; base exp

	INCBIN "gfx/pokemon/front/sneasel.pic", 0, 1 ; sprite dimensions
	dw SneaselPicFront, SneaselPicBack

	db TACKLE, SAND_ATTACK, QUICK_ATTACK, WATER_GUN ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm DYNAMICPUNCH, AERIAL_ACE,   SWORDS_DANCE, TOXIC,        DOUBLE_EDGE,  \
	     ICE_BEAM,     BLIZZARD,     MUD_SLAP,     COUNTER,      DIG,          \
	     MIMIC,        DOUBLE_TEAM,  REFLECT,      X_SCISSOR,    IRON_TAIL,    \
	     DARK_PULSE,   SHADOW_BALL,  REST,         CALM_MIND,    SUBSTITUTE,   \
	     CUT,          SURF,         STRENGTH
	; end

	db BANK(SneaselPicFront)
	assert BANK(SneaselPicFront) == BANK(SneaselPicBack)
