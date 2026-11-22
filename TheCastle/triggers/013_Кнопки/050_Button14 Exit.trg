[trigger]
name="Button14 Exit"
description=""
action=SetVariable($TempUnit, GetLeavingUnit())
condition=OperatorCompareBoolean(IsUnitType(GetLeavingUnit(), UnitTypeHero), OperatorEqualENE, "true")
action=SetVariable($TempNumButton, "14")
action=TriggerExecute($gg_trg_BUTTON_EXIT)
action=CommentString("Проверка на открытие портала")
action=TriggerExecute($gg_trg_Portal_Buttons_Checking)
event=TriggerRegisterLeaveRectSimple($gg_rct_REG_Button14)
