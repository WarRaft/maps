[trigger]
name="Skeleton spawn"
description=""
initially_off=1
action=CustomScriptCode("local unit temp_unit")
action=CustomScriptCode("local location point = GetRandomLocInRect(gg_rct_REG_Skeleton_spawn)")
action=CustomScriptCode("local location point_target = GetRandomLocInRect(gg_rct_REG_Skeletons_atack_point)")
action=IfThenElseMultiple()
>action:1=CustomScriptCode("set temp_unit = TeoCreateUnit( Player(11), 'u001', GetLocationX(point),GetLocationY(point), 270.00 )")
>action:1=CustomScriptCode("call GroupAddUnitSimple( temp_unit, udg_Skeleton_Group )")
>action:1=CustomScriptCode("call UnitApplyTimedLife(  temp_unit, 'BTLF', GetRandomReal(14.00, 17.00) )")
>action:1=CustomScriptCode("call IssuePointOrder( temp_unit, \"attack\", GetLocationX(point_target), GetLocationY(point_target))")
>action:1=CustomScriptCode("call RemoveLocation(point)")
>action:1=CustomScriptCode("call RemoveLocation(point_target)")
>action:1=CustomScriptCode("set temp_unit = null")
>action:1=CustomScriptCode("set point = null")
>action:1=CustomScriptCode("set point_target = null")
>condition:0=OperatorCompareInteger(CountUnitsInGroup($Skeleton_Group), OperatorLess, "30")
event=TriggerRegisterTimerEventPeriodic("0.70")
