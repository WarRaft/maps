[trigger]
name="Labyrinth Button7 Entrance"
description=""
condition=OperatorCompareBoolean(IsUnitType(GetEnteringUnit(), UnitTypeHero), OperatorEqualENE, "true")
action=SetVariable($TempUnit, GetEnteringUnit())
action=SetVariable($TempNumButton, "7")
action=TriggerExecute($gg_trg_BUTTON_ENTRANCE)
action=TriggerSleepAction("1.00")
action=CommentString("Проверка на открытие портала")
action=TriggerExecute($gg_trg_Labyrinth_Buttons_Checking)
event=TriggerRegisterEnterRectSimple($gg_rct_REG_Button07)
