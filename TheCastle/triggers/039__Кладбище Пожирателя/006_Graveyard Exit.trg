[trigger]
name="Graveyard Exit"
description=""
action=SetVariable($Devouer_in_zone, "false")
action=StartTimerBJ($Devouer_Timer, PeriodicOptionOneTime, "0.80")
condition=OperatorCompareUnit(GetLeavingUnit(), OperatorEqualENE, $UNIT_Devouer)
event=TriggerRegisterLeaveRectSimple($gg_rct_REG_Graveyard)
