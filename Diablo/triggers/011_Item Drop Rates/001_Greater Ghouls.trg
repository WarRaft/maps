[trigger]
name="Greater Ghouls"
description=""
enabled=0
action=SetVariable($Item_Drops, GetRandomInt("1", "14"))
action=IfThenElse(condition:OperatorCompareInteger($Item_Drops, OperatorEqual, "1") ~"", action:CreateItemLoc("I003", GetUnitLoc(GetTriggerUnit())) ~"DoNothing", action:DoNothing())
condition=OrMultiple()
>condition:0=OperatorCompareUnitCode(GetUnitTypeId(GetTriggerUnit()), OperatorEqualENE, "nmcf")
event=TriggerRegisterAnyUnitEventBJ(PlayerUnitEventDeath)
