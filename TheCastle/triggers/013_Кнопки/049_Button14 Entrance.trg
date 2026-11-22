[trigger]
name="Button14 Entrance"
description=""
action=SetVariable($TempUnit, GetEnteringUnit())
condition=OperatorCompareBoolean(IsUnitType(GetEnteringUnit(), UnitTypeHero), OperatorEqualENE, "true")
action=SetVariable($TempNumButton, "14")
action=TriggerExecute($gg_trg_BUTTON_ENTRANCE)
action=CommentString("Проверка на открытие портала")
action=TriggerExecute($gg_trg_Portal_Buttons_Checking)
event=TriggerRegisterEnterRectSimple($gg_rct_REG_Button14)
