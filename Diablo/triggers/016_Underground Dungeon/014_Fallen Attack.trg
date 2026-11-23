[trigger]
name="Fallen Attack"
description=""
initially_off=1
action=DisableTrigger(GetTriggeringTrigger())
action=ForGroupMultiple(GetUnitsInRectAll($gg_rct_Rect_180))
>action:0=IssuePointOrderLoc(GetEnumUnit(), UnitOrderAttack, GetRectCenter($gg_rct_Region_084))
condition=OrMultiple()
>condition:0=OperatorCompareUnitCode(GetUnitTypeId(GetTriggerUnit()), OperatorEqualENE, "Hamg")
>condition:0=OperatorCompareUnitCode(GetUnitTypeId(GetTriggerUnit()), OperatorEqualENE, "Otch")
>condition:0=OperatorCompareUnitCode(GetUnitTypeId(GetTriggerUnit()), OperatorEqualENE, "Ulic")
>condition:0=OperatorCompareUnitCode(GetUnitTypeId(GetTriggerUnit()), OperatorEqualENE, "O002")
event=TriggerRegisterEnterRectSimple($gg_rct_Rect_001)
