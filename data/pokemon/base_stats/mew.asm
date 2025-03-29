	db DEX_MEW ; pokedex id

	db 100, 100, 100, 100, 100
	;   hp  atk  def  spd  spc

	db PSYCHIC_TYPE, PSYCHIC_TYPE ; type
	db 45 ; catch rate
	db 64 ; base exp

	INCBIN "gfx/pokemon/front/mew.pic", 0, 1 ; sprite dimensions
	dw MewPicFront, MewPicBack

	db POUND, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm DYNAMICPUNCH, AERIAL_ACE,   SWORDS_DANCE, FOCUS_ENERGY, BULK_UP,      \
	     TOXIC,        SLUDGE_BOMB,  BODY_SLAM,    ROCK_CLIMB,   DOUBLE_EDGE,  \
	     WATER_PULSE,  CHILLINWATER, ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   \
	     MUD_SLAP,     CHARGE_BEAM,  COUNTER,      SEISMIC_TOSS, WILL_O_WISP,  \
	     GIGA_DRAIN,   SOLARBEAM,    DRAGONBREATH, THUNDERBOLT,  THUNDER,      \
	     EARTHQUAKE,   FISSURE,      DIG,          PSYCHIC_M,    LIGHT_SCREEN, \
	     MIMIC,        DOUBLE_TEAM,  REFLECT,      ROCK_TOMB,    METRONOME,    \
	     SELFDESTRUCT, FLAMETHROWER, FIRE_BLAST,   X_SCISSOR,    IRON_TAIL,    \
	     DARK_PULSE,   SHADOW_BALL,  HURRICANE,    REST,         THUNDER_WAVE, \
	     CALM_MIND,    EXPLOSION,    ROCK_SLIDE,   TRI_ATTACK,   SUBSTITUTE,   \
	     MOONBLAST,    CUT,          FLY,          SURF,         STRENGTH,     \
	     FLASH
	; end

	db BANK(MewPicFront)
	assert BANK(MewPicFront) == BANK(MewPicBack)
