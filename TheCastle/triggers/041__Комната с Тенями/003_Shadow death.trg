[trigger]
name="Shadow death"
description=""
action=GroupRemoveUnitSimple(GetDyingUnit(), $Shadows_Group)
condition=OperatorCompareUnitCode(GetUnitTypeId(GetDyingUnit()), OperatorEqualENE, "e001")
event=TriggerRegisterAnyUnitEventBJ(PlayerUnitEventDeath)
