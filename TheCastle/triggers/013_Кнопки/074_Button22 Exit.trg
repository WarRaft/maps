[trigger]
name="Button22 Exit"
description=""
action=SetVariable($TempUnit, GetLeavingUnit())
condition=OperatorCompareBoolean(IsUnitType(GetLeavingUnit(), UnitTypeHero), OperatorEqualENE, "true")
action=SetVariable($TempNumButton, "22")
action=TriggerExecute($gg_trg_BUTTON_EXIT)
event=TriggerRegisterLeaveRectSimple($gg_rct_REG_Button22)
