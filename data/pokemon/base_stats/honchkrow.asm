	db DEX_HONCHKROW ; pokedex id

	db 100, 125,  52,  71,  52 ; 400
	;   hp  atk  def  spd  spc   BST

	db DARK, FLYING ; type
	db 30 ; catch rate
	db 187 ; base exp

	INCBIN "gfx/pokemon/front/honchkrow.pic", 0, 1 ; sprite dimensions
	dw HonchkrowPicFront, HonchkrowPicBack

	db TACKLE, SAND_ATTACK, QUICK_ATTACK, WATER_GUN ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm AERIAL_ACE,   FOCUS_ENERGY, TOXIC,        DOUBLE_EDGE,  HYPER_BEAM,   \
	     MUD_SLAP,     WILL_O_WISP,  PSYCHIC_M,    MIMIC,        DOUBLE_TEAM,  \
	     DARK_PULSE,   SHADOW_BALL,  HURRICANE,    REST,         THUNDER_WAVE, \
	     CALM_MIND,    TRI_ATTACK,   SUBSTITUTE,   FLY
	; end

	db BANK(HonchkrowPicFront)
	assert BANK(HonchkrowPicFront) == BANK(HonchkrowPicBack)
