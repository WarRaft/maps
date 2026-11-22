[trigger]
name="Death of Skeleton"
description=""
action=GroupRemoveUnitSimple(GetDyingUnit(), $Skeleton_Group)
condition=OperatorCompareUnitCode(GetUnitTypeId(GetDyingUnit()), OperatorEqualENE, "u001")
event=TriggerRegisterAnyUnitEventBJ(PlayerUnitEventDeath)
