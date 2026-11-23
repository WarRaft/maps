[trigger]
name="Mana Globe Pickup"
description=""
action=SetUnitManaBJ(GetTriggerUnit(), OperatorReal(GetUnitStateSwap(UnitStateMana, GetTriggerUnit()), OperatorAdd, OperatorReal(GetUnitStateSwap(UnitStateMaxMana, GetTriggerUnit()), OperatorMultiply, "0.35")))
condition=OperatorCompareItemCode(GetItemTypeId(GetManipulatedItem()), OperatorEqualENE, "I00O")
event=TriggerRegisterAnyUnitEventBJ(PlayerUnitEventHeroPickUpItem)
