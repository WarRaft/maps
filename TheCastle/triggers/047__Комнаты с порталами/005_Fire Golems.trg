[trigger]
name="Fire Golems"
description=""
initially_off=1
action=CustomScriptCode("local unit dummy_unit")
action=CustomScriptCode("local real random_x = GetRandomReal( GetRectMinX(gg_rct_REG_Fire_Golems), GetRectMaxX(gg_rct_REG_Fire_Golems) )")
action=CustomScriptCode("local real random_y = GetRandomReal( GetRectMinY(gg_rct_REG_Fire_Golems), GetRectMaxY(gg_rct_REG_Fire_Golems) )")
action=CustomScriptCode("set dummy_unit = TeoCreateDummyUnit( Player(PLAYER_NEUTRAL_AGGRESSIVE), 'n00X', random_x,random_y, 'A039' )")
action=CustomScriptCode("call IssueImmediateOrder( dummy_unit, \"lavamonster\" )")
action=CommentString("Обнуление переменных")
action=CustomScriptCode("set dummy_unit = null")
event=TriggerRegisterTimerEventPeriodic("8.00")
