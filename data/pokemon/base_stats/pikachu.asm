	db DEX_PIKACHU ; pokedex id

	db  35,  55,  30,  90,  50
	;   hp  atk  def  spd  spc

	db ELECTRIC, ELECTRIC ; type
	db 190 ; catch rate
	db 82 ; base exp

	INCBIN "gfx/pokemon/front/pikachu.pic", 0, 1 ; sprite dimensions
	dw PikachuPicFront, PikachuPicBack

	db THUNDERSHOCK, GROWL, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm DYNAMICPUNCH, TOXIC,        BODY_SLAM,    DOUBLE_EDGE,  MUD_SLAP,     \
	     CHARGE_BEAM,  SEISMIC_TOSS, THUNDERBOLT,  THUNDER,      LIGHT_SCREEN, \
	     MIMIC,        DOUBLE_TEAM,  REFLECT,      METRONOME,    IRON_TAIL,    \
	     REST,         THUNDER_WAVE, SUBSTITUTE,   STRENGTH,     FLASH
	; end

	db BANK(PikachuPicFront)
	assert BANK(PikachuPicFront) == BANK(PikachuPicBack)
