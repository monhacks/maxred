	db DEX_MARILL ; pokedex id

	db  70,  20,  50,  40,  50 ; 230
	;   hp  atk  def  spd  spc   BST

	db WATER, FAIRY ; type
	db 190 ; catch rate
	db 58 ; base exp

	INCBIN "gfx/pokemon/front/marill.pic", 0, 1 ; sprite dimensions
	dw MarillPicFront, MarillPicBack

	db TACKLE, SAND_ATTACK, QUICK_ATTACK, WATER_GUN ; level 1 learnset
	db GROWTH_FAST ; growth rate

	; tm/hm learnset
	tmhm DYNAMICPUNCH, TOXIC,        BODY_SLAM,    DOUBLE_EDGE,  WATER_PULSE,  \
	     CHILLINWATER, ICE_BEAM,     BLIZZARD,     MUD_SLAP,     SEISMIC_TOSS, \
	     DIG,          LIGHT_SCREEN, MIMIC,        DOUBLE_TEAM,  METRONOME,    \
	     IRON_TAIL,    REST,         SUBSTITUTE,   MOONBLAST,    SURF,         \
	     STRENGTH
	; end

	db BANK(MarillPicFront)
	assert BANK(MarillPicFront) == BANK(MarillPicBack)
