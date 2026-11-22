[trigger]
name="Button22 Entrance"
description=""
action=SetVariable($TempUnit, GetEnteringUnit())
action=SetVariable($TempNumButton, "22")
action=TriggerExecute($gg_trg_BUTTON_ENTRANCE)
condition=OperatorCompareBoolean(IsUnitType(GetEnteringUnit(), UnitTypeHero), OperatorEqualENE, "true")
event=TriggerRegisterEnterRectSimple($gg_rct_REG_Button22)
