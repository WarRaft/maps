[trigger]
name="Portal17"
description=""
condition=OperatorCompareBoolean(IsUnitType(GetEnteringUnit(), UnitTypeHero), OperatorEqualENE, "true")
condition=OperatorCompareBoolean($Portal_Activity_Bool["17"], OperatorEqualENE, "true")
event=TriggerRegisterEnterRectSimple($gg_rct_REG_Portal17_Gate1)
action=CustomScriptCode("call TeoPortalMoving(GetEnteringUnit(), 17, 0)")
action=IfThenElseMultiple()
>condition:0=OperatorCompareInteger(CountUnitsInGroup(GetUnitsInRectAll($gg_rct_REG_Naga_Lever)), OperatorEqual, "0")
>action:1=DisableTrigger(GetTriggeringTrigger())
>action:1=TriggerSleepAction("0.50")
>action:1=KillDestructable(LoadDestructableHandleBJ("17", "1", GetLastCreatedHashtableBJ()))
>action:1=KillDestructable(LoadDestructableHandleBJ("17", "2", GetLastCreatedHashtableBJ()))
