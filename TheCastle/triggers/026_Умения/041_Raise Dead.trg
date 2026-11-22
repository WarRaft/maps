[trigger]
name="Raise Dead"
description=""
action=QueueUnitAnimationBJ(GetTriggerUnit(), "stand")
condition=OrMultiple()
>condition:0=OperatorCompareAbilityId(GetSpellAbilityId(), OperatorEqualENE, "A038")
>condition:0=OperatorCompareAbilityId(GetSpellAbilityId(), OperatorEqualENE, "A03N")
event=TriggerRegisterAnyUnitEventBJ(PlayerUnitEventSpellEffect)
