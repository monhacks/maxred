	db DEX_HITMONTOP ; pokedex id

	db  50,  95,  95,  70,  35 ; 345
	;   hp  atk  def  spd  spc   BST

	db FIGHTING, FIGHTING ; type
	db 45 ; catch rate
	db 139 ; base exp

	INCBIN "gfx/pokemon/front/hitmontop.pic", 0, 1 ; sprite dimensions
	dw HitmontopPicFront, HitmontopPicBack

	db DOUBLE_KICK, MEDITATE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm DYNAMICPUNCH, FOCUS_ENERGY, BULK_UP,      TOXIC,        BODY_SLAM,    \
	     ROCK_CLIMB,   DOUBLE_EDGE,  HYPER_BEAM,   MUD_SLAP,     COUNTER,      \
	     SEISMIC_TOSS, EARTHQUAKE,   MIMIC,        DOUBLE_TEAM,  ROCK_TOMB,    \
	     METRONOME,    REST,         ROCK_SLIDE,   SUBSTITUTE,   STRENGTH
	; end

	db BANK(HitmontopPicFront)
	assert BANK(HitmontopPicFront) == BANK(HitmontopPicBack)
