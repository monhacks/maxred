	db DEX_RAICHU ; pokedex id

	db  60,  90,  55, 100,  90
	;   hp  atk  def  spd  spc

	db ELECTRIC, ELECTRIC ; type
	db 75 ; catch rate
	db 122 ; base exp

	INCBIN "gfx/pokemon/front/raichu.pic", 0, 1 ; sprite dimensions
	dw RaichuPicFront, RaichuPicBack

	db THUNDERSHOCK, GROWL, THUNDER_WAVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm DYNAMICPUNCH, TOXIC,        BODY_SLAM,    DOUBLE_EDGE,  HYPER_BEAM,   \
	     MUD_SLAP,     CHARGE_BEAM,  SEISMIC_TOSS, THUNDERBOLT,  THUNDER,      \
	     LIGHT_SCREEN, MIMIC,        DOUBLE_TEAM,  REFLECT,      METRONOME,    \
	     IRON_TAIL,    REST,         THUNDER_WAVE, SUBSTITUTE,   STRENGTH,     \
	     FLASH
	; end

	db BANK(RaichuPicFront)
	assert BANK(RaichuPicFront) == BANK(RaichuPicBack)
