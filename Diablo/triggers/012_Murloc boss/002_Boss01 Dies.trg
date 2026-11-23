[trigger]
name="Boss01 Dies"
description=""
action=AddSpecialEffectTargetUnitBJ("origin", $gg_unit_nmsc_0034, "Objects\\Spawnmodels\\Naga\\NagaDeath\\NagaDeath.mdl")
action=EnableTrigger($gg_trg_Port02)
action=TriggerSleepAction("2")
action=DestroyEffectBJ(GetLastCreatedEffectBJ())
event=TriggerRegisterUnitEvent($gg_unit_nmsc_0034, UnitEventDeath)
