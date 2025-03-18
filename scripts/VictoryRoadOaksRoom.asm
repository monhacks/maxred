VictoryRoadOaksRoom_Script:
	ld hl, wCurrentMapScriptFlags
	bit BIT_CUR_MAP_LOADED_1, [hl]
	res BIT_CUR_MAP_LOADED_1, [hl]
	ret z
	call EnableAutoTextBoxDrawing
	ld de, VictoryRoadOaksRoom_ScriptPointers
	ld a, [wVictoryRoadOaksRoomCurScript]
	call ExecuteCurMapScriptInTable
	ld [wVictoryRoadOaksRoomCurScript], a
	ret

VictoryRoadOaksRoom_ScriptPointers:
	def_script_pointers
	dw_const VictoryRoadOaksRoomDefaultScript,            SCRIPT_VICTORYROADOAKSROOM_DEFAULT

VictoryRoadOaksRoom_TextPointers:
	def_text_pointers

VictoryRoadOaksRoomDefaultScript:
	ld hl, wCurrentMapScriptFlags
	set BIT_CUR_MAP_LOADED_1, [hl]
	ret