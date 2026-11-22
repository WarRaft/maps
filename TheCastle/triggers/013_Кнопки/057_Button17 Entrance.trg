[trigger]
name="Button17 Entrance"
description=""
action=SetVariable($TempUnit, GetEnteringUnit())
condition=OperatorCompareBoolean(IsUnitType(GetEnteringUnit(), UnitTypeHero), OperatorEqualENE, "true")
action=SetVariable($TempNumButton, "17")
action=TriggerExecute($gg_trg_BUTTON_ENTRANCE)
action=CommentString("Проверка на открытие решетки")
action=TriggerExecute($gg_trg_Lever_Buttons_Checking)
event=TriggerRegisterEnterRectSimple($gg_rct_REG_Button17)
