[trigger]
name="Necronomicon Button5 Entrance"
description=""
action=SetVariable($TempUnit, GetEnteringUnit())
condition=OperatorCompareBoolean(IsUnitType(GetEnteringUnit(), UnitTypeHero), OperatorEqualENE, "true")
action=SetVariable($TempNumButton, "5")
action=TriggerExecute($gg_trg_BUTTON_ENTRANCE)
action=CommentString("Проверка на открытие ворот")
action=TriggerExecute($gg_trg_Necronomicon_Buttons_Checking)
event=TriggerRegisterEnterRectSimple($gg_rct_REG_Button05)
