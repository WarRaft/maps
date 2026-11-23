[trigger]
name="Ground Stomp"
description=""
action=CameraSetEQNoiseForPlayer(GetOwningPlayer(GetTriggerUnit()), "5.00")
action=PolledWait("0.50")
action=CameraClearNoiseForPlayer(GetOwningPlayer(GetTriggerUnit()))
condition=OperatorCompareAbilityId(GetSpellAbilityId(), OperatorEqualENE, "AOws")
event=TriggerRegisterAnyUnitEventBJ(PlayerUnitEventSpellEffect)
