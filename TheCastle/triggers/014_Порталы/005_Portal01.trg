[trigger]
name="Portal01"
description=""
condition=OperatorCompareBoolean(IsUnitType(GetEnteringUnit(), UnitTypeHero), OperatorEqualENE, "true")
condition=OperatorCompareBoolean($Portal_Activity_Bool["1"], OperatorEqualENE, "true")
action=DisableTrigger(GetTriggeringTrigger())
action=CustomScriptCode("call TeoPortalMoving(GetEnteringUnit(), 1, 180)")
action=TriggerSleepAction("0.50")
action=KillDestructable(LoadDestructableHandleBJ("1", "1", GetLastCreatedHashtableBJ()))
action=KillDestructable(LoadDestructableHandleBJ("1", "2", GetLastCreatedHashtableBJ()))
event=TriggerRegisterEnterRectSimple($gg_rct_REG_Portal01_Gate1)
