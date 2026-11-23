[trigger]
name="Trees Die"
description=""
condition=OperatorCompareUnitCode(GetUnitTypeId(GetTriggerUnit()), OperatorEqualENE, "n00G")
action=SetVariable($Tree_Deaths, OperatorInt($Tree_Deaths, OperatorAdd, "1"))
event=TriggerRegisterAnyUnitEventBJ(PlayerUnitEventDeath)
