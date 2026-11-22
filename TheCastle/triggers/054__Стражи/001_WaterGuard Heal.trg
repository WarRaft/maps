[trigger]
name="WaterGuard Heal"
description=""
action=SetUnitLifeBJ($UNIT_WaterGuard, OperatorReal(GetUnitStateSwap(UnitStateLife, $UNIT_WaterGuard), OperatorAdd, "2500.00"))
action=AddSpecialEffectTargetUnitBJ("origin", $UNIT_WaterGuard, "Abilities\\Spells\\Human\\Heal\\HealTarget.mdl")
condition=OperatorCompareUnitCode(GetUnitTypeId(GetDyingUnit()), OperatorEqualENE, "n02X")
condition=OperatorCompareBoolean(IsUnitAliveBJ($UNIT_WaterGuard), OperatorEqualENE, "true")
event=TriggerRegisterPlayerUnitEventSimple(PlayerNA, PlayerUnitEventDeath)
