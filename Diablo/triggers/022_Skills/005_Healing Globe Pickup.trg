[trigger]
name="Healing Globe Pickup"
description=""
action=SetUnitLifeBJ(GetTriggerUnit(), OperatorReal(GetUnitStateSwap(UnitStateLife, GetTriggerUnit()), OperatorAdd, OperatorReal(GetUnitStateSwap(UnitStateMaxLife, GetTriggerUnit()), OperatorMultiply, "0.35")))
condition=OperatorCompareItemCode(GetItemTypeId(GetManipulatedItem()), OperatorEqualENE, "I00N")
event=TriggerRegisterAnyUnitEventBJ(PlayerUnitEventHeroPickUpItem)
