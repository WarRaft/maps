[trigger]
name="Unburied Death"
description=""
action=AddSpecialEffectTargetUnitBJ("origin", GetTriggerUnit(), "war3mapImported\\BigBloodEX-NoSplat-NoGutz-2.mdx")
action=DestroyEffectBJ(GetLastCreatedEffectBJ())
condition=OperatorCompareUnitCode(GetUnitTypeId(GetTriggerUnit()), OperatorEqualENE, "n00A")
action=AddSpecialEffectTargetUnitBJ("origin", GetTriggerUnit(), "war3mapImported\\BloodEX-Special-2.mdx")
action=DestroyEffectBJ(GetLastCreatedEffectBJ())
event=TriggerRegisterAnyUnitEventBJ(PlayerUnitEventDeath)
