[trigger]
name="WaterGuard Exit"
description=""
action=SetVariable($WaterGuard_in_zone, "false")
action=StartTimerBJ($WaterGuard_Timer, PeriodicOptionOneTime, "0.80")
condition=OperatorCompareUnit(GetLeavingUnit(), OperatorEqualENE, $UNIT_WaterGuard)
event=TriggerRegisterLeaveRectSimple($gg_rct_REG_WaterGuard)
