[trigger]
name="Labyrinth Button8 Exit"
description=""
action=SetVariable($TempUnit, GetLeavingUnit())
condition=OperatorCompareBoolean(IsUnitType(GetLeavingUnit(), UnitTypeHero), OperatorEqualENE, "true")
action=SetVariable($TempNumButton, "8")
action=TriggerExecute($gg_trg_BUTTON_EXIT)
event=TriggerRegisterLeaveRectSimple($gg_rct_REG_Button08)
