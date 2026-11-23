[trigger]
name="Whirlwind Optimised"
description=""
action=UnitAddAbilityBJ("A019", GetTriggerUnit())
action=PolledWait("3.00")
action=SetPlayerAbilityAvailableBJ(EnableDisableDisable, "A002", GetOwningPlayer(GetTriggerUnit()))
action=UnitRemoveAbilityBJ("A019", GetTriggerUnit())
action=UnitAddAbilityBJ("A00E", GetTriggerUnit())
action=PolledWait("5.00")
action=UnitRemoveAbilityBJ("A00E", GetTriggerUnit())
action=SetPlayerAbilityAvailableBJ(EnableDisableEnable, "A002", GetOwningPlayer(GetTriggerUnit()))
condition=OperatorCompareAbilityId(GetSpellAbilityId(), OperatorEqualENE, "A002")
event=TriggerRegisterAnyUnitEventBJ(PlayerUnitEventSpellEffect)
