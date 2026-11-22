[trigger]
name="EarthGuard Exit"
description=""
action=SetVariable($EarthGuard_in_zone, "false")
action=StartTimerBJ($EarthGuard_Timer, PeriodicOptionOneTime, "0.80")
condition=OperatorCompareUnit(GetLeavingUnit(), OperatorEqualENE, $UNIT_EarthGuard)
event=TriggerRegisterLeaveRectSimple($gg_rct_REG_EarthGuard)
