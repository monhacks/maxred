;;; Re-writing ParalyzeEffect_: for clarity
ParalyzeEffect_:
	xor a
;	call CheckTargetSubstitute
;	ret nz                     ; can't paralyze a substitute target - CeciNote - this is causing bugs.
;;; check whose turn it is
	ldh a, [hWhoseTurn]
	and a
	jp nz, .opponentAttack
;;; 
	ld hl, wEnemyMonStatus
	ld de, wPlayerMoveType
;;; check for immunity
	ld a, [hl]
	and a                     ; can't paralyze if already statused
	jp nz, .noEffect
	ld a, [de]
	cp ELECTRIC
	jp nz, .hitTest           ; can't paralyze if electric-type target
	ld b, h
	ld c, l
	inc bc
	ld a, [bc]
	cp GROUND
	jp z, .noEffect           ; can't paralyze if ground-type target
	inc bc
	ld a, [bc]
	cp GROUND
	jp z, .noEffect           ; can't paralyze if ground-type target
.hitTest
	push hl
	callfar MoveHitTest
	pop hl
	ld a, [wMoveMissed]
	and a
	jp nz, .moveMissed
	ld a, 1 << PAR
	ld [wEnemyMonStatus], a
	callfar QuarterSpeedDueToParalysis
	ld c, 30
	call DelayFrames
	ld a, [wPlayerMovePower]
	and a ; skipAnimation if damage dealing move
	jp nz, .skipAnimation
	jp .playAnimation

.opponentAttack
	ld hl, wBattleMonStatus
	ld de, wEnemyMoveType
;;; check for immunity
	ld a, [hl]
	and a                     ; can't paralyze if already statused
	jr nz, .noEffect
	ld a, [de]
	cp ELECTRIC
	jr nz, .hitTest2          ; can't paralyze if electric-type target
	ld b, h
	ld c, l
	inc bc
	ld a, [bc]
	cp GROUND
	jr z, .noEffect           ; can't paralyze if ground-type target
	inc bc
	ld a, [bc]
	cp GROUND
	jr z, .noEffect           ; can't paralyze if ground-type target
.hitTest2
	push hl
	callfar MoveHitTest
	pop hl
	ld a, [wMoveMissed]
	and a
	jr nz, .moveMissed
	ld a, 1 << PAR
	ld [wBattleMonStatus], a
	callfar QuarterSpeedDueToParalysis
	ld c, 30
	call DelayFrames
	ld a, [wEnemyMovePower]
	and a ; skipAnimation if damage dealing move
	jr nz, .skipAnimation
.playAnimation
	callfar PlayCurrentMoveAnimation
.skipAnimation
	jpfar PrintMayNotAttackText
.moveMissed
	ld c, 40
	call DelayFrames
	jpfar AttackMissed
.noEffect
	ld c, 40
	call DelayFrames
	jpfar PrintDidntAffectText
;;;

;ParalyzeEffect_:
;	ld hl, wEnemyMonStatus
;	ld de, wPlayerMoveType
;	ldh a, [hWhoseTurn]
;	and a
;	jp z, .next
;	ld hl, wBattleMonStatus
;	ld de, wEnemyMoveType
;.next
;	ld a, [hl]
;	and a ; does the target already have a status ailment?
;	jr nz, .noEffect
; check if the target is immune due to types
;	ld a, [de]
;	cp ELECTRIC
;	jr nz, .hitTest
;	ld b, h
;	ld c, l
;	inc bc
;	ld a, [bc]
;	cp GROUND
;	jr z, .noEffect
;	inc bc
;	ld a, [bc]
;	cp GROUND
;	jr z, .noEffect
;.hitTest
;	push hl
;	callfar MoveHitTest
;	pop hl
;	ld a, [wMoveMissed]
;	and a
;	jr nz, .moveMissed
;	set PAR, [hl]
;	callfar QuarterSpeedDueToParalysis
;	ld c, 30
;	call DelayFrames
;	ldh a, [hWhoseTurn]
;	and a
;	ld a, [wPlayerMovePower]
;	jp z, .gotParalyzeUsersPower
;	ld a, [wEnemyMovePower]
;.gotParalyzeUsersPower
;	and a ; skipAnimation if damage dealing move
;	jr nz, .skipAnimation
;	callfar PlayCurrentMoveAnimation
;.skipAnimation
;	jpfar PrintMayNotAttackText
;.moveMissed
;	ld c, 40
;	call DelayFrames
;	jpfar AttackMissed
;.noEffect
;	ld c, 40
;	call DelayFrames
;	jpfar PrintDidntAffectText
