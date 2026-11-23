[trigger]
name="Chest Drop 03"
description=""
action=CreateItemLoc("I02D", GetUnitLoc(GetTriggerUnit()))
action=CreateItemLoc("I02I", GetUnitLoc(GetTriggerUnit()))
action=SetVariable($Item_Drops, GetRandomInt("1", "2"))
action=IfThenElse(condition:OperatorCompareInteger($Item_Drops, OperatorEqual, "1") ~"", action:CreateItemLoc("lmbr", GetUnitLoc(GetTriggerUnit())) ~"DoNothing", action:DoNothing())
action=IfThenElse(condition:OperatorCompareInteger($Item_Drops, OperatorEqual, "1") ~"", action:CreateItemLoc("I00A", GetUnitLoc(GetTriggerUnit())) ~"DoNothing", action:DoNothing())
action=IfThenElse(condition:OperatorCompareInteger($Item_Drops, OperatorEqual, "2") ~"", action:CreateItemLoc("I01X", GetUnitLoc(GetTriggerUnit())) ~"DoNothing", action:DoNothing())
event=TriggerRegisterUnitEvent($gg_unit_n006_0272, UnitEventDeath)
