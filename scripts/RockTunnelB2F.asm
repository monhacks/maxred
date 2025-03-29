RockTunnelB2F_Script:
	call EnableAutoTextBoxDrawing
	ld de, RockTunnelB2F_ScriptPointers
	ld a, [wRockTunnelB2FCurScript]
	call ExecuteCurMapScriptInTable
	ld [wRockTunnelB2FCurScript], a
	ret

RockTunnelB2F_ScriptPointers:
	def_script_pointers

RockTunnelB2F_TextPointers:
	def_text_pointers
