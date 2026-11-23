[trigger]
name="Ghoul Collision"
description=""
action=SetUnitPathing(GetTriggerUnit(), PathingOn)
action=IssueImmediateOrder(GetTriggerUnit(), UnitOrderStop)
action=SetUnitMoveSpeed(GetTriggerUnit(), GetUnitDefaultMoveSpeed(GetTriggerUnit()))
condition=OperatorCompareUnitCode(GetUnitTypeId(GetTriggerUnit()), OperatorEqualENE, "nmcf")
event=TriggerRegisterEnterRectSimple($gg_rct_Rect_180)
