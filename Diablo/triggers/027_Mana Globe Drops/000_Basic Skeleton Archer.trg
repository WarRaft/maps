[trigger]
name="Basic Skeleton Archer"
description=""
action=SetVariable($Random_Item_Drop, GetRandomInt("1", "4"))
action=IfThenElse(condition:OperatorCompareInteger($Random_Item_Drop, OperatorEqual, "1") ~"", action:CreateItemLoc("I00O", GetUnitLoc(GetTriggerUnit())) ~"DoNothing", action:DoNothing())
condition=OrMultiple()
>condition:0=OperatorCompareUnitCode(GetUnitTypeId(GetTriggerUnit()), OperatorEqualENE, "nska")
event=TriggerRegisterAnyUnitEventBJ(PlayerUnitEventDeath)
