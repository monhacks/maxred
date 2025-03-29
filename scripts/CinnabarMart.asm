CinnabarMart_Script:
	jp EnableAutoTextBoxDrawing

CinnabarMart_TextPointers:
	def_text_pointers
	dw_const CinnabarMartClerkText,        TEXT_CINNABARMART_CLERK
	dw_const CinnabarMartClerkTM1Text,     TEXT_CINNABARMART_CLERK_TM1
	dw_const CinnabarMartClerkTM2Text,     TEXT_CINNABARMART_CLERK_TM2
	dw_const CinnabarMartSilphWorkerFText, TEXT_CINNABARMART_SILPH_WORKER_F
	dw_const CinnabarMartScientistText,    TEXT_CINNABARMART_SCIENTIST

CinnabarMartSilphWorkerFText:
	text_far _CinnabarMartSilphWorkerFText
	text_end

CinnabarMartScientistText:
	text_far _CinnabarMartScientistText
	text_end

CinnabarMartClerkText:
	script_mart ULTRA_BALL, HYPER_POTION, MAX_POTION, REVIVE, BURN_HEAL, FULL_HEAL, ESCAPE_ROPE, MAX_REPEL, X_SPECIAL, X_ACCURACY

CinnabarMartClerkTM1Text:
	script_mart TM_DRAGONBREATH, TM_SLUDGE_BOMB, TM_FLAMETHROWER, TM_THUNDERBOLT, TM_ICE_BEAM, TM_SHADOW_BALL, TM_PSYCHIC_M, TM_MOONBLAST

CinnabarMartClerkTM2Text:
	script_mart TM_MIMIC, TM_TOXIC, TM_BULK_UP, TM_CALM_MIND, TM_DYNAMICPUNCH, TM_DOUBLE_EDGE, TM_SELFDESTRUCT