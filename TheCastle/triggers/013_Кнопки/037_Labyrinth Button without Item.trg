[trigger]
name="Labyrinth Button without Item"
description=""
action=SetVariable($TempUnit, $gg_unit_n00F_0134)
action=SetVariable($TempNumButton, $TempNumButtonItem)
action=TriggerExecute($gg_trg_BUTTON_EXIT)
condition=OperatorCompareItemCode(GetItemTypeId(GetManipulatedItem()), OperatorEqualENE, "I00K")
event=TriggerRegisterAnyUnitEventBJ(PlayerUnitEventHeroPickUpItem)
