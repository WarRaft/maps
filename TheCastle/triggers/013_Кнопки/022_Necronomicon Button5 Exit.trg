[trigger]
name="Necronomicon Button5 Exit"
description=""
action=SetVariable($TempUnit, GetLeavingUnit())
condition=OperatorCompareBoolean(IsUnitType(GetLeavingUnit(), UnitTypeHero), OperatorEqualENE, "true")
action=SetVariable($TempNumButton, "5")
action=TriggerExecute($gg_trg_BUTTON_EXIT)
action=CommentString("Проверка на открытие ворот")
action=TriggerExecute($gg_trg_Necronomicon_Buttons_Checking)
event=TriggerRegisterLeaveRectSimple($gg_rct_REG_Button05)
