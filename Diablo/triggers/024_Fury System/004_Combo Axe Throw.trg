[trigger]
name="Combo Axe Throw"
description=""
action=SetPlayerState(GetOwningPlayer(GetTriggerUnit()), PlayerStateGold, "0")
action=TriggerSleepAction("0.10")
action=UnitRemoveAbilityBJ("A01L", GetTriggerUnit())
condition=OrMultiple()
>condition:0=OperatorCompareAbilityId(GetSpellAbilityId(), OperatorEqualENE, "A01L")
event=TriggerRegisterAnyUnitEventBJ(PlayerUnitEventSpellEffect)
