	db DEX_TOGEKISS ; pokedex id

	db  85,  50,  95,  80, 115 ; 425
	;   hp  atk  def  spd  spc   BST

	db FAIRY, FLYING ; type
	db 30 ; catch rate
	db 220 ; base exp

	INCBIN "gfx/pokemon/front/togekiss.pic", 0, 1 ; sprite dimensions
	dw TogekissPicFront, TogekissPicBack

	db TACKLE, SAND_ATTACK, QUICK_ATTACK, WATER_GUN ; level 1 learnset
	db GROWTH_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  BUBBLEBEAM,   \
	     WATER_GUN,    ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   RAGE,         \
	     MIMIC,        DOUBLE_TEAM,  REFLECT,      BIDE,         SWIFT,        \
	     SKULL_BASH,   REST,         SUBSTITUTE,   SURF
	; end

	db BANK(TogekissPicFront)
	assert BANK(TogekissPicFront) == BANK(TogekissPicBack)
