[trigger]
name="Portal09"
description=""
condition=OperatorCompareBoolean(IsUnitType(GetEnteringUnit(), UnitTypeHero), OperatorEqualENE, "true")
condition=OperatorCompareBoolean($Portal_Activity_Bool["9"], OperatorEqualENE, "true")
event=TriggerRegisterEnterRectSimple($gg_rct_REG_Portal09_Gate1)
action=DisableTrigger(GetTriggeringTrigger())
action=CustomScriptCode("call TeoPortalMoving(GetEnteringUnit(), 9, 0)")
action=TriggerSleepAction("0.50")
action=KillDestructable(LoadDestructableHandleBJ("9", "1", GetLastCreatedHashtableBJ()))
action=KillDestructable(LoadDestructableHandleBJ("9", "2", GetLastCreatedHashtableBJ()))
action=KillDestructable(LoadDestructableHandleBJ("7", "1", GetLastCreatedHashtableBJ()))
action=KillDestructable(LoadDestructableHandleBJ("7", "2", GetLastCreatedHashtableBJ()))
action=KillDestructable(LoadDestructableHandleBJ("8", "1", GetLastCreatedHashtableBJ()))
action=KillDestructable(LoadDestructableHandleBJ("8", "2", GetLastCreatedHashtableBJ()))
