[trigger]
name="Death of Robot"
description=""
action=DisableTrigger(GetTriggeringTrigger())
action=SetUnitTimeScalePercent($UNIT_Robot, "100.00")
action=SetVariable($Hero_mechanic, $UNIT_Robot_Mechanic)
