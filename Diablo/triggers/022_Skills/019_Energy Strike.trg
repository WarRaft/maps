[trigger]
name="Energy Strike"
description=""
action=SetPlayerAbilityAvailableBJ(EnableDisableDisable, "A000", GetOwningPlayer(GetTriggerUnit()))
action=UnitAddAbilityBJ("A044", GetTriggerUnit())
action=UnitAddAbilityBJ("A04D", GetTriggerUnit())
action=PolledWait("4.00")
action=SetPlayerAbilityAvailableBJ(EnableDisableEnable, "A000", GetOwningPlayer(GetTriggerUnit()))
action=UnitRemoveAbilityBJ("A044", GetTriggerUnit())
action=UnitRemoveAbilityBJ("A04D", GetTriggerUnit())
condition=OperatorCompareAbilityId(GetSpellAbilityId(), OperatorEqualENE, "A000")
event=TriggerRegisterAnyUnitEventBJ(PlayerUnitEventSpellEffect)
