[trigger]
name="Robots death"
description=""
action=GroupRemoveUnitSimple(GetDyingUnit(), $Robots_Group)
condition=OperatorCompareUnitCode(GetUnitTypeId(GetDyingUnit()), OperatorEqualENE, "n01J")
event=TriggerRegisterAnyUnitEventBJ(PlayerUnitEventDeath)
