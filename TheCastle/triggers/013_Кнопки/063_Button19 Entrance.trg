[trigger]
name="Button19 Entrance"
description=""
action=SetVariable($TempUnit, GetEnteringUnit())
condition=OperatorCompareBoolean(IsUnitType(GetEnteringUnit(), UnitTypeHero), OperatorEqualENE, "true")
action=SetVariable($TempNumButton, "19")
action=TriggerExecute($gg_trg_BUTTON_ENTRANCE)
event=TriggerRegisterEnterRectSimple($gg_rct_REG_Button19)
