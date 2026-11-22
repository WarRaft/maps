[trigger]
name="WaterGuard Entrance"
description=""
action=SetVariable($WaterGuard_in_zone, "true")
condition=OperatorCompareUnit(GetEnteringUnit(), OperatorEqualENE, $UNIT_WaterGuard)
event=TriggerRegisterEnterRectSimple($gg_rct_REG_WaterGuard)
