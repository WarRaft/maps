[trigger]
name="Impen"
description=""
action=SetUnitAnimation(GetTriggerUnit(), "SPELL")
action=AddSpecialEffectTargetUnitBJ("origin", GetTriggerUnit(), "Abilities\\Spells\\Other\\Charm\\CharmTarget.mdl")
action=DestroyEffectBJ(GetLastCreatedEffectBJ())
condition=OperatorCompareAbilityId(GetSpellAbilityId(), OperatorEqualENE, "AHds")
event=TriggerRegisterAnyUnitEventBJ(PlayerUnitEventSpellEffect)
