[trigger]
name="Pulse Wizard"
description=""
action=CameraSetEQNoiseForPlayer(GetOwningPlayer(GetTriggerUnit()), "5.00")
action=UnitAddAbilityBJ("A00L", GetTriggerUnit())
action=PolledWait("0.50")
action=CameraClearNoiseForPlayer(GetOwningPlayer(GetTriggerUnit()))
action=PolledWait("0.50")
action=UnitRemoveAbilityBJ("A00L", GetTriggerUnit())
condition=OperatorCompareAbilityId(GetSpellAbilityId(), OperatorEqualENE, "A00N")
event=TriggerRegisterAnyUnitEventBJ(PlayerUnitEventSpellEffect)
