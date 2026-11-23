[trigger]
name="Summoners"
description=""
action=SetVariable($Item_Drops, GetRandomInt("1", "6"))
action=IfThenElse(condition:OperatorCompareInteger($Item_Drops, OperatorEqual, "1") ~"", action:CreateItemLoc("I003", GetUnitLoc(GetTriggerUnit())) ~"DoNothing", action:DoNothing())
action=IfThenElse(condition:OperatorCompareInteger($Item_Drops, OperatorEqual, "3") ~"", action:CreateItemLoc("I00S", GetUnitLoc(GetTriggerUnit())) ~"DoNothing", action:DoNothing())
condition=OrMultiple()
>condition:0=OperatorCompareUnitCode(GetUnitTypeId(GetTriggerUnit()), OperatorEqualENE, "u000")
event=TriggerRegisterAnyUnitEventBJ(PlayerUnitEventDeath)
