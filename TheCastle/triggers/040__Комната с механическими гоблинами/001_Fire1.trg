[trigger]
name="Fire1"
description="Включается триггером \"Gate3 with key\" в папке \"Ворота\""
initially_off=1
action=CustomScriptCode("local unit dummy_unit1")
action=CustomScriptCode("local unit dummy_unit2")
action=CustomScriptCode("local real x = -7730")
action=CustomScriptCode("local real y = -1030")
action=CustomScriptCode("set dummy_unit1 = TeoCreateDummyUnit( Player(PLAYER_NEUTRAL_PASSIVE), 'n00X', x, y, 'A016' )")
action=CustomScriptCode("call IssuePointOrder( dummy_unit1, \"flamestrike\", x, y )")
action=CustomScriptCode("set dummy_unit2 = TeoCreateDummyUnit( Player(PLAYER_NEUTRAL_PASSIVE), 'n00X', x, y, 'A03V' )")
action=CustomScriptCode("call IssuePointOrder( dummy_unit2, \"blizzard\", x, y )")
action=SetDoodadAnimationRectBJ("stand", "YOf1", $gg_rct_REG_Fire_Tube1)
action=TriggerSleepAction("1.50")
action=SetDoodadAnimationRectBJ("death", "YOf1", $gg_rct_REG_Fire_Tube1)
action=CustomScriptCode("set dummy_unit1 = null")
action=CustomScriptCode("set dummy_unit2 = null")
event=TriggerRegisterTimerEventPeriodic("4.00")
