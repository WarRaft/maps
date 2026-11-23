[trigger]
name="Dark Summoner"
description=""
action=SetVariable($Random_Item_Drop, GetRandomInt("1", "5"))
action=IfThenElse(condition:OperatorCompareInteger($Random_Item_Drop, OperatorEqual, "1") ~"", action:CreateItemLoc("I00O", GetUnitLoc(GetTriggerUnit())) ~"DoNothing", action:DoNothing())
condition=OrMultiple()
>condition:0=OperatorCompareUnitCode(GetUnitTypeId(GetTriggerUnit()), OperatorEqualENE, "u000")
event=TriggerRegisterAnyUnitEventBJ(PlayerUnitEventDeath)
