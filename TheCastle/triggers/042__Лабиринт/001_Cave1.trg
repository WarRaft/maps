[trigger]
name="Cave1"
description=""
action=SetUnitPositionLocFacingBJ(GetEnteringUnit(), GetRectCenter($gg_rct_REG_Cave_Exit1), "0.00")
action=IssuePointOrderLoc(GetEnteringUnit(), UnitOrderMove, GetRectCenter($gg_rct_REG_Cave_Point1))
action=PanCameraToTimedLocForPlayer(GetOwningPlayer(GetEnteringUnit()), GetUnitLoc(GetEnteringUnit()), "0")
event=TriggerRegisterEnterRectSimple($gg_rct_REG_Cave_Entrance1)
