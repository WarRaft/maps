[trigger]
name="Button20 Entrance"
description=""
action=SetVariable($TempUnit, GetEnteringUnit())
action=SetVariable($TempNumButton, "20")
action=TriggerExecute($gg_trg_BUTTON_ENTRANCE)
condition=OperatorCompareBoolean(IsUnitType(GetEnteringUnit(), UnitTypeHero), OperatorEqualENE, "true")
event=TriggerRegisterEnterRectSimple($gg_rct_REG_Button20)
