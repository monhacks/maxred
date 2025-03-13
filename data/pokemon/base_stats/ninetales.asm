	db DEX_NINETALES ; pokedex id

	db  73,  76,  75, 100, 100
	;   hp  atk  def  spd  spc

	db FIRE, FIRE ; type
	db 75 ; catch rate
	db 178 ; base exp

	INCBIN "gfx/pokemon/front/ninetales.pic", 0, 1 ; sprite dimensions
	dw NinetalesPicFront, NinetalesPicBack

	db MYSTIC_FIRE, WILL_O_WISP, QUICK_ATTACK, INFERNO ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    DOUBLE_EDGE,  HYPER_BEAM,   WILL_O_WISP,  \
	     SOLARBEAM,    DIG,          LIGHT_SCREEN, MIMIC,        DOUBLE_TEAM,  \
	     REFLECT,      FLAMETHROWER, FIRE_BLAST,   IRON_TAIL,    DARK_PULSE,   \
	     SHADOW_BALL,  REST,         CALM_MIND,    SUBSTITUTE,   FLASH
	; end

	db BANK(NinetalesPicFront)
	assert BANK(NinetalesPicFront) == BANK(NinetalesPicBack)
