[trigger]
name="Mirror Image"
description=""
action=ForGroupMultiple(GetUnitsOfPlayerAll(GetOwningPlayer(GetTriggerUnit())))
>action:0=SelectUnitAddForPlayer(GetEnumUnit(), GetOwningPlayer(GetTriggerUnit()))
condition=OperatorCompareAbilityId(GetSpellAbilityId(), OperatorEqualENE, "A043")
event=TriggerRegisterAnyUnitEventBJ(PlayerUnitEventSpellEffect)
