[trigger]
name="WaterGuard Timer"
description=""
action=CustomScriptCode("local location point = GetRandomLocInRect(gg_rct_REG_WaterGuard)")
action=CustomScriptCode("call IssuePointOrder ( udg_UNIT_WaterGuard, \"move\", GetLocationX(point), GetLocationY(point) )")
action=CustomScriptCode("call RemoveLocation(point)")
action=CustomScriptCode("set point = null")
action=StartTimerBJ($WaterGuard_Timer, PeriodicOptionOneTime, "0.80")
condition=OperatorCompareBoolean($WaterGuard_in_zone, OperatorEqualENE, "false")
event=TriggerRegisterTimerExpireEventBJ($WaterGuard_Timer)
