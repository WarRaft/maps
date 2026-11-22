[trigger]
name="Button4 Exit"
description=""
action=SetVariable($TempUnit, GetLeavingUnit())
condition=OperatorCompareBoolean(IsUnitType(GetLeavingUnit(), UnitTypeHero), OperatorEqualENE, "true")
action=SetVariable($TempNumButton, "4")
action=TriggerExecute($gg_trg_BUTTON_EXIT)
action=IfThenElseMultiple()
>action:1=SetVariable($Lighting, "false")
>condition:0=OperatorCompareBoolean(IsUnitGroupEmptyBJ($Button_Units["4"]), OperatorEqualENE, "true")
event=TriggerRegisterLeaveRectSimple($gg_rct_REG_Button04)
