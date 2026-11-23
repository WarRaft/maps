[trigger]
name="Combo Axe Throw Copy"
description=""
action=SetPlayerState(GetOwningPlayer(GetTriggerUnit()), PlayerStateGold, "0")
action=TriggerSleepAction("0.10")
action=UnitRemoveAbilityBJ("A041", GetTriggerUnit())
condition=OrMultiple()
>condition:0=OperatorCompareAbilityId(GetSpellAbilityId(), OperatorEqualENE, "A041")
event=TriggerRegisterAnyUnitEventBJ(PlayerUnitEventSpellEffect)
