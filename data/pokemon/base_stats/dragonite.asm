	db DEX_DRAGONITE ; pokedex id

	db  91, 134,  95,  80, 100
	;   hp  atk  def  spd  spc

	db DRAGON, FLYING ; type
	db 45 ; catch rate
	db 218 ; base exp

	INCBIN "gfx/pokemon/front/dragonite.pic", 0, 1 ; sprite dimensions
	dw DragonitePicFront, DragonitePicBack

	db WRAP, LEER, THUNDER_WAVE, AGILITY ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm DYNAMICPUNCH, AERIAL_ACE,   TOXIC,        BODY_SLAM,    DOUBLE_EDGE,  \
	     WATER_PULSE,  CHILLINWATER, ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   \
	     MUD_SLAP,     DRAGONBREATH, THUNDERBOLT,  THUNDER,      EARTHQUAKE,   \
	     FISSURE,      LIGHT_SCREEN, MIMIC,        DOUBLE_TEAM,  REFLECT,      \
	     ROCK_TOMB,    METRONOME,    FLAMETHROWER, FIRE_BLAST,   IRON_TAIL,    \
	     HURRICANE,    REST,         THUNDER_WAVE, ROCK_SLIDE,   SUBSTITUTE,   \
	     CUT,          FLY,          SURF,         STRENGTH
	; end

	db BANK(DragonitePicFront)
	assert BANK(DragonitePicFront) == BANK(DragonitePicBack)
