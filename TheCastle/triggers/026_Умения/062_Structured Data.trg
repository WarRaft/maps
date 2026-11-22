[trigger]
name="Structured Data"
description=""
action=SetHeroXP(GetTriggerUnit(), OperatorInt(GetHeroXP(GetTriggerUnit()), OperatorAdd, "50"), ShowHideHide)
condition=OperatorCompareItemCode(GetItemTypeId(GetManipulatedItem()), OperatorEqualENE, "I01M")
event=TriggerRegisterAnyUnitEventBJ(PlayerUnitEventHeroUseItem)
