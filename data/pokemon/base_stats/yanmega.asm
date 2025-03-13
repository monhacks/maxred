	db DEX_YANMEGA ; pokedex id

	db  86,  76,  86,  95, 116 ; 469
	;   hp  atk  def  spd  spc   BST

	db BUG, FLYING ; type
	db 30 ; catch rate
	db 198 ; base exp

	INCBIN "gfx/pokemon/front/yanmega.pic", 0, 1 ; sprite dimensions
	dw YanmegaPicFront, YanmegaPicBack

	db TACKLE, SAND_ATTACK, QUICK_ATTACK, WATER_GUN ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm AERIAL_ACE,   FOCUS_ENERGY, TOXIC,        DOUBLE_EDGE,  HYPER_BEAM,   \
	     MUD_SLAP,     GIGA_DRAIN,   SOLARBEAM,    DRAGONBREATH, PSYCHIC_M,    \
	     MIMIC,        DOUBLE_TEAM,  SHADOW_BALL,  HURRICANE,    REST,         \
	     SUBSTITUTE,   FLY,          FLASH
	; end

	db BANK(YanmegaPicFront)
	assert BANK(YanmegaPicFront) == BANK(YanmegaPicBack)
