IndigoPlateauLobby_Script:
	call Serial_TryEstablishingExternallyClockedConnection
	call EnableAutoTextBoxDrawing
	ld hl, wCurrentMapScriptFlags
	bit BIT_CUR_MAP_LOADED_2, [hl]
	res BIT_CUR_MAP_LOADED_2, [hl]
	ret z
	ResetEvent EVENT_VICTORY_ROAD_1_BOULDER_ON_SWITCH
	; Reset Elite Four events if the player started challenging them before
	ld hl, wElite4Flags
	bit BIT_STARTED_ELITE_4, [hl]
	res BIT_STARTED_ELITE_4, [hl]
	ret z
	ResetEventRange INDIGO_PLATEAU_EVENTS_START, EVENT_LANCES_ROOM_LOCK_DOOR
	ret

IndigoPlateauLobby_TextPointers:
	def_text_pointers
	dw_const IndigoPlateauLobbyNurseText,            TEXT_INDIGOPLATEAULOBBY_NURSE
	dw_const IndigoPlateauLobbyGymGuideText,         TEXT_INDIGOPLATEAULOBBY_GYM_GUIDE
	dw_const IndigoPlateauLobbyCooltrainerFText,     TEXT_INDIGOPLATEAULOBBY_COOLTRAINER_F
	dw_const IndigoPlateauLobbyClerkText,            TEXT_INDIGOPLATEAULOBBY_CLERK
	dw_const IndigoPlateauLobbyClerkTM1Text,         TEXT_INDIGOPLATEAULOBBY_CLERK_TM1
	dw_const IndigoPlateauLobbyClerkTM2Text,         TEXT_INDIGOPLATEAULOBBY_CLERK_TM2
	dw_const IndigoPlateauLobbyLinkReceptionistText, TEXT_INDIGOPLATEAULOBBY_LINK_RECEPTIONIST

IndigoPlateauLobbyNurseText:
	script_pokecenter_nurse

IndigoPlateauLobbyGymGuideText:
	text_far _IndigoPlateauLobbyGymGuideText
	text_end

IndigoPlateauLobbyCooltrainerFText:
	text_far _IndigoPlateauLobbyCooltrainerFText
	text_end

IndigoPlateauLobbyLinkReceptionistText:
	script_cable_club_receptionist

IndigoPlateauLobbyClerkText:
	script_mart ULTRA_BALL, MAX_POTION, FULL_RESTORE, REVIVE, MAX_REVIVE, ICE_HEAL, FULL_HEAL, ESCAPE_ROPE, MAX_REPEL, X_SPECIAL, GUARD_SPEC, DIRE_HIT

IndigoPlateauLobbyClerkTM1Text:
	script_mart TM_SOLARBEAM, TM_HURRICANE, TM_FIRE_BLAST, TM_THUNDER, TM_BLIZZARD, TM_HYPER_BEAM

IndigoPlateauLobbyClerkTM2Text:
	script_mart TM_SUBSTITUTE, TM_SWORDS_DANCE, TM_IRON_TAIL, TM_EARTHQUAKE, TM_EXPLOSION, TM_FISSURE