[trigger]
name="Zombie Jeremiah"
description=""
action=AddSpecialEffectTargetUnitBJ("origin", GetTriggerUnit(), "war3mapImported\\BigBloodEX-NoSplat-NoGutz-2.mdx")
action=DestroyEffectBJ(GetLastCreatedEffectBJ())
action=ModifyGateBJ(GateOperationOpen, $gg_dest_YTce_5112)
event=TriggerRegisterUnitEvent($gg_unit_n003_0099, UnitEventDeath)
