[trigger]
name="Chest Drop 02"
description=""
action=CreateItemLoc("I02H", GetUnitLoc(GetTriggerUnit()))
action=CreateItemLoc("I02E", GetUnitLoc(GetTriggerUnit()))
action=SetVariable($Item_Drops, GetRandomInt("1", "2"))
action=IfThenElse(condition:OperatorCompareInteger($Item_Drops, OperatorEqual, "1") ~"", action:CreateItemLoc("lmbr", GetUnitLoc(GetTriggerUnit())) ~"DoNothing", action:DoNothing())
action=IfThenElse(condition:OperatorCompareInteger($Item_Drops, OperatorEqual, "2") ~"", action:CreateItemLoc("I012", GetUnitLoc(GetTriggerUnit())) ~"DoNothing", action:DoNothing())
event=TriggerRegisterUnitEvent($gg_unit_n006_0218, UnitEventDeath)
