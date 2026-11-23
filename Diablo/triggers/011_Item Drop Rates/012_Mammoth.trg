[trigger]
name="Mammoth"
description=""
action=SetVariable($Item_Drops, GetRandomInt("1", "6"))
action=IfThenElse(condition:OperatorCompareInteger($Item_Drops, OperatorEqual, "1") ~"", action:CreateItemLoc("I011", GetUnitLoc(GetTriggerUnit())) ~"DoNothing", action:DoNothing())
action=IfThenElse(condition:OperatorCompareInteger($Item_Drops, OperatorEqual, "4") ~"", action:CreateItemLoc("I011", GetUnitLoc(GetTriggerUnit())) ~"DoNothing", action:DoNothing())
action=IfThenElse(condition:OperatorCompareInteger($Item_Drops, OperatorEqual, "2") ~"", action:CreateItemLoc("I027", GetUnitLoc(GetTriggerUnit())) ~"DoNothing", action:DoNothing())
condition=OrMultiple()
>condition:0=OperatorCompareUnitCode(GetUnitTypeId(GetTriggerUnit()), OperatorEqualENE, "nmit")
event=TriggerRegisterAnyUnitEventBJ(PlayerUnitEventDeath)
