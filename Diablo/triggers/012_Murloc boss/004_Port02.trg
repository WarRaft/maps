[trigger]
name="Port02"
description=""
initially_off=1
action=SetUnitPositionLoc(GetTriggerUnit(), GetRectCenter($gg_rct_Rect_008))
condition=OrMultiple()
>condition:0=OperatorCompareUnitCode(GetUnitTypeId(GetTriggerUnit()), OperatorEqualENE, "Hamg")
>condition:0=OperatorCompareUnitCode(GetUnitTypeId(GetTriggerUnit()), OperatorEqualENE, "Otch")
>condition:0=OperatorCompareUnitCode(GetUnitTypeId(GetTriggerUnit()), OperatorEqualENE, "Ulic")
>condition:0=OperatorCompareUnitCode(GetUnitTypeId(GetTriggerUnit()), OperatorEqualENE, "O002")
event=TriggerRegisterEnterRectSimple($gg_rct_Rect_007)
