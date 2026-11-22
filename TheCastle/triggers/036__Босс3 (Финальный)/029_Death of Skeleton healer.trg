[trigger]
name="Death of Skeleton healer"
description=""
initially_off=1
action=GroupRemoveUnitSimple(GetDyingUnit(), $Archmage_Heal_Group)
condition=OperatorCompareUnitCode(GetUnitTypeId(GetDyingUnit()), OperatorEqualENE, "u00F")
event=TriggerRegisterPlayerUnitEventSimple(PlayerNA, PlayerUnitEventDeath)
