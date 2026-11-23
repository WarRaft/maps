[trigger]
name="Khazra"
description=""
action=SetVariable($Item_Drops, GetRandomInt("1", "35"))
action=IfThenElse(condition:OperatorCompareInteger($Item_Drops, OperatorEqual, "1") ~"", action:CreateItemLoc("I013", GetUnitLoc(GetTriggerUnit())) ~"DoNothing", action:DoNothing())
action=IfThenElse(condition:OperatorCompareInteger($Item_Drops, OperatorEqual, "2") ~"", action:CreateItemLoc("I016", GetUnitLoc(GetTriggerUnit())) ~"DoNothing", action:DoNothing())
condition=OrMultiple()
>condition:0=OperatorCompareUnitCode(GetUnitTypeId(GetTriggerUnit()), OperatorEqualENE, "nsty")
event=TriggerRegisterAnyUnitEventBJ(PlayerUnitEventDeath)
