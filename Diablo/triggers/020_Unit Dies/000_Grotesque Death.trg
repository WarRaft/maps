[trigger]
name="Grotesque Death"
description=""
action=AddSpecialEffectTargetUnitBJ("origin", GetTriggerUnit(), "war3mapImported\\BigBloodEX-NoSplat-NoGutz-2.mdx")
action=DestroyEffectBJ(GetLastCreatedEffectBJ())
condition=OperatorCompareUnitCode(GetUnitTypeId(GetTriggerUnit()), OperatorEqualENE, "n001")
action=SetVariable($SFX_Variables["0"], GetLastCreatedEffectBJ())
action=PolledWait("2")
action=DestroyEffectBJ($SFX_Variables["0"])
event=TriggerRegisterAnyUnitEventBJ(PlayerUnitEventDeath)
