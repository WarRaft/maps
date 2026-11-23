[trigger]
name="Boss Intro"
description=""
action=DisableTrigger(GetTriggeringTrigger())
action=IssuePointOrderLoc($gg_unit_nmsc_0034, UnitOrderAttack, GetRectCenter($gg_rct_Rect_211))
condition=OrMultiple()
>condition:0=OperatorCompareUnitCode(GetUnitTypeId(GetTriggerUnit()), OperatorEqualENE, "Hamg")
>condition:0=OperatorCompareUnitCode(GetUnitTypeId(GetTriggerUnit()), OperatorEqualENE, "Otch")
>condition:0=OperatorCompareUnitCode(GetUnitTypeId(GetTriggerUnit()), OperatorEqualENE, "Ulic")
>condition:0=OperatorCompareUnitCode(GetUnitTypeId(GetTriggerUnit()), OperatorEqualENE, "O002")
event=TriggerRegisterEnterRectSimple($gg_rct_Rect_211)
