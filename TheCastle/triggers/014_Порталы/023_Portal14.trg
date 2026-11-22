[trigger]
name="Portal14"
description=""
condition=OperatorCompareBoolean(IsUnitType(GetEnteringUnit(), UnitTypeHero), OperatorEqualENE, "true")
condition=OperatorCompareBoolean($Portal_Activity_Bool["14"], OperatorEqualENE, "true")
event=TriggerRegisterEnterRectSimple($gg_rct_REG_Portal14_Gate1)
action=DisableTrigger(GetTriggeringTrigger())
action=CustomScriptCode("call TeoPortalMoving(GetEnteringUnit(), 14, 0)")
action=TriggerSleepAction("0.50")
action=KillDestructable(LoadDestructableHandleBJ("14", "1", GetLastCreatedHashtableBJ()))
action=KillDestructable(LoadDestructableHandleBJ("14", "2", GetLastCreatedHashtableBJ()))
