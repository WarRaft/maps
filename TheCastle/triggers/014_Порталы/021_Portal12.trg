[trigger]
name="Portal12"
description=""
condition=OperatorCompareBoolean(IsUnitType(GetEnteringUnit(), UnitTypeHero), OperatorEqualENE, "true")
condition=OperatorCompareBoolean($Portal_Activity_Bool["12"], OperatorEqualENE, "true")
event=TriggerRegisterEnterRectSimple($gg_rct_REG_Portal12_Gate1)
action=DisableTrigger(GetTriggeringTrigger())
action=CustomScriptCode("call TeoPortalMoving(GetEnteringUnit(), 12, 180)")
action=TriggerSleepAction("0.50")
action=KillDestructable(LoadDestructableHandleBJ("11", "1", GetLastCreatedHashtableBJ()))
action=KillDestructable(LoadDestructableHandleBJ("11", "2", GetLastCreatedHashtableBJ()))
action=KillDestructable(LoadDestructableHandleBJ("12", "1", GetLastCreatedHashtableBJ()))
action=KillDestructable(LoadDestructableHandleBJ("12", "2", GetLastCreatedHashtableBJ()))
action=CustomScriptCode("call TeoPortalRevival(14)")
action=DisableTrigger($gg_trg_Fire_Golems)
