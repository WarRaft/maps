[trigger]
name="Soul Harvest SFX"
description=""
action=UnitAddAbilityBJ("A011", GetTriggerUnit())
action=PolledWait("8.00")
action=UnitRemoveAbilityBJ("A011", GetTriggerUnit())
condition=OperatorCompareAbilityId(GetSpellAbilityId(), OperatorEqualENE, "AHdr")
event=TriggerRegisterAnyUnitEventBJ(PlayerUnitEventSpellEffect)
