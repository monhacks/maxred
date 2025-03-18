VictoryRoadB1F_Script:
	ld hl, wCurrentMapScriptFlags
	bit BIT_CUR_MAP_LOADED_1, [hl]
	res BIT_CUR_MAP_LOADED_1, [hl]
	ret z
	call EnableAutoTextBoxDrawing
	ld de, VictoryRoadB1F_ScriptPointers
	ld a, [wVictoryRoadB1FCurScript]
	call ExecuteCurMapScriptInTable
	ld [wVictoryRoadB1FCurScript], a
	ret

VictoryRoadB1F_ScriptPointers:
	def_script_pointers

VictoryRoadB1F_TextPointers:
	def_text_pointers