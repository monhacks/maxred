	db DEX_WEAVILE ; pokedex id

	db  70, 120,  65, 125,  45 ; 425
	;   hp  atk  def  spd  spc   BST

	db DARK, ICE ; type
	db 45 ; catch rate
	db 199 ; base exp

	INCBIN "gfx/pokemon/front/weavile.pic", 0, 1 ; sprite dimensions
	dw WeavilePicFront, WeavilePicBack

	db TACKLE, SAND_ATTACK, QUICK_ATTACK, WATER_GUN ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm DYNAMICPUNCH, AERIAL_ACE,   SWORDS_DANCE, TOXIC,        DOUBLE_EDGE,  \
	     ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   MUD_SLAP,     COUNTER,      \
	     DIG,          MIMIC,        DOUBLE_TEAM,  REFLECT,      X_SCISSOR,    \
	     IRON_TAIL,    DARK_PULSE,   SHADOW_BALL,  REST,         CALM_MIND,    \
	     SUBSTITUTE,   CUT,          SURF,         STRENGTH
	; end

	db BANK(WeavilePicFront)
	assert BANK(WeavilePicFront) == BANK(WeavilePicBack)
