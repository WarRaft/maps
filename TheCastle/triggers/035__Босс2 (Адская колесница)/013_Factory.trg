[trigger]
name="Factory"
description=""
condition=OperatorCompareBoolean(IsUnitDeadBJ($gg_unit_h000_0027), OperatorEqualENE, "true")
condition=OperatorCompareBoolean(IsUnitDeadBJ($gg_unit_h000_0031), OperatorEqualENE, "true")
action=DisableTrigger(GetTriggeringTrigger())
action=DisableTrigger($gg_trg_Tanks_respawn)
action=EnableTrigger($gg_trg_Robots_respawn)
action=KillUnit($Robot_Generator["4"])
event=TriggerRegisterUnitEvent($gg_unit_h000_0027, UnitEventDeath)
event=TriggerRegisterUnitEvent($gg_unit_h000_0031, UnitEventDeath)
