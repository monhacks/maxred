	db DEX_FLAREON ; pokedex id

	db  65, 130,  60,  65, 110
	;   hp  atk  def  spd  spc

	db FIRE, FIRE ; type
	db 45 ; catch rate
	db 198 ; base exp

	INCBIN "gfx/pokemon/front/flareon.pic", 0, 1 ; sprite dimensions
	dw FlareonPicFront, FlareonPicBack

	db TACKLE, SAND_ATTACK, QUICK_ATTACK, EMBER ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    DOUBLE_EDGE,  HYPER_BEAM,   MUD_SLAP,     \
	     WILL_O_WISP,  DIG,          MIMIC,        DOUBLE_TEAM,  REFLECT,      \
	     METRONOME,    FLAMETHROWER, FIRE_BLAST,   IRON_TAIL,    SHADOW_BALL,  \
	     REST,         SUBSTITUTE,   STRENGTH,     FLASH
	; end

	db BANK(FlareonPicFront)
	assert BANK(FlareonPicFront) == BANK(FlareonPicBack)
