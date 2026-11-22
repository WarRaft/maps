[trigger]
name="Portal05"
description=""
condition=OperatorCompareBoolean(IsUnitType(GetEnteringUnit(), UnitTypeHero), OperatorEqualENE, "true")
condition=OperatorCompareBoolean($Portal_Activity_Bool["5"], OperatorEqualENE, "true")
event=TriggerRegisterEnterRectSimple($gg_rct_REG_Portal05_Gate1)
action=DisableTrigger(GetTriggeringTrigger())
action=CustomScriptCode("call TeoPortalMoving(GetEnteringUnit(), 5, 90)")
action=TriggerSleepAction("0.50")
action=KillDestructable(LoadDestructableHandleBJ("5", "1", GetLastCreatedHashtableBJ()))
action=KillDestructable(LoadDestructableHandleBJ("5", "2", GetLastCreatedHashtableBJ()))
action=TriggerSleepAction("0.50")
action=SetVariable($Portal_num, "6")
action=TriggerExecute($gg_trg_PORTAL_OPENING)
