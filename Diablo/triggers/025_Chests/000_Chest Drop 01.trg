[trigger]
name="Chest Drop 01"
description=""
action=CreateItemLoc("I02G", GetUnitLoc(GetTriggerUnit()))
action=CreateItemLoc("I00U", GetUnitLoc(GetTriggerUnit()))
action=SetVariable($Item_Drops, GetRandomInt("1", "2"))
action=IfThenElse(condition:OperatorCompareInteger($Item_Drops, OperatorEqual, "1") ~"", action:CreateItemLoc("I000", GetUnitLoc(GetTriggerUnit())) ~"DoNothing", action:DoNothing())
action=IfThenElse(condition:OperatorCompareInteger($Item_Drops, OperatorEqual, "1") ~"", action:CreateItemLoc("I00J", GetUnitLoc(GetTriggerUnit())) ~"DoNothing", action:DoNothing())
action=IfThenElse(condition:OperatorCompareInteger($Item_Drops, OperatorEqual, "2") ~"", action:CreateItemLoc("I019", GetUnitLoc(GetTriggerUnit())) ~"DoNothing", action:DoNothing())
action=IfThenElse(condition:OperatorCompareInteger($Item_Drops, OperatorEqual, "2") ~"", action:CreateItemLoc("I008", GetUnitLoc(GetTriggerUnit())) ~"DoNothing", action:DoNothing())
action=DisplayTextToForce(GetPlayersAll(), "TRIGSTR_6025")
event=TriggerRegisterUnitEvent($gg_unit_n006_0322, UnitEventDeath)
