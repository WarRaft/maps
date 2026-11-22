[trigger]
name="Locust swarm"
description=""
action=IssueImmediateOrder(GetTriggerUnit(), UnitOrderLocustSwarm)
condition=OperatorCompareAbilityId(GetSpellAbilityId(), OperatorEqualENE, "A04I")
event=TriggerRegisterAnyUnitEventBJ(PlayerUnitEventSpellEffect)
