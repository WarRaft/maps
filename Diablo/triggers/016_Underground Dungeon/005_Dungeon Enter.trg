[trigger]
name="Dungeon Enter"
description=""
condition=OrMultiple()
>condition:0=OperatorCompareUnitCode(GetUnitTypeId(GetTriggerUnit()), OperatorEqualENE, "Hamg")
>condition:0=OperatorCompareUnitCode(GetUnitTypeId(GetTriggerUnit()), OperatorEqualENE, "Otch")
>condition:0=OperatorCompareUnitCode(GetUnitTypeId(GetTriggerUnit()), OperatorEqualENE, "Ulic")
>condition:0=OperatorCompareUnitCode(GetUnitTypeId(GetTriggerUnit()), OperatorEqualENE, "O002")
>condition:0=OperatorComparePlayer(GetOwningPlayer(GetTriggerUnit()), OperatorEqualENE, Player00)
action=SetUnitPositionLoc(GetTriggerUnit(), GetRectCenter($gg_rct_Rect_029))
action=CustomScriptCode("if ( GetLocalPlayer() == GetOwningPlayer(GetTriggerUnit()) ) then")
action=SetTerrainFogExBJ(FogStyleLinear, "2000.00", "2800.00", "0.50", "0.00", "21.00", "31.00")
action=CustomScriptCode("endif")
event=TriggerRegisterEnterRectSimple($gg_rct_Rect_217)
