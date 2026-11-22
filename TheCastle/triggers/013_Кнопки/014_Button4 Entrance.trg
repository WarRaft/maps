[trigger]
name="Button4 Entrance"
description=""
action=SetVariable($TempUnit, GetEnteringUnit())
condition=OperatorCompareBoolean(IsUnitType(GetEnteringUnit(), UnitTypeHero), OperatorEqualENE, "true")
action=SetVariable($TempNumButton, "4")
action=TriggerExecute($gg_trg_BUTTON_ENTRANCE)
action=TriggerSleepAction("1.00")
action=CommentString("Проверка на соответствие кода")
action=IfThenElseMultiple()
>condition:0=OperatorCompareBoolean(IsDestructableAliveBJ($Button["4"]), OperatorEqualENE, "false")
>action:1=TriggerExecute($gg_trg_Button4_Checking_Code)
event=TriggerRegisterEnterRectSimple($gg_rct_REG_Button04)
