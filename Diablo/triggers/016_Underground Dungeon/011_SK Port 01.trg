[trigger]
name="SK Port 01"
description=""
initially_off=1
condition=OrMultiple()
>condition:0=OperatorCompareUnitCode(GetUnitTypeId(GetTriggerUnit()), OperatorEqualENE, "Hamg")
>condition:0=OperatorCompareUnitCode(GetUnitTypeId(GetTriggerUnit()), OperatorEqualENE, "Otch")
>condition:0=OperatorCompareUnitCode(GetUnitTypeId(GetTriggerUnit()), OperatorEqualENE, "Ulic")
>condition:0=OperatorCompareUnitCode(GetUnitTypeId(GetTriggerUnit()), OperatorEqualENE, "O002")
action=SetUnitPositionLoc(GetTriggerUnit(), GetRectCenter($gg_rct_Rect_025))
action=ForForceMultiple(GetPlayersAll())
>action:0=PanCameraToTimedLocForPlayer(GetOwningPlayer(GetTriggerUnit()), GetRectCenter($gg_rct_Rect_025), "0")
event=TriggerRegisterEnterRectSimple($gg_rct_Rect_143)
