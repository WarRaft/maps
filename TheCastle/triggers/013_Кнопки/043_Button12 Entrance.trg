[trigger]
name="Button12 Entrance"
description=""
action=SetVariable($TempUnit, GetEnteringUnit())
condition=OperatorCompareBoolean(IsUnitType(GetEnteringUnit(), UnitTypeHero), OperatorEqualENE, "true")
action=SetVariable($TempNumButton, "12")
action=TriggerExecute($gg_trg_BUTTON_ENTRANCE)
action=TriggerSleepAction("0.50")
action=CommentString("Проверка на соответствие кода")
action=IfThenElseMultiple()
>action:1=CommentString("См. папку \"Головоломки\"")
>condition:0=OperatorCompareBoolean(IsDestructableAliveBJ($Button["12"]), OperatorEqualENE, "false")
>action:1=TriggerExecute($gg_trg_Destoying_Hard_Puzzle)
event=TriggerRegisterEnterRectSimple($gg_rct_REG_Button12)
