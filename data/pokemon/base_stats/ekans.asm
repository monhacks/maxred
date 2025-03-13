	db DEX_EKANS ; pokedex id

	db  35,  60,  44,  55,  40
	;   hp  atk  def  spd  spc

	db POISON, POISON ; type
	db 255 ; catch rate
	db 62 ; base exp

	INCBIN "gfx/pokemon/front/ekans.pic", 0, 1 ; sprite dimensions
	dw EkansPicFront, EkansPicBack

	db WRAP, LEER, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC,       SLUDGE_BOMB, BODY_SLAM,   DOUBLE_EDGE, GIGA_DRAIN,  \
	     EARTHQUAKE,  FISSURE,     DIG,         MIMIC,       DOUBLE_TEAM, \
	     ROCK_TOMB,   IRON_TAIL,   DARK_PULSE,  REST,        ROCK_SLIDE,  \
	     SUBSTITUTE,  STRENGTH
	; end

	db BANK(EkansPicFront)
	assert BANK(EkansPicFront) == BANK(EkansPicBack)
