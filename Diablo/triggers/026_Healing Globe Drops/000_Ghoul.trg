[trigger]
name="Ghoul"
description=""
action=SetVariable($Random_Item_Drop, GetRandomInt("1", "25"))
action=IfThenElse(condition:OperatorCompareInteger($Random_Item_Drop, OperatorEqual, "1") ~"", action:CreateItemLoc("I00N", GetUnitLoc(GetTriggerUnit())) ~"DoNothing", action:DoNothing())
condition=OrMultiple()
>condition:0=OperatorCompareUnitCode(GetUnitTypeId(GetTriggerUnit()), OperatorEqualENE, "nmcf")
event=TriggerRegisterAnyUnitEventBJ(PlayerUnitEventDeath)
