[trigger]
name="Greater Dark Summoner"
description=""
action=SetVariable($Random_Item_Drop, "3")
action=IfThenElse(condition:OperatorCompareInteger($Random_Item_Drop, OperatorEqual, "1") ~"", action:CreateItemLoc("I02B", GetUnitLoc(GetTriggerUnit())) ~"DoNothing", action:DoNothing())
condition=OrMultiple()
>condition:0=OperatorCompareUnitCode(GetUnitTypeId(GetTriggerUnit()), OperatorEqualENE, "u001")
event=TriggerRegisterAnyUnitEventBJ(PlayerUnitEventDeath)
