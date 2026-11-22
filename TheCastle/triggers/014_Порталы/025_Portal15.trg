[trigger]
name="Portal15"
description=""
condition=OperatorCompareBoolean(IsUnitType(GetEnteringUnit(), UnitTypeHero), OperatorEqualENE, "true")
condition=OperatorCompareBoolean($Portal_Activity_Bool["15"], OperatorEqualENE, "true")
event=TriggerRegisterEnterRectSimple($gg_rct_REG_Portal15_Gate1)
action=DisableTrigger(GetTriggeringTrigger())
action=CustomScriptCode("call TeoPortalMoving(GetEnteringUnit(), 15, 0)")
action=TriggerSleepAction("0.50")
action=KillDestructable(LoadDestructableHandleBJ("15", "1", GetLastCreatedHashtableBJ()))
action=KillDestructable(LoadDestructableHandleBJ("15", "2", GetLastCreatedHashtableBJ()))
