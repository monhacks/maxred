	db DEX_AERODACTYL ; pokedex id

	db  80, 105,  65, 130,  60
	;   hp  atk  def  spd  spc

	db ROCK, FLYING ; type
	db 45 ; catch rate
	db 202 ; base exp

	INCBIN "gfx/pokemon/front/aerodactyl.pic", 0, 1 ; sprite dimensions
	dw AerodactylPicFront, AerodactylPicBack

	db WING_ATTACK, AGILITY, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm AERIAL_ACE,   TOXIC,        BODY_SLAM,    DOUBLE_EDGE,  HYPER_BEAM,   \
	     MUD_SLAP,     DRAGONBREATH, EARTHQUAKE,   FISSURE,      MIMIC,        \
	     DOUBLE_TEAM,  REFLECT,      ROCK_TOMB,    FLAMETHROWER, FIRE_BLAST,   \
	     IRON_TAIL,    REST,         ROCK_SLIDE,   SUBSTITUTE,   FLY,          \
	     STRENGTH
	; end

	db BANK(AerodactylPicFront)
	assert BANK(AerodactylPicFront) == BANK(AerodactylPicBack)
