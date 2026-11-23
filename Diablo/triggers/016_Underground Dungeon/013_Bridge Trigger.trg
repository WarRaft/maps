[trigger]
name="Bridge Trigger"
description=""
condition=OrMultiple()
>condition:0=OperatorCompareUnitCode(GetUnitTypeId(GetTriggerUnit()), OperatorEqualENE, "Hamg")
>condition:0=OperatorCompareUnitCode(GetUnitTypeId(GetTriggerUnit()), OperatorEqualENE, "Otch")
>condition:0=OperatorCompareUnitCode(GetUnitTypeId(GetTriggerUnit()), OperatorEqualENE, "Ulic")
>condition:0=OperatorCompareUnitCode(GetUnitTypeId(GetTriggerUnit()), OperatorEqualENE, "O002")
action=ForGroupMultiple(GetUnitsInRectAll($gg_rct_Rect_160))
>action:0=IfThenElseMultiple()
>>condition:0=OperatorCompareUnitCode(GetUnitTypeId(GetEnumUnit()), OperatorEqualENE, "n00N")
>>condition:0=OperatorCompareUnitCode(GetUnitTypeId(GetEnumUnit()), OperatorEqualENE, "n00I")
>>action:1=IssuePointOrderLoc(GetEnumUnit(), UnitOrderAttack, GetRectCenter($gg_rct_Rect_003))
event=TriggerRegisterEnterRectSimple($gg_rct_Rect_161)
