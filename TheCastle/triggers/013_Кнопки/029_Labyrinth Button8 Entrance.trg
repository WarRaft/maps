[trigger]
name="Labyrinth Button8 Entrance"
description=""
action=SetVariable($TempUnit, GetEnteringUnit())
condition=OperatorCompareBoolean(IsUnitType(GetEnteringUnit(), UnitTypeHero), OperatorEqualENE, "true")
action=SetVariable($TempNumButton, "8")
action=TriggerExecute($gg_trg_BUTTON_ENTRANCE)
action=TriggerSleepAction("1.00")
action=CommentString("Проверка на открытие портала")
action=TriggerExecute($gg_trg_Labyrinth_Buttons_Checking)
event=TriggerRegisterEnterRectSimple($gg_rct_REG_Button08)
