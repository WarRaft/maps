[trigger]
name="The unburied"
description=""
action=SetVariable($Item_Drops, GetRandomInt("1", "4"))
action=IfThenElse(condition:OperatorCompareInteger($Item_Drops, OperatorEqual, "1") ~"", action:CreateItemLoc("I00T", GetUnitLoc(GetTriggerUnit())) ~"DoNothing", action:DoNothing())
condition=OrMultiple()
>condition:0=OperatorCompareUnitCode(GetUnitTypeId(GetTriggerUnit()), OperatorEqualENE, "nfra")
event=TriggerRegisterAnyUnitEventBJ(PlayerUnitEventDeath)
