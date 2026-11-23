[trigger]
name="Combo Onslaught"
description=""
action=SetPlayerState(GetOwningPlayer(GetTriggerUnit()), PlayerStateGold, "0")
action=TriggerSleepAction("0.10")
action=UnitRemoveAbilityBJ("A04N", GetTriggerUnit())
action=UnitAddAbilityBJ("A03U", GetTriggerUnit())
action=TriggerSleepAction("5.00")
action=UnitRemoveAbilityBJ("A03U", GetTriggerUnit())
condition=OrMultiple()
>condition:0=OperatorCompareAbilityId(GetSpellAbilityId(), OperatorEqualENE, "A04N")
event=TriggerRegisterAnyUnitEventBJ(PlayerUnitEventSpellEffect)
