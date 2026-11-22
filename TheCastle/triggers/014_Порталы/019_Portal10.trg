[trigger]
name="Portal10"
description=""
condition=OperatorCompareBoolean(IsUnitType(GetEnteringUnit(), UnitTypeHero), OperatorEqualENE, "true")
condition=OperatorCompareBoolean($Portal_Activity_Bool["10"], OperatorEqualENE, "true")
event=TriggerRegisterEnterRectSimple($gg_rct_REG_Portal10_Gate1)
action=DisableTrigger(GetTriggeringTrigger())
action=CustomScriptCode("call TeoPortalMoving(GetEnteringUnit(), 10, 90)")
action=TriggerSleepAction("0.50")
action=KillDestructable(LoadDestructableHandleBJ("10", "1", GetLastCreatedHashtableBJ()))
action=KillDestructable(LoadDestructableHandleBJ("10", "2", GetLastCreatedHashtableBJ()))
action=SetVariable($Portal_num, "11")
action=TriggerExecute($gg_trg_PORTAL_OPENING)
action=SetVariable($Portal_num, "12")
action=TriggerExecute($gg_trg_PORTAL_OPENING)
action=TriggerExecute($gg_trg_Fire_Golems)
action=EnableTrigger($gg_trg_Fire_Golems)
