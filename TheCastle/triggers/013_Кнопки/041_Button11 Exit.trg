[trigger]
name="Button11 Exit"
description=""
action=SetVariable($TempUnit, GetLeavingUnit())
condition=OperatorCompareBoolean(IsUnitType(GetLeavingUnit(), UnitTypeHero), OperatorEqualENE, "true")
action=SetVariable($TempNumButton, "11")
action=TriggerExecute($gg_trg_BUTTON_EXIT)
event=TriggerRegisterLeaveRectSimple($gg_rct_REG_Button11)
