[trigger]
name="Chests"
description=""
condition=OperatorCompareItemCode(GetItemTypeId(GetManipulatedItem()), OperatorEqualENE, "I00T")
action=SetDoodadAnimationBJ("birth", "D037", "100.00", GetItemLoc(GetManipulatedItem()))
event=TriggerRegisterAnyUnitEventBJ(PlayerUnitEventHeroPickUpItem)
