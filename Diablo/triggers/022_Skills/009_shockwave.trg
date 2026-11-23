[trigger]
name="shockwave"
description=""
action=CameraSetEQNoiseForPlayer(GetOwningPlayer(GetTriggerUnit()), "5.00")
action=UnitAddAbilityBJ("A00L", GetTriggerUnit())
action=PolledWait("0.50")
action=UnitRemoveAbilityBJ("A00L", GetTriggerUnit())
action=CameraClearNoiseForPlayer(GetOwningPlayer(GetTriggerUnit()))
condition=OperatorCompareAbilityId(GetSpellAbilityId(), OperatorEqualENE, "AUim")
event=TriggerRegisterAnyUnitEventBJ(PlayerUnitEventSpellEffect)
