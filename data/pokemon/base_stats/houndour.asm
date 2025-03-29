	db DEX_HOUNDOUR ; pokedex id

	db  45,  60,  30,  65,  80 ; 280
	;   hp  atk  def  spd  spc   BST

	db DARK, FIRE ; type
	db 120 ; catch rate
	db 114 ; base exp

	INCBIN "gfx/pokemon/front/houndour.pic", 0, 1 ; sprite dimensions
	dw HoundourPicFront, HoundourPicBack

	db TACKLE, SAND_ATTACK, QUICK_ATTACK, WATER_GUN ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        SLUDGE_BOMB,  BODY_SLAM,    DOUBLE_EDGE,  MUD_SLAP,     \
	     COUNTER,      WILL_O_WISP,  SOLARBEAM,    DIG,          MIMIC,        \
	     DOUBLE_TEAM,  FLAMETHROWER, FIRE_BLAST,   IRON_TAIL,    DARK_PULSE,   \
	     SHADOW_BALL,  REST,         SUBSTITUTE,   STRENGTH
	; end

	db BANK(HoundourPicFront)
	assert BANK(HoundourPicFront) == BANK(HoundourPicBack)
