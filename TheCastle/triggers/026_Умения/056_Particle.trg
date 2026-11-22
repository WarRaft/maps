[trigger]
name="Particle"
description=""
action=SetVariable($Count_Life, OperatorInt($Count_Life, OperatorAdd, "1"))
action=ForForceMultiple($Players)
>action:0=SetPlayerState(GetEnumPlayer(), PlayerStateLumber, OperatorInt($Count_Life, OperatorSubtract, "1"))
event=TriggerRegisterPlayerUnitEventSimple(Player00, PlayerUnitEventSpellEffect)
event=TriggerRegisterPlayerUnitEventSimple(Player01, PlayerUnitEventSpellEffect)
event=TriggerRegisterPlayerUnitEventSimple(Player02, PlayerUnitEventSpellEffect)
condition=OperatorCompareAbilityId(GetSpellAbilityId(), OperatorEqualENE, "A037")
