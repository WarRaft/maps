[trigger]
name="Devouer Timer"
description=""
condition=OperatorCompareBoolean($Devouer_in_zone, OperatorEqualENE, "false")
action=CustomScriptCode("local location point = GetRandomLocInRect(gg_rct_REG_Corpses_spawn)")
action=CustomScriptCode("call IssuePointOrder ( udg_UNIT_Devouer, \"move\", GetLocationX(point), GetLocationY(point) )")
action=CustomScriptCode("call RemoveLocation(point)")
action=CustomScriptCode("set point = null")
action=StartTimerBJ($Devouer_Timer, PeriodicOptionOneTime, "0.80")
event=TriggerRegisterTimerExpireEventBJ($Devouer_Timer)
