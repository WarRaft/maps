[trigger]
name="Death of Warrior"
description=""
action=GroupRemoveUnitSimple(GetDyingUnit(), $WaterGuard_Warrior)
condition=OperatorCompareUnitCode(GetUnitTypeId(GetDyingUnit()), OperatorEqualENE, "n02Y")
event=TriggerRegisterPlayerUnitEventSimple(PlayerNA, PlayerUnitEventDeath)
