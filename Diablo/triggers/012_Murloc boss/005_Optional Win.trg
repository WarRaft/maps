[trigger]
name="Optional Win"
description=""
enabled=0
action=SetUnitOwner($gg_unit_nmsc_0034, PlayerNP, ChangeColorFalse)
action=SetUnitPathing($gg_unit_nmsc_0034, PathingOff)
action=UnitRemoveBuffsBJ(BuffTypeAll, GetTriggerUnit())
action=SetUnitTurnSpeedBJ(GetTriggerUnit(), "0.00")
action=IssuePointOrderLoc($gg_unit_nmsc_0034, UnitOrderMove, GetRectCenter($gg_rct_Rect_213))
action=TriggerSleepAction("2.00")
action=KillUnit($gg_unit_nmsc_0034)
condition=OrMultiple()
>condition:0=OperatorCompareUnitCode(GetUnitTypeId(GetTriggerUnit()), OperatorEqualENE, "nmsc")
event=TriggerRegisterEnterRectSimple($gg_rct_Rect_212)
