[trigger]
name="Zombies 03"
description=""
action=SetVariable($Item_Drops, GetRandomInt("1", "62"))
action=IfThenElse(condition:OperatorCompareInteger($Item_Drops, OperatorEqual, "1") ~"", action:CreateItemLoc("I00F", GetUnitLoc(GetTriggerUnit())) ~"DoNothing", action:DoNothing())
action=IfThenElse(condition:OperatorCompareInteger($Item_Drops, OperatorEqual, "5") ~"", action:CreateItemLoc("I00V", GetUnitLoc(GetTriggerUnit())) ~"DoNothing", action:DoNothing())
condition=OrMultiple()
>condition:0=OperatorCompareUnitCode(GetUnitTypeId(GetTriggerUnit()), OperatorEqualENE, "n009")
>condition:0=OperatorCompareUnitCode(GetUnitTypeId(GetTriggerUnit()), OperatorEqualENE, "n008")
event=TriggerRegisterAnyUnitEventBJ(PlayerUnitEventDeath)
