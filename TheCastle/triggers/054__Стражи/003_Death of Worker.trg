[trigger]
name="Death of Worker"
description=""
action=GroupRemoveUnitSimple(GetDyingUnit(), $WaterGuard_Worker)
condition=OperatorCompareUnitCode(GetUnitTypeId(GetDyingUnit()), OperatorEqualENE, "n02X")
event=TriggerRegisterPlayerUnitEventSimple(PlayerNA, PlayerUnitEventDeath)
