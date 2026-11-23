[trigger]
name="Skeleton Archer"
description=""
action=SetVariable($Item_Drops, GetRandomInt("1", "20"))
action=IfThenElse(condition:OperatorCompareInteger($Item_Drops, OperatorEqual, "1") ~"", action:CreateItemLoc("I02E", GetUnitLoc(GetTriggerUnit())) ~"DoNothing", action:DoNothing())
condition=OrMultiple()
>condition:0=OperatorCompareUnitCode(GetUnitTypeId(GetTriggerUnit()), OperatorEqualENE, "nska")
event=TriggerRegisterAnyUnitEventBJ(PlayerUnitEventDeath)
