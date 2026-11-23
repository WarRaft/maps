[trigger]
name="SK Random Movement"
description=""
initially_off=1
action=ForGroupMultiple(GetUnitsOfTypeIdAll("n00M"))
>action:0=IssuePointOrderLoc(GetEnumUnit(), UnitOrderMove, GetRandomLocInRect($gg_rct_Rect_146))
event=TriggerRegisterTimerEventPeriodic("3.00")
