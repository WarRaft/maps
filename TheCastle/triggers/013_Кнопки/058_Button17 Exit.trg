[trigger]
name="Button17 Exit"
description=""
action=SetVariable($TempUnit, GetLeavingUnit())
condition=OperatorCompareBoolean(IsUnitType(GetLeavingUnit(), UnitTypeHero), OperatorEqualENE, "true")
action=SetVariable($TempNumButton, "17")
action=TriggerExecute($gg_trg_BUTTON_EXIT)
action=CommentString("Проверка на открытие решетки")
action=TriggerExecute($gg_trg_Lever_Buttons_Checking)
event=TriggerRegisterLeaveRectSimple($gg_rct_REG_Button17)
