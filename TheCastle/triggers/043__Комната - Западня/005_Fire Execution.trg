[trigger]
name="Fire Execution"
description="Включается триггером Switch в папке \"Переключатели\""
initially_off=1
action=CustomScriptCode("local unit dummy_unit")
action=CustomScriptCode("local unit dummy_unit2")
action=CustomScriptCode("local real x = 9730")
action=CustomScriptCode("local real y = 3830")
action=CustomScriptCode("set dummy_unit = TeoCreateDummyUnit( Player(PLAYER_NEUTRAL_PASSIVE), 'n00X', x, y, 'A016' )")
action=CustomScriptCode("call IssuePointOrder( dummy_unit, \"flamestrike\", x, y )")
action=SetDoodadAnimationBJ("stand", "D04K", "1000.00", Location("9850.00", "3870.00"))
action=IfThenElseMultiple()
>action:1=FogModifierStart($Eye["2"])
>condition:0=OperatorCompareBoolean(IsUnitAliveBJ($UNIT_Devastator), OperatorEqualENE, "true")
action=CommentString("Обнуление переменных")
action=CustomScriptCode("set dummy_unit = null")
action=TriggerSleepAction("2.00")
action=FogModifierStop($Eye["2"])
action=TriggerSleepAction("1.00")
action=SetDoodadAnimationBJ("death", "D04K", "1000.00", Location("9850.00", "3870.00"))
action=IfThenElseMultiple()
>action:1=TriggerExecute(GetTriggeringTrigger())
>condition:0=OperatorCompareBoolean(IsTriggerEnabled(GetTriggeringTrigger()), OperatorEqualENE, "true")
