[trigger]
name="Labyrinth Button10 Exit"
description=""
action=SetVariable($TempUnit, GetLeavingUnit())
condition=OperatorCompareBoolean(IsUnitType(GetLeavingUnit(), UnitTypeHero), OperatorEqualENE, "true")
action=SetVariable($TempNumButton, "10")
action=TriggerExecute($gg_trg_BUTTON_EXIT)
event=TriggerRegisterLeaveRectSimple($gg_rct_REG_Button10)
