[trigger]
name="Combo Shout"
description=""
action=SetPlayerState(GetOwningPlayer(GetTriggerUnit()), PlayerStateGold, "0")
action=TriggerSleepAction("0.10")
action=UnitRemoveAbilityBJ("A01J", GetTriggerUnit())
condition=OrMultiple()
>condition:0=OperatorCompareAbilityId(GetSpellAbilityId(), OperatorEqualENE, "A01J")
event=TriggerRegisterAnyUnitEventBJ(PlayerUnitEventSpellEffect)
