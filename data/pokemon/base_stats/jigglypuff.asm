	db DEX_JIGGLYPUFF ; pokedex id

	db 115,  45,  20,  20,  25
	;   hp  atk  def  spd  spc

	db NORMAL, FAIRY ; type
	db 170 ; catch rate
	db 76 ; base exp

	INCBIN "gfx/pokemon/front/jigglypuff.pic", 0, 1 ; sprite dimensions
	dw JigglypuffPicFront, JigglypuffPicBack

	db SING, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_FAST ; growth rate

	; tm/hm learnset
	tmhm DYNAMICPUNCH, TOXIC,        BODY_SLAM,    DOUBLE_EDGE,  WATER_PULSE,  \
	     CHILLINWATER, ICE_BEAM,     BLIZZARD,     MUD_SLAP,     CHARGE_BEAM,  \
	     COUNTER,      SEISMIC_TOSS, SOLARBEAM,    THUNDERBOLT,  THUNDER,      \
	     DIG,          PSYCHIC_M,    LIGHT_SCREEN, MIMIC,        DOUBLE_TEAM,  \
	     REFLECT,      METRONOME,    FLAMETHROWER, FIRE_BLAST,   SHADOW_BALL,  \
	     REST,         THUNDER_WAVE, TRI_ATTACK,   SUBSTITUTE,   MOONBLAST,    \
	     STRENGTH,     FLASH
	; end

	db BANK(JigglypuffPicFront)
	assert BANK(JigglypuffPicFront) == BANK(JigglypuffPicBack)
