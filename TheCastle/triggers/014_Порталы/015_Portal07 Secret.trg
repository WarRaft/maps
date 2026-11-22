[trigger]
name="Portal07 Secret"
description=""
condition=OperatorCompareBoolean(IsUnitType(GetEnteringUnit(), UnitTypeHero), OperatorEqualENE, "true")
condition=OperatorCompareBoolean($Portal_Activity_Bool["7"], OperatorEqualENE, "true")
event=TriggerRegisterEnterRectSimple($gg_rct_REG_Portal07_Gate1_Secret)
action=DisableTrigger(GetTriggeringTrigger())
action=CustomScriptCode("call TeoPortalMoving(GetEnteringUnit(), 7, 0)")
action=TriggerSleepAction("0.50")
action=KillDestructable(LoadDestructableHandleBJ("7", "1", GetLastCreatedHashtableBJ()))
action=KillDestructable(LoadDestructableHandleBJ("7", "2", GetLastCreatedHashtableBJ()))
action=CustomScriptCode("call TeoPortalRevival(8)")
