	db DEX_SYLVEON ; pokedex id

	db 110,  65,  65,  60, 130 ; 430
	;   hp  atk  def  spd  spc   BST

	db FAIRY, FAIRY ; type
	db 45 ; catch rate
	db 197 ; base exp

	INCBIN "gfx/pokemon/front/sylveon.pic", 0, 1 ; sprite dimensions
	dw SylveonPicFront, SylveonPicBack

	db TACKLE, SAND_ATTACK, QUICK_ATTACK, WATER_GUN ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    DOUBLE_EDGE,  HYPER_BEAM,   MUD_SLAP,     \
	     DIG,          LIGHT_SCREEN, MIMIC,        DOUBLE_TEAM,  REFLECT,      \
	     METRONOME,    IRON_TAIL,    SHADOW_BALL,  REST,         CALM_MIND,    \
	     SUBSTITUTE,   MOONBLAST,    CUT,          FLASH
	; end

	db BANK(SylveonPicFront)
	assert BANK(SylveonPicFront) == BANK(SylveonPicBack)
