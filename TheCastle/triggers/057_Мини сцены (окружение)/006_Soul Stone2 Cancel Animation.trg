[trigger]
name="Soul Stone2 Cancel Animation"
description=""
action=DisableTrigger(GetTriggeringTrigger())
action=DisableTrigger($gg_trg_Soul_Stone2_Animation)
action=ResetUnitAnimation($gg_unit_n00M_0308)
action=ResetUnitAnimation($gg_unit_n00M_0285)
action=ResetUnitAnimation($gg_unit_n00M_0314)
action=ResetUnitAnimation($gg_unit_n00M_0315)
event=TriggerRegisterUnitEvent($gg_unit_n00M_0308, UnitEventTargetInRange)
event=TriggerRegisterUnitEvent($gg_unit_n00M_0285, UnitEventTargetInRange)
