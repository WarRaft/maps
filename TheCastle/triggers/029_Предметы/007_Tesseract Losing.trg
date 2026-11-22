[trigger]
name="Tesseract Losing"
description=""
condition=OperatorCompareItemCode(GetItemTypeId(GetManipulatedItem()), OperatorEqualENE, "I038")
action=SetVariable($Tesseract_Item, GetManipulatedItem())
action=SetVariable($Tesseract_unit, GetTriggerUnit())
action=CommentString("Позволяет дождаться момента, когда предмет упадет на землю")
action=TriggerSleepAction("0.00")
action=TriggerExecute($gg_trg_Tesseract_Actions_in_losing)
event=TriggerRegisterPlayerUnitEventSimple(Player00, PlayerUnitEventHeroDropItem)
event=TriggerRegisterPlayerUnitEventSimple(Player01, PlayerUnitEventHeroDropItem)
event=TriggerRegisterPlayerUnitEventSimple(Player02, PlayerUnitEventHeroDropItem)
