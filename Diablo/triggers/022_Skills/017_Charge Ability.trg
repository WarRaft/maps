[trigger]
name="Charge Ability"
description=""
action=UnitAddAbilityBJ("A00L", GetTriggerUnit())
action=PolledWait("11.00")
action=UnitRemoveAbilityBJ("A00L", GetTriggerUnit())
condition=OperatorCompareAbilityId(GetSpellAbilityId(), OperatorEqualENE, "ANbr")
event=TriggerRegisterAnyUnitEventBJ(PlayerUnitEventSpellEffect)
