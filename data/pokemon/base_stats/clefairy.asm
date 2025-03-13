	db DEX_CLEFAIRY ; pokedex id

	db  70,  45,  48,  35,  60
	;   hp  atk  def  spd  spc

	db FAIRY, FAIRY ; type
	db 150 ; catch rate
	db 68 ; base exp

	INCBIN "gfx/pokemon/front/clefairy.pic", 0, 1 ; sprite dimensions
	dw ClefairyPicFront, ClefairyPicBack

	db POUND, GROWL, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_FAST ; growth rate

	; tm/hm learnset
	tmhm DYNAMICPUNCH, TOXIC,        BODY_SLAM,    DOUBLE_EDGE,  WATER_PULSE,  \
	     CHILLINWATER, ICE_BEAM,     BLIZZARD,     MUD_SLAP,     CHARGE_BEAM,  \
	     COUNTER,      SEISMIC_TOSS, SOLARBEAM,    THUNDERBOLT,  THUNDER,      \
	     DIG,          PSYCHIC_M,    LIGHT_SCREEN, MIMIC,        DOUBLE_TEAM,  \
	     REFLECT,      METRONOME,    FLAMETHROWER, FIRE_BLAST,   IRON_TAIL,    \
	     SHADOW_BALL,  REST,         THUNDER_WAVE, CALM_MIND,    TRI_ATTACK,   \
	     SUBSTITUTE,   MOONBLAST,    STRENGTH,     FLASH
	; end

	db BANK(ClefairyPicFront)
	assert BANK(ClefairyPicFront) == BANK(ClefairyPicBack)
