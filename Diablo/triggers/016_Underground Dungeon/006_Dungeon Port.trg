[trigger]
name="Dungeon Port"
description=""
condition=OrMultiple()
>condition:0=OperatorCompareUnitCode(GetUnitTypeId(GetTriggerUnit()), OperatorEqualENE, "Hamg")
>condition:0=OperatorCompareUnitCode(GetUnitTypeId(GetTriggerUnit()), OperatorEqualENE, "Otch")
>condition:0=OperatorCompareUnitCode(GetUnitTypeId(GetTriggerUnit()), OperatorEqualENE, "Ulic")
>condition:0=OperatorCompareUnitCode(GetUnitTypeId(GetTriggerUnit()), OperatorEqualENE, "O002")
action=SetUnitPositionLoc(GetTriggerUnit(), GetRectCenter($gg_rct_Rect_218_Copy))
event=TriggerRegisterEnterRectSimple($gg_rct_Rect_218)
