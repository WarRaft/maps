[trigger]
name="Chest Drop 06"
description=""
action=CreateItemLoc("I02F", GetUnitLoc(GetTriggerUnit()))
action=CreateItemLoc("I00Q", GetUnitLoc(GetTriggerUnit()))
action=CreateItemLoc("lmbr", GetUnitLoc(GetTriggerUnit()))
action=SetVariable($Item_Drops, GetRandomInt("1", "2"))
action=IfThenElse(condition:OperatorCompareInteger($Item_Drops, OperatorEqual, "1") ~"", action:CreateItemLoc("I01Y", GetUnitLoc(GetTriggerUnit())) ~"DoNothing", action:DoNothing())
action=IfThenElse(condition:OperatorCompareInteger($Item_Drops, OperatorEqual, "2") ~"", action:CreateItemLoc("I00G", GetUnitLoc(GetTriggerUnit())) ~"DoNothing", action:DoNothing())
event=TriggerRegisterUnitEvent($gg_unit_n006_0294, UnitEventDeath)
