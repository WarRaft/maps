[trigger]
name="Crypt Warrior"
description=""
action=SetVariable($Item_Drops, GetRandomInt("1", "5"))
action=IfThenElse(condition:OperatorCompareInteger($Item_Drops, OperatorEqual, "2") ~"", action:CreateItemLoc("I011", GetUnitLoc(GetTriggerUnit())) ~"DoNothing", action:DoNothing())
condition=OrMultiple()
>condition:0=OperatorCompareUnitCode(GetUnitTypeId(GetTriggerUnit()), OperatorEqualENE, "u005")
event=TriggerRegisterAnyUnitEventBJ(PlayerUnitEventDeath)
