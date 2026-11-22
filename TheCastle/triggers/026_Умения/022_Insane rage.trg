[trigger]
name="Insane rage"
description=""
action=QueueUnitAnimationBJ($Hero_warrior, "stand")
action=SetUnitLifePercentBJ($Hero_warrior, "100")
event=TriggerRegisterPlayerUnitEventSimple(Player00, PlayerUnitEventSpellEffect)
event=TriggerRegisterPlayerUnitEventSimple(Player01, PlayerUnitEventSpellEffect)
event=TriggerRegisterPlayerUnitEventSimple(Player02, PlayerUnitEventSpellEffect)
condition=OperatorCompareAbilityId(GetSpellAbilityId(), OperatorEqualENE, "A061")
