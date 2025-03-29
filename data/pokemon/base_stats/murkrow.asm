	db DEX_MURKROW ; pokedex id

	db  60,  85,  42,  91,  42 ; 320
	;   hp  atk  def  spd  spc   BST

	db DARK, FLYING ; type
	db 30 ; catch rate
	db 107 ; base exp

	INCBIN "gfx/pokemon/front/murkrow.pic", 0, 1 ; sprite dimensions
	dw MurkrowPicFront, MurkrowPicBack

	db TACKLE, SAND_ATTACK, QUICK_ATTACK, WATER_GUN ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm AERIAL_ACE,   FOCUS_ENERGY, TOXIC,        DOUBLE_EDGE,  MUD_SLAP,     \
	     WILL_O_WISP,  PSYCHIC_M,    MIMIC,        DOUBLE_TEAM,  DARK_PULSE,   \
	     SHADOW_BALL,  REST,         THUNDER_WAVE, CALM_MIND,    TRI_ATTACK,   \
	     SUBSTITUTE,   FLY
	; end

	db BANK(MurkrowPicFront)
	assert BANK(MurkrowPicFront) == BANK(MurkrowPicBack)
