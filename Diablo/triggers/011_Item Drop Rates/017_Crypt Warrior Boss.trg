[trigger]
name="Crypt Warrior Boss"
description=""
action=SetVariable($Item_Drops, GetRandomInt("1", "2"))
action=IfThenElse(condition:OperatorCompareInteger($Item_Drops, OperatorEqual, "1") ~"", action:CreateItemLoc("I00C", GetUnitLoc(GetTriggerUnit())) ~"DoNothing", action:DoNothing())
action=IfThenElse(condition:OperatorCompareInteger($Item_Drops, OperatorEqual, "2") ~"", action:CreateItemLoc("I00P", GetUnitLoc(GetTriggerUnit())) ~"DoNothing", action:DoNothing())
condition=OrMultiple()
>condition:0=OperatorCompareUnitCode(GetUnitTypeId(GetTriggerUnit()), OperatorEqualENE, "u003")
event=TriggerRegisterAnyUnitEventBJ(PlayerUnitEventDeath)
