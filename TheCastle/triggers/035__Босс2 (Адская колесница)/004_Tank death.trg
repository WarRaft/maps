[trigger]
name="Tank death"
description=""
action=GroupRemoveUnitSimple(GetDyingUnit(), $Tanks_Group)
condition=OperatorCompareUnitCode(GetUnitTypeId(GetDyingUnit()), OperatorEqualENE, "h001")
event=TriggerRegisterAnyUnitEventBJ(PlayerUnitEventDeath)
