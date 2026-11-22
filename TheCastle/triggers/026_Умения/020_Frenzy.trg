[trigger]
name="Frenzy"
description=""
action=QueueUnitAnimationBJ($Hero_warrior, "stand")
event=TriggerRegisterPlayerUnitEventSimple(Player00, PlayerUnitEventSpellEffect)
event=TriggerRegisterPlayerUnitEventSimple(Player01, PlayerUnitEventSpellEffect)
event=TriggerRegisterPlayerUnitEventSimple(Player02, PlayerUnitEventSpellEffect)
condition=OperatorCompareAbilityId(GetSpellAbilityId(), OperatorEqualENE, "A03U")
