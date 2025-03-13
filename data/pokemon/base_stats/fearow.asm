	db DEX_FEAROW ; pokedex id

	db  65,  90,  65, 100,  61
	;   hp  atk  def  spd  spc

	db NORMAL, FLYING ; type
	db 90 ; catch rate
	db 162 ; base exp

	INCBIN "gfx/pokemon/front/fearow.pic", 0, 1 ; sprite dimensions
	dw FearowPicFront, FearowPicBack

	db PECK, GROWL, LEER, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm AERIAL_ACE,   SWORDS_DANCE, FOCUS_ENERGY, TOXIC,        DOUBLE_EDGE,  \
	     HYPER_BEAM,   MUD_SLAP,     MIMIC,        DOUBLE_TEAM,  REST,         \
	     SUBSTITUTE,   FLY
	; end

	db BANK(FearowPicFront)
	assert BANK(FearowPicFront) == BANK(FearowPicBack)
