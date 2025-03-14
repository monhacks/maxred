VermilionMart_Script:
	jp EnableAutoTextBoxDrawing

VermilionMart_TextPointers:
	def_text_pointers
	dw_const VermilionMartClerkText,        TEXT_VERMILIONMART_CLERK
	dw_const VermilionMartClerkTMText,      TEXT_VERMILIONMART_CLERK_TM
	dw_const VermilionMartCooltrainerMText, TEXT_VERMILIONMART_COOLTRAINER_M
	dw_const VermilionMartCooltrainerFText, TEXT_VERMILIONMART_COOLTRAINER_F

VermilionMartCooltrainerMText:
	text_far _VermilionMartCooltrainerMText
	text_end

VermilionMartCooltrainerFText:
	text_far _VermilionMartCooltrainerFText
	text_end

VermilionMartClerkText:
	script_mart GREAT_BALL, SUPER_POTION, ANTIDOTE, PARLYZ_HEAL, AWAKENING, BURN_HEAL, ESCAPE_ROPE, REPEL, X_SPEED

VermilionMartClerkTMText:
	script_mart TM_FOCUS_ENERGY, TM_MUD_SLAP, TM_CHILLINWATER, TM_ROCK_TOMB, TM_THUNDER_WAVE