[trigger]
name="Soul Stone1 Cancel Animation"
description=""
action=DisableTrigger(GetTriggeringTrigger())
action=DisableTrigger($gg_trg_Soul_Stone1_Animation)
action=ResetUnitAnimation($gg_unit_n00N_0221)
action=ResetUnitAnimation($gg_unit_n00N_0024)
action=ResetUnitAnimation($gg_unit_n00N_0220)
action=ResetUnitAnimation($gg_unit_n00N_0219)
action=ResetUnitAnimation($gg_unit_n00M_0218)
event=TriggerRegisterUnitEvent($gg_unit_n00N_0221, UnitEventTargetInRange)
event=TriggerRegisterUnitEvent($gg_unit_n00N_0024, UnitEventTargetInRange)
