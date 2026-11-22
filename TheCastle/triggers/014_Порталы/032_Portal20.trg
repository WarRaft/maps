[trigger]
name="Portal20"
description=""
condition=OperatorCompareBoolean(IsUnitType(GetEnteringUnit(), UnitTypeHero), OperatorEqualENE, "true")
condition=OperatorCompareBoolean(IsDestructableAliveBJ(LoadDestructableHandleBJ("19", "1", GetLastCreatedHashtableBJ())), OperatorEqualENE, "true")
condition=OperatorCompareBoolean(IsDestructableAliveBJ(LoadDestructableHandleBJ("19", "2", GetLastCreatedHashtableBJ())), OperatorEqualENE, "true")
condition=OperatorCompareBoolean($Portal_Activity_Bool["19"], OperatorEqualENE, "true")
event=TriggerRegisterEnterRectSimple($gg_rct_REG_Portal19_Gate2)
action=SetUnitPositionLocFacingBJ(GetEnteringUnit(), GetRectCenter($gg_rct_REG_Portal19_Gate2_Exit), "0.00")
action=IssuePointOrderLoc(GetEnteringUnit(), UnitOrderMove, PolarProjectionBJ(GetRectCenter($gg_rct_REG_Portal19_Gate2_Exit), "200.00", "270.00"))
action=PanCameraToTimedLocForPlayer(GetOwningPlayer(GetEnteringUnit()), GetUnitLoc(GetEnteringUnit()), "0")
