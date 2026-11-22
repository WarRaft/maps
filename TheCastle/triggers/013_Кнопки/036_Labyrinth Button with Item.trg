[trigger]
name="Labyrinth Button with Item"
description=""
action=CommentString("Сразу после потери предмета удаляем ауру замедления")
action=UnitRemoveBuffBJ("B003", GetManipulatingUnit())
condition=OperatorCompareItemCode(GetItemTypeId(GetManipulatedItem()), OperatorEqualENE, "I00K")
action=SetVariable($TempItem, GetManipulatedItem())
action=TriggerSleepAction("0.10")
action=TriggerExecute($gg_trg_Labyrinth_Button_Checking_Item)
event=TriggerRegisterAnyUnitEventBJ(PlayerUnitEventHeroDropItem)
