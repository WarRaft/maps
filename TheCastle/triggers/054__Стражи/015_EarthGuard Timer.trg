[trigger]
name="EarthGuard Timer"
description=""
action=CustomScriptCode("local location point = GetRandomLocInRect(gg_rct_REG_EarthGuard)")
action=CustomScriptCode("call IssuePointOrder ( udg_UNIT_EarthGuard, \"move\", GetLocationX(point), GetLocationY(point) )")
action=CustomScriptCode("call RemoveLocation(point)")
action=CustomScriptCode("set point = null")
action=StartTimerBJ($EarthGuard_Timer, PeriodicOptionOneTime, "0.80")
condition=OperatorCompareBoolean($EarthGuard_in_zone, OperatorEqualENE, "false")
event=TriggerRegisterTimerExpireEventBJ($EarthGuard_Timer)
