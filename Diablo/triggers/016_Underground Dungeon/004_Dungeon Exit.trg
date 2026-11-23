[trigger]
name="Dungeon Exit"
description=""
initially_off=1
condition=OrMultiple()
>condition:0=OperatorCompareUnitCode(GetUnitTypeId(GetTriggerUnit()), OperatorEqualENE, "Hamg")
>condition:0=OperatorCompareUnitCode(GetUnitTypeId(GetTriggerUnit()), OperatorEqualENE, "Otch")
>condition:0=OperatorCompareUnitCode(GetUnitTypeId(GetTriggerUnit()), OperatorEqualENE, "Ulic")
>condition:0=OperatorCompareUnitCode(GetUnitTypeId(GetTriggerUnit()), OperatorEqualENE, "O002")
>condition:0=OperatorComparePlayer(GetOwningPlayer(GetTriggerUnit()), OperatorEqualENE, Player00)
action=SetUnitPositionLoc(GetTriggerUnit(), GetRectCenter($gg_rct_Rect_053))
action=CustomScriptCode("if ( GetLocalPlayer() == GetOwningPlayer(GetTriggerUnit()) ) then")
action=SetTerrainFogExBJ(FogStyleLinear, "1500.00", "4500.00", "0.50", "85.00", "85.00", "85.00")
action=CustomScriptCode("endif")
event=TriggerRegisterEnterRectSimple($gg_rct_Region_085)
