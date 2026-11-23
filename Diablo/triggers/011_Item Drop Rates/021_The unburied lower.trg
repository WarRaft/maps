[trigger]
name="The unburied lower"
description=""
action=SetVariable($Item_Drops, GetRandomInt("1", "4"))
action=IfThenElse(condition:OperatorCompareInteger($Item_Drops, OperatorEqual, "2") ~"", action:CreateItemLoc("I01W", GetUnitLoc(GetTriggerUnit())) ~"DoNothing", action:DoNothing())
condition=OrMultiple()
>condition:0=OperatorCompareUnitCode(GetUnitTypeId(GetTriggerUnit()), OperatorEqualENE, "n00A")
event=TriggerRegisterAnyUnitEventBJ(PlayerUnitEventDeath)
