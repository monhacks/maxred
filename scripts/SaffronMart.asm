SaffronMart_Script:
	jp EnableAutoTextBoxDrawing

SaffronMart_TextPointers:
	def_text_pointers
	dw_const SaffronMartClerkText,        TEXT_SAFFRONMART_CLERK
	dw_const SaffronMartClerkTM1Text,     TEXT_SAFFRONMART_CLERK_TM1
	dw_const SaffronMartClerkTM2Text,     TEXT_SAFFRONMART_CLERK_TM2
	dw_const SaffronMartSuperNerdText,    TEXT_SAFFRONMART_SUPER_NERD
	dw_const SaffronMartCooltrainerFText, TEXT_SAFFRONMART_COOLTRAINER_F

SaffronMartSuperNerdText:
	text_far _SaffronMartSuperNerdText
	text_end

SaffronMartCooltrainerFText:
	text_far _SaffronMartCooltrainerFText
	text_end

SaffronMartClerkText:
	script_mart ULTRA_BALL, SUPER_POTION, HYPER_POTION, REVIVE, AWAKENING, FULL_HEAL, ESCAPE_ROPE, SUPER_REPEL, X_SPECIAL

SaffronMartClerkTM1Text:
	script_mart TM_X_SCISSOR, TM_DARK_PULSE, TM_ROCK_CLIMB, TM_TRI_ATTACK

SaffronMartClerkTM2Text:
	script_mart TM_COUNTER, TM_LIGHT_SCREEN, TM_REFLECT, TM_DOUBLE_TEAM