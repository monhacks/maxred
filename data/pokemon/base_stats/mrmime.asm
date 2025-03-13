	db DEX_MR_MIME ; pokedex id

	db  40,  45,  65,  90, 100
	;   hp  atk  def  spd  spc

	db PSYCHIC_TYPE, FAIRY ; type
	db 45 ; catch rate
	db 136 ; base exp

	INCBIN "gfx/pokemon/front/mr.mime.pic", 0, 1 ; sprite dimensions
	dw MrMimePicFront, MrMimePicBack

	db CONFUSION, BARRIER, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm DYNAMICPUNCH, AERIAL_ACE,   TOXIC,        BODY_SLAM,    DOUBLE_EDGE,  \
	     HYPER_BEAM,   MUD_SLAP,     CHARGE_BEAM,  COUNTER,      SEISMIC_TOSS, \
	     SOLARBEAM,    THUNDERBOLT,  THUNDER,      PSYCHIC_M,    LIGHT_SCREEN, \
	     MIMIC,        DOUBLE_TEAM,  REFLECT,      METRONOME,    SHADOW_BALL,  \
	     REST,         THUNDER_WAVE, CALM_MIND,    SUBSTITUTE,   MOONBLAST,    \
	     FLASH
	; end

	db BANK(MrMimePicFront)
	assert BANK(MrMimePicFront) == BANK(MrMimePicBack)
