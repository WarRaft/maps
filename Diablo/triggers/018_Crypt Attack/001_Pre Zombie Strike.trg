[trigger]
name="Pre Zombie Strike"
description=""
condition=OrMultiple()
>condition:0=OperatorCompareUnitCode(GetUnitTypeId(GetTriggerUnit()), OperatorEqualENE, "Hamg")
>condition:0=OperatorCompareUnitCode(GetUnitTypeId(GetTriggerUnit()), OperatorEqualENE, "Otch")
>condition:0=OperatorCompareUnitCode(GetUnitTypeId(GetTriggerUnit()), OperatorEqualENE, "Ulic")
>condition:0=OperatorCompareUnitCode(GetUnitTypeId(GetTriggerUnit()), OperatorEqualENE, "O002")
action=DisableTrigger(GetTriggeringTrigger())
action=ForGroupMultiple(GetUnitsInRectAll($gg_rct_Rect_121))
>action:0=IssuePointOrderLoc(GetEnumUnit(), UnitOrderAttack, GetRectCenter($gg_rct_Rect_053))
action=ForGroupMultiple(GetUnitsInRectAll($gg_rct_Rect_122))
>action:0=IssuePointOrderLoc(GetEnumUnit(), UnitOrderAttack, GetRectCenter($gg_rct_Rect_053))
event=TriggerRegisterEnterRectSimple($gg_rct_Rect_123)
