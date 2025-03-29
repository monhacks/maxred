FuchsiaMart_Script:
	jp EnableAutoTextBoxDrawing

FuchsiaMart_TextPointers:
	def_text_pointers
	dw_const FuchsiaMartClerkText,         TEXT_FUCHSIAMART_CLERK
	dw_const FuchsiaMartClerkTMText,       TEXT_FUCHSIAMART_CLERK_TM
	dw_const FuchsiaMartMiddleAgedManText, TEXT_FUCHSIAMART_MIDDLE_AGED_MAN
	dw_const FuchsiaMartCooltrainerFText,  TEXT_FUCHSIAMART_COOLTRAINER_F

FuchsiaMartMiddleAgedManText:
	text_far _FuchsiaMartMiddleAgedManText
	text_end

FuchsiaMartCooltrainerFText:
	text_far _FuchsiaMartCooltrainerFText
	text_end

FuchsiaMartClerkText:
	script_mart ULTRA_BALL, SUPER_POTION, HYPER_POTION, REVIVE, ANTIDOTE, FULL_HEAL, ESCAPE_ROPE, SUPER_REPEL, X_ATTACK, X_DEFEND

FuchsiaMartClerkTMText:
	script_mart TM_WILL_O_WISP, TM_GIGA_DRAIN, TM_DIG, TM_ROCK_SLIDE, TM_BODY_SLAM