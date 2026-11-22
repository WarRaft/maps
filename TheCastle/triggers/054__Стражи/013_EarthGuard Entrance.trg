[trigger]
name="EarthGuard Entrance"
description=""
action=SetVariable($EarthGuard_in_zone, "true")
condition=OperatorCompareUnit(GetEnteringUnit(), OperatorEqualENE, $UNIT_EarthGuard)
event=TriggerRegisterEnterRectSimple($gg_rct_REG_EarthGuard)
